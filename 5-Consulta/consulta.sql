SELECT * FROM veiculo as v where cpf_do_motorista = '111.222.333-44';

SELECT * FROM motorista as m where m.nome like "%silva%";

SELECT v.placa,v.chassi,v.cor_predominante,v.ano_de_fabricacao,v.numero_da_categoria,v.numero_do_modelo, i.codigo_da_infracao,i.tipo_de_infracao,i.velocidade_aferida,i.local FROM veiculo as v 
inner join infracao as i on data_hora between "2000-01-01" and "2025-01-01";

SELECT m.modelo_do_carro AS modelo, COUNT(v.placa) AS numero_de_veiculos
FROM 
    modelo AS m LEFT JOIN veiculo AS v ON m.numero_do_modelo = v.numero_do_modelo
GROUP BY 
    m.modelo_do_carro ORDER BY 
    numero_de_veiculos DESC;