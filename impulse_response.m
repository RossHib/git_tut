function [ h,t ] = impulse_response( x, y, fs )
%impulse_response returns the impulse response of the system given the
%system input, x, and system output, y.
%   inputs: x, measured input signal
%           y, measured output signal
%           fs, sampling frequency of measurements
%   outputs:    h, calculated impulse response

[X,f] = fdomain(x,fs);
[Y,f] = fdomain(y,fs);
H = Y./X;   % the calculated frequency response %Changed by rHibbett 2/28/2022
[h,t] = tdomain(H,fs);

end

plot(X,Y)