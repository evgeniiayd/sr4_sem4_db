CREATE TABLE `sr4_sem4`.`Elements` (
`ElemenElemIdtsID` INT NOT NULL, 
`ElemId` INT REFERENCES `element`,
`Comment` TEXT,
PRIMARY KEY (`ElementsID`)
) engine = InnoDB DEFAULT CHARSET=utf8;