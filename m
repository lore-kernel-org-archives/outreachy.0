X-GM-THRID: 6393291379359875072
X-Received: by 10.13.220.195 with SMTP id f186mr1198646ywe.121.1488554157676;
        Fri, 03 Mar 2017 07:15:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.1 with SMTP id 1ls10930609ota.5.gmail; Fri, 03 Mar 2017
 07:15:57 -0800 (PST)
X-Received: by 10.129.109.81 with SMTP id i78mr1160912ywc.60.1488554157258;
        Fri, 03 Mar 2017 07:15:57 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id g82si85651pfb.5.2017.03.03.07.15.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:15:57 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so10168061pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LLgM+xAYqfd9DowlAG1FdnT20bJbNFBC/mOT0fFup9Q=;
        b=J7nHPBoObKzq/gWXnlP85FdBo2l1MLKOaqPx98UpKRVgbrm2bBtJAU2214QHSxfceK
         Mq0Gy1WYNeFnBdXWyOqzSdGyvSjOrVReAkDTxHI3heDSe4m/tp1UPv7/HZCsH0XHFzZR
         66EsS5Y0gizFfrL1C0TDMFqkV8sisLRWPVKTDndqsc4UpAbZlpX/G/+8o8WLpMs4goNd
         c7gHDbl/cmAnL2PzFewuxEM8t7ck6eWwAITpL6d0OgSpEp0PrDiwaI+6ElSC7S2dqj8d
         bhRHjeijQoitxZQiyO770rleyB2tqc58sIpxBB2w5o5bcaNctayiMn0sXGR0OmBQPW8j
         oWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LLgM+xAYqfd9DowlAG1FdnT20bJbNFBC/mOT0fFup9Q=;
        b=of4dg+eQLnIvFh5xqh8Cz8zwl1rTZRtvOExlKSk5pQpeWu1P4HUtmNnKZzlswbgcxK
         OXaXSfoEr66IMAFKjyBvTr120e8U75P51rlP1G9h1ozsnDAcref9DhtdVnucLwVLRLKM
         QbjWL5c7hX77t7ApstaWYX7PG4JFniZk48o3WpDWU9EUbbHrUKUFUo9FrB7c43RtH3GZ
         vP/lb49AY0HugkxKE28HusJZj/W+sM32KW3xUplkuZhGbc73jA/b3hgG/VTX4Tqm4V3P
         Bur0JItkVOTpS03iuVTrOFOtD4n4G14f45F6HcOVbs0VkECiEr0HdEqAGGUNpYNKiWPq
         wABA==
X-Gm-Message-State: AMke39m3uIC4rWb73aFjgGta7xBUU7hjZI7BsBSk+tsv5pyAzLFdib61FtUjpxRftb7Erg==
X-Received: by 10.98.219.3 with SMTP id f3mr4038696pfg.181.1488554149155;
        Fri, 03 Mar 2017 07:15:49 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r71sm24057540pfa.104.2017.03.03.07.15.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:15:48 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8192u: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 20:45:39 +0530
Message-Id: <1488554140-28805-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488554140-28805-1-git-send-email-singhalsimran0@gmail.com>
References: <1488554140-28805-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "the the " with "the". The replacement couldn't be
automated because sometimes the first "the" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index f0fba81..3ca7f7d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -918,7 +918,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	int i;
 	struct ieee80211_rxb *rxb = NULL;
-	// cheat the the hdr type
+	// cheat the hdr type
 	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 	stats = &ieee->stats;
 
-- 
2.7.4


