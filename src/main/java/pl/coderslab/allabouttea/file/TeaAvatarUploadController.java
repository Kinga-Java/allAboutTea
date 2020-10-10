package pl.coderslab.allabouttea.file;

import lombok.RequiredArgsConstructor;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import pl.coderslab.allabouttea.tea.Tea;
import pl.coderslab.allabouttea.tea.TeaService;

import java.io.IOException;
import java.util.Optional;

@Controller
@RequestMapping("/files")
@RequiredArgsConstructor
public class TeaAvatarUploadController {

    private final TeaService teaService;
    private final TeaFileService teaFileService;
    private final TeaFileRepository teaFileRepository;

    @GetMapping
    public String prepareFilesPage(Model model) {
        model.addAttribute("files", teaFileService.getAllFiles());
        return "file/files";
    }

    @GetMapping("/{id:[\\d+]}")
    public ResponseEntity<Resource> getFile(@PathVariable Long id) {
        TeaFile teaFile = teaFileRepository.findWithDataById(id);
        ByteArrayResource resource = new ByteArrayResource(teaFile.getData());
        return ResponseEntity.ok()
                .contentType(MediaType.valueOf(teaFile.getContentType()))
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        // INLINE; FILENAME="user_01_avatar.png"
                        "INLINE; FILENAME=\"" + teaFile.getOriginalFileName() + "\"")
                .body(resource);
    }

    @PostMapping("/upload")
    public String uploadAttachments(@RequestPart(name = "file") MultipartFile file,
                                    @RequestParam long idTea,
                                    Model model) throws IOException {
        Optional<Tea> teaOptional = teaService.findTeaById(idTea);
        if (!teaOptional.isPresent()) {
          return "Nie odnaleziono herbaty o id" + idTea;
        }
        Tea tea = teaOptional.get();
        if(!file.isEmpty()){
            TeaFile teaFile = teaFileService.saveFileFromWebsite(file);
            teaService.saveAttachment(tea, teaFile);
            return "redirect:/tea/" + tea.getId();
        } else {
            model.addAttribute("emptyFile", "nie wybrano pliku");
            return "redirect:/tea/" + tea.getId();
        }
    }
}
