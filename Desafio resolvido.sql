USE Filmes
GO

--Exerc�cio 1
SELECT Nome, Ano FROM Filmes

--Exerc�cio 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--Exerc�cio 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE 'De Volta para o Futuro%'

--Exerc�cio 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--Exerc�cio 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--Exerc�cio 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 500

--Exerc�cio 7
SELECT 
Ano, 
COUNT (*) As 'Quantidade' 
FROM Filmes
WHERE Ano <> 0
GROUP BY Ano
ORDER BY Quantidade DESC

--Exerc�cio 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

--Exerc�cio 9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome 

--Exerc�cio 10
SELECT 
	fil.Nome,
	gen.Genero
FROM FilmesGenero fge
INNER JOIN Filmes fil ON fge.IdFilme = fil.Id
INNER JOIN Generos gen ON fge.IdGenero = gen.Id

--Exerc�cio 11
SELECT 
	fil.Nome,
	gen.Genero
FROM FilmesGenero fge
INNER JOIN Filmes fil ON fge.IdFilme = fil.Id
INNER JOIN Generos gen ON fge.IdGenero = gen.Id
WHERE gen.Genero Like 'Mist�rio'

--Exerc�cio 12
SELECT
fil.Nome,
ato.PrimeiroNome,
ato.UltimoNome,
elf.Papel
FROM ElencoFilme elf
INNER JOIN Atores ato ON elf.IdAtor = ato.Id
INNER JOIN Filmes fil ON elf.IdFilme = fil.Id