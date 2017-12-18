# Oscilloscope
Schematic, PCB, simulation results, firmware and outputs for 20MHz oscilloscope.

#### Front End Desgin
Specification was for an anti-aliasing filter suitable for the 40MSPS maximum sample rate. 
To be implemented with a minimum of a first-order 20dB per decade response and ±2dB maximum ripple in the pass band.
![](/Frontend/frontend.jpg)  
The plot below shows these specifications were satisfied. A flat response (-13.8 to -13.7dB) can be seen in the pass band, giving a ripple of less than 2dB. 
The 3dB cut-off point is at 20Mhz (-16.5dB) allowing for a maximum sampling rate of 40MSPS. The response can be seen to drop off by 20dB per decade.
![](/Frontend/adc_input_freq_response.png)

#### Top Sheet
![](/PCB/TopSheet.jpg)

#### PCB
![](/PCB/Top.jpg)

#### PCB 3D
![](/PCB/Top3D.jpg)

#### Final Product
![](/PCB/Final1.JPG)
![](/PCB/Final2.JPG)

#### GUI & Output
*Input signal: 50kHz, 2v pk-pk*
![](/GUI/input.jpg)
*Output signal: 50kHz, 2v pk-pk*
![](/GUI/output.jpg)
