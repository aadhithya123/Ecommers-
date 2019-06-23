package ecomm;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ecomm.Dao.SupplierDAO;
import com.ecomm.modal.Product;
import com.ecomm.modal.Supplier;
@Controller
public class SupplierManagementController {
@Autowired
SupplierDAO supplierdao;

@RequestMapping("supplierManagement")
public String getSupplier(Model m) {
	List<Supplier>supplier=supplierdao.getAllSupplier();
	m.addAttribute("supplierlist",supplier);
	return "Supplieredit";
}

@RequestMapping("supplieredit/{id}")
public String getEdit(@PathVariable int id , Model m) {
 Supplier supplier=supplierdao.find(id);
 m.addAttribute("supplieredit",supplier);
 return "Supplieredit";
}

@ModelAttribute("supplieredit")
public Supplier gettoSupplier() {
	return new Supplier();
}

@RequestMapping(value="updatesupplier", method =RequestMethod.POST)
public String getUpdate(Supplier supplier) {
	supplierdao.updatesupplier(supplier);
	return "redirect:/supplier";
}
//request body la pogum

@RequestMapping("deletesupplier/{id}")
public String deleteSupplier(@PathVariable int id) {
 Supplier supplier=supplierdao.find(id);
  supplierdao.deletesupplier(supplier);
   return "redirect:/supplier";
}}