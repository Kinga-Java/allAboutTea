package pl.coderslab.allabouttea.file;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name="files")
@Getter
@Setter
@ToString(exclude = "data")
@EqualsAndHashCode(of="id")
public class TeaFile {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name="original_file_name")
    private String originalFileName;
    @Column(name="content_type", nullable = false)
    private String contentType;
    private Long size;
    @Lob
    @Basic(fetch=FetchType.LAZY, optional = false)
    @Column(nullable = false, columnDefinition = "MEDIUMBLOB")
    private byte[] data;
    //lub ścieżkę do pliku, do przechowywania plików
}
