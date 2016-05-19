
%so this is an example of a simple semi circle contour, and we are
%evaluating the integral of real(z)
% equation using is integral = integral symbol[(f(z(t))z'(t))]

% This is the parametrization of your contour  
g = @(theta) cos(theta)+1i*sin(theta);

% this is the function we are evaluating
fun = @(z) real(z);

% the derivative of our parametrization equation
gprime = @(theta) -sin(theta) + 1i*cos(theta);

% the integral of the function from 0 -> pi
q1 = integral(@(t) fun(g(t)).*gprime(t),0,pi)

%note, this has to be a smooth peicewise function and a smooth contour