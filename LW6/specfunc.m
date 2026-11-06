function varargout = specfunc(varargin)
n = nargin;
if n == 1
    result = varargin{1}^2;
elseif n == 2
    result = varargin{1}^2 + varargin{2}^3;
else
    error('Enter one or two input arguments.');
end
if nargout ~= 1
    error('Exactly one output argument is required.');
end
varargout{1} = result;
