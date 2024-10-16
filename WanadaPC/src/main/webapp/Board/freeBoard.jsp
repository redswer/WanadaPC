<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자유게시판 : 와나다 DPG는 내맘을 디피지</title>
    <meta name="keywords" content="자유게시판, 커뮤니티, 게시물">
    <meta name="description" content="와나다 DPG 자유게시판에서 알차고 즐거운 소식을 확인하세요.">
    <link rel="stylesheet" type="text/css" href="/css/slick.css?v=20241009231719">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 1rem;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin-right: 20px;
        }
        main {
            padding: 20px;
        }
        #post-form {
            margin-bottom: 20px;
        }
        #post-list {
            margin-top: 20px;
        }
        .post {
            border: 1px solid #ccc;
            margin-bottom: 10px;
            padding: 10px;
        }
    </style>
    <script>
        const posts = [];

        function submitPost() {
            const title = document.getElementById('title').value;
            const content = document.getElementById('content').value;

            if (title && content) {
                const post = { title, content };
                posts.push(post);
                displayPosts();
                clearForm();
            } else {
                alert("제목과 내용을 입력해주세요.");
            }
        }

        function displayPosts() {
            const postList = document.getElementById('post-list');
            postList.innerHTML = ''; // 기존 게시물 초기화
            posts.forEach((post) => {
                const postItem = document.createElement('div');
                postItem.className = 'post';
                postItem.innerHTML = `<h3>${post.title}</h3><p>${post.content}</p>`;
                postList.appendChild(postItem);
            });
        }

        function clearForm() {
            document.getElementById('title').value = '';
            document.getElementById('content').value = '';
        }
    </script>
</head>
<body>
    <header>
        <h1>자유게시판</h1>
        <nav>
            <ul>
                <li><a href="#">홈</a></li>
                <li><a href="#">글쓰기</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section id="post-form">
            <h2>새 게시물 작성</h2>
            <input type="text" id="title" placeholder="제목">
            <textarea id="content" placeholder="내용"></textarea>
            <button id="submit" onclick="submitPost()">게시하기</button>
        </section>
        <section id="post-list">
            <h2>게시물 목록</h2>
            <!-- 게시물 목록이 동적으로 추가될 부분 -->
        </section>
    </main>
    <footer>
        <p>&copy; 2024 자유게시판</p>
    </footer>
</body>
</html>

