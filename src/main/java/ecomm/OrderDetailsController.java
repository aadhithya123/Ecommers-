package ecomm;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.Dao.BillingDetailsDAO;
import com.ecomm.Dao.CartDAO;
import com.ecomm.Dao.ProductDAO;
import com.ecomm.Dao.UserDAO;
import com.ecomm.modal.BillingDetails;
import com.ecomm.modal.Cart;
import com.ecomm.modal.OrderDetails;
import com.ecomm.modal.User;


@Controller
public class OrderDetailsController {
	@Autowired
	CartDAO cartdao;
	@Autowired
	ProductDAO productdao;
	@Autowired
	BillingDetailsDAO BillingDetailsdao;
	@Autowired
	UserDAO userdao;
	
@RequestMapping("/Checkout")
public String orderConfirmation(HttpSession session,Model m) {
	String username=(String) session.getAttribute("username");
	
	List<Cart>list=cartdao.getAllcartitems(username);
	float grandtotal=0;
	for(Cart cart:list) {
		grandtotal=grandtotal+(cart.getQuantity()*cart.getPrice());
	}
	m.addAttribute("grandtotal",grandtotal);
	session.setAttribute("gtotal", grandtotal);
	temp=grandtotal;
	m.addAttribute("cartlist",list);
	return "OrderConfirm";
}
float temp=0;
@RequestMapping("/BillingDetails/{cartid}")
public String showPayment(@PathVariable int cartid, Model m)
{
	Cart cart=cartdao.getCartitem(cartid);
	m.addAttribute("cart",cart);
	return "BillingDetails";
}

@RequestMapping(value="/BillingDetails/{cartid}",method=RequestMethod.POST)
public String showPaymentcard(@PathVariable int cartid,HttpServletRequest req, Model m,HttpSession session)
{
	 String ptype=req.getParameter("paymenttype");
	Cart cart=cartdao.getCartitem(cartid);
	m.addAttribute("cart",cart);
	BillingDetails obj=new BillingDetails();
	if(ptype.equals("card"))
	{
		String crd=req.getParameter("cardno");
		obj.setCardnumber(Long.parseLong(crd));
	}
	else
	{
		obj.setCardnumber((long) 0);
	}
    obj.setCartid(cart.getCartid()); 
    float gtotal=temp;
    obj.setProductprice((int)gtotal);
    BillingDetailsdao.insertBillingDetails(obj);
    String username=(String) session.getAttribute("username");
    User u=userdao.getUserByName(username);
    String useraddress=(String) session.getAttribute("useraddress");
    java.util.List<Cart> cartlist=cartdao.getAllcartitems(username);
    
    m.addAttribute("cartlist",cartlist);
    m.addAttribute("grandtotal",temp);
    OrderDetails order=new OrderDetails();
    order.setUsername(username);
    m.addAttribute("useraddress",u.getUseraddress());
    m.addAttribute("phoneno", u.getUserphone());
    
    String cartdetails="";
    for(Cart c:cartlist)
    {
    	order.setCartdetails(c.getCartdetails());
    	cartdetails=cart.getCartdetails();
    }
    cartdao.saveOrder(order);
    String orderno=cartdao.getOrder(cartdetails);
    m.addAttribute("orderid",orderno);
    cartdao.confirmCart(username);
    cartdao.confirmCart(useraddress);
    return "Successful";
}
}