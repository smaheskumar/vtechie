package com.vtechie.samples.webservices;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService(
		  portName = "HelloWorldImplPort",
		   serviceName = "HelloWorldServiceLocal",
		   endpointInterface = "com.vtechie.samples.webservices.HelloWorld",
		   targetNamespace = "http://org.jboss.ws/jaxws/cxf/jms"
		)
public class HelloWorldImpl implements HelloWorld{

	@WebMethod()
	public String sayHello(String name) {
	    System.out.println("Hello: " + name);
	    return "Hello " + name + "!";
	}
}
