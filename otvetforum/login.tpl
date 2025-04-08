<div class="auth-page">
    <div class="auth-container">
        <div class="auth-card">
            <h2 class="auth-title"><i class="fas fa-sign-in-alt"></i> Вход в аккаунт</h2>
            
            <form method="post" action="" class="auth-form">
                <div class="form-group">
                    <label for="login">Логин</label>
                    <input type="text" id="login" name="login" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Пароль</label>
                    <input type="password" id="password" name="password" required>
                </div>
                
                <div class="form-options">
                    <label class="remember-me">
                        <input type="checkbox" name="remember"> Запомнить меня
                    </label>
                    <a href="/?do=lostpassword" class="forgot-password">Забыли пароль?</a>
                </div>
                
                <button type="submit" class="btn btn-primary btn-block">Войти</button>
                
                <div class="auth-divider">или</div>
                
                <div class="social-login">
                    <a href="#" class="btn btn-social vk"><i class="fab fa-vk"></i> ВКонтакте</a>
                    <a href="#" class="btn btn-social google"><i class="fab fa-google"></i> Google</a>
                </div>
                
                <div class="auth-footer">
                    Нет аккаунта? <a href="/?do=register">Зарегистрируйтесь</a>
                </div>
            </form>
        </div>
    </div>
</div>