package ecomm;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ecomm.Dao.SupplierDAO;
import com.ecomm.modal.Supplier;
@Controller
public class SupplierController {
   @Autowired
   SupplierDAO supplierdao;
   @RequestMapping("supplier")
   public String getSupplierPage(Model m) {
	   List<Supplier> suppliers=supplierdao.getAllSupplier();
	   m.addAttribute("supplierlist",suppliers);
	return "Supplier";
   }
   @ModelAttribute("supplier")
   public Supplier getSupplier() {
	return new Supplier();
   }

@ModelAttribute("supplieredit")
public Supplier gettoSupplier() {
	return new Supplier();
}
   @RequestMapping(value="addsupplier", method=RequestMethod.POST)
   public String addSupplier(Supplier supplier) {
	   supplierdao.addSupplier(supplier);
	return "redirect:/supplier";
 }
}
