CREATE TABLE `sr4_sem4`.`Element1` (
`ElemID1` INT NOT NULL, 
`ElemID2` INT NOT NULL,
`ElemName` varchar(50) NOT NULL,
PRIMARY KEY (`ElemID1`, `ElemID2`)
) engine = InnoDB DEFAULT CHARSET=utf8;