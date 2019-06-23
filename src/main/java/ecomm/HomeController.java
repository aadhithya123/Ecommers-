package ecomm;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecomm.Dao.ProductDAO;
import com.ecomm.Dao.UserDAO;
import com.ecomm.modal.Product;
import com.ecomm.modal.User;
@Controller
public class HomeController {
	@Autowired
	ProductDAO productdao;
	@RequestMapping("/home")
	public String getHomePage() {
		return "Home";
	}
	@RequestMapping("/index")
	public String getIndex() {
		return "index";
	}
	@RequestMapping("/UserHome")
	public String getUserHome(Model m) {
		List<Product>productlist=productdao.getAllProduct();
		System.out.println(productlist);
		m.addAttribute("productlist",productlist);
		return "UserHome";
	}
}

