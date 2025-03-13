<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagamento</title>
</head>
<body>
<style type="text/css">
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #091F4C;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 500px;
        height: 270px;
        text-align: center;
    }

    h1 {
        margin-bottom: 20px;
        font-size: 24px;
    }

    .payment-option {
        display: flex;
        align-items: center;
        margin-bottom: 15px;
    }

    .payment-option input[type="radio"] {
        display: none; /* Esconde o botão de rádio */
    }

    .payment-option label {
        display: flex;
        width: 200px;
        align-items: center;
        cursor: pointer;
        padding: 10px;
        border: 2px solid #ddd;
        border-radius: 5px;
        transition: border-color 0.3s;
        justify-content: center;
        text-align: center;
        margin: auto;
    }

    .payment-option label:hover {
        border-color: #f39c12; /* Muda a borda ao passar o mouse */
    }

    .payment-option input[type="radio"]:checked + label {
        border-color: #f39c12; /* Borda amarela quando selecionado */
        background-color: #f9f9f9; /* Fundo claro quando selecionado */
    }

    .payment-icon {
        width: 30px; /* Tamanho do ícone */
        height: auto;
        margin-right: 10px; /* Espaço entre o ícone e o texto */
    }

    .btn-pagar {
        background-color: #f39c12;
        color: #fff;
        border: none;
        padding: 10px;
        width: 100%;
        cursor: pointer;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s;
    }

    .btn-pagar:hover {
        background-color: #e67e22; /* Cor do botão ao passar o mouse */
    }
</style>
<div class="container">
    <h1>Escolha o Metodo de Pagamento</h1>
    <form action="processar_pagamento" method="post">
        <div class="payment-option">
            <input type="radio" id="pix" name="pagamento" value="pix" required>
            <label for="pix">
                <img src="img/pix.png" alt="Pix" class="payment-icon">
                Pix
            </label>
        </div>
        <div class="payment-option">
            <input type="radio" id="cartao" name="pagamento" value="cartao" required>
            <label for="cartao">
                <img src="img/cartao.png" alt="Cartão de Crédito" class="payment-icon">
                Cartao de Credito
            </label>
        </div>
        <button type="button" class="btn-pagar" onclick="window.location.href='SucessoPagamento.jsp'">Pagar</button>
    </form>
</div>

</body>
</html>