package com.codoacodo.test;

import com.codoacodo.dao.OradorDAO;
import com.codoacodo.model.Orador;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class OradorTest {
    
    static Logger logger = LoggerFactory.getLogger(OradorTest.class);
    
    public static void main(String[] args) {
        List<Orador> oradores = new ArrayList();
        OradorDAO dao = new OradorDAO();
        
        oradores = dao.selectOradores();
        
        Iterator<Orador> it = oradores.iterator();
        while(it.hasNext()) {
            logger.info("Orador: " + it.next());
        }

        
    }
    
}
