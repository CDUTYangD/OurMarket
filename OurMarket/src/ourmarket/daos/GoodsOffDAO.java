package ourmarket.daos;

import java.sql.Timestamp;
import java.util.List;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import ourmarket.models.GoodsOff;

/**
 * A data access object (DAO) providing persistence and search support for
 * GoodsOff entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see ourmarket.models.GoodsOff
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class GoodsOffDAO {
	private static final Logger log = LoggerFactory.getLogger(GoodsOffDAO.class);
	// property constants
	public static final String UID = "uid";
	public static final String GID = "gid";
	public static final String GOFF_REASON = "goffReason";

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

	public void save(GoodsOff transientInstance) {
		log.debug("saving GoodsOff instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(GoodsOff persistentInstance) {
		log.debug("deleting GoodsOff instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public GoodsOff findById(java.lang.Short id) {
		log.debug("getting GoodsOff instance with id: " + id);
		try {
			GoodsOff instance = (GoodsOff) getCurrentSession().get("ourmarket.models.GoodsOff", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(GoodsOff instance) {
		log.debug("finding GoodsOff instance by example");
		try {
			List results = getCurrentSession().createCriteria("ourmarket.models.GoodsOff").add(Example.create(instance))
					.list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding GoodsOff instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from GoodsOff as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUid(Object uid) {
		return findByProperty(UID, uid);
	}

	public List findByGid(Object gid) {
		return findByProperty(GID, gid);
	}

	public List findByGoffReason(Object goffReason) {
		return findByProperty(GOFF_REASON, goffReason);
	}

	public List findAll() {
		log.debug("finding all GoodsOff instances");
		try {
			String queryString = "from GoodsOff";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public GoodsOff merge(GoodsOff detachedInstance) {
		log.debug("merging GoodsOff instance");
		try {
			GoodsOff result = (GoodsOff) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(GoodsOff instance) {
		log.debug("attaching dirty GoodsOff instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(GoodsOff instance) {
		log.debug("attaching clean GoodsOff instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static GoodsOffDAO getFromApplicationContext(ApplicationContext ctx) {
		return (GoodsOffDAO) ctx.getBean("GoodsOffDAO");
	}
}