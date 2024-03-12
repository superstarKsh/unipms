package com.uni.unipms.common.Cache;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class UniSharedCache {

	private static SharedCache<String, String> uniMemCache;

	public static void getInstance() {
		if (uniMemCache == null) {
			uniMemCache = new SharedCache<String, String>();
		}
	}

	public static String get(String key) {
		return uniMemCache.get(key);
	}

	public static void put(String key, String value) {
		uniMemCache.put(key,value);
	}

	public void clear() {
		uniMemCache.clear();
	}

	public int usedEntries() {
		return uniMemCache.usedEntries();
	}

	public Collection<Map.Entry<String, String>> getAll() {
		return uniMemCache.getAll();
	}

	private static class SharedCache<Key, Value> {

		private LinkedHashMap<String, String>	memCache = null;

		private static final float  			hashTableLoadFactor = 0.75f;
		private int                  			cacheSize = 1000;
	
		public SharedCache() {
			int hashTableCapacity = (int)Math.ceil(this.cacheSize / hashTableLoadFactor) + 1;
			
			memCache = new LinkedHashMap<String, String>(hashTableCapacity, hashTableLoadFactor, true) {
	
			private static final long serialVersionUID = 1L;
	
			@Override
			protected boolean removeEldestEntry (Map.Entry<String, String> eldest) {
	    		return size() > SharedCache.this.cacheSize; }
			}; 
		}
		
		public synchronized String get(String key) {
			return memCache.get(key);
		}
		
		public synchronized void put(String key, String value) {
			memCache.put(key,value);
		}
		
		public synchronized void clear() {
			memCache.clear();
		}
		
		public synchronized int usedEntries() {
			return memCache.size();
		}
		
		public synchronized Collection<Map.Entry<String, String>> getAll() {
			return new ArrayList<Map.Entry<String, String>>(memCache.entrySet());
		}
	}
}
