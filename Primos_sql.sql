DELIMITER $$
CREATE PROCEDURE conferindo_se_primo(numb INT)
BEGIN
    DECLARE divisor INT DEFAULT 2;
    DECLARE verificador INT DEFAULT 0;

    WHILE divisor < numb DO
        IF numb % divisor = 0 THEN
            SET verificador = 1;
            LEAVE;
        END IF;
        SET divisor = divisor + 1;
    END WHILE;

    IF numb = 1 THEN
        SELECT numb AS Número, "Este número não é primo" AS PRIMO;
    ELSEIF verificador = 0 THEN
        SELECT numb AS Número, "Este número é primo" AS PRIMO;
    ELSE
        SELECT numb AS Número, "Este número não é primo" AS PRIMO;
    END IF;
END$$
DELIMITER ;

CALL conferindo_se_primo(1);

