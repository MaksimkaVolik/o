<article class="post" data-id="{news-id}">
    <div class="post-vote">
        <button class="vote-btn vote-up" onclick="votePost({news-id}, 'up')">
            <i class="fas fa-arrow-up"></i>
        </button>
        <span class="rating">{rating}</span>
        <button class="vote-btn vote-down" onclick="votePost({news-id}, 'down')">
            <i class="fas fa-arrow-down"></i>
        </button>
    </div>
    
    <div class="post-content">
        <h3 class="post-title"><a href="{link}">{title}</a></h3>
        
        <div class="post-meta">
            <span class="author"><i class="fas fa-user"></i> {author}</span>
            <span class="date"><i class="far fa-clock"></i> {date=d.m.Y H:i}</span>
            <span class="comments"><i class="far fa-comment"></i> {comments-num}</span>
            <span class="views"><i class="far fa-eye"></i> {views}</span>
        </div>
        
        {short-story}
        
        <div class="post-tags">
            [tags]<a href="/tags/{tag}" class="tag">#{tag}</a>[/tags]
        </div>
    </div>
</article>