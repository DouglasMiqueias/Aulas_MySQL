-- ============================
-- Criação das Tabelas
-- ============================

DROP TABLE IF EXISTS Emprestimos;
DROP TABLE IF EXISTS Livros;
DROP TABLE IF EXISTS Usuarios;
DROP TABLE IF EXISTS Autores;

CREATE TABLE Autores (
    id_autor INT PRIMARY KEY,
    nome VARCHAR(100),
    nacionalidade VARCHAR(50),
    data_nascimento DATE,
    genero_literario VARCHAR(50)
);

CREATE TABLE Livros (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(100),
    id_autor INT,
    ano_publicacao INT,
    genero VARCHAR(50),
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE,
    cidade VARCHAR(50)
);

CREATE TABLE Emprestimos (
    id_emprestimo INT PRIMARY KEY,
    id_livro INT,
    id_usuario INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- ============================
-- Inserção de Dados
-- ============================

-- Autores
INSERT INTO Autores VALUES 
(1, 'Machado de Assis', 'Brasileira', '1839-06-21', 'Romance'),
(2, 'J.K. Rowling', 'Britânica', '1965-07-31', 'Fantasia'),
(3, 'George Orwell', 'Britânica', '1903-06-25', 'Distopia');

-- Livros
INSERT INTO Livros VALUES 
(1, 'Dom Casmurro', 1, 1899, 'Romance'),
(2, 'Harry Potter e a Pedra Filosofal', 2, 1997, 'Fantasia'),
(3, '1984', 3, 1949, 'Distopia');

-- Usuários
INSERT INTO Usuarios VALUES 
(1, 'Ana Silva', 'ana@gmail.com', '1990-05-10', 'São Paulo'),
(2, 'Carlos Souza', 'carlos@gmail.com', '1985-09-20', 'Rio de Janeiro'),
(3, 'Mariana Lima', 'mariana@gmail.com', '2000-12-01', 'Belo Horizonte');

-- Empréstimos
INSERT INTO Emprestimos VALUES 
(1, 1, 1, '2025-04-01', '2025-04-10'),
(2, 2, 2, '2025-04-02', NULL),
(3, 3, 3, '2025-04-05', NULL);

