% Comments: Clear all variables and close all figures
clear all;
close all;

% Connect to Arduino and specify libraries
a = arduino('COM6', 'Nano3', 'Libraries', {'I2C'});

% Set threshold values for moisture levels
super_Dry = 3.1;
super_Wet = 2.9;

% Create a figure for real-time moisture monitoring
figure;
h = animatedline;
ax = gca;
ax.YGrid = 'on';
ax.YLim = [2, 4];
title('Moisture vs Time');
ylabel('Moisture (Voltage)');
xlabel('Time (seconds)');
startTime = datetime('now');

% Real-time data acquisition and processing loop
while (true)
    voltage = readVoltage(a, 'A1');
    t = datetime('now') - startTime;
    
    % Update the animated line with new data points
    addpoints(h, datenum(t), voltage);
    
    % Set X-axis limits to display the last 15 seconds of data
    ax.XLim = datenum([t - seconds(15), t]);
    datetick('x', 'keeplimits');
    
    % Force the figure to update in real-time
    drawnow;
    
    % Determine moisture state based on voltage
    p = moisture(voltage);

    % Control the water pump based on moisture level
    if (p >= super_Dry)
        writeDigitalPin(a, "D2", 1); % Pump water when it's dry
        disp('Soil is dry, watering plant')
    elseif (p <= super_Wet)
        writeDigitalPin(a, "D2", 0); % Do not pump water when it's wet
        disp('The plant is watered enough')
    else
        writeDigitalPin(a, "D2", 1); % Pump water when it's somewhat wet
        disp('Soil not too wet, watering plant')
    end
end

% Function to calculate moisture state
function state = moisture(voltage)
    state = 250 * voltage - 700;
end
