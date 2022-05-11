CREATE DATABASE franquia;
use franquia;
CREATE TABLE Cliente(IDcliente integer,
nomeCliente varchar(20),
endereco varchar(30),
telCliente varchar(30),
cpf varchar(30),
IDentregador integer,
PRIMARY KEY(IDcliente)) ENGINE = InnoDB;
CREATE TABLE Restaurantes(IDrestaurante integer,
nomeRes varchar(20),
enderecoRes varchar(30),
IDapp integer,
PRIMARY KEY(IDrestaurante))ENGINE = InnoDB;
CREATE TABLE Funcionarios(IDfuncionario integer,
nomeFunc varchar (20),
salario float,
IDrestaurante integer,
PRIMARY KEY(IDfuncionario))ENGINE = InnoDB;
CREATE TABLE Gerentes(IDfuncionario integer,
regRest varchar(100),
IDfornecedor integer,
PRIMARY KEY(IDfuncionario))ENGINE = InnoDB;
CREATE TABLE Cozinheiros(IDfuncionario integer,
tempoMin integer,
IDprato integer,
PRIMARY KEY(IDfuncionario))ENGINE = InnoDB;
CREATE TABLE OpEstoque(IDfuncionario integer,
hrOperacao integer,
qtdProduto integer,
IDproduto integer,
PRIMARY KEY(IDfuncionario))ENGINE = InnoDB;
CREATE TABLE Prato(IDprato integer,
nomePrato varchar(100),
IDproduto1 integer,
IDproduto2 integer,
IDproduto3 integer,
IDproduto4 integer,
PRIMARY KEY(IDprato))ENGINE = InnoDB;
CREATE TABLE Fornecedores(IDfornecedor integer,
cnpj varchar(30),
telefoneFor varchar(30),
endecoFor varchar(30),
nomeFor varchar(20),
IDproduto1 integer,
IDproduto2 integer,
IDproduto3 integer,
IDproduto4 integer,
PRIMARY KEY(IDfornecedor))ENGINE = InnoDB;
CREATE TABLE App(IDapp integer,
nomeApp varchar(20),
IDpedido integer,
preco float,
componentes varchar(100),
IDcliente integer,
PRIMARY KEY(IDapp, IDpedido))ENGINE = InnoDB;
CREATE TABLE Entregadores(IDentregador integer,
nomeEntre varchar(20),
telefoneEntre varchar(30),
IDapp integer,
PRIMARY KEY(IDentregador))ENGINE = InnoDB;
CREATE TABLE Estoque(IDproduto integer,
qtdProduto integer,
nomeProduto varchar(100),
PRIMARY KEY(IDproduto))ENGINE = InnoDB

