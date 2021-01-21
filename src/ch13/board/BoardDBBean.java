package ch13.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBBean {
   private static BoardDBBean instance = new BoardDBBean();
   public static BoardDBBean getInstance() {
      return instance;
   }
   
   private BoardDBBean() {   }
   
   private Connection getConnection() throws Exception{
      Context initCtx = new InitialContext();
      Context envCtx = (Context)initCtx.lookup("java:comp/env");
      DataSource ds = (DataSource)envCtx.lookup("jdbc/storage");
      return ds.getConnection();
      
   }
   
   public void insertArticle(BoardDataBean article) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      //int ref;
      //int re_step=0;
      //int re_level=0;
      int num = article.getNum();
      int ref = article.getRef();
      int re_step = article.getRe_step();
      int re_level = article. getRe_level();
      int number =0;
      String sql ="";
      
      try {
         conn = getConnection();
         
         sql ="select board_num from board_comment";
         pstmt = conn.prepareStatement(sql);
         rs = pstmt.executeQuery();
        if(rs.next()) {
           //ref = rs.getInt(1)+1; //max °ªÀ» ÁöÄªÇÏ´Â ¼Ó¼ºÀÌ ¾ø¾î¼­ ÀÎµ¦½º·Î ÁöÄªÇØÁÜ.
          number = rs.getInt(1)+1;
       }else {
//            //ref = 1;
            number = 1;
        }
         
        if(num!=0) { //´ñ±ÛÀÌ¶ó¸é
            sql = "update board_comment set re_step=re_step+1 where ref=? and re_step>?";
            if(!pstmt.isClosed()) pstmt.close();
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1, ref);
            pstmt.setInt(2, re_step);
            pstmt.executeUpdate();
            re_step = re_step+1;
            re_level = re_level+1;
         }
         else {
            ref = number;
            re_step = 0;
            re_level = 0;
            
         }
         
         sql = "insert into board_comment"
               + "(board_nick,board_content,reg_date,ref,re_step,"
               + "re_level,board_num)"
               + " values(?,?,?,?,?,?,?)";
         
         if(!pstmt.isClosed()) {
            pstmt.close();
         }
         
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, article.getBoard_nick());
         pstmt.setString(2, article.getBoard_content());
         pstmt.setTimestamp(3, article.getReg_date());
         pstmt.setInt(4, ref);
         pstmt.setInt(5,re_step);
         pstmt.setInt(6, re_level);
         pstmt.setString(7, article.getBoard_num());
         pstmt.executeUpdate();

         
      }catch(Exception e) {
         System.out.println("exception [insertArticle] : "+e.getMessage());
      }finally {
         if(rs!=null) {
            try {
               rs.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [rs] : "+e.getMessage());
            }
            
         }
         if(pstmt!=null) {
            try {
               pstmt.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [pstmt] : "+e.getMessage());
            }
            
         }
         if(conn!=null) {
            try {
               conn.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [conn] : "+e.getMessage());
            }
            
         }
      }
   }
   
   public int getArticleCount() {
      Connection conn =null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      int articlecount = 0;
      try {
         conn = getConnection();
         String sql = "select count(*) from board";
         pstmt = conn.prepareStatement(sql);
         rs = pstmt.executeQuery();
         
         if(rs.next()) {
            articlecount = rs.getInt(1);
         }else {
            articlecount = 0;
         }
         
      }catch(Exception e) {
         System.out.println("exception [getArticleCount] : "+e.getMessage());
      }finally {
         if(rs!=null) {
            try {
               rs.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [rs] : "+e.getMessage());
            }
            
         }
         if(pstmt!=null) {
            try {
               pstmt.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [pstmt] : "+e.getMessage());
            }
            
         }
         if(conn!=null) {
            try {
               conn.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [conn] : "+e.getMessage());
            }
            
         }
      }
      
      return articlecount;
   }
   
  // public List<BoardDataBean> getArticles(){
  public List<BoardDataBean> getArticles(int startRow,int articleSize){
      List<BoardDataBean> articleList = null;
      Connection conn =null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;

      try {
         
         conn = getConnection();
         String sql = "select * from board_comment order by  ref desc, re_step asc limit ?,?";
         
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, startRow-1);
         pstmt.setInt(2, articleSize);
         rs = pstmt.executeQuery();
         if(rs.next()) {
            articleList = new ArrayList<BoardDataBean>();
            do {
            BoardDataBean article = new BoardDataBean();
            article.setNum(rs.getInt("num"));
            article.setBoard_nick(rs.getString("board_nick"));
            article.setBoard_content(rs.getString("board_content"));
            article.setReg_date(rs.getTimestamp("reg_date"));
            article.setReadcount(rs.getInt("readcount"));
            article.setRef(rs.getInt("ref"));
            article.setRe_step(rs.getInt("re_step"));
            article.setRe_level(rs.getInt("re_level"));
            article.setBoard_num(rs.getString("board_num"));
            articleList.add(article);
            }while(rs.next());
         }
         
      }catch(Exception e) {
         System.out.println("exception [getArticles] : "+e.getMessage());
      }finally {
         if(rs!=null) {
            try {
               rs.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [rs] : "+e.getMessage());
            }
            
         }
         if(pstmt!=null) {
            try {
               pstmt.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [pstmt] : "+e.getMessage());
            }
            
         }
         if(conn!=null) {
            try {
               conn.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [conn] : "+e.getMessage());
            }
            
         }
      }
      return articleList;
   }
   
   public BoardDataBean getArticle(int num) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs =null;
      BoardDataBean article = null;
      
      try {
         conn = getConnection();

         String sql = "update board_comment set readcount=readcount+1 where num=?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, num);
         pstmt.executeUpdate();
         
         
         
         sql = "select * from board_comment where num=?";
         if(!pstmt.isClosed()) {
            pstmt.close();
            
         }
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, num);
         rs = pstmt.executeQuery();
         if(rs.next()) {
            article = new BoardDataBean();
            article.setNum(rs.getInt("num"));
            article.setBoard_nick(rs.getString("board_nick"));
            article.setBoard_content(rs.getString("board_content"));
            article.setReg_date(rs.getTimestamp("reg_date"));
            article.setReadcount(rs.getInt("readcount"));
            article.setRef(rs.getInt("ref"));
            article.setRe_step(rs.getInt("re_step"));
            article.setRe_level(rs.getInt("re_level"));
            article.setBoard_num(rs.getString("board_num"));
            
         }else {
            
         }
      }catch(Exception e) {
         System.out.println("exception [getArticle] : "+e.getMessage());
      }finally {
         if(rs!=null) {
            try {
               rs.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [rs] : "+e.getMessage());
            }
            
         }
         if(pstmt!=null) {
            try {
               pstmt.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [pstmt] : "+e.getMessage());
            }
            
         }
         if(conn!=null) {
            try {
               conn.close();
            }catch(SQLException e) {
               System.out.println("SQL Exception [conn] : "+e.getMessage());
            }
         }
      }
      
      return article;
   }
   
}