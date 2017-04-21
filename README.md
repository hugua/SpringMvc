# gym
1. 配置文件
pom.xml
web.xml
springmvc.xml
springmybatis.xml
sql.properties
log4j.properies

2. mybatis generator工具

3. 配置数据格式化
    1. 新建一个数据格式化处理类，implements Formatter<T>，并实现相应的处理方法
    2. springmvc进行配置  
      （1） <mvc:annotation-driven  conversion-service="conversionService">
      （2）<!-- 格式化 -->
    <bean id="conversionService"
          class="org.springframework.format.support.FormattingConversionServiceFactoryBean">
        <property name="formatters">
            <list>
                <bean class="com.cvte.chen.formatter.DateFormatter" c:_0="yyyy-MM-dd"/>
            </list>
        </property>
    </bean>
    3. 注意事项： 如果没有数据格式化，在进行数据提交时，如果前台数据和后台数据类不匹配，会发生http400错误
4. 配置json数据
  1. 客户端发生json数据，后台可以直接通过数据绑定把数据装入实体类中
  2. 后台可以通过@ResponseBody来进行json数据返回
    使用@ResponseBody进行json数据返回
    1. 导入需要的jar包
            <!--jackson-->
        <!-- https://mvnrepository.com/artifact/com.fasterxml.jackson.core/jackson-databind -->
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-databind</artifactId>
            <version>2.8.8</version>
        </dependency>
      2. 配置jackson控制器
        <mvc:annotation-driven  conversion-service="conversionService">
            <mvc:message-converters>
                <bean id="mappingJacksonHttpMessageConverter"
                           class="org.springframework.http.converter.json.MappingJackson2HttpMessageConverter">
                    <property name="supportedMediaTypes">
                        <list>
                            <!--返回字符串格式json-->
                            <value>application/json;charset=UTF-8</value>
                        </list>
                    </property>
            </bean>
            </mvc:message-converters>
        </mvc:annotation-driven>
         3. controller中使用responseBody
    【注意： 1、 如果没有导入jar包或者配置控制器，会发生406错误，因为返回的数据类型不匹配
            2. 如果使用ajax异步进行json数据交互，必须加上responseBody注解，不然ajax会返回404错误
              @responsebody表示该方法的返回结果直接写入HTTP response body中
              一般在异步获取数据时使用，在使用@RequestMapping后，返回值通常解析为跳转路径，
              加上@responsebody后返回结果不会被解析为跳转路径，而是直接写入HTTP response body中。
              比如异步获取json数据，加上@responsebody后，会直接返回json数据。
            3. 使用jackson后，如果controller方法直接返回字符串，responseText会出现双引号，例如 responseText:""success""
      】
    5. 使用RESTful接口规范进行数据资源处理
    6. 添加MocvMvc 需要使用@WebApplicationContext 注入WebApplicationContext 这时要添加下面依赖
    <dependency>
      <groupId>javax.servlet</groupId>
      <artifactId>javax.servlet-api</artifactId>
      <version>3.1.0</version>
   </dependency>
   不要会发生错误：
   java.lang.ExceptionInInitializerError。。。
   java.util.MissingResourceException: Can't find bundle for base name javax.servlet.LocalStrings, locale es_ES。。。
