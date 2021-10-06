TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tr_updStockSalida` AFTER INSERT ON `salidas` FOR EACH ROW BEGIN\n  UPDATE productos \n     set stock = stock - NEW.cantidad\n     WHERE productos.id = NEW.id_producto;\nend'
sql_modes=1342177280
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8_spanish2_ci'
