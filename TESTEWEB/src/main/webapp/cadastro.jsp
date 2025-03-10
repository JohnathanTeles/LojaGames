<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - E-commerce de Jogos</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #091F4C;
            color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            font-family: 'Work Sans', sans-serif;
        }

        /****************MENU***************/
        .menu {
            width: 100%;
            background-color: #07183B;
            padding: 20px;
            position: fixed;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            justify-content: space-between;
            align-items: center;
            text-align: center;
        }

        .logo {
            width: 250px;
            height: auto;
            cursor: pointer;
            transition: 0.3s;
            transition: transform 0.3s ease;
        }

        .menu a {
            color: #fff;
            text-decoration: none;
            font-size: 25px;
            transition: 0.3s;
            padding: 10px;
        }

        .links {
            position: relative; /* Para posicionar o submenu */
            display: flex; /* Adiciona flexbox para alinhar os itens em linha */
            gap: 30px; /* Adiciona um espaço de 30px entre os itens */
        }

        .links a {
            color: #fff;
            text-decoration: none;
            font-size: 25px;
            transition: background 0.3s ease, transform 0.3s ease; /* Transição suave para fundo e transformação */
            padding: 10px 20px;
            border-radius: 5px;
        }

        .links a:hover {
            background: #091F4C;
            transform: translateY(-5px) scale(1.05); /* Move o link para cima e aumenta um pouco o tamanho */
        }


        /******************SUBMENU**********************/
        .submenu {
            display: none; /* Esconde o submenu por padrão */
            position: absolute;
            background-color: #07183B;
            padding: 10px 0;
            border-radius: 5px;
            z-index: 1; /* Para garantir que o submenu fique acima de outros elementos */
        }

        .submenu-item {
            padding: 10px 20px;
            color: #fff;
            text-decoration: none;
            display: block; /* Para que o link ocupe toda a largura */
        }

        .submenu-item:hover {
            background-color: #091F4C;
        }
        .btnEntrar img{
            width: 70px;
        }
        .btnEntrar {
            margin-right: 10%;
        }

        .btnEntrar a {
            padding-right: 50px;

        }

        .btn-img {
            width: 120px;
            height: auto;
            cursor: pointer;
            transition: 0.3s;
            transition: transform 0.3s ease;
        }

        .btn-img:hover {
            transform: translateY(-3px); /* Move o link para cima */
        }

        .btn-logo {
            width: 220px;
            height: auto;
            cursor: pointer;
            transition: 0.3s;
            transition: transform 0.3s ease;
        }

        .btn-logo:hover {
            transform: translateY(-3px); /* Move o link para cima */
        }



        /****************LOGIN***************/
        .cart-container {
            display: flex;
            align-items: center;
            margin-left: 20px;
            background-color: #fff;
            padding: 5px 10px;
            border-radius: 5px;
        }

        .cart-container img {
            height: 24px;
            margin-right: 5px;
        }

        .cart-container a {
            color: #07183B;
            font-weight: bold;
            text-decoration: none;
        }

        .cart-container a:hover {
            color: #f39c12;
        }

        .login-container {
            background-color: #123A8C;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(255, 255, 255, 0.1);
            text-align: center;
            width: 400px;
            margin-top: 260px;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
            margin-bottom: 45px;
        }

        .login-container h2 {
            margin-bottom: 20px;
        }

        .login-container label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
        }

        .login-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: none;
            border-radius: 5px;
        }

        .login-container button {
            background-color: #f39c12;
            color: #fff;
            border: none;
            padding: 10px;
            width: 100%;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
            transition: 0.3s;
            margin-top: 15px;
        }

        .login-container button:hover {
            background-color: #e67e22;
        }

        .login-container p {
            margin-top: 10px;
        }

        .login-container a {
            color: #f39c12;
            text-decoration: none;
        }

        .login-container a:hover {
            text-decoration: underline;
        }

        .rodape {
            background-color: #07183B;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            font-size: 14px;
            width: 100%;
            margin-top: auto;
        }
    </style>
</head>
<body>
<header>

    <div class="menu">
        <div class="logo">
            <a href="index.jsp">
                <img src="imagens/Logo.png" class="btn-logo">
            </a>
        </div>

        <div class="btnEntrar">
            <a href="index.jsp">
                <img src="img/homee.png" class="btn-img">
            </a>
        </div>



    </div>

</header>


<div class="login-container">
    <h2>Criar minha conta</h2>
    <% if (request.getAttribute("mensagem") != null) { %>
    <p style="color: green;"><%= request.getAttribute("mensagem") %></p>
    <% } %>
    <% if (request.getAttribute("erro") != null) { %>
    <p style="color: red;"><%= request.getAttribute("erro") %></p>
    <% } %>
    <form action="cadastrar" method="post">

        <label for="nome">Nome:</label>
        <input type="text" name="nome" required placeholder="Digite seu nome"><br>

        <label for="email">E-mail:</label>
        <input type="email" name="email" required placeholder="Digite seu e-mail"><br>

        <label for="senha">Senha:</label>
        <input type="password" name="senha" required placeholder="Digite sua senha"><br>

        <label for="senha">Confirmar Senha:</label>
        <input type="password" name="confirmarSenha" required placeholder="Confirme sua senha"><br>


        <button type="submit">Cadastrar</button>
    </form>
    <p>Clique aqui para fazer login: <a href="login.jsp">Fazer login</a></p>
</div>
<div class="rodape">
    <p>&copy; 2025 E-commerce de Jogos. Todos os direitos reservados.</p>
    <a href="#">Termos de Uso</a> | <a href="#">Política de Privacidade</a>
</div>

<script>
    // Adicionando eventos para mostrar e esconder os submenus
    document.querySelectorAll('.menu-item').forEach(item => {
        item.addEventListener('mouseenter', () => {
            const submenu = item.querySelector('.submenu');
            if (submenu) {
                submenu.style.display = 'block'; // Mostra o submenu
            }
        });

        item.addEventListener('mouseleave', () => {
            const submenu = item.querySelector('.submenu');
            if (submenu) {
                submenu.style.display = 'none'; // Esconde o submenu
            }
        });
    });
</script>
</body>
</html>