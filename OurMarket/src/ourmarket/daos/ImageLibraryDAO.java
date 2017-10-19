package ourmarket.daos;

import java.util.List;

import org.apache.naming.java.javaURLContextFactory;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import ourmarket.models.ImageLibrary;
import sun.misc.JavaLangAccess;

/**
 * A data access object (DAO) providing persistence and search support for
 * ImageLibrary entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see ourmarket.models.ImageLibrary
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class ImageLibraryDAO {
	private static final Logger log = LoggerFactory.getLogger(ImageLibraryDAO.class);
	// property constants
	public static final String IMAGE_LIST_ID = "imageListId";
	public static final String IMAGE_SRC = "imageSrc";

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected void initDao() {
		// do nothing
	}

	public void save(ImageLibrary transientInstance) {
		log.debug("saving ImageLibrary instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ImageLibrary persistentInstance) {
		log.debug("deleting ImageLibrary instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ImageLibrary findById(java.lang.Long id) {
		log.debug("getting ImageLibrary instance with id: " + id);
		try {
			ImageLibrary instance = (ImageLibrary) getCurrentSession().get("ourmarket.models.ImageLibrary", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(ImageLibrary instance) {
		log.debug("finding ImageLibrary instance by example");
		try {
			List results = getCurrentSession().createCriteria("ourmarket.models.ImageLibrary")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding ImageLibrary instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from ImageLibrary as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByImageListId(Object imageListId) {
		return findByProperty(IMAGE_LIST_ID, imageListId);
	}

	public List findByImageSrc(Object imageSrc) {
		return findByProperty(IMAGE_SRC, imageSrc);
	}

	public List findAll() {
		log.debug("finding all ImageLibrary instances");
		try {
			String queryString = "from ImageLibrary";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ImageLibrary merge(ImageLibrary detachedInstance) {
		log.debug("merging ImageLibrary instance");
		try {
			ImageLibrary result = (ImageLibrary) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ImageLibrary instance) {
		log.debug("attaching dirty ImageLibrary instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ImageLibrary instance) {
		log.debug("attaching clean ImageLibrary instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ImageLibraryDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ImageLibraryDAO) ctx.getBean("ImageLibraryDAO");
	}
}