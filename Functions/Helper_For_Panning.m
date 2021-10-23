
function [out] = Helper_For_Panning(in, panValue, panType)
%Normalise the pan value
Pantrans = (panValue/200) + 0.5;
%statement for pantype recognisation
if panType == 1
leftAmp = 1-Pantrans;
rightAmp = Pantrans;
elseif panType == 2
leftAmp = sqrt(1-Pantrans);
rightAmp = sqrt(Pantrans);
elseif panType == 3
leftAmp = sin((1-Pantrans) * (pi/2));
rightAmp = sin(Pantrans * (pi/2));
end
leftChannel = leftAmp.*in;
rightChannel = rightAmp.*in;
out = [leftChannel,rightChannel];

end