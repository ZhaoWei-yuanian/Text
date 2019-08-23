<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://WebXml.com.cn/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://WebXml.com.cn/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;中文&lt;-&gt;英文双向翻译 WEB 服务&lt;/strong&gt;，本词典库中大部分单词是由程序根据词频和英&lt;-&gt;中单词间相互关联程度自动生成，难免存在有解释错误和牵强的地方请大家谅解。&lt;/br&gt;此中文&lt;-&gt;英文双向翻译Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://WebXml.com.cn/">
      <s:element name="getEnCnTwoWayTranslator">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Word" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getEnCnTwoWayTranslatorResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getEnCnTwoWayTranslatorResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfString">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="HelloWebXml">
        <s:complexType />
      </s:element>
      <s:element name="HelloWebXmlResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="HelloWebXmlResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ArrayOfString" nillable="true" type="tns:ArrayOfString" />
      <s:element name="string" nillable="true" type="s:string" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="getEnCnTwoWayTranslatorSoapIn">
    <wsdl:part name="parameters" element="tns:getEnCnTwoWayTranslator" />
  </wsdl:message>
  <wsdl:message name="getEnCnTwoWayTranslatorSoapOut">
    <wsdl:part name="parameters" element="tns:getEnCnTwoWayTranslatorResponse" />
  </wsdl:message>
  <wsdl:message name="HelloWebXmlSoapIn">
    <wsdl:part name="parameters" element="tns:HelloWebXml" />
  </wsdl:message>
  <wsdl:message name="HelloWebXmlSoapOut">
    <wsdl:part name="parameters" element="tns:HelloWebXmlResponse" />
  </wsdl:message>
  <wsdl:message name="getEnCnTwoWayTranslatorHttpGetIn">
    <wsdl:part name="Word" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getEnCnTwoWayTranslatorHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="HelloWebXmlHttpGetIn" />
  <wsdl:message name="HelloWebXmlHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getEnCnTwoWayTranslatorHttpPostIn">
    <wsdl:part name="Word" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getEnCnTwoWayTranslatorHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="HelloWebXmlHttpPostIn" />
  <wsdl:message name="HelloWebXmlHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:portType name="TranslatorWebServiceSoap">
    <wsdl:operation name="getEnCnTwoWayTranslator">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得中文&lt;-&gt;英文双向翻译 String()&lt;/h3&gt;&lt;p&gt;输入参数：中文或英文单词；返回数据：一个一维字符串数组 String(1)，String(0) 中文为[拼音][国标码 部首 笔画 笔顺]，英文为[音标]；String(1) 译文 多个条目中间用 | 隔开，英文还包括单词属性&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getEnCnTwoWayTranslatorSoapIn" />
      <wsdl:output message="tns:getEnCnTwoWayTranslatorSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="HelloWebXml">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;Hello! WebXml.com.cm&lt;/h3&gt;&lt;br /&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:HelloWebXmlSoapIn" />
      <wsdl:output message="tns:HelloWebXmlSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="TranslatorWebServiceHttpGet">
    <wsdl:operation name="getEnCnTwoWayTranslator">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得中文&lt;-&gt;英文双向翻译 String()&lt;/h3&gt;&lt;p&gt;输入参数：中文或英文单词；返回数据：一个一维字符串数组 String(1)，String(0) 中文为[拼音][国标码 部首 笔画 笔顺]，英文为[音标]；String(1) 译文 多个条目中间用 | 隔开，英文还包括单词属性&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getEnCnTwoWayTranslatorHttpGetIn" />
      <wsdl:output message="tns:getEnCnTwoWayTranslatorHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="HelloWebXml">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;Hello! WebXml.com.cm&lt;/h3&gt;&lt;br /&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:HelloWebXmlHttpGetIn" />
      <wsdl:output message="tns:HelloWebXmlHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="TranslatorWebServiceHttpPost">
    <wsdl:operation name="getEnCnTwoWayTranslator">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得中文&lt;-&gt;英文双向翻译 String()&lt;/h3&gt;&lt;p&gt;输入参数：中文或英文单词；返回数据：一个一维字符串数组 String(1)，String(0) 中文为[拼音][国标码 部首 笔画 笔顺]，英文为[音标]；String(1) 译文 多个条目中间用 | 隔开，英文还包括单词属性&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getEnCnTwoWayTranslatorHttpPostIn" />
      <wsdl:output message="tns:getEnCnTwoWayTranslatorHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="HelloWebXml">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;Hello! WebXml.com.cm&lt;/h3&gt;&lt;br /&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:HelloWebXmlHttpPostIn" />
      <wsdl:output message="tns:HelloWebXmlHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="TranslatorWebServiceSoap" type="tns:TranslatorWebServiceSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getEnCnTwoWayTranslator">
      <soap:operation soapAction="http://WebXml.com.cn/getEnCnTwoWayTranslator" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="HelloWebXml">
      <soap:operation soapAction="http://WebXml.com.cn/HelloWebXml" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="TranslatorWebServiceSoap12" type="tns:TranslatorWebServiceSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getEnCnTwoWayTranslator">
      <soap12:operation soapAction="http://WebXml.com.cn/getEnCnTwoWayTranslator" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="HelloWebXml">
      <soap12:operation soapAction="http://WebXml.com.cn/HelloWebXml" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="TranslatorWebServiceHttpGet" type="tns:TranslatorWebServiceHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="getEnCnTwoWayTranslator">
      <http:operation location="/getEnCnTwoWayTranslator" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="HelloWebXml">
      <http:operation location="/HelloWebXml" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="TranslatorWebServiceHttpPost" type="tns:TranslatorWebServiceHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="getEnCnTwoWayTranslator">
      <http:operation location="/getEnCnTwoWayTranslator" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="HelloWebXml">
      <http:operation location="/HelloWebXml" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="TranslatorWebService">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;中文&lt;-&gt;英文双向翻译 WEB 服务&lt;/strong&gt;，本词典库中大部分单词是由程序根据词频和英&lt;-&gt;中单词间相互关联程度自动生成，难免存在有解释错误和牵强的地方请大家谅解。&lt;/br&gt;此中文&lt;-&gt;英文双向翻译Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
    <wsdl:port name="TranslatorWebServiceSoap" binding="tns:TranslatorWebServiceSoap">
      <soap:address location="http://www.webxml.com.cn/WebServices/TranslatorWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="TranslatorWebServiceSoap12" binding="tns:TranslatorWebServiceSoap12">
      <soap12:address location="http://www.webxml.com.cn/WebServices/TranslatorWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="TranslatorWebServiceHttpGet" binding="tns:TranslatorWebServiceHttpGet">
      <http:address location="http://www.webxml.com.cn/WebServices/TranslatorWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="TranslatorWebServiceHttpPost" binding="tns:TranslatorWebServiceHttpPost">
      <http:address location="http://www.webxml.com.cn/WebServices/TranslatorWebService.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>