SELECT
    v.*,
    c.nome AS nome_categoria,
    m.modelo AS nome_modelo,
    p.nome AS nome_proprietario
FROM Veiculo v
JOIN Categoria c ON v.idCategoria = c.idCategoria
JOIN Modelo m ON v.idModelo = m.idModelo
JOIN Proprietario p ON v.cpfProprietario = p.cpf
WHERE v.cpfProprietario = '98765432100';  