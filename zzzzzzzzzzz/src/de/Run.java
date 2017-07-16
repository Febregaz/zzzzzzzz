package de;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class Run {
public static void main(String[] args) {
	 Configuration conf=new Configuration();
	 conf.configure("/hibernate.cfg.xml");
	 SchemaExport dbExport=new SchemaExport(conf);
	 dbExport.create(true, true);
}
}
