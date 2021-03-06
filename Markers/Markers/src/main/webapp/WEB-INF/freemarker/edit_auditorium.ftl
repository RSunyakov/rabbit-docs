<#ftl encoding="UTF-8"/>
<#import "/spring.ftl" as spring/>
<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="<@spring.url '/css/bootstrap.css'/>">
    <title>Добавление аудитории</title>
</head>
<body class="bg-light">
<header><#include "header.ftl"></header>
<div class="main">
    <@spring.bind "auditorium"/>
    <@spring.bind "auditoriums"/>
    <form action="<@spring.url '/profile/auditorium'/>" method="POST">
        <div class="input-group-prepend">
            <label class="input-group-text" for="marker.color">Выберите номер аудитоии:</label>
        </div>
        <@spring.formSingleSelect "auditorium.name", auditoriums, "class='custom-select'"/>
        <@spring.showErrors "<br>"/>
        <br><br>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <button class="btn btn-secondary btn-sm" type="submit" value="Добавить аудиторию">Добавить аудиторию</button>
    </form>
</div>
</body>
</html>