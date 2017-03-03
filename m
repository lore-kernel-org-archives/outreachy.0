X-GM-THRID: 6393296356207755264
X-Received: by 10.107.164.151 with SMTP id d23mr1313513ioj.39.1488556759692;
        Fri, 03 Mar 2017 07:59:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.32 with SMTP id m32ls2914115iod.52.gmail; Fri, 03 Mar
 2017 07:59:19 -0800 (PST)
X-Received: by 10.99.104.130 with SMTP id d124mr1308435pgc.13.1488556759036;
        Fri, 03 Mar 2017 07:59:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g82si105478pfb.5.2017.03.03.07.59.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:59:19 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e66so4592075pfe.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LLgM+xAYqfd9DowlAG1FdnT20bJbNFBC/mOT0fFup9Q=;
        b=I6ni3kfrg6bejp+YxspmnQx0aJxFBh9wH69MdPArNs1WVmUpKRTE2P2V9ofFNgI75a
         Ld+UUtgQlTEdTd/SnP8mWB2ZPzaUykB866g9KGhS72zGWscPmBaBRSM1PMd256+osq5a
         UQBilIOVwS2ZUEmgIcyXFxDZOfRt0RGVM0D/mqBcyZTu+TgyOm/SMuochdxg7W0rZK8s
         zG88qJFSMnxjGoXnEfXHreuVSz+v3p+aFmncf37a2Q0zgFD/iY4IuXw1J9NEkM4hHiq4
         Weg3BRoeaj9qRGlBosT11o4dZeLk9NNgFQ3MJZ3H57mvEcSyo0ASdpn2zBmVxWAWafNA
         SItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LLgM+xAYqfd9DowlAG1FdnT20bJbNFBC/mOT0fFup9Q=;
        b=KtMU62h+OvmQnRBKwCEogVItwuPjMzaC0DnqRIDut0Uj4YCM61mvmp5LtiRRnGk6eb
         T3VGpXTYk2fanoe5jwL541CKajmzrruWPHLBerwcVTD6LTdtyuzhYZTWPuAN2GDsZ/My
         tKtrObbHLtPZY1c0rRZVruWGP+1DKyJbdiD1Rt5EzX7jSZBobp5CU7G/8/q2bTUlX6Er
         nqthsbXj91gnG7IKTCrMuXkFQtAwLspEXFWVazHBBSHrYi8vC8G8bjY3zgqEZ+aSMy2j
         23/mX2knyta/iuONLJlC7p8M8b850uxRELrvegoVTi5U4MU2KtKna7lUd/T94EzyMdwi
         12FA==
X-Gm-Message-State: AMke39mWPyxWUe1f5NkmL1VQEVnd+pd5oUkfBGF2AU24TZTlZ4vKM+3DsNdq1DsXwkZxAg==
X-Received: by 10.99.226.83 with SMTP id y19mr4308831pgj.34.1488556758841;
        Fri, 03 Mar 2017 07:59:18 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l3sm24454974pgn.10.2017.03.03.07.59.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:59:18 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/3] staging: rtl8192u: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:29:05 +0530
Message-Id: <1488556746-599-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>
References: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>

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


