package ecomm;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ecomm.Dao.CategoryDAO;
import com.ecomm.modal.Category;
@Controller
public class CategoryController{
	@Autowired
	CategoryDAO categorydao;
	@RequestMapping("category")
	public String getCategoryPaga(Model m) {
		List<Category> categorys=categorydao.getAllCategory();
		//Model used to bind data to view
		m.addAttribute("categorylist",categorys);
		return "Category";
	}
	@ModelAttribute("category")
	public Category getcategory() {
		return new Category();
	}
	@ModelAttribute("categoryedit")
	public Category categoryedit(){
		return new Category();	
	}
@RequestMapping(value="addcategory", method=RequestMethod.POST)
public String addCategory(Category category,BindingResult result){
    categorydao.addCategory(category);
	return "redirect:/category";
}}
