<!DOCTYPE html>
<html>
<head>
<title>URL Shortener</title>

<style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: radial-gradient(circle at top, #0f2027, #203a43, #2c5364);
    color: white;
}

/* NAVBAR */
.navbar {
    display: flex;
    justify-content: space-between;
    padding: 15px 40px;
    background: rgba(0,0,0,0.3);
    backdrop-filter: blur(10px);
}

.logo {
    font-weight: bold;
    font-size: 20px;
    color: #00f2fe;
}

/* MAIN CONTAINER */
.container {
    text-align: center;
    margin-top: 80px;
}

/* TITLE */
.title {
    font-size: 40px;
    font-weight: bold;
    background: linear-gradient(90deg, #00f2fe, #4facfe);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

/* INPUT BOX */
.input-box {
    margin-top: 30px;
}

input[type="text"] {
    width: 400px;
    padding: 14px;
    border-radius: 50px;
    border: none;
    outline: none;
    font-size: 15px;
}

/* BUTTON */
button {
    padding: 14px 25px;
    margin-left: 10px;
    border-radius: 50px;
    border: none;
    background: linear-gradient(90deg, #00f2fe, #4facfe);
    color: black;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    transform: scale(1.1);
    box-shadow: 0 0 20px #00f2fe;
}

/* RESULT BOX */
.result {
    margin-top: 30px;
    font-size: 18px;
    color: #00f2fe;
}

/* FEATURES SECTION */
.features {
    margin-top: 100px;
    display: flex;
    justify-content: center;
    gap: 40px;
}

.card {
    width: 200px;
    padding: 20px;
    border-radius: 15px;
    background: rgba(255,255,255,0.05);
    backdrop-filter: blur(10px);
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-10px);
    box-shadow: 0 0 20px #00f2fe;
}

/* FOOTER */
.footer {
    margin-top: 100px;
    padding: 20px;
    text-align: center;
    font-size: 12px;
    color: #aaa;
}
</style>

</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">⚡ ShortX</div>
    <div>Fast • Secure • Smart</div>
</div>

<!-- MAIN -->
<div class="container">
    <div class="title">Shorten Your Links Instantly</div>

    <form action="shorten" method="post" class="input-box">
        <input type="text" name="url" placeholder="Paste your long URL here..." required>
        <button type="submit">Shorten</button>
    </form>

    <!-- Optional Result Placeholder -->
    <div class="result">
        <!-- You can print result from servlet here later -->
    </div>
</div>

<!-- FEATURES -->
<div class="features">
    <div class="card">
        🚀 Fast
        <p>Instant URL shortening</p>
    </div>
    <div class="card">
        🔒 Secure
        <p>Safe redirection</p>
    </div>
    <div class="card">
        📊 Analytics
        <p>Track clicks (future)</p>
    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    Built with Java + Maven + Tomcat
</div>

</body>
</html>
