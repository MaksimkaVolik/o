<div class="add-post-container">
    <div class="add-post-header">
        <h1><i class="fas fa-pen-alt"></i> Создать новый пост</h1>
        <p>Поделитесь своими знаниями или задайте вопрос сообществу</p>
    </div>

    <form method="post" action="" class="add-post-form" id="post-form">
        <!-- Заголовок поста -->
        <div class="form-group">
            <label for="post-title">Заголовок*</label>
            <input type="text" 
                   id="post-title" 
                   name="title" 
                   placeholder="Напишите четкий и информативный заголовок" 
                   required
                   maxlength="120">
            <div class="char-counter"><span id="title-counter">0</span>/120 символов</div>
        </div>

        <!-- Редактор поста -->
        <div class="form-group">
            <label for="post-content">Содержание поста*</label>
            <div class="editor-toolbar">
                <button type="button" class="tool-btn" data-tag="b" title="Жирный"><i class="fas fa-bold"></i></button>
                <button type="button" class="tool-btn" data-tag="i" title="Курсив"><i class="fas fa-italic"></i></button>
                <button type="button" class="tool-btn" data-tag="h3" title="Заголовок"><i class="fas fa-heading"></i></button>
                <button type="button" class="tool-btn" data-tag="quote" title="Цитата"><i class="fas fa-quote-right"></i></button>
                <button type="button" class="tool-btn" data-tag="code" title="Код"><i class="fas fa-code"></i></button>
                <button type="button" class="tool-btn" data-tag="ul" title="Список"><i class="fas fa-list-ul"></i></button>
                <button type="button" class="tool-btn" data-tag="ol" title="Нумерованный список"><i class="fas fa-list-ol"></i></button>
                <button type="button" class="tool-btn" data-tag="link" title="Ссылка"><i class="fas fa-link"></i></button>
                <button type="button" class="tool-btn" id="upload-image" title="Изображение"><i class="fas fa-image"></i></button>
                <input type="file" id="image-upload" accept="image/*" style="display: none;">
            </div>
            <textarea id="post-content" 
                      name="full-story" 
                      placeholder="Подробно опишите ваш вопрос или тему..." 
                      required></textarea>
            <div class="editor-preview" id="editor-preview"></div>
        </div>

        <!-- Теги -->
        <div class="form-group">
            <label for="post-tags">Теги (до 5 тегов через запятую)</label>
            <input type="text" 
                   id="post-tags" 
                   name="tags" 
                   placeholder="например, программирование, php, dle, веб-разработка">
            <div class="tags-hint">Популярные теги: 
                <a href="#" class="tag-suggestion">dle</a>, 
                <a href="#" class="tag-suggestion">шаблоны</a>, 
                <a href="#" class="tag-suggestion">вопросы</a>
            </div>
        </div>

        <!-- Категория -->
        <div class="form-group">
            <label for="post-category">Категория*</label>
            <select id="post-category" name="category" required>
                <option value="">-- Выберите категорию --</option>
                <option value="1">Программирование</option>
                <option value="2">Веб-разработка</option>
                <option value="3">Дизайн</option>
                <option value="4">Администрирование</option>
            </select>
        </div>

        <!-- Дополнительные опции -->
        <div class="form-group options-group">
            <label>Дополнительно:</label>
            <div class="option-item">
                <input type="checkbox" id="allow-comments" name="allow_comments" checked>
                <label for="allow-comments">Разрешить комментарии</label>
            </div>
            <div class="option-item">
                <input type="checkbox" id="notify-replies" name="notify_replies">
                <label for="notify-replies">Уведомлять об ответах</label>
            </div>
        </div>

        <!-- Кнопки отправки -->
        <div class="form-actions">
            <button type="button" class="btn btn-preview" id="preview-btn">
                <i class="fas fa-eye"></i> Предпросмотр
            </button>
            <button type="submit" class="btn btn-primary">
                <i class="fas fa-paper-plane"></i> Опубликовать
            </button>
        </div>
    </form>
</div>