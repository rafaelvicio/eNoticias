package br.com.esportsclub.controllers;

import br.com.esportsclub.infra.FileSaver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by rafae on 13/01/2017.
 */

@Controller
@RequestMapping("/upload")
public class UploadController {

    @Autowired
    private FileSaver fileSaver;

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String index(MultipartFile imagem, Model model) {

        System.out.println(imagem.getOriginalFilename());

        return "home.index.tiles";
    }

}