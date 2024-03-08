CREATE TABLE `data_platform_point_transaction_point_transaction_data`
(
  `PointTransaction`                 int(20) NOT NULL,
  `TransactionType`                  varchar(3) NOT NULL,
  `TransactionDate`                  date NOT NULL,
  `TransactionTime`                  time NOT NULL,
  `BusinessPartner`                  int(12) NOT NULL,
  `PointCode`                        varchar(5) NOT NULL,
  `PlusMinus`                        varchar(1) NOT NULL,
  `TransactionalPoint`               float(13) NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,

    PRIMARY KEY (`PointTransaction`),

    CONSTRAINT `DPFMPointBalancePointBalanceDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPointBalancePointBalanceDataPointCode_fk` FOREIGN KEY (`PointCode`) REFERENCES `data_platform_point_code_point_code_data` (`PointCode`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
