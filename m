X-GM-THRID: 6210099085312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bc960043b44123ba
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.13.236 with SMTP id fb12mr239918wid.1.1425387631728;
        Tue, 03 Mar 2015 05:00:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.101 with SMTP id gt5ls111753wib.28.gmail; Tue, 03 Mar
 2015 05:00:29 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr2959636wic.4.1425387629872;
        Tue, 03 Mar 2015 05:00:29 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id l8si882694wia.0.2015.03.03.05.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 05:00:29 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id r20so22576688wiv.2
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 05:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=w94dCcmTM86xfzel5cw1UEVEL6V+zuncrV2mMIWb5bA=;
        b=SYNc2PCu0LY6iK/IPghuQUr3X9rhhYnPtuXylte57vKKwM4yiA2tR16LFt0m8c82CU
         VIOM3kod+nbgJo7pK4iSbWAdHWOg03DZfh3l9ZQ0Sv6Ze/zRjJjVrY+TvFq8N39OAI9P
         EJUoz2R3SOniZSJ88+zRobHcXyH4nf+WtnUgAywW84V41y5gEVaU509zM6HufoIGpubH
         C0iYnzyVp2Lg4UjZZWLzKKP6NbIlR6LwIsB0/oMSZf8mKNg1cDLBvPPQqTsCd5EzR21E
         Hesu19wMtRFtAV2hHOkxLCebJ43B7Ls+3FVb2TF6YCHLsZr4wyManW3JA0EuPXD0G7B3
         fZzQ==
X-Received: by 10.194.86.135 with SMTP id p7mr70089084wjz.89.1425387629290;
        Tue, 03 Mar 2015 05:00:29 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id u18sm1199778wjq.42.2015.03.03.05.00.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 05:00:28 -0800 (PST)
Date: Tue, 3 Mar 2015 15:00:24 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8192e: replace memset(x,0,ETH_ALEN) by
 eth_zero_addr(x)
Message-ID: <80a99e5ed8e65c684ae2c29aa9920f88b7c83c36.1425384513.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8192e/rtllib_softmac_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac_wx.c b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
index 835f3d7..283ba8b 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
@@ -120,7 +120,7 @@ int rtllib_wx_get_wap(struct rtllib_device *ieee,
 		ieee->state != RTLLIB_LINKED_SCANNING &&
 		ieee->wap_set == 0)
 
-		memset(wrqu->ap_addr.sa_data, 0, ETH_ALEN);
+		eth_zero_addr(wrqu->ap_addr.sa_data);
 	else
 		memcpy(wrqu->ap_addr.sa_data,
 		       ieee->current_network.bssid, ETH_ALEN);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

