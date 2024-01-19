-- Sửa bảng product với các thuộc tính bổ sung
ALTER TABLE product
ADD COLUMN code VARCHAR(255) NOT NULL,
ADD COLUMN image TEXT NOT NULL,
MODIFY COLUMN price DOUBLE(10,2) NOT NULL;

-- Insert dữ liệu mẫu cho trường bảng mới
INSERT INTO Product (pid, name, code, image, price)
VALUES (20, 'D', '22', 'images/p1.jpg', 1500.00),
       (21, 'E', '23', 'images/p1.jpg', 800.00),
       (22, 'X', '24', 'images/p1.jpg', 300.00),
       (23, 'Z', '25', 'images/p1.jpg', 800.00);

