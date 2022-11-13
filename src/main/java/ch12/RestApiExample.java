package ch12;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/test")
public class RestApiExample {
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String sayHello() {
		return "HEllo API SErvice";
	}
	
	@POST
	public String sayHello(@QueryParam("msg") String msg) {
		return msg+" API Service";
	}
}
