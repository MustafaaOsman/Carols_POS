<%-- 
    Document   : LoginStore
    Created on : 10 Jun 2022, 10:47:53
    Author     : muaad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store Login</title>
        <style>

h2{
font-size:35px;
}
.bars{
border-radius:5px;
border:none;
font-size:25px;
background-color:lightgrey;
}
#midbody{
font-size:25px;
background-color:white;
text-align:center;
width:450px;
height:550px;
position: absolute;
left:480px;
top:80px;
border:solid 3px grey;
}

#id{
  font-size:20px;
  background-color:white;
  border:1px solid black;
}
#header{
font-size:30px;
Position:fixed;
top:0;
left:0;
text-align:center;
background-color:blue;
width:100%;
}
#aline{
Position:fixed;
left:0px;
width:50;
height:10px;
background-color:blue;
border-radius: 20px;
}

.button{
  background-color: rgb(0, 0, 128);
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;

  font-size: 18px;

  width:300px;
  transition-duration: all 0.1s;
  cursor: pointer;
}
#H{
position:absolute;
left:600px;
top:10px;
}
.button:hover {
  background-color: rgb(0, 0, 80);
}
.button:active{
  background-color:rgb(0,0,50);
}
        </style>
    </head>
    <body style ="background-color:rgb(204, 224, 255)">
        <h1 id="H">Carols Boutique</h1>
        <br>
        <br>
        <br>
        <div id ="midbody" style="background-image:url('https://lh3.googleusercontent.com/pw/AM-JKLXMO5yDb4rwt4sEQrgiQOMODT_pJfb1SL2dd8vpb9xK6qq-v0-sLTcA7ci2YTgbCEc9EH-VWq56ksYL1wsRQOFNAtSXfc6cmCOwCtpfS-Hbcj4rYphCA-b4AYxOAjboLEyfbJ4HxwYWuwhl5jRgETc=w1095-h657-no?authuser=0'); background-size:cover;">
            <br>
            <br>
            <h2><u>Login Store</u></h2>
            <br>
            <label>Store ID number:</label><br>
            <input type="text" class="bars" id="fname" name="Id" placeholder ="253"><br><br>
            <label>Password:</label><br>
            <input type="text" class ="bars" id="fpassword" name="fname" placeholder ="password"><br><br>
            <br>
            <input type= "button" class="button"  id ="login" name = "button" value ="Login"><br>
            <br>
            <label>Failed to login store</label>
            <script>
                var document.getElementById('login').addEvenListener('click',loadUser);
                function loadUser(){
                    var xhr = new XMLHttpRequest(),id= document.getElementById('fname').value,fpassword=document.getElementById('fpassword').value;
                    xhr.open('POST','http://223.223.223.223:8080/Carols_Boutique_API/pos/store/loginStore',true);
                    xhr.setRequestHeader('Content-type','application/json;charset=UTF-8');
                    store= "{id:"+id+"password:"+fpassword+"}"}"
                    xhr.onload = function(){
                        console.log(this.responseText);
                        
                    }
                    xhr.send(store);
                    
                }
                
                
                
            </script>
        </div>

    </form>
</body>
</html>
