{include file="header.tpl"}

<div class="container">
    <main class="content">
        <article class="post-full">
            <div class="post-header">
                <h1 class="post-title">{title}</h1>
                
                <div class="post-meta">
                    <div class="author-info">
                        <div class="author-avatar">
                            <img src="{foto}" alt="{author}" loading="lazy">
                        </div>
                        <div class="author-details">
                            <span class="author-name">{author}</span>
                            <span class="post-date">{date=d.m.Y H:i}</span>
                        </div>
                    </div>
                    
                    <div class="post-stats">
                        <span class="rating"><i class="fas fa-star"></i> {rating}</span>
                        <span class="views"><i class="far fa-eye"></i> {views}</span>
                    </div>
                </div>
            </div>
            
            <div class="post-content">
                {full-story}
                
                <div class="post-tags">
                    <strong>Теги:</strong>
                    [tags]<a href="/tags/{tag}" class="tag">#{tag}</a>[/tags]
                </div>
            </div>
            
            <div class="post-actions">
                <div class="vote-buttons">
                    <button class="vote-btn vote-up" onclick="votePost({news-id}, 'up')">
                        <i class="fas fa-arrow-up"></i> Лайк
                    </button>
                    <span class="rating">{rating}</span>
                    <button class="vote-btn vote-down" onclick="votePost({news-id}, 'down')">
                        <i class="fas fa-arrow-down"></i> Дизлайк
                    </button>
                </div>
                
                <div class="share-buttons">
                    <span>Поделиться:</span>
                    <a href="#" class="share-btn vk"><i class="fab fa-vk"></i></a>
                    <a href="#" class="share-btn tg"><i class="fab fa-telegram"></i></a>
                    <a href="#" class="share-btn tw"><i class="fab fa-twitter"></i></a>
                </div>
            </div>
        </article>
        
        {comments}
    </main>
    
    {include file="sidebar.tpl"}
</div>

{include file="footer.tpl"}