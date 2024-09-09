-- 1
SELECT
	Nome,
	Ano
FROM Filmes

-- 2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano

-- 3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000 

-- 6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

-- 7
SELECT 
	Ano, 
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11
SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

-- 12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM ElencoFilme EF
INNER JOIN Filmes F ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor