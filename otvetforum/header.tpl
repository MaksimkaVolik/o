<!DOCTYPE html>
<html lang="ru" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title} | Ответ Форум</title>
    <meta name="description" content="{description}">
    
    <!-- Шрифты -->
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Иконки -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Стили -->
    <link rel="stylesheet" href="{THEME}/css/style.css">
</head>
<body class="page-{do}">

<header class="header">
    <div class="header-container">
        <!-- Логотип и кнопка мобильного меню -->
        <div class="header-logo">
            <a href="/" class="logo-link">
                <img src="{THEME}/images/logo.svg" alt="Ответ Форум" class="logo-img">
                <span class="logo-text">Ответ Форум</span>
            </a>
            <button class="mobile-menu-toggle" aria-label="Меню">
                <i class="fas fa-bars"></i>
            </button>
        </div>

        <!-- Поиск -->
        <div class="header-search">
            <form action="/" method="get" class="search-form">
                <input type="hidden" name="do" value="search">
                <input type="hidden" name="subaction" value="search">
                <div class="search-wrapper">
                    <input type="text" 
                           name="q" 
                           placeholder="Поиск вопросов и ответов..." 
                           class="search-input"
                           autocomplete="off">
                    <button type="submit" class="search-button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
        </div>

        <!-- Меню пользователя -->
        <div class="header-user">
            {login}
            <div class="auth-buttons">
                <a href="/?do=register" class="btn btn-register">
                    <i class="fas fa-user-plus"></i> Регистрация
                </a>
                <a href="/?do=addnews" class="btn btn-primary btn-add-post">
                    <i class="fas fa-plus"></i> Создать
                </a>
            </div>
        </div>
    </div>

    <!-- Главная навигация -->
    <nav class="header-nav">
        <ul class="nav-list">
            <li class="nav-item {if $do == ''}active{/if}">
                <a href="/"><i class="fas fa-home"></i> Главная</a>
            </li>
            <li class="nav-item {if $do == 'top'}active{/if}">
                <a href="/?do=top"><i class="fas fa-trophy"></i> Топ</a>
            </li>
            <li class="nav-item {if $do == 'hot'}active{/if}">
                <a href="/?do=hot"><i class="fas fa-fire"></i> Горячее</a>
            </li>
            <li class="nav-item {if $do == 'categories'}active{/if}">
                <a href="/?do=categories"><i class="fas fa-tags"></i> Категории</a>
            </li>
        </ul>
    </nav>
</header>