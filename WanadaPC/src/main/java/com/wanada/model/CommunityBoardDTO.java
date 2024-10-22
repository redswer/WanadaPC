package com.wanada.model;
public class CommunityBoardDTO {
    private int id;          // 게시물 ID
    private String title;    // 제목
    private String content;  // 내용
    private String writer;   // 작성자
    private String createdDate;  // 작성 날짜

    // 기본 생성자
    public CommunityBoardDTO() {}

    // 모든 필드를 포함한 생성자
    public CommunityBoardDTO(int id, String title, String content, String writer, String createdDate) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.createdDate = createdDate;
    }

    // Getter and Setter methods

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    // toString 메소드 (객체 정보를 문자열로 출력할 때 사용)
    @Override
    public String toString() {
        return "BoardDTO{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", createdDate='" + createdDate + '\'' +
                '}';
    }
}
