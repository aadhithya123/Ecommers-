package ecomm;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.ecomm.Dao.CartDAO;
import com.ecomm.Dao.ProductDAO;
import com.ecomm.Dao.UserDAO;
import com.ecomm.modal.Cart;
import com.ecomm.modal.Product;
import com.ecomm.modal.User;
@Controller
public class CartController {
		@Autowired
		CartDAO cartdao;
		@Autowired
		ProductDAO productdao;
		@Autowired
		UserDAO userdao;
  @RequestMapping(value="addtocart/{productid}",method=RequestMethod.POST)
  public String getAddToCart(@PathVariable int productid,@RequestParam int quantity,HttpSession session,Model m) {
	  Cart cart=new Cart();
	  cart.setProductid(productid);
	  Product product=productdao.find(productid);
	   cart.setProductname(product.getProductname());
	   cart.setPrice(product.getProductprice());
	   cart.setQuantity(quantity);
	   cart.setStatus("N");
	   String username=(String) session.getAttribute("username");
	   User u=userdao.getUserByName(username);
	 
	   cart.setUsername(username);
	   cart.setUseraddress(u.getUseraddress());
	   
	   java.util.Date dt=new java.util.Date();
	   String currdate=dt.getDate()+(dt.getMonth()+1)+dt.getYear()+"";
	   cart.setCartdetails(username+currdate);
	   cartdao.addtocart(cart);
	   java.util.List<Cart> cartlist=cartdao.getAllcartitems(username);
	   m.addAttribute("cartlist",cartlist);
	   float grandtotal=0;
	   for(Cart c:cartlist)
	   {
		   grandtotal=grandtotal+(c.getPrice()*c.getQuantity());
	   }
	   m.addAttribute("grandtotal",grandtotal);
	   m.addAttribute("cart",cart);
	return "Viewcart";
	  
  }
  @RequestMapping(value="addtocartpro/{productid}",method=RequestMethod.GET)
  public String getToAddToCart(@PathVariable int productid,@RequestParam int quantity,HttpSession session,Model m) {
	  Cart cart=new Cart();
	  cart.setProductid(productid);
	  Product product=productdao.find(productid);
	   cart.setProductname(product.getProductname());
	   cart.setPrice(product.getProductprice());
	   cart.setQuantity(quantity);
	   cart.setStatus("N");
	   String username=(String) session.getAttribute("username");
	   User u=userdao.getUserByName(username);
	   cart.setUsername(username);
	   cart.setUseraddress(u.getUseraddress());
	   
	   java.util.Date dt=new java.util.Date();
	   String currdate=dt.getDate()+(dt.getMonth()+1)+dt.getYear()+"";
	   cart.setCartdetails(username+currdate);
	   cartdao.addtocart(cart);
	   java.util.List<Cart> cartlist=cartdao.getAllcartitems(username);
	   m.addAttribute("cartlist",cartlist);
	   m.addAttribute("phoneno", u.getUserphone());
	   float grandtotal=0;
	   for(Cart c:cartlist)
	   {
		   grandtotal=grandtotal+(c.getPrice()*c.getQuantity());
	   }
	   m.addAttribute("grandtotal",grandtotal);
	   m.addAttribute("cart",cart);
	return "Viewcart";
	  
  }
  
  @RequestMapping("cartdelete/{cartid}")
  public String getDelete(@PathVariable int cartid,Model m,HttpSession session) {
	  String username=(String) session.getAttribute("username");
	  Cart cart=cartdao.getCartitem(cartid);
	  cartdao.deletecart(cart);
	  java.util.List<Cart> cartlist=cartdao.getAllcartitems(username);
	   m.addAttribute("cartlist",cartlist);
	   float grandtotal=0;
	   for(Cart c:cartlist)
	   {
		   grandtotal=grandtotal+(c.getPrice()*c.getQuantity());
	   }
	   m.addAttribute("grandtotal",grandtotal);
	  
	  return "Viewcart";
  }
}
