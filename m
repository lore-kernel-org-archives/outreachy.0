X-GM-THRID: 6257157996417122304
X-Received: by 10.182.19.230 with SMTP id i6mr4773650obe.42.1456858123381;
        Tue, 01 Mar 2016 10:48:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.11 with SMTP id g11ls1115797qgf.2.gmail; Tue, 01 Mar
 2016 10:48:42 -0800 (PST)
X-Received: by 10.140.102.163 with SMTP id w32mr35574876qge.10.1456858122646;
        Tue, 01 Mar 2016 10:48:42 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ui7si4605687pab.0.2016.03.01.10.48.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 10:48:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fl4so116874272pad.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 10:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=drjgXcKm8mYK8QZ2/eOgSJhlj+vBIiNEHMJpVnvROok=;
        b=Us3gHtDd+ANWSrOs616yoc6tr1XaSx+0hthO/xnm4VPlcBgiiHFr2RuUDnRYSWQPxJ
         G5S4+qUkviHkUZMSM7zCoyIgT4h73UGDYRMhlh1AgvML6VQnaqUXopm31BI3UpRvHIqT
         vcuH5RvPoPZuWEie7gj1S38VMlJXW4LX5ylq/M4AIL19m51uOCERPVL8nZnK2T+LwSql
         4P6vqdo2PFYhgbkYKMaSYU4wEMVErPWf+X3/Bq8eYvFBrTyRzmZlxPWg4pMocU7rUu9F
         xTUpUcxW9Mksdq2c/zSpOZ0AAB4bInCd9WYzs1XqFURw5ZBsNgaTx/AgbOPqCa25ybAk
         +YZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=drjgXcKm8mYK8QZ2/eOgSJhlj+vBIiNEHMJpVnvROok=;
        b=PykTfoKsW93UelsQE6iTUZqjuyszDQg6w0SxS5MpDI/vAKPUUihr5av4eHnUTPH0Rg
         KtNDGIcxtPdFfV0P9h0EIa2loL4PQAMMlySk8Qb3gavYl5UWO9Nd5qdQfNhBbBWVOi/I
         Uh3vNVM1YFx1HJ+okkh825mbboU12P8qx5y0P8pN0LCyliT2Sd4kUWrIpGTzu41YoI8e
         31ed1nQawtYqCyxsJTvQ5nSQoo8uzlyeNHn8MwIGipcJpzMi9l6tFRyQFdtCTTqnEZ6i
         qVFcF+vklwZSs7//aJe8mvBagljG5xfEZOPsDj4YDX9rL4s0MvFXvAt2oRanb+ADzkuV
         p6Mw==
X-Gm-Message-State: AD7BkJKeQHwr7P6YzX7S7PZKmndb668s7+zQKa4PLByj6jmmcsjjaWhyApeEhJ6bnALltA==
X-Received: by 10.66.189.165 with SMTP id gj5mr32370623pac.157.1456858122449;
        Tue, 01 Mar 2016 10:48:42 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.159.79])
        by smtp.gmail.com with ESMTPSA id k14sm47266059pfj.0.2016.03.01.10.48.38
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 10:48:41 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 02 Mar 2016 00:18:32 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Replace memset with eth_broadcast_addr
Date: Wed,  2 Mar 2016 00:18:31 +0530
Message-Id: <1456858111-3272-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Use eth_broadcast_addr to assign the broadcast address to the given
address array instead of memset when the second argument is a broacast
address 0xff. ETH_ALEN is a macro with value 6, so 6 is treated as
ETH_ALEN if it is the third argument of memset.

Done using coccinelle.
@@
expression e;
@@
- memset(e,\(0xff\|0xFF\|255\),\(ETH_ALEN\|6\));
+ eth_broadcast_addr(e);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index f8041f9..2fbbf35 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -342,9 +342,9 @@ inline struct sk_buff *ieee80211_probe_req(struct ieee80211_device *ieee)
 	req->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_PROBE_REQ);
 	req->header.duration_id = 0; /* FIXME: is this OK? */
 
-	memset(req->header.addr1, 0xff, ETH_ALEN);
+	eth_broadcast_addr(req->header.addr1);
 	memcpy(req->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
-	memset(req->header.addr3, 0xff, ETH_ALEN);
+	eth_broadcast_addr(req->header.addr3);
 
 	tag = (u8 *) skb_put(skb,len+2+rate_len);
 
-- 
1.9.1


