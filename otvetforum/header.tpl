<header class="header">
    <div class="header-container">
        <!-- Логотип и название - более компактная версия -->
        <div class="header-logo">
            <a href="/" class="logo-link">
                <img src="{THEME}/images/logo.svg" alt="Ответ Форум" class="logo-img">
                <span class="logo-text">Ответ Форум</span>
            </a>
            <button class="mobile-menu-toggle" aria-label="Меню">
                <i class="fas fa-bars"></i>
            </button>
        </div>

        <!-- Улучшенный поиск с автодополнением -->
        <div class="header-search">
            <form action="/" method="get" class="search-form">
                <input type="hidden" name="do" value="search">
                <input type="hidden" name="subaction" value="search">
                <div class="search-wrapper">
                    <input type="text" 
                           name="q" 
                           placeholder="Поиск вопросов и ответов..." 
                           class="search-input"
                           autocomplete="off"
                           aria-label="Поиск по сайту">
                    <button type="submit" class="search-button">
                        <i class="fas fa-search"></i>
                    </button>
                    <div class="search-suggestions"></div>
                </div>
            </form>
        </div>

        <!-- Меню пользователя с иконками и dropdown -->
        <div class="header-user">
            {login}
            <div class="auth-buttons">
                <a href="/?do=register" class="btn btn-register">
                    <i class="fas fa-user-plus"></i> Регистрация
                </a>
                <a href="/?do=addnews" class="btn btn-primary btn-add-post">
                    <i class="fas fa-plus"></i> Создать пост
                </a>
            </div>
            <div class="user-dropdown" style="display: none;">
                <a href="/user/{login-id}"><i class="fas fa-user"></i> Профиль</a>
                <a href="/?do=logout"><i class="fas fa-sign-out-alt"></i> Выход</a>
            </div>
        </div>
    </div>

    <!-- Главная навигация с индикатором активной страницы -->
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