package ecomm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ecomm.Dao.UserDAO;
import com.ecomm.modal.User;
import com.ecomm.modal.User_Roll;
@Controller
public class UserController {
	@Autowired
	UserDAO userdao;
	@RequestMapping("user")
	public String getUser(){   
		return "User";
	}
	@RequestMapping("indexabout")
	public String getAbout() {
		return "indexabout";
	}
	@RequestMapping("userabout")
	public String getUserAbout() {
		return "userAbout";
	}
	@RequestMapping("indexcontact")
	public String getIndexContact() {
		return "indexcontact";
	}
	@RequestMapping("contact")
	public String getContact() {
		return "ContactUs";
	}
	@ModelAttribute("userAttribute")
	public User getAttribute() {
		return new User();
}
   @RequestMapping(value="adduser", method=RequestMethod.POST)
   public String addUser(User user) { 
	   user.setEnabled(true);
	   userdao.addUser(user);
	  User_Roll roll=new User_Roll();
	  roll.setAuthority("ROLE_USER");
	  roll.setUserid(user.getUserid());
	  userdao.addUser_Roll(roll);
	return "User";
   }
}



