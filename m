X-GM-THRID: 6210099085312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bc960043b44123ba
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr4567175lbj.23.1425391723935;
        Tue, 03 Mar 2015 06:08:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.44 with SMTP id cb12ls780601wib.27.canary; Tue, 03 Mar
 2015 06:08:43 -0800 (PST)
X-Received: by 10.180.160.176 with SMTP id xl16mr3002425wib.6.1425391723371;
        Tue, 03 Mar 2015 06:08:43 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id i7si901938wif.0.2015.03.03.06.08.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 06:08:43 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id w55so40027322wes.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 06:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qSVW4+kp8dCL0lQbppByyE2fz0IvfWG1Vqw99gPmR/4=;
        b=IDsapQqH2jPwVprpbTxLYuc3W4G6/qeVIqJW+9OY2nOYdpiPyGxJtb3iFmgXAieLTN
         CZTqeqFO7QupablcNFT6M2vV/k9kavWd+p3t/xVp0lQHtogKzGZL5Rit/l92iZdy4gZF
         +1ajnKZfwDBdE1HHd5itc6zwG3XrKdE9F7VEUwV5W5aKV9VlwM04qAdk+irwRsVyEPOA
         7ilzR+ZKPnS9GjYsTflkowdUfSdRjsoZUW7/OnlyNbUrXUa2ra8AeWr6ecUSq9gOTPKk
         6C1MVbsmfD0UgEEEvkfUFMoAI50dNfDB6cCrDMtJ0s6obDlNc4JxmnjFhDZFmijM0QdT
         guuA==
X-Received: by 10.194.133.196 with SMTP id pe4mr46284380wjb.76.1425391723275;
        Tue, 03 Mar 2015 06:08:43 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id ul1sm1513128wjc.0.2015.03.03.06.08.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 06:08:42 -0800 (PST)
Date: Tue, 3 Mar 2015 16:08:38 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4 v2] staging: rtl8192u: ieee80211: replace
 memset(x,0,ETH_ALEN) by eth_zero_addr(x)
Message-ID: <80ea577b3ed9b4a22f54028c8baff9448eb6b55a.1425390962.git.mahfouz.saif.elyazal@gmail.com>
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

 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
index 644368d..dcfa5ab 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
@@ -121,7 +121,7 @@ int ieee80211_wx_get_wap(struct ieee80211_device *ieee,
 		ieee->state != IEEE80211_LINKED_SCANNING &&
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

