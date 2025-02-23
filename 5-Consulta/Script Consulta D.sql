SELECT
    m.modelo,
    COUNT(v.placa) AS numero_veiculos
FROM Modelo m
LEFT JOIN Veiculo v ON m.idModelo = v.idModelo
GROUP BY m.modelo
ORDER BY numero_veiculos DESC;