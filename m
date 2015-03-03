X-GM-THRID: 6210099085312
X-Received: by 10.152.19.100 with SMTP id d4mr4537313lae.7.1425387593052;
        Tue, 03 Mar 2015 04:59:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.169 with SMTP id x9ls32520lal.108.gmail; Tue, 03 Mar
 2015 04:59:52 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr4537299lae.7.1425387592455;
        Tue, 03 Mar 2015 04:59:52 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id o3si878217wib.2.2015.03.03.04.59.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 04:59:52 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id z2so3153762wiv.0
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 04:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yB6VRbuS3rzchOPSxl1dMlDb9975Cc0hqSZqYbjEjfw=;
        b=v0s90baVyLn3cDHMYDHkqYPSRVtNVKTLSNSJsCGt28RKZT/F7lrzE0+w3O9OU5miP9
         pY1+uER7SOrO0Ty9DEOQ5wJ6W2j9oML5k6jJKvJ6x5wrPHZ+oCamzXOmOzkhvTpOIth8
         d718ao4gEppsbavy4ILt+NDQiH2uP5veLoE7cPbITVGYO3ToJByZzllG82J4/Ov/rpry
         u5orzeMq5lMb0e6yIRJRJPLKSoDYOR2CJ3E6Oc/hnK5YmKM8IoLA1181KzzDE34uFCSe
         4JRKS7l+vAqJLlWl0FZbpTIAhPUAkVkw4zGiL63LZz2d58UpJ8zh5LvIz2p3/Wx8hMUh
         8S+A==
X-Received: by 10.194.23.39 with SMTP id j7mr70667513wjf.9.1425387592353;
        Tue, 03 Mar 2015 04:59:52 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id j5sm20503606wie.3.2015.03.03.04.59.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 04:59:51 -0800 (PST)
Date: Tue, 3 Mar 2015 14:59:47 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8192e: replace memset(x,0,ETH_ALEN) by
 eth_zero_addr(x)
Message-ID: <35f4d08242cd7706c4aafb8f7f093bfc75fc1272.1425384513.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425384513.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425384513.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

eth_zero_addr() is a wrapper function for memset if 0 is going to
be assigned to a mac address. The replacement was done by the
following coccinelle script:

@header@
@@

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

