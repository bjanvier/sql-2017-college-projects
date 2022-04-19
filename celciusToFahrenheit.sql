CREATE or replace FUNCTION celciusToFahrenheit(celciusValueInput FLOAT)
    RETURNS FLOAT DETERMINISTIC
        BEGIN
            declare celciusValue float;
            set celciusValue=(celciusValueInput+9/5)+32 ;
                return celciusValue;
        end
//