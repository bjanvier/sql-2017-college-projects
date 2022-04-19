CREATE or replace FUNCTION fahrenheitToCelcius(fahrInput FLOAT)
    RETURNS FLOAT DETERMINISTIC
        BEGIN
            -- (fahrInput-32)*5/9 = fahrenheitValue. For ex: (0°F − 32) × 5/9 = -17.78°C
            declare fahrenheitValue float;
            set fahrenheitValue=(fahrInput-32) * (5/9);
                return fahrenheitValue;
        end
//