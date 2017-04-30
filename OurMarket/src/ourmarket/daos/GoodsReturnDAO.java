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

import ourmarket.models.GoodsReturn;

/**
 * A data access object (DAO) providing persistence and search support for
 * GoodsReturn entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see ourmarket.models.GoodsReturn
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class GoodsReturnDAO {
	private static final Logger log = LoggerFactory.getLogger(GoodsReturnDAO.class);
	// property constants
	public static final String OID = "oid";
	public static final String RREASON = "rreason";
	public static final String RSTATE = "rstate";

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

	public void save(GoodsReturn transientInstance) {
		log.debug("saving GoodsReturn instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(GoodsReturn persistentInstance) {
		log.debug("deleting GoodsReturn instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public GoodsReturn findById(java.lang.Integer id) {
		log.debug("getting GoodsReturn instance with id: " + id);
		try {
			GoodsReturn instance = (GoodsReturn) getCurrentSession().get("ourmarket.models.GoodsReturn", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(GoodsReturn instance) {
		log.debug("finding GoodsReturn instance by example");
		try {
			List results = getCurrentSession().createCriteria("ourmarket.models.GoodsReturn")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding GoodsReturn instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from GoodsReturn as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByOid(Object oid) {
		return findByProperty(OID, oid);
	}

	public List findByRreason(Object rreason) {
		return findByProperty(RREASON, rreason);
	}

	public List findByRstate(Object rstate) {
		return findByProperty(RSTATE, rstate);
	}

	public List findAll() {
		log.debug("finding all GoodsReturn instances");
		try {
			String queryString = "from GoodsReturn";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public GoodsReturn merge(GoodsReturn detachedInstance) {
		log.debug("merging GoodsReturn instance");
		try {
			GoodsReturn result = (GoodsReturn) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(GoodsReturn instance) {
		log.debug("attaching dirty GoodsReturn instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(GoodsReturn instance) {
		log.debug("attaching clean GoodsReturn instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static GoodsReturnDAO getFromApplicationContext(ApplicationContext ctx) {
		return (GoodsReturnDAO) ctx.getBean("GoodsReturnDAO");
	}
}