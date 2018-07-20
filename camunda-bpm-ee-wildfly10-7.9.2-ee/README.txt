This is a distribution of

       Camunda BPM platform v7.9.2-ee

visit
       http://docs.camunda.org/

This particular copy of Camunda BPM platform is released under
a commercial license agreement.

License information can be found in the LICENSE file.

The Camunda BPM platform includes libraries developed by third
parties. For license and attribution notices for these libraries,
please refer to the documentation that accompanies this distribution
(see the LICENSE_BOOK-7.9.2-ee file).

The packaged Wildfly Application Server is licensed under
the LGPL license.

==================

Contents:

  lib/
        This directory contains the java libraries for application
        development.

  modules/
        This directory contains additional modules for Wildfly Application
        Server. You can use these modules to patch a vanilla distribution
        of Wildfly Application Server.

  server/
        This directory contains a preconfigured distribution
        of Wildfly Application Server with Camunda BPM platform readily
        installed.

        run the
          server/wildfly-10.1.0.Final/bin/standalone.{bat/sh}
        script to start up the the server.

        After starting the server, you can access the
        following web applications:

        http://localhost:8080/camunda
        http://localhost:8080/engine-rest

    sql/
        This directory contains the create and upgrade sql script
        for the different databases.
        The engine create script contain the engine and history tables.

        Execute the current upgrade script to make the database compatible
        with the newest Camunda BPM platform release.

==================

Camunda BPM platform version: 7.9.2-ee
Wildfly Application Server version: 10.1.0.Final

=================
