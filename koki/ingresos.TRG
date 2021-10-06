TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tr_updStockIngresoAnular` AFTER UPDATE ON `ingresos` FOR EACH ROW BEGIN\n  UPDATE productos p\n    JOIN detalle_ingresos di\n      ON di.idproducto = p.id\n     AND di.idingreso = new.id\n     set p.stock = p.stock - di.cantidad;\nend'
sql_modes=524288
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8_unicode_ci'
