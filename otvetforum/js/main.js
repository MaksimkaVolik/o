document.addEventListener('DOMContentLoaded', function() {
    // Мобильное меню
    const mobileMenuToggle = document.querySelector('.mobile-menu-toggle');
    const headerNav = document.querySelector('.header-nav');
    
    if (mobileMenuToggle && headerNav) {
        mobileMenuToggle.addEventListener('click', function() {
            headerNav.classList.toggle('active');
            this.classList.toggle('active');
        });
    }

    // Плавная прокрутка для якорей
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth'
                });
            }
        });
    });

    // Обработчик для кнопки "Наверх"
    const scrollToTopBtn = document.createElement('div');
    scrollToTopBtn.className = 'scroll-to-top';
    scrollToTopBtn.innerHTML = '<i class="fas fa-arrow-up"></i>';
    scrollToTopBtn.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
    document.body.appendChild(scrollToTopBtn);

    window.addEventListener('scroll', () => {
        scrollToTopBtn.style.display = window.scrollY > 300 ? 'block' : 'none';
    });

    // Инициализация ленивой загрузки изображений
    if ('loading' in HTMLImageElement.prototype) {
        const lazyImages = document.querySelectorAll('img[loading="lazy"]');
        lazyImages.forEach(img => {
            img.src = img.dataset.src;
        });
    }

    // Обработчик для формы поиска
    const searchForm = document.querySelector('.search-form');
    if (searchForm) {
        searchForm.addEventListener('submit', function(e) {
            const query = this.querySelector('input[name="q"]').value.trim();
            if (query.length < 3) {
                e.preventDefault();
                alert('Введите минимум 3 символа для поиска');
            }
        });
    }
});

// Функция для AJAX-голосования
function votePost(postId, action) {
    fetch('/engine/ajax/vote.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `id=${postId}&action=${action}`
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            const ratingElement = document.querySelector(`.post[data-id="${postId}"] .rating`);
            if (ratingElement) {
                ratingElement.textContent = data.rating;
            }
        }
    })
    .catch(error => console.error('Error:', error));
}