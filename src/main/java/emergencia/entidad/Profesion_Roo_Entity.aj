// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import emergencia.entidad.Profesion;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Profesion_Roo_Entity {
    
    declare @type: Profesion: @Entity;
    
    @PersistenceContext
    transient EntityManager Profesion.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_profesion")
    private Long Profesion.idProfesion;
    
    @Version
    @Column(name = "version")
    private Integer Profesion.version;
    
    public Long Profesion.getIdProfesion() {
        return this.idProfesion;
    }
    
    public void Profesion.setIdProfesion(Long id) {
        this.idProfesion = id;
    }
    
    public Integer Profesion.getVersion() {
        return this.version;
    }
    
    public void Profesion.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Profesion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Profesion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Profesion attached = this.entityManager.find(this.getClass(), this.idProfesion);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Profesion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public Profesion Profesion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Profesion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Profesion.entityManager() {
        EntityManager em = new Profesion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Profesion.countProfesions() {
        return entityManager().createQuery("select count(o) from Profesion o", Long.class).getSingleResult();
    }
    
    public static List<Profesion> Profesion.findAllProfesions() {
        return entityManager().createQuery("select o from Profesion o", Profesion.class).getResultList();
    }
    
    public static Profesion Profesion.findProfesion(Long id) {
        if (id == null) return null;
        return entityManager().find(Profesion.class, id);
    }
    
    public static List<Profesion> Profesion.findProfesionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Profesion o", Profesion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
