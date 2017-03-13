X-GM-THRID: 6396973139962626048
X-Received: by 10.200.49.238 with SMTP id i43mr5047305qte.21.1489411373583;
        Mon, 13 Mar 2017 06:22:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.136 with SMTP id p130ls4170947iod.9.gmail; Mon, 13 Mar
 2017 06:22:52 -0700 (PDT)
X-Received: by 10.99.226.3 with SMTP id q3mr17198162pgh.129.1489411372536;
        Mon, 13 Mar 2017 06:22:52 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si3009183pfz.1.2017.03.13.06.22.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 06:22:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so18996082pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 06:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GFmoefO3CB5bDJSiJC9XzHGw3P2u0L6pXjtWkdncwhg=;
        b=PTQ0pPHFNTD7OMAzsN7dA3LUsfwh5Kbj+8OwsLGPlAosE7RtimDGVUjDHIYYqUzqsF
         7PQ89/nKIoeJxQ1B8KDWFCMB+nkngpAxDE8mP4Gzgyxl+fou9rfHJieVoGEFsbWRZ2w5
         1YF4vYw/OPki4PoK14FaW8rfgnCkUvggfEGH/yFQv0c5a16L/SSYha1wvadUs8oFJZuX
         yX61VCt0xnCnk1yR0nFGDODy3tgYZDf2cnnXIiyyasmZX1/knzLtUJ5T8/lLiiLx5ZGa
         gakKX8z+iVucLiImJz+NawV5aSrvFdxCLoNAobuNkG/7Nvav6Oo5nsaYbwpZh3hsVKAy
         tjLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GFmoefO3CB5bDJSiJC9XzHGw3P2u0L6pXjtWkdncwhg=;
        b=iWZQLBc7MDLXe/bc9jaRrrzIpmd210T/uBispxDETQ/POtDcYHa5C+ozpcyDj4gqfH
         K7uKHYUw+4vFsqR3wi/HV0hcWYMiTQB0jmMtKWe5ALkgtP9+nzpvz2VeflJfM4cxyVwY
         v0h8u9Gtv9incJ1KoP9kD1JqreSwb4sH84l1KNEs8lsi6I4XOU5MRy8t6Qf5eQrWmoJr
         0QxNEzT+Y70S+l5XEeTRk7dbJoQKqU98Ml8Ga4/4m6+nqx7mrIzp8EkXvGI3SOOoQ1id
         IfiTrz28LkKKWBFqzhnLauvn8Paev+0nmNiSrp6aMWjNoe6hd0qVTKuSPNLDMuwS6pzA
         wMUw==
X-Gm-Message-State: AMke39nS/51/MC7Co+ilscRI+WvE4y/g0x93k/gKRsNvJiFMgT6mMDuoNadglSrjn8jFhQ==
X-Received: by 10.84.236.9 with SMTP id q9mr47063085plk.96.1489411372317;
        Mon, 13 Mar 2017 06:22:52 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s65sm33093409pgb.64.2017.03.13.06.22.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 06:22:51 -0700 (PDT)
Date: Mon, 13 Mar 2017 18:55:01 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: robsonde@gmail.com, colin@cvidal.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: Remove code in comments
Message-ID: <20170313132501.GA13831@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Commenting out code is a bad idea.
As comments are for explaining what code is about.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 5704e4d..7afdd05 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -281,7 +281,6 @@ ieee80211_classify(struct sk_buff *skb, struct ieee80211_network *network)
 	if (eth->h_proto != htons(ETH_P_IP))
 		return 0;
 
-//	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
 	ip = ip_hdr(skb);
 	switch (ip->tos & 0xfc) {
 	case 0x20:
@@ -887,7 +886,6 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		if (tcb_desc->bMulticast ||  tcb_desc->bBroadcast)
 			tcb_desc->data_rate = ieee->basic_rate;
 		else
-			//tcb_desc->data_rate = CURRENT_RATE(ieee->current_network.mode, ieee->rate, ieee->HTCurrentOperaRate);
 			tcb_desc->data_rate = CURRENT_RATE(ieee->mode, ieee->rate, ieee->HTCurrentOperaRate);
 		ieee80211_qurey_ShortPreambleMode(ieee, tcb_desc);
 		ieee80211_tx_query_agg_cap(ieee, txb->fragments[0], tcb_desc);
@@ -895,8 +893,6 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		ieee80211_query_BandwidthMode(ieee, tcb_desc);
 		ieee80211_query_protectionmode(ieee, tcb_desc, txb->fragments[0]);
 		ieee80211_query_seqnum(ieee, txb->fragments[0], header.addr1);
-//		IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, txb->fragments[0]->data, txb->fragments[0]->len);
-		//IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, tcb_desc, sizeof(cb_desc));
 	}
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	dev_kfree_skb_any(skb);
-- 
2.7.4


