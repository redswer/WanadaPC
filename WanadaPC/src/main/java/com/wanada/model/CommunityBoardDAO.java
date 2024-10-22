package com.wanada.model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CommunityBoardDAO {

    // 데이터베이스 연결 정보
    private static final String URL = "jdbc:mysql://localhost:3306/your_database";
    private static final String USER = "your_username";
    private static final String PASSWORD = "your_password";

    // DB 연결 객체 생성 메소드
    private Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    // 게시글 리스트 가져오기
    public List<BoardPost> getBoardPosts() {
        List<BoardPost> posts = new ArrayList<>();
        String query = "SELECT * FROM board_posts ORDER BY created_at DESC";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                BoardPost post = new BoardPost();
                post.setId(rs.getInt("id"));
                post.setTitle(rs.getString("title"));
                post.setAuthor(rs.getString("author"));
                post.setCreatedAt(rs.getTimestamp("created_at"));
                post.setViews(rs.getInt("views"));
                posts.add(post);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return posts;
    }

    // 게시글 작성하기
    public boolean addBoardPost(BoardPost post) {
        String query = "INSERT INTO board_posts (title, author, content, created_at, views) VALUES (?, ?, ?, NOW(), 0)";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setString(1, post.getTitle());
            pstmt.setString(2, post.getAuthor());
            pstmt.setString(3, post.getContent());

            int result = pstmt.executeUpdate();
            return result > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    // 조회수 증가
    public void increaseViews(int postId) {
        String query = "UPDATE board_posts SET views = views + 1 WHERE id = ?";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setInt(1, postId);
            pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 특정 게시글 가져오기
    public BoardPost getBoardPostById(int id) {
        BoardPost post = null;
        String query = "SELECT * FROM board_posts WHERE id = ?";

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setInt(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    post = new BoardPost();
                    post.setId(rs.getInt("id"));
                    post.setTitle(rs.getString("title"));
                    post.setAuthor(rs.getString("author"));
                    post.setContent(rs.getString("content"));
                    post.setCreatedAt(rs.getTimestamp("created_at"));
                    post.setViews(rs.getInt("views"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return post;
    }
}

 


