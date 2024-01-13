<?php
include 'config.php';
global $conn;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi Tiết Đơn Hàng</title>
</head>
<body>
<div class="container-mt-5">
    <h2>Chi tiết đơn hàng của khách hàng</h2>
    <?php $sql = "SELECT  Customer.cid, Customer.name as customer_name, Orders.oid, Orders.date, Orders.quantity, Product.name as product_name, 
       Order_Detail.price, Order_Detail.discount 
        FROM Customer
        inner join Orders on Customer.cid = Orders.cid
        inner join Order_Detail on Orders.oid = Order_Detail.oid
        inner join Product on Order_detail.pid = Product.pid
        order by Customer.cid,Orders.oid";


    $result = $conn->query($sql);
    if ($result->num_rows >0){
        $currenCustomerId = 0;

        while ($row = $result->fetch_assoc()){
            if ($currenCustomerId != $row['cid']){
                // in thông tin khách hàng
                echo "<h4 class='mt-4'>Khách hàng:" . $row['customer_name']. "</h4>";
                $currenCustomerId = $row['cid'];

            }

            //in thông tin dơn hàng
            echo "<p><strong>Đơn hàng #" . $row['oid'] . "</strong></p>";
            echo "<p>Ngày đặt hàng:" . $row['date']."</p>";
            echo "<p>Số lượng:" . $row['quantity']."</p>";

            //in thông tin giá sản phẩm
            echo "<p><strong>Sản phẩm:" . $row['product_name'] . "</strong></p>";
            echo "<p>Giá:$" . $row['price']."</p>";
            echo "<p>Chiết khấu:$" . $row['discount']."</p>";

        }

    }else{
        echo"<p>không có dữ liệu</p>";
    }
    $conn->close();
    ?>
</div>
</body>
</html>
