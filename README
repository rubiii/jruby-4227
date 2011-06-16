JRUBY-4227
==========

require 'syslog' fails when running in a tomcat.

1. bundle install
2. warble
3. deploy to tomcat
4. [Syslog not supported on this platform](http://jira.codehaus.org/browse/JRUBY-4227)

```
org.jruby.rack.RackInitializationException: unable to create shared application instance
        at org.jruby.rack.SharedRackApplicationFactory.init(SharedRackApplicationFactory.java:39)
        at org.jruby.rack.RackServletContextListener.contextInitialized(RackServletContextListener.java:44)
        at org.apache.catalina.core.StandardContext.listenerStart(StandardContext.java:4135)
        at org.apache.catalina.core.StandardContext.start(StandardContext.java:4630)
        at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:791)
        at org.apache.catalina.core.ContainerBase.addChild(ContainerBase.java:771)
        at org.apache.catalina.core.StandardHost.addChild(StandardHost.java:546)
        at org.apache.catalina.startup.HostConfig.deployWAR(HostConfig.java:905)
        at org.apache.catalina.startup.HostConfig.deployWARs(HostConfig.java:740)
        at org.apache.catalina.startup.HostConfig.deployApps(HostConfig.java:500)
        at org.apache.catalina.startup.HostConfig.start(HostConfig.java:1277)
        at org.apache.catalina.startup.HostConfig.lifecycleEvent(HostConfig.java:321)
        at org.apache.catalina.util.LifecycleSupport.fireLifecycleEvent(LifecycleSupport.java:119)
        at org.apache.catalina.core.ContainerBase.start(ContainerBase.java:1053)
        at org.apache.catalina.core.StandardHost.start(StandardHost.java:785)
        at org.apache.catalina.core.ContainerBase.start(ContainerBase.java:1045)
        at org.apache.catalina.core.StandardEngine.start(StandardEngine.java:445)
        at org.apache.catalina.core.StandardService.start(StandardService.java:519)
        at org.apache.catalina.core.StandardServer.start(StandardServer.java:710)
        at org.apache.catalina.startup.Catalina.start(Catalina.java:581)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
        at java.lang.reflect.Method.invoke(Method.java:597)
        at org.apache.catalina.startup.Bootstrap.start(Bootstrap.java:289)
        at org.apache.catalina.startup.Bootstrap.main(Bootstrap.java:414)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
        at java.lang.reflect.Method.invoke(Method.java:597)
        at org.tanukisoftware.wrapper.WrapperStartStopApp.run(WrapperStartStopApp.java:244)
        at java.lang.Thread.run(Thread.java:662)
Caused by: org.jruby.rack.RackInitializationException: Syslog not supported on this platform
        from file:/data/tomcat2/webapps/jruby-4227/WEB-INF/lib/jruby-stdlib-1.5.6.jar!/META-INF/jruby.home/lib/ruby/site_ruby/shared/syslog.rb:31:in `require'
        from file:/data/tomcat2/webapps/jruby-4227/WEB-INF/lib/jruby-stdlib-1.5.6.jar!/META-INF/jruby.home/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31:in `require'
        from /data/tomcat2/webapps/jruby-4227/WEB-INF/config.ru:8
        from /data/tomcat2/webapps/jruby-4227/WEB-INF/gems/gems/rack-1.2.3/lib/rack/builder.rb:46:in `instance_eval'
        from /data/tomcat2/webapps/jruby-4227/WEB-INF/gems/gems/rack-1.2.3/lib/rack/builder.rb:46:in `initialize'
        from /data/tomcat2/webapps/jruby-4227/WEB-INF/config.ru:1:in `new'
        from /data/tomcat2/webapps/jruby-4227/WEB-INF/config.ru:1

        at org.jruby.rack.DefaultRackApplicationFactory$4.init(DefaultRackApplicationFactory.java:207)
        at org.jruby.rack.DefaultRackApplicationFactory.getApplication(DefaultRackApplicationFactory.java:58)
        at org.jruby.rack.SharedRackApplicationFactory.init(SharedRackApplicationFactory.java:27)
        ... 31 more
Caused by: org.jruby.exceptions.RaiseException: Syslog not supported on this platform
        at Kernel.raise(file:/data/tomcat2/webapps/jruby-4227/WEB-INF/lib/jruby-stdlib-1.5.6.jar!/META-INF/jruby.home/lib/ruby/site_ruby/shared/syslog.rb:20)
        at (unknown).(unknown)(file:/data/tomcat2/webapps/jruby-4227/WEB-INF/lib/jruby-stdlib-1.5.6.jar!/META-INF/jruby.home/lib/ruby/site_ruby/shared/syslog.rb:31)
        at Kernel.require(file:/data/tomcat2/webapps/jruby-4227/WEB-INF/lib/jruby-stdlib-1.5.6.jar!/META-INF/jruby.home/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31)
        at Kernel.require(/data/tomcat2/webapps/jruby-4227/WEB-INF/config.ru:8)
        at (unknown).(unknown)(/data/tomcat2/webapps/jruby-4227/WEB-INF/gems/gems/rack-1.2.3/lib/rack/builder.rb:46)
        at Kernel.instance_eval(/data/tomcat2/webapps/jruby-4227/WEB-INF/gems/gems/rack-1.2.3/lib/rack/builder.rb:46)
        at Kernel.instance_eval(/data/tomcat2/webapps/jruby-4227/WEB-INF/gems/gems/rack-1.2.3/lib/rack/builder.rb:46)
        at Rack::Builder.initialize(/data/tomcat2/webapps/jruby-4227/WEB-INF/config.ru:1)
        at (unknown).new(/data/tomcat2/webapps/jruby-4227/WEB-INF/config.ru:1)
        at (unknown).(unknown)(:1)
```
