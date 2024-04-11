CREATE TABLE `data_platform_point_transaction_header_data`
(
  `PointTransaction`                      int(20) NOT NULL,
  `PointTransactionType`                  varchar(3) NOT NULL,
  `PointTransactionDate`                  date NOT NULL,
  `PointTransactionTime`                  time NOT NULL,
  `Sender`                                int(12) NOT NULL,
  `Receiver`                              int(12) NOT NULL,
  `PointSymbol`                           varchar(5) NOT NULL,
  `PlusMinus`                             varchar(1) NOT NULL,
  `PointTransactionAmount`                float(13) NOT NULL,
  `PointTransactionObjectType`            varchar(3) NOT NULL,
  `PointTransactionObject`                int(16) NOT NULL,
  `SenderPointBalanceBeforeTransaction`   float(13) NOT NULL,
  `SenderPointBalanceAfterTransaction`    float(13) NOT NULL,
  `ReceiverPointBalanceBeforeTransaction` float(13) NOT NULL,
  `ReceiverPointBalanceAfterTransaction`  float(13) NOT NULL,
  `CreationDate`                          date NOT NULL,
  `CreationTime`                          time NOT NULL,
  `IsCancelled`                           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`PointTransaction`),

    CONSTRAINT `DPFMPointTransactionHeaderDataSender_fk` FOREIGN KEY (`Sender`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPointTransactionHeaderDataReceiver_fk` FOREIGN KEY (`Receiver`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPointTransactionHeaderDataPointSymbol_fk` FOREIGN KEY (`PointSymbol`) REFERENCES `data_platform_point_symbol_point_symbol_data` (`PointSymbol`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
