package com.kmu.worknet.job.service.util;

import java.util.List;

@FunctionalInterface
public interface ParseService {
	public List<String> UrlStringParser(String urlParam) ;
}
