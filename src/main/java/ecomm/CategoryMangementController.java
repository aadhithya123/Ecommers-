package ecomm;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ecomm.Dao.CategoryDAO;
import com.ecomm.modal.Category;
@Controller
public class CategoryMangementController {
	@Autowired
	CategoryDAO categorydao;

	@RequestMapping("categoryManagement")
	public String getCategory(Model m){
		List<Category> categorys=categorydao.getAllCategory();
		//Model used to bind data to view
		m.addAttribute("editcategory",categorys);
		return "Categoryedit";
	}
	@RequestMapping("edit/{categoryid}")
	public String getCategoryedit(@PathVariable int categoryid,Model m){
	 Category category=categorydao.find(categoryid);
	 m.addAttribute("categoryedit", category);
		return "Categoryedit";
	}

	@ModelAttribute("categoryedit")
	public Category categoryedit(){
		return new Category();	
	}
	

    @RequestMapping(value="updatecategory",method=RequestMethod.POST)
public String getUpdateCategory(Category category) {
categorydao.updatecategory(category);
return "redirect:/category";
}

    @RequestMapping("delete/{id}")
public String deletecategory(@PathVariable int id) {
Category category=categorydao.find(id);
categorydao.deleteCategory(category);
return "redirect:/category";
}}

