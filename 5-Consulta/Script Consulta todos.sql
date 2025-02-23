-- Consulta A
SELECT
    v.*,
    c.nome AS nome_categoria,
    m.modelo AS nome_modelo,
    p.nome AS nome_proprietario
FROM Veiculo v
JOIN Categoria c ON v.idCategoria = c.idCategoria
JOIN Modelo m ON v.idModelo = m.idModelo
JOIN Proprietario p ON v.cpfProprietario = p.cpf
WHERE v.cpfProprietario = '98765432100';  -- CPF de Maria Souza


-- Consulta B
SELECT *
FROM Proprietario
WHERE nome LIKE '%Souza%';


-- Consulta C
SELECT
    i.*,
    v.*,
    ti.descricao AS tipo_infracao,
    a.nome AS nome_agente,
    l.latitude,
    l.longitude
FROM Infracao i
JOIN Veiculo v ON i.placaVeiculo = v.placa
JOIN TipoInfracao ti ON i.idTipoInfracao = ti.idTipo
JOIN Agente a ON i.idAgente = a.matricula
JOIN Local l ON i.idLocal = l.idLocal
WHERE i.dataHora BETWEEN '2024-01-01 00:00:00' AND '2024-01-31 23:59:59';


-- Consulta D
SELECT
    m.modelo,
    COUNT(v.placa) AS numero_veiculos
FROM Modelo m
LEFT JOIN Veiculo v ON m.idModelo = v.idModelo
GROUP BY m.modelo
ORDER BY numero_veiculos DESC;