X-GM-THRID: 6210099085312
X-Received: by 10.194.95.67 with SMTP id di3mr3118077wjb.0.1425391467308;
        Tue, 03 Mar 2015 06:04:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.40 with SMTP id bt8ls120497wib.53.gmail; Tue, 03 Mar
 2015 06:04:27 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr4586922wjb.1.1425391467018;
        Tue, 03 Mar 2015 06:04:27 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id v5si403136wif.3.2015.03.03.06.04.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 06:04:27 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widem10 with SMTP id em10so22939036wid.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 06:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=CTud74DIQxGGDRDTJRcuGQ7uzpyo8gEQ8T/VcrucmEQ=;
        b=Wpr9lkwUcvkuvN2QT/xU0HN8kHnUCkOaCMhQm118Lngj438HRj/cxJe5nLJX6u/8o4
         LIOveNzNKPlzBRwESKEBoEz1gGULI9nwUvko0dSG4qi5JRSyB24ksn1WxeiyiWKZVWoZ
         NS0Hd9xLaqhJa1ioI8H5+Nfj3N9ONzgtqHhapU3JfkYeNm1qjbDWlgESyc1NAUzQtl0z
         mK1yhIoVFuBjHPKX77glGEUVYzqoCFaLrliLgklD59pM2GHRWDrdYltzokM3nrMLy3x4
         GhTIJQ4esogzDbz7J0PWJXlX+4auZhgsOZKLjz9Xy9fUX2tyzAzcmwt1+noObAk6OfuK
         LthQ==
X-Received: by 10.194.59.199 with SMTP id b7mr18583051wjr.26.1425391466862;
        Tue, 03 Mar 2015 06:04:26 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id lj13sm2615451wic.9.2015.03.03.06.04.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 06:04:26 -0800 (PST)
Date: Tue, 3 Mar 2015 16:04:20 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4 v2] staging: rtl8192e: replace memset(x,0,ETH_ALEN) by
 eth_zero_addr(x)
Message-ID: <b02ccb3f6cd8db0c9288fd28ce405d75db270dbf.1425390962.git.mahfouz.saif.elyazal@gmail.com>
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

