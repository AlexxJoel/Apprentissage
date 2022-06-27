CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `usuario` (`id`,`nombre`,`telefono`,`email`) 
VALUES
(1,'Gonzalo Higuain','120949210','sadministracion@vitatours.com.pe'),
(2,'Miguel Ñim','8888888','snadas@vitatours.com.pe'),
(3,'Anguel  Ñem','120949210','comidajs@vitatours.com.pe'),
(4,'Jose  nam','26578292','loco@vitatours.com.pe');

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;