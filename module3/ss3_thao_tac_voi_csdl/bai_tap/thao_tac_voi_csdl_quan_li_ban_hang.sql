USE quan_li_ban_hang;

INSERT INTO customer (customer_name, customer_age)
VALUES
('Minh Quan', 10),
('Ngoc Oanh', 20),
('Hong Ha', 50);

INSERT INTO `order` (customer_id, order_date)
VALUES
(1, '2006-03-21'),
(2, '2006-03-23'),
(1, '2006-03-16');

INSERT INTO product (product_name, product_price)
VALUES
('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);

INSERT INTO order_detail
VALUES
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);
            
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT 
    order_id, order_date, order_total_price
FROM
    `order`;
    
    -- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
   c.customer_name,p.product_name
FROM
    customer c
	inner join `order` o on c.customer_id = o.customer_id
	inner join order_detail od on o.order_id = od.order_id
	inner join product p on p.product_id = od.product_id
order by c.customer_name;
 -- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select c.customer_id, c.customer_name
from customer c
where c.customer_id not in (
select customer_id
from `order`
);
--  Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của 
-- từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)      
select
    o.order_id,
    o.order_date,
    sum(p.product_price * od.order_quantity) as order_total_price
from`order` o
inner join order_detail od on o.order_id = od.order_id
inner join  product p on p.product_id = od.product_id
group by od.order_id;
