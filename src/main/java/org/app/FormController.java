package org.app;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.app.Subscriber.Frequency;
import org.app.LoginToken;

@Controller
public class FormController {

    @ModelAttribute("frequencies")
    public Frequency[] frequencies() {
        return Frequency.values();
    }

    @RequestMapping(value="/form", method=RequestMethod.GET)
         public String loadFormPage(Model m) {
        m.addAttribute("subscriber", new Subscriber());
        return "registerPage";
    }

    @RequestMapping(value="/form", method=RequestMethod.POST)
    public String submitForm(@ModelAttribute Subscriber subscriber, Model m) {
        m.addAttribute("message", "Successfully saved person: " + subscriber.toString());
        return "registerPage";
    }

    @RequestMapping(value="/login", method=RequestMethod.GET)
    public String loadLoginPage(Model m) {
        m.addAttribute("login", new LoginToken());
        return "loginPage";
    }

    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String submitLogin(@ModelAttribute LoginToken login, Model m) {
        //login success message goes here eventually
        m.addAttribute("message", "Logged in as: " + login.toString());
        return "loginPage";
    }
}