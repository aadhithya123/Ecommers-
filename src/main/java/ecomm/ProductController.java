package ecomm;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import org.apache.commons.fileupload.MultipartStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.ecomm.Dao.CategoryDAO;
import com.ecomm.Dao.ProductDAO;
import com.ecomm.Dao.SupplierDAO;
import com.ecomm.modal.Category;
import com.ecomm.modal.Product;
import com.ecomm.modal.Supplier;
@Controller
public class ProductController {
@Autowired
ProductDAO productdao;
@Autowired 
CategoryDAO categorydao;
@Autowired
SupplierDAO supplierdao;

@RequestMapping("product")
public String getProductPage(Model m) {
	List<Product> product=productdao.getAllProduct();
	m.addAttribute("productlist",product);
	List<Category> categorylist=categorydao.getAllCategory();
	List<Supplier> supplierlist=supplierdao.getAllSupplier();
	m.addAttribute("supplierlist",supplierlist);
	m.addAttribute("categorylist",categorylist);
	return "Product";
}

@ModelAttribute("product")
public Product getProduct() {
	return new Product();
}
@ModelAttribute("productedit")
public Product productEdit() {
	return new Product();
}
@RequestMapping("addproduct")
public String addProduct(Product product,BindingResult result) {
	productdao.addProduct(product);
	MultipartFile image=(MultipartFile) product.getImage();
	byte[] bt=new byte[(int)image.getSize()];
	try {
		InputStream i=image.getInputStream();
		i.read(bt);
		FileOutputStream f=new FileOutputStream("/Users/aadhi/Downloads/project1/FlyingShopFrontend/src/main/webapp/resources/image/"+product.getProductid()+".jpg");
		f.write(bt);
		f.flush();
	}
	catch(Exception e) {
	      System.out.println(e);
	}
	return "redirect:/product";
}
@RequestMapping("viewproducts")
public String viewproducts(Model m)
{
	  List<Product> products =productdao.getAllProduct();
	  m.addAttribute("productlist", products);
	  return "ViewProduct";
}
@RequestMapping("prodesc/{productid}")
public String getProducDescription(@PathVariable int productid,Model m)
{
	Product product=productdao.find(productid);  
	 m.addAttribute("productlist",product);
	 return "Productdesc";
}}



