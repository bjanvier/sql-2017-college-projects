CREATE or replace FUNCTION fahrenheitToCelcius(f FLOAT)
RETURNS FLOAT DETERMINISTIC
BEGIN
declare var1 float;
set var1=(f-32);
return var1/1.8;
end
//