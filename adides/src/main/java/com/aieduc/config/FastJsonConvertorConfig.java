/**  
* <p>Title: FastJasonConvertorConfig.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2019</p>  
* <p>Company: www.nosprings.com</p>  
* @author liuhaibing
* @date 2019年5月24日  
* @version 1.0  
*/  
package com.aieduc.config;

import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;

/**
 * 配置FastJson作为消息转换器
 * @author liuhaibing
 * @date 2019年5月24日  
 * @version 1.0  
 */
@Configuration
@ConditionalOnClass({JSON.class})
public class FastJsonConvertorConfig {
	@Bean
	public FastJsonHttpMessageConverter fastJsonHttpMessageConverter() {
        FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();

        FastJsonConfig fastJsonConfig = new FastJsonConfig();
        fastJsonConfig.setSerializerFeatures(
                SerializerFeature.WriteMapNullValue,
                SerializerFeature.WriteNullStringAsEmpty,
                SerializerFeature.WriteNullListAsEmpty,
                SerializerFeature.DisableCircularReferenceDetect
        );
        fastConverter.setFastJsonConfig(fastJsonConfig);
        return fastConverter;
    }
}
