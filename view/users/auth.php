<form class="loginform"action="index.php?page=login" method="post">

       <div id="invulv2">
           
            <label class="inputlabel">Email: 
           
            </label> <input type="text" name="emaillogin" />
            
<?php if(!empty($errors['emaillogin'])) echo '<span class="error">' . $errors['emaillogin'] . '</span>'; ?>   
            <br>
            <label class="inputlabel">Password: </label><input type="password" name="wachtwoordlogin">
</div>
             <?php
    if(!empty($_SESSION['error'])) {
        echo '<div class="errorbox">' . $_SESSION['error'] . '</div>';
    }
    if(!empty($_SESSION['info'])) {
        echo '<div class="info box">' . $_SESSION['info'] . '</div>';
    }
    ?>
            <input class="submitregistreer" type="submit" value="Login" />


        
    </form>



