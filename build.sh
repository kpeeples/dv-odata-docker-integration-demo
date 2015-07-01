#!/usr/bin/env bash
if [ -f "software/jboss-dv-installer-6.1.0.redhat-3.jar" ]
then
        
	echo "Building the JBoss Data Virtualization 6.0.0 container"
	docker build -t jbossdv600 .
else
	echo "File software/jboss-dv-installer-6.1.0.redhat-3.jar not found."
        echo "Please download JBoss Data Virtualization 6.1.0.GA from http://jboss.org/products#IBP"
        exit 0
fi
