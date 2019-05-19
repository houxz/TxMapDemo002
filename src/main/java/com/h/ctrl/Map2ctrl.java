package com.h.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Map2ctrl {

	@RequestMapping(value="/2.web")
	public String getPage() {
		return "./map2";
	}
}
