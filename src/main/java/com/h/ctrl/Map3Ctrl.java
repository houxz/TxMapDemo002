package com.h.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("/3.web")
public class Map3Ctrl {

	@RequestMapping()
	public String getPage() {
		return "./map3";
	}
}
