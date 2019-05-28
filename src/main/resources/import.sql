
INSERT INTO "public"."order_main" VALUES (2147483643, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:20.439', 100.00, 0, '2018-03-15 12:52:20.439');
INSERT INTO "public"."order_main" VALUES (2147483645, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:29.007', 4.00, 0, '2018-03-15 12:52:29.007');
INSERT INTO "public"."order_main" VALUES (2147483641, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:07.428', 180.00, 2, '2018-03-15 12:52:53.664');
INSERT INTO "public"."order_main" VALUES (2147483647, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:52:35.289', 2.00, 2, '2018-03-15 12:52:55.919');
INSERT INTO "public"."order_main" VALUES (2147483649, '3100 Western Road A', 'customer2@email.com', 'customer2', '2343456', '2018-03-15 12:58:23.824', 150.00, 0, '2018-03-15 12:58:23.824');
INSERT INTO "public"."order_main" VALUES (2147483642, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:21.135', 4.00, 2, '2018-03-15 13:02:09.023');
INSERT INTO "public"."order_main" VALUES (2147483640, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:16.271', 20.00, 2, '2018-03-15 13:02:52.067');
INSERT INTO "public"."order_main" VALUES (2147483648, '3200 West Road', 'customer1@email.com', 'customer1', '123456789', '2018-03-15 13:01:06.943', 134.00, 1, '2018-03-15 13:02:56.498');

-- ----------------------------
-- Table structure for product_category

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO "public"."product_category" VALUES (1,	'Снятие макияжа',	0, '2018-03-14 00:26:05', '2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (2,	'Очищение',	1,	'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (3,	'Пиллинги, Скрабы',	2, '2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (4,	'Тонеры, Эмульсии, Сыворотки',	3, '2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (5,	'Маски для лица',	4,	'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (6, 'Крем для лица',	5,'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (7, 'BB, CC крема',	6,'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (8, 'Пудры',	7,	'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (9, 'Глаза',	8,	'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (10,	'Губы',	9, '2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (11,	'Продукты питания',	10,	'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (12,	'Уход за волосами',	11,	'2018-03-14 00:26:05',	'2018-03-10 00:26:05'
INSERT INTO "public"."product_category" VALUES (13,	'Хиты продаж!',	12,	'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (14,	'Новинки', 13,	'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (15,	'Товары для дома',	14,	'2018-03-14 00:26:05',	'2018-03-10 00:26:05');
INSERT INTO "public"."product_category" VALUES (16,	'Гаджеты',	15, '2018-03-14 00:26:05',	'2018-03-10 00:26:05');




-- ----------------------------
-- Records of product_in_order
-- ----------------------------

INSERT INTO "public"."product_in_order" VALUES ('001',	0,'2019-05-27 21:31:56',
                                                'Набор из миниаютюр очищающего крема Clean it Zero с текстурой сливочного щербета, эффективно очищающего загрязнения и стойкий макияж.',
                                                'https://stylestory.com.au/wp-content/uploads/2018/09/Banila-Clean-It-Zero-Special-Kit-510x510.jpg',
                                                'Очищающиe крема Banila Co. Clean it Zero', 430.00,	0,	7,'2019-05-26 18:18:13');
INSERT INTO "public"."product_in_order" VALUES ('002', 3,'2019-05-27 21:31:46',
                                                'Данный высокоэффективный серум для лица содержит комплекс питательных веществ для эффективной борьбы с морщинами. ',	'https://hollyshop.ru/upload/iblock/13f/13f675bc6e566a59761126ae6eaa77ed.jpg',
 'Серум Mizon Original Skin Energy Peptide 500',	1190.00,	0,	2, '2019-05-27 21:31:46');
INSERT INTO "public"."product_in_order" VALUES ('003'	, 10,	'2019-05-27 21:33:26','Острая лапша со вкусом курицы.', 'https://images-na.ssl-images-amazon.com/images/I/91Uv1Ze9ONL._SX466_.jpg', 'Buldak Ramen', 50.00,	0, 10,	'2019-05-27 21:33:26');
INSERT INTO "public"."product_in_order" VALUES ('004',	4,'2019-05-27 21:34:56', 'Коллекция тканевых масок Real Nature Mask Sheet на основе натуральных цветов, растений и масел от производителя натуральной косметики Nature Republic', 'https://www.happy-berry.kiev.ua/wp-content/uploads/Nature-Republic-Real-Nature-Mask-Sheet-min.jpg', 'Тканевые маски для лица Nature Republic Real Nature Mask Sheet',	70.00,	1, 12,'2019-05-27 21:34:56');
INSERT INTO "public"."product_in_order" VALUES ('005', 9,	'2019-05-27 21:37:04', 'Ceramidin Lipair — скорая помощь для Ваших нуждающихся в заботе губ.', 'https://cosmic.net.ua/uploads/shop/products/large/307acedf59479abf8b6952d493ae348e.jpg', 'Увлажняющий бальзам для губ с керамидами Dr.Jart+ Ceramidin Lipair',	510.00,	1	,5,	'2019-05-27 21:37:04');
INSERT INTO "public"."product_in_order" VALUES ('006', 6,'2019-05-27 21:39:09',	'ББ-крем Secret Key является основой для дневного и вечернего макияжа, который маскирует недостатки кожи и устраняет причину их появления.', 'https://irecommend.ru/sites/default/files/product-images/46815/Kaa3d2YhDCeTvtosJgiQ.jpg', 'ББ-крем для идеального лица Secret Key Cover Up Skin Perfecter',	420, 1,	12,	'2019-05-27 21:39:09');
INSERT INTO "public"."product_in_order" VALUES ('007',	2, '2019-05-27 21:40:31', 'Средство удаляет все загрязнения с поверхности эпидермиса и из его глубоких слоев. Пилинг отшелушивает омертвевшие ткани, стимулирует микроциркуляцию, выводит шлаки и токсины.', 'https://images.shafastatic.net/41746539', 'Пилинг-гель Elizavecca Hell-Pore Vitamin Bright Turn Peeling Gel',	550.00	,0	,10,	'2019-05-27 21:40:31');


-- ----------------------------
-- Records of product_info

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (2147483641, 't', '3200 West Road', 'customer1@email.com', 'customer1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123456789', 'ROLE_CUSTOMER');
INSERT INTO "public"."users" VALUES (2147483642, 't', '2000 John Road', 'manager1@email.com', 'manager1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '987654321', 'ROLE_MANAGER');
INSERT INTO "public"."users" VALUES (2147483643, 't', '222 East Drive ', 'employee1@email.com', 'employee1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123123122', 'ROLE_EMPLOYEE');
INSERT INTO "public"."users" VALUES (2147483645, 't', '3100 Western Road A', 'customer2@email.com', 'customer2', '$2a$10$0oho5eUbDqKrLH026A2YXuCGnpq07xJpuG/Qu.PYb1VCvi2VMXWNi', '2343456', 'ROLE_CUSTOMER');

