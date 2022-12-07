package com.library.controller;

import com.library.model.entity.Author;
import com.library.model.entity.Book;
import com.library.model.entity.Publishing;
import com.library.service.AuthorService;
import com.library.service.PublishingService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class PublishingController {
    private final PublishingService publishingService;

    @GetMapping(value = "/publishing")
    public String publish(Model model) {
        List<Publishing> publishingList = publishingService.findAll();
        model.addAttribute("publishingList", publishingList);
        return "publishing";
    }

    @GetMapping(value = "/publishingDetails")
    public String authorBook(@RequestParam Integer id, Model model) {
        var publishing = publishingService.getPublishing(id);
        model.addAttribute("publishing", publishing);
        return "publishingDetails";
    }

    @GetMapping(value = "/showCreatePublishing")
    public String showCreatePublishing(Model model) {
        return "createPublishing";
    }

    @PostMapping(value = "/createPublishing")
    public String createPublishing(@ModelAttribute(value = "create") Publishing publishing, Model model) {
        publishingService.save(publishing);
        var publishingList = publishingService.findAll();
        model.addAttribute("publishingList", publishingList);
        return "publishing";
    }
}
