package sh.USER;
//��񿡼� ���� �������°�, ���� �ٴ¾�.
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import sh.DB.DBConnection;
import sh.DB.DBClose;

//�α��� �������θ� �˼��ִ�.

public class UserDAO {

DBConnection cm = new DBConnection();
Connection con = null;

//�α��� �������θ��� ����

public UserDTO login(String id, String password){
UserDTO dto = new UserDTO();
con = cm.getConnection();
ResultSet rs = null;
PreparedStatement pstmt =null; //��������������
int cnt = 0;
String sql = "select * from member where id = ? and password = ?";

try{
 pstmt = con.prepareStatement(sql); //����
 pstmt.setString(1, id); //ù��° ?�� ��Ʈ�� id�� ����
 pstmt.setString(2, password);//�ι�° ?�� ��Ʈ�� pw ����
 
 rs=pstmt.executeQuery();//������ �����ؼ� ������� rs�� ����
 
 while(rs.next()){ //rs�� ���������� �ݺ�
  dto.setId(rs.getString("id"));
  dto.setPassword(rs.getString("password"));
  dto.setName(rs.getString("name"));
  dto.setNickname(rs.getString("nickname"));
  dto.setEmail(rs.getString("email"));
  dto.setArea(rs.getString("area"));   
  dto.setFlag(rs.getString("flag")); 
 }  

}catch(Exception e){
 System.out.println(e);
}finally{
 new DBClose().close(con,pstmt,rs); //��񿬰� ����
}
return dto;
}
public String pw_search(String id, String email){
	  con = cm.getConnection(); //con �����������
	  ResultSet rs = null;  //resultset�� ��񿡼� �Ѿ� �°� ����
	  PreparedStatement pstmt = null; //�������������� pstmt:�����ѱ�°�
	  String password = null;//ã����й�ȣ
	  String sql = "select password from member where id = ? and email = ?";
	  
	  try{
	   pstmt=con.prepareStatement(sql); //����
	   pstmt.setString(1, id); //ù��° ?�� ��Ʈ�� id�� ����
	   pstmt.setString(2, email);//�ι�° ?�� ��Ʈ�� pw ����
	   
	   rs=pstmt.executeQuery();//������ �����ؼ� ������� rs�� ����
	   while(rs.next()){ //rs�� ���������� �ݺ�
		   password = rs.getString("password"); //cnt�� ��񿡼� ������ cnt�� ����  
	   }
	   System.out.println(password);
	   new DBClose().close(con,pstmt,rs); //��񿬰� ����

	  }catch(Exception e){
	   System.out.println(e);
	  }
	  return password;
	 }
public String id_search(String name, String email){
	  con = cm.getConnection(); //con �����������
	  ResultSet rs = null;  //resultset�� ��񿡼� �Ѿ� �°� ����
	  PreparedStatement pstmt = null; //�������������� pstmt:�����ѱ�°�
	  String id = null;//ã����й�ȣ
	  String sql = "select id from member where name = ? and email = ?";
	  
	  try{
	   pstmt=con.prepareStatement(sql); //����
	   pstmt.setString(1, name); //ù��° ?�� ��Ʈ�� id�� ����
	   pstmt.setString(2, email);//�ι�° ?�� ��Ʈ�� pw ����
	   
	   rs=pstmt.executeQuery();//������ �����ؼ� ������� rs�� ����
	   while(rs.next()){ //rs�� ���������� �ݺ�
		   id = rs.getString("id"); //cnt�� ��񿡼� ������ cnt�� ����  
	   }
	   System.out.println(id);
	   new DBClose().close(con,pstmt,rs); //��񿬰� ����

	  }catch(Exception e){
	   System.out.println(e);
	  }
	  return id;
	 }
public int idCheck(String id){
	  int rst = 0;
	  Connection con = null;
	  PreparedStatement p = null;
	  ResultSet rs = null;
	  try{
		   con = cm.getConnection();
		   String sql = "select * from member where id=?";
		   p = con.prepareStatement(sql);
		   p.setString(1, id);
		   rs = p.executeQuery();
	   if(rs.next()){
		   rst = 1;
	   }
	  }catch(Exception e){
		  e.printStackTrace();
	  }finally{
		  new DBClose().close(con, p, rs);
	  }
	  return rst;
	 }
} 