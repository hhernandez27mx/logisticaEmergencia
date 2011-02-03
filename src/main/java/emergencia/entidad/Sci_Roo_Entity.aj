// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package emergencia.entidad;

import emergencia.entidad.Sci;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Sci_Roo_Entity {
    
    declare @type: Sci: @Entity;
    
    declare @type: Sci: @Table(name = "sci", schema = "public");
    
    @PersistenceContext
    transient EntityManager Sci.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Sci.id;
    
    public Long Sci.getId() {
        return this.id;
    }
    
    public void Sci.setId(Long id) {
        this.id = id;
    }
    
    @Transactional
    public void Sci.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Sci.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Sci attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Sci.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public Sci Sci.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Sci merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Sci.entityManager() {
        EntityManager em = new Sci().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Sci.countScis() {
        return entityManager().createQuery("select count(o) from Sci o", Long.class).getSingleResult();
    }
    
    public static List<Sci> Sci.findAllScis() {
        return entityManager().createQuery("select o from Sci o", Sci.class).getResultList();
    }
    
    public static Sci Sci.findSci(Long id) {
        if (id == null) return null;
        return entityManager().find(Sci.class, id);
    }
    
    public static List<Sci> Sci.findSciEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Sci o", Sci.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
