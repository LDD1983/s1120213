<form action="../vote/api/login_api.php" method="post" class="login-form">
    <h3>會員登入</h3>
    <?php
    if (isset($_GET['error'])) {
        echo "<p style='color:red'>";
        echo "帳號密碼錯誤";
        echo "</p>";
    }
    if (isset($_GET['msg'])) {
        echo "<p style='color:orange'>";
        echo $msg[$_GET['msg']];
        echo "</p>";
    }
    ?>


    <div>

        <input type="text" name="acc" id="" placeholder="帳號">
    </div>
    <div>

        <input type="password" name="pw" id="" placeholder="密碼">
    </div>
    <div>
        <label for=""></label>
        <input type="submit" name="" id="" value="確定">
    </div>


</form>