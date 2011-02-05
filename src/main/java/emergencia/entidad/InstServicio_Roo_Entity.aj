// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import emergencia.entidad.InstServicio;
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

privileged aspect InstServicio_Roo_Entity {
    
    declare @type: InstServicio: @Entity;
    
    @PersistenceContext
    transient EntityManager InstServicio.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long InstServicio.id;
    
    @Version
    @Column(name = "version")
    private Integer InstServicio.version;
    
    public Long InstServicio.getId() {
        return this.id;
    }
    
    public void InstServicio.setId(Long id) {
        this.id = id;
    }
    
    public Integer InstServicio.getVersion() {
        return this.version;
    }
    
    public void InstServicio.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void InstServicio.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void InstServicio.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            InstServicio attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void InstServicio.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public InstServicio InstServicio.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        InstServicio merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager InstServicio.entityManager() {
        EntityManager em = new InstServicio().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long InstServicio.countInstServicios() {
        return entityManager().createQuery("select count(o) from InstServicio o", Long.class).getSingleResult();
    }
    
    public static List<InstServicio> InstServicio.findAllInstServicios() {
        return entityManager().createQuery("select o from InstServicio o", InstServicio.class).getResultList();
    }
    
    public static InstServicio InstServicio.findInstServicio(Long id) {
        if (id == null) return null;
        return entityManager().find(InstServicio.class, id);
    }
    
    public static List<InstServicio> InstServicio.findInstServicioEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from InstServicio o", InstServicio.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}