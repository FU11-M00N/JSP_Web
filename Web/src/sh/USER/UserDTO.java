package sh.USER;
//��񿡼� ������ �������� ���� �ڹٷ� �����ϴ°�, �����°��� �����ϴ°�
public class UserDTO {

private String id;
private String password;
private String name;
private String nickname;
private String email;
private String area;
private String flag;

public String getId() {
 return id;
}
public void setId(String id) {
 this.id = id;
}
public String getPassword() {
 return password;
}
public void setPassword(String password) {
 this.password = password;
}
public String getName() {
 return name;
}
public void setName(String name) {
 this.name = name;
}
public String getNickname() {
 return nickname;
}
public void setNickname(String nickname) {
 this.nickname = nickname;
}
public String getEmail() {
 return email;
}
public void setEmail(String email) {
 this.email = email;
}
public String getArea() {
	 return area;
	}
public void setArea(String area) {
	 this.area = area;
}
public String getFlag() {
	 return flag;
}
public void setFlag(String flag) {
	 this.flag = flag;
}
@Override
public String toString() {
 return "UserDTO [id=" + id + ", password=" + password +  ", name="+ name+", nickname=" + nickname
   + ", email=" + email + ", area=" + area + ", flag=" + flag + "]";
}

} 