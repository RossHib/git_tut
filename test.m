t = 0:.01:10;
y = sin(t);
x = cos(t);
fs = 100;
h = [];
t = [];
[h, t] = impulse_response(x, y, fs);