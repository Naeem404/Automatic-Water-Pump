# Automatic-Water-Pump
A project where I programmed with MATLAB and used a Grover Arduino kit to assemble a water pump that waters a plant when needed.
Naeem Baig
220246773
EECS 1011
2023/12/05
Minor Project
Abstract:
INTRODUCTION: The task assigned for this project was to make an automatic watering
system. OBJECTIVES: The objective was to make a system using MATLAB and
arduino hardware that can execute a command that waters when a plant is too dry and
stops watering when it is wet enough. DESIGN ANALYSIS: To achieve this automatic
system, a state machine was used to check if the soil was dry or wet and acted
accordingly. PROCEDURE: The system was first built which entailed the moisture
sensor being attached to the arduino board and it then being stuck into the soil in which
the plant inhabited. A mosfet board was then connected to the arduino board with a 9
volt battery and water pump being attached to their respective sides. The water pump
was then placed into a container filled with water and a tube attached to it to disperse
the water from the container to the water. Matlab was then used to get the voltage of the
moisture sensor and use this value in the state machine to determine if water should be
pumped or not. This voltage value is then placed onto a graph where the data can be
analyzed for results. RESULTS: The plant was successfully watered when the plant was
dry as well as graphing the voltage from the moisture sensor as well as stopping when
the plant was wet. CONCLUSIONS AND RECOMMENDATIONS: The code done in
Matlab as well the whole system worked fairly effectively but something that could have
potentially been implemented which could benefit was a stop button that stopped the
pump from taking in any more water since over watering could potentially be an issue.
Plant & Hardware Setup
Flowchart
Moisture graph
