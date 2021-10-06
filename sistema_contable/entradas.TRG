TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tr_updStockIngreso` AFTER INSERT ON `entradas` FOR EACH ROW BEGIN\n UPDATE productos SET stock = stock + NEW.cantidad \n WHERE productos.id = NEW.id_producto;\nEND'
sql_modes=1342177280
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8_spanish2_ci'
