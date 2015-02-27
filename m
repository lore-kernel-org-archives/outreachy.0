X-GM-THRID: 4475579269120
X-Received: by 10.112.199.69 with SMTP id ji5mr2050554lbc.0.1425041621691;
        Fri, 27 Feb 2015 04:53:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.170 with SMTP id fp10ls45702wib.13.gmail; Fri, 27 Feb
 2015 04:53:41 -0800 (PST)
X-Received: by 10.180.75.232 with SMTP id f8mr452611wiw.0.1425041621398;
        Fri, 27 Feb 2015 04:53:41 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id o3si104076wib.2.2015.02.27.04.53.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:53:41 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id u56so20202142wes.10
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Un5WQxkJ2TvfZOkJBR+DwFJ1N2IbKeWN/NMuS8JkmEg=;
        b=a7BFyy6pZ+8iOCHNQSwFzFKENSknZZlM0FskqsfgXxPynKWYSysSZaptmh3MaD2ULG
         +fw0JKW/XUR0Ni810QXjQzZ6aaL6UfWbSJJxyx42CyRCggcZz8FSunzEjtzhAJL0RaFi
         1ysDHil2i9vM2k8zPZ1/cuJ181pXMRgPQKQJSzpSem5kPjJtdQEcHy9BHiYOoAW2HLeX
         GqR+XW3gXZA96gbvhCjngRvVWygIHmC1s7Jh8sKcAQazbuRpPJ7H56UYSJcRlOrMPDEz
         Lp8hsUX5SjUV1Aai2yOk9Q7SjRdvxu7mUyZ22oA1+Iw7pdsBQTui2vUVPJgrXvZIZC18
         yssw==
X-Received: by 10.194.57.206 with SMTP id k14mr3519734wjq.1.1425041621330;
        Fri, 27 Feb 2015 04:53:41 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id l4sm2709348wiw.9.2015.02.27.04.53.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:53:40 -0800 (PST)
Date: Fri, 27 Feb 2015 14:53:34 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 04/24] staging: rtl8188eu: os_dep: remove unused variable
Message-ID: <b9c765d115a8845bd37120165627f37c29af1b9c.1425035005.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes variables that were simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index 80e7ef9..38e8ba1 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -552,7 +552,6 @@ int usb_write8(struct adapter *adapter, u32 addr, u8 val)
 	u16 index;
 	u16 len;
 	u8 data;
-	int ret;
 
 	request = 0x05;
 	requesttype = 0x00;/* write_out */
@@ -560,8 +559,7 @@ int usb_write8(struct adapter *adapter, u32 addr, u8 val)
 	wvalue = (u16)(addr&0x0000ffff);
 	len = 1;
 	data = val;
-	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
-	return ret;
+	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
 }
 
 int usb_write16(struct adapter *adapter, u32 addr, u16 val)
@@ -572,7 +570,6 @@ int usb_write16(struct adapter *adapter, u32 addr, u16 val)
 	u16 index;
 	u16 len;
 	__le32 data;
-	int ret;
 
 
 	request = 0x05;
@@ -584,10 +581,7 @@ int usb_write16(struct adapter *adapter, u32 addr, u16 val)
 
 	data = cpu_to_le32(val & 0x0000ffff);
 
-	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
-
-
-	return ret;
+	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
 }
 
 int usb_write32(struct adapter *adapter, u32 addr, u32 val)
@@ -598,7 +592,6 @@ int usb_write32(struct adapter *adapter, u32 addr, u32 val)
 	u16 index;
 	u16 len;
 	__le32 data;
-	int ret;
 
 
 	request = 0x05;
@@ -609,10 +602,7 @@ int usb_write32(struct adapter *adapter, u32 addr, u32 val)
 	len = 4;
 	data = cpu_to_le32(val);
 
-	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
-
-
-	return ret;
+	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
 }
 
 static void usb_write_port_complete(struct urb *purb, struct pt_regs *regs)
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

