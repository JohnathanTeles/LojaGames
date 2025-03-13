<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <script src="https://apis.google.com/js/platform.js" async defer></script>


    <link rel="icon" type="image/png" sizes="32x32" href="https://images.lojanike.com.br/site/ni/favicon-32x32.png">

    <title>GameShop</title>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
        }



        /*******************MENU SUPERIOR**********************/

        .menu {
            width: 100%;
            background-color: #07183B;
            padding: 20px;
            position: fixed;
            z-index: 100;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            justify-content: space-between;

        }

        .logo {
            width: 400px;
            height: 75px;
            cursor: pointer;
            transition: 0.3s;
            transition: transform 0.3s ease;
            margin-left: 10%;
        }

        .menu a {
            color: #fff;
            text-decoration: none;
            font-size: 25px;
            transition: 0.3s;
            padding: 20px;
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

        .btn-logo {
            width: 350px;
            height: 100px;
        }

        .btn-logo:hover {
            transform: translateY(-3px); /* Move o link para cima */
        }

        .flex{
            display: flex;
            margin-right: 10%;
        }
        .flex img{
            width: 70px;
        }

        #img1 img{
            width: 100%;
        }

        #view {
            margin: 0 auto;
            max-width: 80%;
            background-color: white;
            margin-top: 2%;
            padding: 20px 40px;
            border-radius: 10px;
        }

        .lista ul {

            display: inline;
            text-align: center;
            font-size: 10px;
        }

        .lista{
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            text-align: center;
        }

        .lista li {
            display: flex;
            flex-direction: column;
            list-style-type: none;
            height: 360px;
            width: 276px;
            border-radius: 5px;
            padding: 1px;
            display: flex;
            align-items: center;
            margin-bottom: 5px;
            transition: ease-in 0.1s;
        }

        ul li{
            display: inline;
        }

        .lista li:hover {
            transform: scale(1.05);
        }

        .lista li #imgcard {
            height: 240px;
        }

        .lista li img{
            width: 100%;
        }

        .lista li p {
            background-color: white;

        }

        .lista li p.info {
            width: 100%;
            min-height: 46px;
            font-size: 20px;
            text-align: center;
        }

        .lista li p.valor {
            margin: 5px;
            background-color: white;
        }

        .valor{
            margin: 5px;
        }

        .lista li button {
            margin-right: 3px;
        }

        .btn {
            margin-top:5px;
            font-size: 1em;
            padding: 10px 17px;
            border: 0;
            background-color: black;
            color: white;
            cursor: pointer;
            transition: ease .2s;
            justify-content: center;
        }

        .btn:hover{
            box-shadow: 0px 4px 4px gray;
        }

        .btn:active{
            box-shadow: none;
        }

        .icon {
            width: 40px;
            cursor: pointer;
        }

        #carrinho {
            display: none;
            min-height: 700px;
        }
        #qtdCarrinho{
            position: relative;
            top: -77px;
            right: -24px;
            background-color: #fa4848;
            width: 17px;
            text-align: center;
            padding: 5px;
            border-radius: 19px;
            color: white;
            font-size: 13px;
            cursor: pointer;
        }

        #listaCarrinho{
            min-height: 820px;
        }

        .finalizado{
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: space-between;


            position: fixed;
            width: 500px;
            height: 200px;
            top: 50%;
            left: 50%;
            margin-top: -100px; /* Negative half of height. */
            margin-left: -250px; /* Negative half of width. */

            background-color: white;
            padding: 50px;
            border: solid 1px #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 0px 1000px #0606069c;
            padding: 20px 0;
            z-index: 400;
        }

        @media(max-width: 800px){
            .finalizado p{
                font-size: 25px;
            }
        }

        .valor{
            display: flex;
        }

        .finalizado a{
            margin-top: 2px;
        }

        button[value=finalizar]{
            position: fixed;
            margin-left: 800px;
            bottom: 5%;
            left: 10%;
        }

        .itemAdicionado{
            border-radius: 5px;
            border-left: solid 5px black;
            width: 300px;
            max-width: 80%;
            background-color: white;
            box-shadow: 11px 6px 8px 2px #0000001f;
            min-height: 80px;
            position: fixed;
            bottom: 10%;
            right: -350px;
            padding: 20px;
            transition: 0.4s;
            cursor: pointer;
            font-size: 20px;
            display: flex;
            flex-direction: column;
        }

        .ntInfo{
            margin-top: 10px;
        }

        header{
            height: 80px;
        }
        .fixed-menu img{
            margin-bottom: 10px;
        }
        .btnVoltar{
            margin-left: 100px;
        }

        footer{
            margin-top: 120px;
            height: 50px;
            width: 100%;

            justify-content: center;
            background-color: #07183B;
            color: white;
            padding-bottom: 30px;


            display: flex;
            flex-direction: column;
            text-align: center;
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

        .prod {
            text-align: center;
            font-size: 25px;
            color: #05122d;
            padding-bottom: 20px;
            padding-top: 10px;
        }


    </style>
</head>

<body>


<header>



    <div class="menu">
        <div class="logo">
            <a href="index.jsp">
                <img src="img/LOGOTR.png" class="btn-logo">
            </a>
        </div>

        <div class="flex">
            <div class="icon-container">
                <a href="login.jsp">
                    <img class="icon" id="iconlogin" src="img/homee.png" ">
                </a>
            </div>
            <div class="iconCarrinho1">
                <img id="iconCarrinho" class="icon" src="img/carrinho.png">
                <h2 id="qtdCarrinho">0</h2>
            </div>
        </div>
    </div>




    </div>







</header>
<div id="view">

    <div id="produtos">
        <div id="carrinhoTopo" class="prod">
            <h1>GAMES</h1>
        </div>
        <ul id="listaProdutos" class="lista">


        </ul>
    </div>

    <div id="carrinho">
        <div id="carrinhoTopo">
            <h1>Carrinho</h1>
            <p class="total"></p>
        </div>
        <ul id="listaCarrinho" class="lista">

        </ul>
        <button class="btn" value="finalizar" onclick="window.location.href='pagamento.jsp'">Comprar</button>

    </div>

    <div class="finalizado">
        <p>Compra finalizada !</p>
        <p class="total"></p>

        <a href="index.jsp"><button class="btn">Voltar ao site</button></a>
    </div>




</div>


<footer>

    <div class="rodape">
        <p>&copy; 2025 E-commerce de Jogos. Todos os direitos reservados.</p>
        <a href="#">Termos de Uso</a> | <a href="#">Política de Privacidade</a>
    </div>


</footer>

<div class="itemAdicionado">

    <p>Adicionado ao carrinho:</p>

    <p class="ntInfo"></p>
    <p class="ntValor"></p>
</div>

<script>
    var img1 = "img/fifa2025.png";
    var img2 = "img/rdr.png";
    var img3 = "img/minecraft.png";
    var img4 = "img/gta6.png";
    var img5 = "img/spider.png";
    var img6 = "img/detroid.png";
    var img7 = "img/BF1.png";
    var img8 = "img/Elden_Ring_capaa.jpg";
    var img9 = "img/batman.jpg";
    var img10 = "img/gta.png";
    var img11 = "img/cyberpunk2077.jpg";
    var img12 = "img/stardewV.jpg";

    var valorTotal = 0.0;

    var lista = [
        { "img": img1, "info": "EA SPORTS FC 25", "valor": 89.70, "qtd": 1, "valorTotal": 89.70, "status": 1 },
        { "img": img2, "info": "Red Dead Redemption 2", "valor": 249.99, "qtd": 1, "valorTotal": 249.99, "status": 1 },
        { "img": img3, "info": "MINECRAFT", "valor": 199.99, "qtd": 1, "valorTotal": 199.99, "status": 1 },
        { "img": img4, "info": "Grand Theft Auto VI", "valor": 999.99, "qtd": 1, "valorTotal": 999.99, "status": 1 },
        { "img": img5, "info": "Marvel's Spider-Man 2", "valor": 249.99, "qtd": 1, "valorTotal": 249.99, "status": 1 },
        { "img": img6, "info": "Detroit: Become Human", "valor": 39.99, "qtd": 1, "valorTotal": 39.99, "status": 1 },
        { "img": img7, "info": "Battlefield 1", "valor": 250, "qtd": 1, "valorTotal": 250, "status": 1 }, // Adicionei a vírgula aqui
        { "img": img8, "info": "Elden Ring", "valor": 249.99, "qtd": 1, "valorTotal": 249.99, "status": 1 }, // E aqui
        { "img": img9, "info": "Batman", "valor": 99.99, "qtd": 1, "valorTotal": 99.99, "status": 1 }, // E aqui
        { "img": img10, "info": "Grand Theft Auto V", "valor": 555.99, "qtd": 1, "valorTotal": 555.99, "status": 1 }, // E aqui
        { "img": img11, "info": "Cyberpunk2077", "valor": 299.99, "qtd": 1, "valorTotal": 299.99, "status": 1 }, // E aqui
        { "img": img12, "info": "Stardew Valley", "valor": 24.99, "qtd": 1, "valorTotal": 24.99, "status": 1 } // E aqui
    ];

    var carrinho = []

    lista.forEach(coisas => {
        $('#listaProdutos').append('<li><div id="imgcard"><img src="' + coisas.img + '"></div> <p class="info">' + coisas.info + '</p><p class="valor">R$' + coisas.valor + '</p><button class="btn" value="comprar">Adicionar</button></li>')
        chamarBotao()
    });

    function listar(){
        $("#listaCarrinho li").remove()
        carrinho.forEach(produto => {
            $('#listaCarrinho').append('<li><img src="' + produto.img + '"><p class="info">' + produto.info + '</p><div class="valor"><p class="qnt">'+ produto.qtd +'</p><p class="valorAtual">x R$' + produto.valor + '</p></div><div><button class="btn" value="subtrair">-1</button><button class="btn" value="excluir">excluir</button><button class="btn" value="Adicionar">+1</button></div></li>')
        })
        $('#qtdCarrinho').text(carrinho.length)

        chamarBotao()
    }

    $("button[value=comprar]").on("click", function() {
        var index = $(this).closest('li').index()

        if(lista[index].status==1){
            carrinho.unshift(lista[index])
            notificar(index)
        }else{
            notificar(index)
        }

        lista[index].status++

        listar()
        calcTotal()
    })

    function chamarBotao(){

        $("button[value=excluir]").on("click", function() {
            var index = $(this).closest('li').index()

            lista.forEach(produto =>{
                if(carrinho[index].img == produto.img){
                    produto.status = 1
                    produto.qtd = 1
                    produto.valorTotal = produto.valor
                }
            })

            carrinho[index].qtd = 1
            carrinho.splice(index,1)
            listar()
            chamarBotao()
            calcTotal()

        })


        $("button[value=Adicionar]").on("click", function(){
            var index = $(this).closest('li').index()

            carrinho[index].qtd++
            carrinho[index].valorTotal = carrinho[index].valor * carrinho[index].qtd

            calcTotal()
            listar()
        })

        $("button[value=subtrair]").on("click", function(){
            var index = $(this).closest('li').index()

            if(carrinho[index].qtd==1) {
                carrinho.splice(index,1)
                console.log('ola')
            }else{

                carrinho[index].qtd--
                carrinho[index].valorTotal = carrinho[index].valor * carrinho[index].qtd

            }

            calcTotal()
            listar()
        })

    }

    $(".iconCarrinho1").children().on("click", function(){
        let i = 0
        $("#produtos").fadeOut()
        $("#carrinho").fadeIn()
        calcTotal()

        if(i==0){
            chamarBotao()
        }

        i++
        console.log(i)
    })

    $("#iconHome").on("click", function(){
        $("#carrinho").fadeOut()
        $("#produtos").fadeIn()
    })

    function calcTotal(){
        valorTotal = 0.0;
        carrinho.forEach(produto => {
            valorTotal += produto.valorTotal
        })
        $(".total").text('Total: R$'+valorTotal.toFixed(2))
    }

    function notificar(index){

        if(lista[index].status==1){
            $(".itemAdicionado p").text('Adicionado ao carrinho:')
            $(".ntInfo").text(lista[index].info)
            $(".ntValor").text(lista[index].valor)
        }else{
            $(".itemAdicionado p").text('Produto já foi adicionado')
            $(".ntInfo").text("")
            $(".ntValor").text("")
        }
        $(".itemAdicionado").css("right","-2px")
        setTimeout(function(){
            $(".itemAdicionado").css("right","-350px")
        }, 2000);
    }
    $(".itemAdicionado").on("click", function(){
        $("#produtos").fadeOut()
        $("#carrinho").fadeIn()
        chamarBotao()
    })




</script>
</body>

</html>