
<form action="./api/reg_api.php" method="post" class="reg">
    <h3>會員註冊</h3>
    <?php
    if(isset($_GET['error'])){
        echo "<span style='color:red'>";
        echo "帳號密碼不可為空";
        echo "</span>";
    }
    ?>
    <div>
       
        <input type="text" name="acc" id="acc" placeholder="帳號">
    </div>
    <div>
        
        <input type="password" name="pw" id="pw" placeholder="密碼">
    </div>
    <div>
   
        <input type="text" name="name" id="name" placeholder="姓名">
    </div>
    <div>
       
        <input type="text" name="addr" id="addr" placeholder="地址">
    </div>
    <div>
      
        <input type="text" name="email" id="email" placeholder="E-mail">
    </div>
    <div>
        <input type="submit" value="註冊">
    </div>
</form>