package com.uni.unipms.common.Cache;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class UniSharedCacheObj {

	private static SharedCache<String, Object> uniMemCache;

	public static void getInstance() {
		if (uniMemCache == null) {
			uniMemCache = new SharedCache<String, Object>();
		}
	}

	public static Object get(String key) {
		return uniMemCache.get(key);
	}

	public static void put(String key, Object value) {
		uniMemCache.put(key,value);
	}

	public void clear() {
		uniMemCache.clear();
	}

	public int usedEntries() {
		return uniMemCache.usedEntries();
	}

	public Collection<Map.Entry<String, Object>> getAll() {
		return uniMemCache.getAll();
	}

	private static class SharedCache<Key, Value> {

		private LinkedHashMap<String, Object>	memCache = null;

		private static final float  			hashTableLoadFactor = 0.75f;
		private int                  			cacheSize = 1000;
	
		public SharedCache() {
			int hashTableCapacity = (int)Math.ceil(this.cacheSize / hashTableLoadFactor) + 1;
			
			memCache = new LinkedHashMap<String, Object>(hashTableCapacity, hashTableLoadFactor, true) {
	
			private static final long serialVersionUID = 1L;
	
			@Override
			protected boolean removeEldestEntry (Map.Entry<String, Object> eldest) {
	    		return size() > SharedCache.this.cacheSize; }
			}; 
		}
		
		public synchronized Object get(String key) {
			return memCache.get(key);
		}
		
		public synchronized void put(String key, Object value) {
			memCache.put(key,value);
		}
		
		public synchronized void clear() {
			memCache.clear();
		}
		
		public synchronized int usedEntries() {
			return memCache.size();
		}
		
		public synchronized Collection<Map.Entry<String, Object>> getAll() {
			return new ArrayList<Map.Entry<String, Object>>(memCache.entrySet());
		}
	}
}
