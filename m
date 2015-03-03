X-GM-THRID: 6210099085312
X-Received: by 10.112.214.234 with SMTP id od10mr4531122lbc.3.1425391420997;
        Tue, 03 Mar 2015 06:03:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.227 with SMTP id o3ls126796wiv.3.gmail; Tue, 03 Mar
 2015 06:03:40 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr3040795wix.0.1425391420659;
        Tue, 03 Mar 2015 06:03:40 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id i7si899706wif.0.2015.03.03.06.03.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 06:03:40 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id x13so1580wgg.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 06:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=NV0TH1bJoDo53nZoZHhK1qHImREd8kOe+DZ9KDO6mCI=;
        b=BfeyyDUlO87n98qNI+9W4xZYJq8Zm4/CsOM1C7It7umwEjQ3kJv5+4jMBN/2RDuhh7
         KvXTO/iwtDhAK/tKS9O80QcxJnArchuI7+TLm6IHYqY5u8BpHo/YeK6UCEWPYr8nUyH5
         z9vO23XsIIAUSGB5ioMWtO4oRwlOCjivzvprBqXom0wKiblgqknu6MKWC5pOnVO544u/
         zELv+uHG5qOkUXIS/dxlSI7nwfS38LP+ICaF79oI1yFFRdEx37FB41ztrTkBmWdr/ipQ
         iOQ5j+vUAr7D0Kd+xJPlbJMnB+Z2YmjGRZUXG17+MU7GiTnCokAtXu9q4rgN4AYxt/8x
         +4Sw==
X-Received: by 10.180.207.6 with SMTP id ls6mr47009006wic.13.1425391420576;
        Tue, 03 Mar 2015 06:03:40 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id y3sm1470134wju.14.2015.03.03.06.03.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 06:03:39 -0800 (PST)
Date: Tue, 3 Mar 2015 16:03:35 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4 v2] staging: rtl8192e: replace memset(x,0,ETH_ALEN) by
 eth_zero_addr(x)
Message-ID: <e905b47f4368208f2af119dffca501707d60eaf3.1425390962.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425390962.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425390962.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

eth_zero_addr() is a wrapper function for memset if 0 is going to
be assigned to a mac address. The replacement was done by the
following coccinelle script:

@header@
@@

#include <linux/etherdevice.h>

@eth_zero_addr@
expression e;
@@

-memset(e,0,ETH_ALEN);
+eth_zero_addr(e);

@eth_broadcast_addr@
identifier e;
@@

-memset(e,\(0xff\|0xFF\|255\),ETH_ALEN);
+eth_broadcast_addr(e);

@linux_header depends on !header && (eth_zero_addr || eth_broadcast_addr) @
@@

+ #include <linux/etherdevice.h>
+

@special_header depends on !header && !linux_header && (eth_zero_addr || eth_broadcast_addr) @
@@

+
+ #include <linux/etherdevice.h>
+

@custom_header depends on !header && !linux_header && !special_header && (eth_zero_addr || eth_broadcast_addr) @
@@

+
+ #include <linux/etherdevice.h>

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v2: made sure that the first rule in the script remains intact.

 drivers/staging/rtl8192e/rtllib_softmac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index d992a75..16aef7c 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -3751,7 +3751,7 @@ void notify_wx_assoc_event(struct rtllib_device *ieee)
 
 		printk(KERN_INFO "%s(): Tell user space disconnected\n",
 		       __func__);
-		memset(wrqu.ap_addr.sa_data, 0, ETH_ALEN);
+		eth_zero_addr(wrqu.ap_addr.sa_data);
 	}
 	wireless_send_event(ieee->dev, SIOCGIWAP, &wrqu, NULL);
 }
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

