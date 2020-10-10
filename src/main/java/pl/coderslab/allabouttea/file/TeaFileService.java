package pl.coderslab.allabouttea.file;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import pl.coderslab.allabouttea.tea.Tea;

import javax.transaction.Transactional;
import java.io.IOException;
import java.util.List;

@RequiredArgsConstructor
@Service
@Transactional
public class TeaFileService {
    private final TeaFileRepository teaFileRepository;

    public TeaFile saveFileFromWebsite(MultipartFile file) throws IOException {
        TeaFile dbFile = new TeaFile();
        dbFile.setContentType(file.getContentType());
        dbFile.setOriginalFileName(file.getOriginalFilename());
        dbFile.setSize(file.getSize());
        dbFile.setData(file.getBytes());
        teaFileRepository.save(dbFile);
        return dbFile;
    }

    public TeaFile findDbFileById(long id){
        return teaFileRepository.findDbFileById(id);
    }

    public void deleteFile(TeaFile dbFile){
        teaFileRepository.deleteById(dbFile.getId());
    }

    public List<TeaFile> getAllFiles() {
        return teaFileRepository.findAll();
    }

}
