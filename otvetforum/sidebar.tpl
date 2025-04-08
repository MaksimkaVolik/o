<aside class="sidebar">
    <!-- Блок "Популярные теги" -->
    <div class="sidebar-block">
        <h3>Популярные теги</h3>
        <div class="tags-list">
            {tags cloud="1" limit="20"}
        </div>
    </div>

    <!-- Блок "Топ пользователей" -->
    <div class="sidebar-block">
        <h3>Топ авторов</h3>
        <ul class="top-users">
            {custom category="users" template="top_users" limit="5"}
        </ul>
    </div>

    <!-- Рекламный блок -->
    <div class="sidebar-ad">
        <img src="{THEME}/images/ad-placeholder.jpg" alt="Реклама">
    </div>
</aside>