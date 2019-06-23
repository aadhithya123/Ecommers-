package ecomm;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ecomm.Dao.ProductDAO;
import com.ecomm.modal.Product;
@Controller
public class ProductManagerController {
@Autowired
ProductDAO productdao;

@RequestMapping("productManagement")
public String getProduct(Model m) {
	List<Product> product=productdao.getAllProduct();
	m.addAttribute("productlist",product);
	return "Product";
 }

@ModelAttribute("product")
public Product getProduct() {
	return new Product();
}

	@RequestMapping("editEmployeeModal/{id}")
	public String getEditProduct(@PathVariable int id , Model m) {
		Product product=productdao.find(id);
		m.addAttribute("productedit",product);
		return "Productedit";
	}
  
	
	@RequestMapping(value="updateproduct",method=RequestMethod.POST)
	public String getUpdateProduct(Product product) {
		productdao.updateproduct(product);
		return "redirect:/product";
	}

	@RequestMapping("deleteproduct/{id}")
	public String DeleteProduct(@PathVariable int id) {
		Product product=productdao.find(id);
		productdao.deleteproduct(product);
		return "redirect:/product";
	}}