INSERT INTO restaurantes VALUES
(0, "Sbargrill", "Av Lucas, 4415", 0),
(1, "Compostela", "Rua Acre, 113", 1),
(2, "Cheiro verde", "Rua Álvaro Borges, 225", 0),
(3, "Seu Dito", "Av José Garcia, 54", 1),
(4, "Outback", "Rua Paulo Cruz, 23", 0);
INSERT INTO cliente VALUES
(0, "Marcos", null, "94288-3467", "342.434.333-73", 0),
(1, "Basílio", "Rua Acre, 270", "93222-1345", "235.434.121-34", 0),
(2, "Luiz", "Rua São Paulo, 16", null, "344.317.435-58", 1),
(3, "Sebastião", "Av Fernando Souza, 122", "93244-9823", "453.535.718-43", 4),
(4, "Lucas", "Rua Dália, 112", null, "498.235.146-57", 3),
(5, "João", null, "93373-9868", "438.718.342-43", 2),
(6, "Paulo", null, "94233-6655", "387.279.143-74", 5),
(7, "José", "Rua das Jacas, 76", "92433-2278", "476.342.781-46", 6),
(8, "Igor", "Av Pinda, 777", "94002-8922", "123.321.123-32", 7),
(9, "Bruno", "Rua Marcos Costa, 73", "93567-2235", "432.873.321-44", 6);
INSERT INTO Funcionarios VALUES
(0,"Douglas", 4300, 0),
(1,"Márcio",4200, 1),
(2,"Lúcia",4300, 2),
(3,"Matheus",2000, 0),
(4,"Jane", 2100, 0),
(5,"Cláudio", 1750, 0),
(6,"Paulo",1750, 0),
(7,"Jackson",2000, 1),
(8,"Guilherme", 2200,1),
(9,"João", 1700, 1),
(10,"Kléber",1700,1),
(11,"Everton",2000, 2),
(12, "Celma",2100,2),
(13,"Narciso",1700, 2),
(14,"Robson",1700, 2),
(15, "Lucas", 1700, 0),
(16, "Benedito", 4300, 3),
(17, "Silvana", 4200, 4);
INSERT INTO Gerentes VALUES
(0, "Pouco Movimento, reabastecimento padrão.", 0),
(1, "Muito Movimento, necessário dobrar pedido",1),
(2, "Muito Movimento, necessário triplicar compra compra de feijão", 2),
(16, "Abertura do restaurante, deve-se contratar funcionários", null),
(17, "Abertura do restaurante, deve-se contratar funcionários", null);
INSERT INTO Cozinheiros VALUES
(3, 15, 2),
(4, 5,3),
(7, 20,0),
(8, 10,2),
(11,30 ,4),
(12, 25, 5);
INSERT INTO OpEstoque VALUES
(5, 10, 5,4),
(6, 14, 1, 9),
(9, 20, 2,2),
(10, 12,3,0),
(13, 9, 1, 2),
(14, 22,2, 5);
INSERT INTO prato VALUES
(0, "Marmitex - Contra Filet", 0, 1, 2, null),
(1, "Marmitex - File de Frango", 0, 1, 3, null),
(2, "Marmitex - Carne de Panela", 0, 1, 4, null),
(3, "Marmitex - Omelete", 0, 1, 5, null),
(4, "Marmitex - Feijoada", 0, 6, 7, 8),
(5, "Marmitex - Arroz Carreteiro", 0, 2, 9, null);
INSERT INTO fornecedores VALUES
(0, "31.424.378/0001-15", "93211-2642", "Av dos Peixes, 215", "JPS Alimentos", 0, 1, 6, null),
(1, "33.123.443/0001-12", "91454-3433", "Rua das Graças, 312", "Realc Alimentos", 2, 4, null, null),
(2, "35.122.314/0001-17", "91223-4476", "Av Pilar, 332", "Galetos Lima", 3, 5, null, null),
(3, "51.634.912/0001-63", "95489-9041", "Av São José, 43", "Suínos Garcia", 7, 8, null, null),
(4, "57.931.612/0001-46", "95235-6213", "Av José Almeida, 53", "Iguarias Cruz", 9, null, null, null);
INSERT INTO estoque VALUES
(0, 50, "Arroz"),
(1, 40, "Feijão"),
(2, 15, "Carne Bovina - Contra Filet"),
(3, 12, "Filé de Frango"),
(4, 11, "Coxão Mole"),
(5, 48, "Ovo"),
(6, 30, "Feijão Preto"),
(7, 30, "Linguiça Calabresa"),
(8, 13, "Costela Suína"),
(9, 10, "Carne Seca");
INSERT INTO app VALUES
(0, "IFood", 0, 50, "Contra Filet e Omelete", 0),
(1, "Rappi", 1, 30, "Feijoada", 2),
(0, "IFood", 2, 30, "Arroz Carreteiro", 1),
(0, "IFood", 3, 25, "Contra Filet", 5),
(1, "Rappi", 4, 50, "Filé de Frango e Carne de Panela", 3),
(0, "IFood", 5, 25, "Filé de Frango", 6),
(0, "IFood", 6, 25, "Carne de Panela", 4),
(0, "IFood", 7, 60, "2x Feijoada", 8),
(1, "Rappi", 8, 30, "Arroz Carreteiro", 2);
INSERT INTO entregadores VALUES
(0, "Daniel", "97833-2224", 0),
(1, "Silas", "92324-7269", 0),
(2, "Vitor", "92311-9022", 1),
(3, "Douglas", "94412-7893", 0),
(4, "Mateus", "91143-4312", 1),
(5, "Hélio", "97856-9925", 0),
(6, "Gabriel", "93423-9873", 1),
(7, "Marcos", "98283-2213", 0);
select*from estoque;
INSERT INTO estoque VALUES
(0, 50, "Arroz"),
(1, 40, "Feijão"),
(2, 15, "Carne Bovina - Contra Filet"),
(3, 12, "Filé de Frango"),
(4, 11, "Coxão Mole"),
(5, 48, "Ovo"),
(6, 30, "Feijão Preto"),
(7, 30, "Linguiça Calabresa"),
(8, 13, "Costela Suína"),
(9, 10, "Carne Seca");
ALTER TABLE Cliente ADD foreign key (IDentregador) references Entregadores(IDentregador);
ALTER TABLE Restaurantes ADD foreign key (IDapp) references App(IDapp);
ALTER TABLE Funcionarios ADD foreign key (IDrestaurante) references Restaurantes(IDrestaurante);
ALTER TABLE Gerentes ADD foreign key (IDfuncionario) references Funcionarios(IDfuncionario);
ALTER TABLE Gerentes ADD foreign key (IDfornecedor) references Fornecedores(IDfornecedor);
ALTER TABLE OpEstoque ADD foreign key (IDfuncionario) references Funcionarios(IDfuncionario);
ALTER TABLE OpEstoque ADD foreign key (IDproduto) references Estoque(IDproduto);
ALTER TABLE Cozinheiros ADD foreign key (IDfuncionario) references Funcionarios(IDfuncionario);
ALTER TABLE Cozinheiros ADD foreign key (IDprato) references Prato(IDprato);
ALTER TABLE Prato ADD foreign key (IDproduto1) references Estoque(IDproduto);
ALTER TABLE Prato ADD foreign key (IDproduto2) references Estoque(IDproduto);
ALTER TABLE Prato ADD foreign key (IDproduto3) references Estoque(IDproduto);
ALTER TABLE Prato ADD foreign key (IDproduto4) references Estoque(IDproduto);
ALTER TABLE Fornecedores ADD foreign key (IDproduto1) references Estoque(IDproduto);
ALTER TABLE Fornecedores ADD foreign key (IDproduto2) references Estoque(IDproduto);
ALTER TABLE Fornecedores ADD foreign key (IDproduto3) references Estoque(IDproduto);
ALTER TABLE Fornecedores ADD foreign key (IDproduto4) references Estoque(IDproduto);
ALTER TABLE App ADD foreign key (IDcliente) references Cliente(IDcliente);
ALTER TABLE Entregadores ADD foreign key (IDapp) references App(IDapp);