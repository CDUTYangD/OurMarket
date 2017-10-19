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

import ourmarket.models.Adress;
import ourmarket.models.CircleInfo;

/**
 * A data access object (DAO) providing persistence and search support for
 * CircleInfo entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see ourmarket.models.CircleInfo
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class CircleInfoDAO {
	private static final Logger log = LoggerFactory.getLogger(CircleInfoDAO.class);
	// property constants
	public static final String CIRCLE_X = "circleX";
	public static final String CIRCLE_Y = "circleY";
	public static final String CIRCLE_NAME = "circleName";
	public static final String CIRCLE_DES = "circleDes";

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

	public void save(CircleInfo transientInstance) {
		log.debug("saving CircleInfo instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(CircleInfo persistentInstance) {
		log.debug("deleting CircleInfo instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}
	
	public void update(CircleInfo transientInstance) {
		log.debug("updateing CircleInfo instance");
		try {
			getCurrentSession().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}

	public CircleInfo findById(java.lang.Short id) {
		log.debug("getting CircleInfo instance with id: " + id);
		try {
			CircleInfo instance = (CircleInfo) getCurrentSession().get("ourmarket.models.CircleInfo", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(CircleInfo instance) {
		log.debug("finding CircleInfo instance by example");
		try {
			List results = getCurrentSession().createCriteria("ourmarket.models.CircleInfo")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding CircleInfo instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from CircleInfo as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByCircleX(Object circleX) {
		return findByProperty(CIRCLE_X, circleX);
	}

	public List findByCircleY(Object circleY) {
		return findByProperty(CIRCLE_Y, circleY);
	}

	public List findByCircleName(Object circleName) {
		return findByProperty(CIRCLE_NAME, circleName);
	}

	public List findByCircleDes(Object circleDes) {
		return findByProperty(CIRCLE_DES, circleDes);
	}

	public List findAll() {
		log.debug("finding all CircleInfo instances");
		try {
			String queryString = "from CircleInfo";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public CircleInfo merge(CircleInfo detachedInstance) {
		log.debug("merging CircleInfo instance");
		try {
			CircleInfo result = (CircleInfo) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(CircleInfo instance) {
		log.debug("attaching dirty CircleInfo instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(CircleInfo instance) {
		log.debug("attaching clean CircleInfo instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static CircleInfoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (CircleInfoDAO) ctx.getBean("CircleInfoDAO");
	}
}