X-GM-THRID: 6210099085312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bc960043b44123ba
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.130.70 with SMTP id oc6mr4642433lbb.13.1425387653998;
        Tue, 03 Mar 2015 05:00:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.100 with SMTP id hb4ls792381wib.22.canary; Tue, 03 Mar
 2015 05:00:53 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr4548474wjb.6.1425387653667;
        Tue, 03 Mar 2015 05:00:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id ta1si883946wic.1.2015.03.03.05.00.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 05:00:53 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id p10so37479556wes.12
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 05:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SHZFgjeWTahRIq3H7Q2dMumKAD5NlUO5YCeTG37msTc=;
        b=u4NZY4LNTsDZ1pxMq6lEvs480KKgLgkDNeh6fSop8de5vN6YLcYAablcoSRoRr/6ie
         SisRQhsfcIeJbpPuWbW1ec9l9Pq6pvgbszkZ5gwFAtM+UD5qO39rDkIIX3bji/ImyVEU
         iAoH0PJWK44VOFZ0E2cDF8cGYh4SQMZmeap3ZBRRGEr0TQRx7pNKAFTLLLS49tJzaOhU
         f9MSO38i+wD1LlVgRm7w/EQKGqT5/jC9q3sjQIr/BUC+he6HCjBu4ZdVe+LyQBZBXQHl
         bohRugOd6UHb/ejMd45j+1f4CXZ0BFdQl5q3uThIfDUQoa/jC3fONdc2WW0TaGr9n0P1
         VafQ==
X-Received: by 10.194.193.99 with SMTP id hn3mr69876118wjc.148.1425387653573;
        Tue, 03 Mar 2015 05:00:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id y14sm1202813wjr.39.2015.03.03.05.00.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 05:00:52 -0800 (PST)
Date: Tue, 3 Mar 2015 15:00:49 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8192u: replace memset(x,0,ETH_ALEN) by
 eth_zero_addr(x)
Message-ID: <2c1af44182d012b2a9ee106ce108845d6b7b855b.1425384514.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 3a54071..3527edc 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -3208,7 +3208,7 @@ void notify_wx_assoc_event(struct ieee80211_device *ieee)
 	if (ieee->state == IEEE80211_LINKED)
 		memcpy(wrqu.ap_addr.sa_data, ieee->current_network.bssid, ETH_ALEN);
 	else
-		memset(wrqu.ap_addr.sa_data, 0, ETH_ALEN);
+		eth_zero_addr(wrqu.ap_addr.sa_data);
 	wireless_send_event(ieee->dev, SIOCGIWAP, &wrqu, NULL);
 }
 EXPORT_SYMBOL(notify_wx_assoc_event);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

