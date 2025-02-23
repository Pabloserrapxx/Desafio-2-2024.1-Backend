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