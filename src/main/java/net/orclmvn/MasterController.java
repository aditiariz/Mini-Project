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
	
	

	
//  DIBAWAH INI ADALAH CONTROLLER MAPPING UNTUK DATABASE MEMBER	
	@RequestMapping("/user")
	public String user(Model model) {
		List<User> listUsers = userService.listAll();
		model.addAttribute("listUsers", listUsers);
		return "user";
	}
	
	@RequestMapping(value = "userformadd", method = RequestMethod.GET)
	public String assetform(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		return "userformadd";
	}
	
	
	@RequestMapping(value = "saveuser", method = RequestMethod.POST)
	public String SaveMember(@Valid User user, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "userformadd";
		}
		userService.save(user);
		return "redirect:/user";
	}
	
	 @RequestMapping("/delete/{id}")
	    public String deleteCsr(@PathVariable(name = "id") int id) {
	        userService.delete(id);
	        return "userdeleted";       
	    }
	
    @RequestMapping("/userformadd")
    public String showNewcsrPage(Model model) {
        User TBL_MEMBER = new User();
        model.addAttribute("TBL_MEMBER", TBL_MEMBER );
         
        return "userformadd";
    }
    
       
    @RequestMapping("/userformupdate")
    public String updateNewcsrPage(Model model) {
        User TBL_MEMBER = new User();
        model.addAttribute("TBL_MEMBER", TBL_MEMBER );
         
        return "userformupdate";
    }
	
    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String update(@ModelAttribute("TBL_MEMBER") User TBL_MEMBER) {
        userService.save(TBL_MEMBER);
         
        return "/";
        
    }
    
  //DI BAWAH INI ADALAH SETING UNTUK ASSET SERVICE
  	@Autowired
  	private AssetService assetService;
  	
//    DIBAWAH INI ADALAH CONTROLLER MAPPING UNTUK DATABASE ASSET
    
	@RequestMapping("/asset")
	public String asset(Model model) {
		List<Asset> listAsset = assetService.listAll();
		model.addAttribute("listAsset", listAsset);
		return "asset";
}
	@RequestMapping(value = "saveasset", method = RequestMethod.POST)
	public String SaveMember(@Valid Asset asset, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "assetformadd";
		}
		assetService.save(asset);
		return "redirect:/asset";
	}

    @RequestMapping("/assetformadd")
    public String showassetformadd(Model model) {
        User TBL_MEMBER = new User();
        model.addAttribute("TBL_MEMBER", TBL_MEMBER );
         
        return "assetformadd";
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

