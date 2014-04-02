//2) A XILINX LogiCore FIR filter is used in this design.   
//     Configure the module using the following settings: 
// 
//     Page 1: 
//        * select source = COE file (MATLAB script shown below) 
//        * filter type = single rate 
//        * number of channels = 1 
//        * input sampling frequency = 2.536 MHz 
//        * clock frequency = 100 
//   
//     Page 2: 
//        * coefficient width = 16 
//        * input data width = 15 
//        * input data type = signed 
//        * output rounding mode = full precision 
//            
//     Page 3: 
//        * Control Options - check ND 
//        * optimization goal = area 
//
//%%% Start MATLAB Script %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//%
//% This MATLAB script is used to calculate the FIR filter 
//% coefficients for the DGPS receiver's band pass filter.
//%
//% Comments:
//%
//%    1) The coefficients are calculated as:
//%
//%             values = fir1(4, [0.6482 0.6582])
//%
//%       where
//%
//%           * The first parameter indicates the number of 
//%             taps used in the filter.
//%
//%           * The 2nd and 3rd parameters specify the start
//%             and stop frequency as a fraction of the 
//%             sampling frequency.
//%
//%    2) A XILINX coefficient file (.coe) must be used 
//%       since the MATLAB character buffer is not able 
//%       to hold the entire string.
//%
//%       The XILINX .coe file is a text file with the 
//%       following format:
//%
//%         radix = 10;
//%         coefdata = 20, -256, 200,  
//%                    255, 255, 200,  
//%                    -256, 20;
//%
//%    3) For this application a 16-bit value is desired.  
//%       Here we use 15 bits for the magnitude and one
//%       bit for the sign.
//%
//%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// 
num_taps = 1001;                % desired number of taps
f_center = 317000;              % Center frequency
f_sample = f_center * 4;        % sampling frequency
                                % don't forget the decimation
 
delta = 5;
 
desired_max_coe = 2^15 - 10;    % 16 bit signed 

f_start = (f_center - delta) / (f_sample);  
f_stop =  (f_center + delta) / (f_sample);
 
values = fir1(num_taps, [f_start f_stop]);
 
freqz(values,1,12000);          % Plot frequency and  
                                % phase response.  

%% Convert to integer and scale 
 
scale_factor = desired_max_coe / max(values);
 
values = values .* scale_factor; % Convert to integer
values = floor(values);
 
%% Print coefficients
 
fprintf('\n\n\n\n\n\n');
fprintf('radix=10;\n');
fprintf('coefdata=\n');
 
for (i = 1:length(values)) 
    fprintf('%d, ', values(i));  % Print in columns of 10
    if (~(mod(i, 10)))
        fprintf('\n');
    end
end

%%% END MATLAB Script %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%