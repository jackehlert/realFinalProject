function [status] = isPerfectSquare(n)

status = false;

if round(sqrt(n)) == sqrt(n)

status = true;

end

end
