package ru.dementev.furniture;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.DelegatingFilterProxy;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import ru.dementev.furniture.config.CacheConfig;
import ru.dementev.furniture.config.SecurityConfig;
import ru.dementev.furniture.config.WebConfig;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

/**
 * Created by adementev on 09.10.2017.
 */
public class Application extends AbstractAnnotationConfigDispatcherServletInitializer{
    private static final String DISPATCHER = "dispatcher";

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext context =  new AnnotationConfigWebApplicationContext();
        context.register(WebConfig.class, CacheConfig.class, SecurityConfig.class);


        DispatcherServlet dispatcherServlet = new DispatcherServlet(context);
        dispatcherServlet.setThrowExceptionIfNoHandlerFound(true);

        ServletRegistration.Dynamic servlet = servletContext.addServlet(DISPATCHER,dispatcherServlet);
        servlet.addMapping("/");
        servlet.setLoadOnStartup(1);

    }

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class<?>[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class<?>[0];
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/","/about/*","/*/*/*"};
    }
}
