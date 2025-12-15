<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Enterprise Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2563eb;
            --primary-dark: #1d4ed8;
            --primary-light: #dbeafe;
            --dark-gray: #374151;
            --gray: #6b7280;
            --light-gray: #f9fafb;
            --border-color: #e5e7eb;
            --success-color: #10b981;
            --shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        body {
            display: flex;
            min-height: 100vh;
            background-color: var(--light-gray);
            color: var(--dark-gray);
            line-height: 1.6;
        }

        .container {
            display: flex;
            width: 100%;
            max-width: 1200px;
            margin: auto;
            background-color: white;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: var(--shadow-lg);
        }

        .left-section {
            flex: 1.2;
            padding: 60px 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            background-color: white;
        }

        .right-section {
            flex: 1;
            background: linear-gradient(135deg, #f8fafc 0%, #f1f5f9 100%);
            padding: 60px 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            border-left: 1px solid var(--border-color);
        }

        .logo {
            display: flex;
            align-items: center;
            margin-bottom: 50px;
            color: var(--primary-color);
        }

        .logo-icon {
            width: 40px;
            height: 40px;
            background: linear-gradient(135deg, var(--primary-color), var(--primary-dark));
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 12px;
            color: white;
            font-size: 20px;
        }

        .logo-text {
            font-size: 24px;
            font-weight: 700;
            letter-spacing: -0.5px;
        }

        .logo-subtext {
            font-size: 12px;
            color: var(--gray);
            font-weight: 500;
            margin-top: 2px;
        }

        h2 {
            font-size: 32px;
            margin-bottom: 12px;
            color: var(--dark-gray);
            font-weight: 700;
            letter-spacing: -0.5px;
        }

        .subtitle {
            color: var(--gray);
            margin-bottom: 40px;
            font-size: 16px;
            font-weight: 400;
        }

        .form-group {
            margin-bottom: 24px;
        }

        .form-label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: var(--dark-gray);
            font-size: 14px;
        }

        .input-container {
            position: relative;
        }

        .input-icon {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray);
            font-size: 18px;
            transition: var(--transition);
        }

        .form-input {
            width: 100%;
            padding: 16px 16px 16px 50px;
            border: 1.5px solid var(--border-color);
            border-radius: 10px;
            font-size: 15px;
            transition: var(--transition);
            background-color: white;
            color: var(--dark-gray);
        }

        .form-input:focus {
            border-color: var(--primary-color);
            outline: none;
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.1);
        }

        .form-input:focus + .input-icon {
            color: var(--primary-color);
        }

        .password-toggle {
            position: absolute;
            right: 16px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: var(--gray);
            cursor: pointer;
            font-size: 18px;
            transition: var(--transition);
        }

        .password-toggle:hover {
            color: var(--dark-gray);
        }

        .form-options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            font-size: 14px;
        }

        .checkbox-container {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .checkbox-container input {
            position: absolute;
            opacity: 0;
            cursor: pointer;
            height: 0;
            width: 0;
        }

        .checkmark {
            height: 20px;
            width: 20px;
            background-color: white;
            border: 1.5px solid var(--border-color);
            border-radius: 5px;
            margin-right: 10px;
            position: relative;
            transition: var(--transition);
        }

        .checkbox-container input:checked ~ .checkmark {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .checkmark:after {
            content: "";
            position: absolute;
            display: none;
            left: 7px;
            top: 3px;
            width: 5px;
            height: 10px;
            border: solid white;
            border-width: 0 2px 2px 0;
            transform: rotate(45deg);
        }

        .checkbox-container input:checked ~ .checkmark:after {
            display: block;
        }

        .forgot-link {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
        }

        .forgot-link:hover {
            color: var(--primary-dark);
            text-decoration: underline;
        }

        .btn-login {
            width: 100%;
            padding: 16px;
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            margin-bottom: 25px;
            letter-spacing: 0.5px;
        }

        .btn-login:hover {
            background-color: var(--primary-dark);
            box-shadow: 0 4px 12px rgba(37, 99, 235, 0.2);
            transform: translateY(-1px);
        }

        .btn-login:active {
            transform: translateY(0);
        }

        .divider {
            display: flex;
            align-items: center;
            margin: 30px 0;
            color: var(--gray);
            font-size: 14px;
        }

        .divider::before,
        .divider::after {
            content: "";
            flex: 1;
            height: 1px;
            background-color: var(--border-color);
        }

        .divider-text {
            padding: 0 15px;
        }

        .social-login {
            display: flex;
            gap: 16px;
            margin-bottom: 30px;
        }

        .social-btn {
            flex: 1;
            padding: 14px;
            border: 1.5px solid var(--border-color);
            border-radius: 10px;
            background-color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            font-weight: 500;
            cursor: pointer;
            transition: var(--transition);
            color: var(--dark-gray);
            font-size: 14px;
        }

        .social-btn:hover {
            border-color: var(--primary-color);
            background-color: var(--primary-light);
            transform: translateY(-1px);
        }

        .social-icon {
            font-size: 18px;
        }

        .google .social-icon {
            color: #DB4437;
        }

        .microsoft .social-icon {
            color: #00A4EF;
        }

        .github .social-icon {
            color: #333;
        }

        .signup-link {
            text-align: center;
            color: var(--gray);
            font-size: 15px;
        }

        .signup-link a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
        }

        .signup-link a:hover {
            color: var(--primary-dark);
            text-decoration: underline;
        }

        .right-section h3 {
            font-size: 28px;
            margin-bottom: 20px;
            color: var(--dark-gray);
            font-weight: 700;
            letter-spacing: -0.5px;
        }

        .right-section p {
            font-size: 16px;
            line-height: 1.7;
            margin-bottom: 40px;
            color: var(--gray);
        }

        .features {
            list-style: none;
        }

        .features li {
            margin-bottom: 24px;
            display: flex;
            align-items: flex-start;
            font-size: 15px;
        }

        .feature-icon {
            margin-right: 16px;
            font-size: 20px;
            color: var(--primary-color);
            background-color: var(--primary-light);
            width: 40px;
            height: 40px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }

        .feature-text {
            color: var(--dark-gray);
        }

        .feature-text strong {
            display: block;
            margin-bottom: 4px;
            color: var(--dark-gray);
        }

        .feature-desc {
            color: var(--gray);
            font-size: 14px;
        }

        @media (max-width: 992px) {
            .container {
                flex-direction: column;
                max-width: 600px;
                margin: 20px;
            }
            
            .right-section {
                border-left: none;
                border-top: 1px solid var(--border-color);
                order: 2;
                padding: 40px 30px;
            }
            
            .left-section {
                padding: 40px 30px;
            }
            
            .social-login {
                flex-direction: column;
            }
        }

        @media (max-width: 576px) {
            h2 {
                font-size: 28px;
            }
            
            .right-section h3 {
                font-size: 24px;
            }
            
            .form-options {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
            }
            
            .logo {
                margin-bottom: 30px;
            }
        }

        /* Loading animation */
        .spinner {
            animation: spin 1s linear infinite;
            display: inline-block;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* Success animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .success-message {
            background-color: #d1fae5;
            color: #065f46;
            padding: 12px 16px;
            border-radius: 8px;
            margin-top: 20px;
            display: none;
            animation: fadeIn 0.5s ease;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Left Section - Login Form -->
        <div class="left-section">
            <div class="logo">
                <div class="logo-icon">
                    <i class="fas fa-shield-alt"></i>
                </div>
                <div>
                    <div class="logo-text">SecurePortal</div>
                    <div class="logo-subtext">ENTERPRISE SECURITY</div>
                </div>
            </div>
            
            <h2>Welcome Back</h2>
            <p class="subtitle">Sign in to access your secure dashboard and tools</p>
            
            <form id="loginForm">
                <div class="form-group">
                    <label class="form-label" for="username">Email Address</label>
                    <div class="input-container">
                        <i class="fas fa-envelope input-icon"></i>
                        <input type="email" id="username" class="form-input" name="username" placeholder="name@company.com" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="form-label" for="password">Password</label>
                    <div class="input-container">
                        <i class="fas fa-lock input-icon"></i>
                        <input type="password" id="password" class="form-input" name="password" placeholder="Enter your password" required>
                        <button type="button" class="password-toggle" id="togglePassword">
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                </div>
                
                <div class="form-options">
                    <label class="checkbox-container">
                        <input type="checkbox" id="remember" name="remember">
                        <span class="checkmark"></span>
                        <span>Remember me for 30 days</span>
                    </label>
                    <a href="#" class="forgot-link" id="forgotPassword">Forgot Password?</a>
                </div>
                
                <button type="submit" class="btn-login" id="loginButton">
                    <span id="buttonText">Sign In to Dashboard</span>
                    <i class="fas fa-arrow-right" style="margin-left: 8px;"></i>
                </button>
                
                <div id="successMessage" class="success-message">
                    <i class="fas fa-check-circle" style="margin-right: 8px;"></i>
                    <span>Login successful! Redirecting to dashboard...</span>
                </div>
                
                <div class="divider">
                    <span class="divider-text">Or continue with</span>
                </div>
                
                <div class="social-login">
                    <button type="button" class="social-btn google">
                        <i class="fab fa-google social-icon"></i>
                        <span>Google</span>
                    </button>
                    <button type="button" class="social-btn microsoft">
                        <i class="fab fa-microsoft social-icon"></i>
                        <span>Microsoft</span>
                    </button>
                    <button type="button" class="social-btn github">
                        <i class="fab fa-github social-icon"></i>
                        <span>GitHub</span>
                    </button>
                </div>
                
                <div class="signup-link">
                    Don't have an account? <a href="#" id="signupLink">Request access</a>
                </div>
            </form>
        </div>
        
        <!-- Right Section - Features -->
        <div class="right-section">
            <h3>Enterprise-Grade Security</h3>
            <p>Access your organization's tools and data with confidence using our secure authentication system.</p>
            
            <ul class="features">
                <li>
                    <div class="feature-icon">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="feature-text">
                        <strong>End-to-End Encryption</strong>
                        <div class="feature-desc">All data is encrypted in transit and at rest with AES-256 encryption.</div>
                    </div>
                </li>
                <li>
                    <div class="feature-icon">
                        <i class="fas fa-user-shield"></i>
                    </div>
                    <div class="feature-text">
                        <strong>Multi-Factor Authentication</strong>
                        <div class="feature-desc">Add an extra layer of security with optional MFA for all accounts.</div>
                    </div>
                </li>
                <li>
                    <div class="feature-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <div class="feature-text">
                        <strong>Activity Monitoring</strong>
                        <div class="feature-desc">Track login activity and receive alerts for suspicious behavior.</div>
                    </div>
                </li>
                <li>
                    <div class="feature-icon">
                        <i class="fas fa-mobile-alt"></i>
                    </div>
                    <div class="feature-text">
                        <strong>Mobile Ready</strong>
                        <div class="feature-desc">Access your account securely from any device, anywhere.</div>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <script>
        // Password visibility toggle
        const togglePassword = document.getElementById('togglePassword');
        const passwordInput = document.getElementById('password');
        
        togglePassword.addEventListener('click', function() {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.innerHTML = type === 'password' ? '<i class="fas fa-eye"></i>' : '<i class="fas fa-eye-slash"></i>';
        });

        // Form submission handler
        const loginForm = document.getElementById('loginForm');
        const loginButton = document.getElementById('loginButton');
        const buttonText = document.getElementById('buttonText');
        const successMessage = document.getElementById('successMessage');
        
        loginForm.addEventListener('submit', async function(e) {
            e.preventDefault();
            
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const remember = document.getElementById('remember').checked;
            
            // Basic validation
            if (!username || !password) {
                showError('Please fill in all fields');
                return;
            }
            
            if (!validateEmail(username)) {
                showError('Please enter a valid email address');
                return;
            }
            
            // Show loading state
            loginButton.innerHTML = '<i class="fas fa-spinner spinner"></i> Authenticating...';
            loginButton.disabled = true;
            
            // Simulate API call delay
            await new Promise(resolve => setTimeout(resolve, 1500));
            
            // Reset button (in real app, this would be after successful auth)
            loginButton.innerHTML = '<span id="buttonText">Sign In to Dashboard</span><i class="fas fa-arrow-right" style="margin-left: 8px;"></i>';
            loginButton.disabled = false;
            
            // Show success message
            successMessage.style.display = 'block';
            
            // Simulate redirect after success
            setTimeout(() => {
                // In a real JSP application, you would redirect to another page
                // window.location.href = 'dashboard.jsp';
                console.log(`Login successful for: ${username}, Remember: ${remember}`);
                successMessage.innerHTML = '<i class="fas fa-check-circle" style="margin-right: 8px;"></i><span>Redirecting to dashboard...</span>';
            }, 1000);
        });

        // Social login button handlers
        document.querySelectorAll('.social-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                const provider = this.classList.contains('google') ? 'Google' : 
                                this.classList.contains('microsoft') ? 'Microsoft' : 'GitHub';
                alert(`Redirecting to ${provider} authentication...`);
            });
        });

        // Forgot password handler
        document.getElementById('forgotPassword').addEventListener('click', function(e) {
            e.preventDefault();
            const email = prompt('Please enter your email to reset password:');
            if (email && validateEmail(email)) {
                alert(`Password reset instructions have been sent to ${email}`);
            } else if (email) {
                alert('Please enter a valid email address');
            }
        });

        // Sign up link handler
        document.getElementById('signupLink').addEventListener('click', function(e) {
            e.preventDefault();
            alert('Redirecting to access request form...');
            // In a real application: window.location.href = 'signup.jsp';
        });

        // Helper functions
        function validateEmail(email) {
            const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return re.test(email);
        }

        function showError(message) {
            // Create error message element if it doesn't exist
            let errorElement = document.querySelector('.error-message');
            if (!errorElement) {
                errorElement = document.createElement('div');
                errorElement.className = 'error-message';
                errorElement.style.backgroundColor = '#fee2e2';
                errorElement.style.color = '#991b1b';
                errorElement.style.padding = '12px 16px';
                errorElement.style.borderRadius = '8px';
                errorElement.style.marginTop = '20px';
                errorElement.style.animation = 'fadeIn 0.5s ease';
                loginForm.appendChild(errorElement);
            }
            
            errorElement.innerHTML = `<i class="fas fa-exclamation-circle" style="margin-right: 8px;"></i>${message}`;
            errorElement.style.display = 'block';
            
            // Remove error after 5 seconds
            setTimeout(() => {
                errorElement.style.display = 'none';
            }, 5000);
        }

        // Add subtle animation to form inputs on focus
        document.querySelectorAll('.form-input').forEach(input => {
            input.addEventListener('focus', function() {
                this.parentElement.style.transform = 'translateY(-2px)';
            });
            
            input.addEventListener('blur', function() {
                this.parentElement.style.transform = 'translateY(0)';
            });
        });
    </script>
</body>
</html>
