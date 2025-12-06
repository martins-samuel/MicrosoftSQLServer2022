CREATE DATABASE [VENDAS SUCOS];

CREATE DATABASE [VENDAS SUCOS 2] 
ON (
    NAME = 'VENDAS_SUCOS_2_DAT', 
    FILENAME ='C:\temp\VENDAS_SUCOS_02.MDF', 
    SIZE = 10, 
    MAXSIZE = 50, 
    FILEGROWTH = 5
) 
LOG ON (
    NAME = 'VENDAS_SUCOS_2_LOG', 
    FILENAME ='C:\temp\VENDAS_SUCOS_02.LDF', 
    SIZE = 10, 
    MAXSIZE = 50, 
    FILEGROWTH = 5
);
--Os diretorios devem existir previamente 
