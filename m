X-GM-THRID: 6210099085312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bc960043b44123ba
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr3001329wib.5.1425391603136;
        Tue, 03 Mar 2015 06:06:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.5 with SMTP id e5ls39304lab.37.gmail; Tue, 03 Mar 2015
 06:06:42 -0800 (PST)
X-Received: by 10.112.41.131 with SMTP id f3mr1187936lbl.20.1425391602816;
        Tue, 03 Mar 2015 06:06:42 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id by11si926323wib.1.2015.03.03.06.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 06:06:42 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id m14so40037890wev.8
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 06:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=r7+WrPIMr/xvVX06CQvxyEOsPBWEKE4XCz67TmA5kCY=;
        b=bPUbGzOPG4rv2DC7k030A3P1XsplquAOZr31ei4hP70EZL7QMCMT6WrgBU0ezIQTs+
         63DW/UUqBd149z4OJrsDV5QA2kobmZb2UGw06C/TyJ6MlkFfW2rU6Pg9W14777LuURun
         ytO8rtBvK9r/aCQH79LIi031ya74AeWDlIcjC7ySLz69TORJA9k+kQWsUf2aeGY6I0F1
         IDPIEWxdEhVkx7T7JI1Rz6Ir/pfRDqFt/Ykjy6aD/KSILco8HHSoFGSd4EmqS4nTISLy
         hmlk7ShX5shqdgudM/KX7cCo8tIsTITnrNHhJmpoTvi/uyny7ozhsrKjG0m6SMwzQaFD
         1rbQ==
X-Received: by 10.180.72.98 with SMTP id c2mr46609640wiv.87.1425391602666;
        Tue, 03 Mar 2015 06:06:42 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id bo1sm1480511wjb.15.2015.03.03.06.06.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 06:06:42 -0800 (PST)
Date: Tue, 3 Mar 2015 16:06:19 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4 v2] staging: rtl8192u: replace memset(x,0,ETH_ALEN) by
 eth_zero_addr(x)
Message-ID: <3a99e6fbc6b304493d8e4b321abb8ec46848a611.1425390962.git.mahfouz.saif.elyazal@gmail.com>
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

