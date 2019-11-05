package net.orclmvn;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




@Controller
public class MasterController {
	
	
	@Autowired
	private UserService userService;
	

	@RequestMapping("/")
	public String usermain(Model model) {
		List<User> listUsers = userService.listAll();
		model.addAttribute("listUsers", listUsers);
		return "user";
	}
	
	@RequestMapping("/user")
	public String user(Model model) {
		List<User> listUsers = userService.listAll();
		model.addAttribute("listUsers", listUsers);
		return "user";
	}
	
	
	 @RequestMapping("/delete/{id}")
	    public String deleteCsr(@PathVariable(name = "id") int id) {
	        userService.delete(id);
	        return "userdeleted";       
	    }
	
    @RequestMapping("/userformadd")
    public String showNewcsrPage(Model model) {
        User TBL_USER_JAVA = new User();
        model.addAttribute("TBL_USER_JAVA", TBL_USER_JAVA );
         
        return "userformadd";
    }
    
    @RequestMapping("/userformupdate")
    public String updateNewcsrPage(Model model) {
        User TBL_USER_JAVA = new User();
        model.addAttribute("TBL_USER_JAVA", TBL_USER_JAVA );
         
        return "userformupdate";
    }
	
    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String updatecsr(@ModelAttribute("TBL_USER_JAVA") User TBL_USER_JAVA) {
        userService.save(TBL_USER_JAVA);
         
        return "/";
        
    }
	

	@ModelAttribute("brands")
	public List<String> initializeSections() {

		List<String> brands = new ArrayList<String>();
		brands.add("PANASONIC");
		brands.add("SAMSUNG");
		brands.add("SANYO");
		return brands;
	}
}

