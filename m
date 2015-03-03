X-GM-THRID: 6210099085312
X-Received: by 10.112.126.194 with SMTP id na2mr4646378lbb.18.1425387764042;
        Tue, 03 Mar 2015 05:02:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.98 with SMTP id v2ls32142lal.104.gmail; Tue, 03 Mar
 2015 05:02:43 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr4545397lai.4.1425387763452;
        Tue, 03 Mar 2015 05:02:43 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id i7si888604wif.0.2015.03.03.05.02.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 05:02:43 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx12 with SMTP id x12so39811238wgg.11
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 05:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=iFETshknheUqPcwXr8DiwJjyARSwmVQN6FNbWGlrRhY=;
        b=sUONsoQT7WLLsv0zUsrrKtYtITwfyK6qOHlcz9LQ45wDelqekgVgke1USLyxDEBKFN
         jLKIUZc5wMvvSUagILh1Vm4nl57B4F89myVngQh1GJjRz2y5mlbMxaGUyCpsUzkhl2t0
         ScGQH3Iq9Co8wRJjnligtYZLOxSzmLodIp4Kh23gQ2cx9JwEYc2p3ix+n+1PQsG4CKqg
         6TkgngQHnMJRYEpG1SFRcLT3nUnITvxXAnN4zv0ZfhBXpZ8QxAeGsiRU92LusP/AEH8t
         0mkWAjN8zEz6IOfmKVKTmBAlDbOaT9QAYaSUVtU2BlIEyl3GEzMtF/OQfM2qn1WQZ/dd
         xivA==
X-Received: by 10.180.89.173 with SMTP id bp13mr2646361wib.88.1425387763299;
        Tue, 03 Mar 2015 05:02:43 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id hj10sm1198213wjc.48.2015.03.03.05.02.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 05:02:42 -0800 (PST)
Date: Tue, 3 Mar 2015 15:02:38 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8192u: ieee80211: replace
 memset(x,0,ETH_ALEN) by eth_zero_addr(x)
Message-ID: <e855d930f8efdcd9c906f4e7c12c47b70c0ecb86.1425384514.git.mahfouz.saif.elyazal@gmail.com>
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

