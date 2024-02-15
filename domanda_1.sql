SELECT COUNT(I.CodSoftware)
FROM INSTALLAZIONI AS I
INNER JOIN COMPUTER AS C ON I.CodComputer = C.CodComputer
INNER JOIN FORNITURE AS F ON F.marca = C.marca
WHERE F.[nome fornitore] = 'pippo' AND I.DataInstallazione = 'Z'
