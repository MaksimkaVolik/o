<!DOCTYPE html>
<html lang="ru" data-theme="light"> <!-- Добавим атрибут для тёмной темы -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{description}"> <!-- SEO -->
    <title>{title} | Ответ Форум</title> <!-- Унифицированный title -->
    
    <!-- Стили -->
    <link rel="stylesheet" href="{THEME}/css/style.css">
    
    <!-- Шрифты (оптимизировано: оставляем только IBM Plex Sans) -->
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Иконки (Font Awesome) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Каноническая ссылка (SEO) -->
    <link rel="canonical" href="{full-link}" />
</head>
<body class="page-{do}"> <!-- Добавим класс для страницы -->

{include file="header.tpl"}

<div class="container">
    <main class="content">
        <!-- Фильтры: Новые / Горячие / Топ (обновлённый дизайн) -->
        <div class="post-filters">
            <a href="/?do=latest" class="filter-btn active" data-filter="latest">
                <i class="fas fa-bolt"></i> Новые
            </a>
            <a href="/?do=hot" class="filter-btn" data-filter="hot">
                <i class="fas fa-fire"></i> Горячие
            </a>
            <a href="/?do=top" class="filter-btn" data-filter="top">
                <i class="fas fa-trophy"></i> Топ
            </a>
        </div>

        <!-- Лента постов -->
        <div class="posts-list">
            {content}
                {include file="post_short.tpl"}
            {/content}
        </div>
        
        <!-- Пагинация -->
        <div class="pagination">
            [page-link]<a href="{page-link}" class="page">{page-num}</a>[/page-link]
            [page-count]<span class="current">{page-num}</span>[/page-count]
        </div>
    </main>

    {include file="sidebar.tpl"}
</div>

{include file="footer.tpl"}

<!-- Скрипты -->
<script src="{THEME}/js/main.js"></script>
</body>
</html>