DELIMITER //

CREATE PROCEDURE relatorio_quantidade_produtos_vendidos_por_dia()
BEGIN
    SELECT 
        data_venda,
        SUM(quantidade) AS total_produtos_vendidos
    FROM 
        vendas
    GROUP BY 
        data_venda;
END //

DELIMITER ;