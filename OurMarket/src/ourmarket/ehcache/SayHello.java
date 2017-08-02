package ourmarket.ehcache;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
@Service
public class SayHello implements ISayHello{
	@Cacheable(value="cacheTest",key="#param")
    public String getTimestamp(String param) {
        Long timestamp = System.currentTimeMillis();
        return timestamp.toString();
	}
}