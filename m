X-GM-THRID: 6393296356207755264
X-Received: by 10.129.70.84 with SMTP id t81mr1364545ywa.146.1488555313330;
        Fri, 03 Mar 2017 07:35:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls7056133ota.23.gmail; Fri, 03 Mar
 2017 07:35:12 -0800 (PST)
X-Received: by 10.200.49.238 with SMTP id i43mr961414qte.21.1488555312928;
        Fri, 03 Mar 2017 07:35:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u12si104932pfd.3.2017.03.03.07.35.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:35:12 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so10167889pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LLgM+xAYqfd9DowlAG1FdnT20bJbNFBC/mOT0fFup9Q=;
        b=JeLdChMLcfVuYAGlNuQwv36OHcZbzLNNEIub45ycgeNoIi68uSabyWXKSe1+wQNwip
         yhYZsWMOt5AP6UcSsXGjqOtVRln2lUGgwOORPOYf9zY4VQVGcTB3RdponHgNXFP7kmDo
         p1hsd7U8CzyJSK+WJGPHUr80MelZcKL9D7OCNDtG+BXStU5UO32++iNZwqxKa/EoKZpx
         nxlXaESmnc7fvrmt1Zh+WN4AiV5/u0oaMTnztMle2QLZC9WIqhVVbVsQaHDuFkxgrnPT
         g7OvlpU7XIVhS8g7gFGdiVqUBuhDYqn8qy8cHgkJYfRFFdxTG2o8W6pkr5NIaFLST2oq
         5uNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LLgM+xAYqfd9DowlAG1FdnT20bJbNFBC/mOT0fFup9Q=;
        b=LKfTrq+sSh9vWo8GrjLSoFMqSmJ7tkuz3dFYNkMk10NIzdoYwaFFz8wNuS8CXlrcPo
         g6AKrVQXoJs9kLocfh/egdZFupPS6Ts6LdovQ7bj2bo+1N2snFhMiHqwMdjw3arsG8+X
         hHeBSrA73ML4vHlS3menPAqdzasrLhjyjkncaTuD5OMstMNJ7rqRpdnf+VauuZtlJieI
         AMN198qo0uw8niC0sYYStJUW/1IC+UHWECVeLggL/lMdTRXX02YxaSInEagmPNO2Rlxg
         +9IGkiQDtlfh7DxOqDdDHzll8VBhvHgQtfntTQS229oEW4fmX3IYxpOfBDu2Vri45xIR
         cY2w==
X-Gm-Message-State: AMke39kuW30ZmEZYk9/H7xZ8feN6/G7H1akX3PfLmxbTCW93ntxXhENw5FbqYkRI279YQA==
X-Received: by 10.84.150.129 with SMTP id h1mr5175519plh.86.1488555312367;
        Fri, 03 Mar 2017 07:35:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b7sm24196583pfg.53.2017.03.03.07.35.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:35:11 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rtl8192u: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:04:59 +0530
Message-Id: <1488555300-9140-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488555300-9140-1-git-send-email-singhalsimran0@gmail.com>
References: <1488555300-9140-1-git-send-email-singhalsimran0@gmail.com>

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


