<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <script defer src="./js/main.js"></script>
    <script defer src="./js/fetchUser.js"></script>
    <title>Project</title>
</head>
<body>
    <header>
        <div class="btns-header">
            <button class="btn_login">Зарегестрироваться</button>
            <button class="btn_signIn">Войти</button>
        </div>
    </header>
    <main>
        <?php
            require './config.php';
            $connect = initialization();

            $sql = "SELECT *
            FROM `room`
            JOIN room_categories ON room.id_room = room_categories.id_room
            JOIN categories ON categories.id_category = room_categories.id_categories";
             
            $content = $connect->query($sql);

            while($row = $content->fetch_assoc()){
                if($row['image_path'] == null) $row['image_path'] = "./imgs/undefined/jpg";
                echo "
                <div class='room-item'>
                <img class='image_room' src='./imgs/$row[image_path]' alt=''>
                <h2 class='name'>$row[name]</h2>
                <p class='price_text'>$row[price]&#8381 за сутки</p>
                <p class='capacity'>Максимальная вместимость в человеках: $row[capacity]</p>
                <p class='catygery'>$row[type]</p>
            </div>
                ";
            }
        ?>
    </main>
    <footer>

    </footer>

    <div class="registration">
        <form id="login_form">
            <input type="text" name="login" placeholder="Введите ваш логин" required>
            <input type="password" name="password" placeholder="Введите ваш пароль" required>
            <input type="password" name="repeatPassword" placeholder="Повторите пароль" required>
            <input type="submit" name="btn_login" value="Зарегестрироваться">
        </form>
    </div>
</body>
</html>

<!-- SELECT *
FROM `room`
JOIN room_categories ON room.id_room = room_categories.id_room
JOIN categories ON categories.id_category = room_categories.id_categories -->

<!-- SELECT * 
FROM `room`
JOIN room_capacity ON room.id_room = room_capacity.id_room
JOIN capacity ON capacity.id_capacity = room_capacity.id_capacity -->