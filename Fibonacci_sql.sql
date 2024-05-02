DELIMITER $$
CREATE PROCEDURE fibonacci2(numb INT)
BEGIN
    DECLARE numb1 INT DEFAULT 0;
    DECLARE somador INT DEFAULT 1;
    DECLARE contador INT DEFAULT 0;
    DECLARE result INT DEFAULT 0;

    WHILE contador < numb DO
        SELECT result;
        SET result = numb1;
        SET numb1 = somador;
        SET somador = result + somador;
        SET contador = contador + 1;
    END WHILE;

    SELECT numb AS Número, result AS Total_fibonacci;
END$$
DELIMITER ;
