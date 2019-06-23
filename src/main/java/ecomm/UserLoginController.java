package ecomm;

import java.util.Collection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ecomm.Dao.ProductDAO;
import com.ecomm.modal.Product;
@Controller
public class UserLoginController {
	@RequestMapping("/")
	public String getIndex()
	{
		return "index";
	}
@RequestMapping("Login")
public String getLogin() {
	return "Login";
}
@RequestMapping(value="/login",method=RequestMethod.POST)
public ModelAndView login(@RequestParam(value="error", required=false) String error,@RequestParam(value="logout",required =false)String logout) {
	ModelAndView m=new ModelAndView();
	if(error!=null) {
	m.addObject("error","invalid username password");
	}
	if(logout!=null) {
		m.addObject("msg","You have left successfully.");
	}
	return m;
}
@Autowired
ProductDAO productdao;

@RequestMapping("/login_success")
public String loginSuccess(HttpSession session,Model m) {
System.out.println("---Login Successful---");
String page=null;
boolean loggedIn=true;

//Retrieving the username
String username=SecurityContextHolder.getContext().getAuthentication().getName();
session.setAttribute("username", username);
session.setAttribute("loggedIn", loggedIn);

//Retrieving role
Collection<GrantedAuthority>authorities=(Collection<GrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
for(GrantedAuthority role:authorities)
{
	
	if(role.getAuthority().equals("ROLE_ADMIN")) {
		page="Home";
	}
	else {
		List<Product>productlist=productdao.getAllProduct();
		System.out.println(productlist);
		m.addAttribute("productlist",productlist);
		page="UserHome";
	}
}
		return page;
} 
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req,HttpServletResponse res )
	{
		/*req.getSession(false).invalidate();
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
	       new	SecurityContextLogoutHandler().logout(req,res,auth);
	       req.getSession().setAttribute("loggedIn",false);   */
		return "redirect:/";
}
	@RequestMapping("/error")
	public String getToError(Model m) {
	
		m.addAttribute("error","invalid login credentials");
		return "Login";
	}
	
	
}