X-GM-THRID: 6256316019335233536
X-Received: by 10.13.227.133 with SMTP id m127mr8324252ywe.1.1456662085638;
        Sun, 28 Feb 2016 04:21:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.5 with SMTP id s5ls2103330qgs.19.gmail; Sun, 28 Feb
 2016 04:21:24 -0800 (PST)
X-Received: by 10.140.29.183 with SMTP id b52mr24934403qgb.8.1456662084804;
        Sun, 28 Feb 2016 04:21:24 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id y20si923472pfa.2.2016.02.28.04.21.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 04:21:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id yy13so76125767pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 04:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8BsylZw+giBQX9esP4M+6nqfCcDS55l77j6YHzhawqs=;
        b=ZU7FOBqW2TUAgU+hIMV/u6XLbeZGxmTEZizu0D1aHr+bDK3JuO0HnG1R4ZUfUCf2Cj
         tx5gkISRMeQ38V+zOce9mdG2GJk6R3PEoSOEsLANwB1vVnqsrmOCZGN6zyg3o0qahFPS
         6f2F072lVPshSQ693FQYUtrofYBkMMrI1Fm6JYSBeETMV1CQ4MJK9yrTRvDAz4J7s8Vg
         8WWS8d2KdaWmt+FbGpKWYypP4hA/OCVg4gFGiEDwz3uxnFPbsHhKdvU63ijwNR1fufRH
         0DlPESUDu+bE43BJV3SuAqeu8I2i8XVNV1SHZozSoxtpPSBPYIcPnH7cGkbJRCPGRA+p
         DJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8BsylZw+giBQX9esP4M+6nqfCcDS55l77j6YHzhawqs=;
        b=dCR10pptQ6NLSq+LXVY9LRDOBF18wd92ykMnPyDOoZfBZ4pN6o+PCMF96zQQ1EIFcC
         lRje+554+GJ9PpSXpsbSItGsIlqJTBKn/T8QL5aefizhxaltLuUDJPpjp1V/c8goqZ9Z
         /3FgZnE8OnWRlfuZ2C31TPqhsl1RQc2CY3sAOZYedTb/dnN9CRuazWkNYY2brTSUdFSD
         POeBbtF2eFWV+aEomHqss3tmVpjQJxdEXXMZbn7nDFpwVm8G060RnfjAXI0JGKK/rrmE
         9htl19tLsJIvcvEVWi5VVGdQTli++/rxAkq2ZJusA0O/7gSXGVUYIR8OwrmLSQMmCKM7
         F8jw==
X-Gm-Message-State: AD7BkJLfS9TzA4NhD9dW9bLkOhpNRekO5NEDktvND+OOSMHXUDcRNkRuQvvE54Ge0v0tNw==
X-Received: by 10.66.139.137 with SMTP id qy9mr14920897pab.57.1456662084596;
        Sun, 28 Feb 2016 04:21:24 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t12sm31157294pfa.54.2016.02.28.04.21.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 04:21:24 -0800 (PST)
Date: Sun, 28 Feb 2016 17:48:36 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: Remove unused variables
Message-ID: <20160228121836.GA17019@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The pointer *skb2 is declared 'globally' inside  ifdef NOT_YET.
It's used nowhere in the directory.
Another pointer *skb2 is declared 'locally', again inside another ifdef NOT_YET
in the function ieee80211_rx_frame_mgmt.
Hence, skb2 stays unused and has been removed.

This was done using Coccinelle:

@@ type T; identifier i; constant c; @@
-T i;
<... when != i
-i = c;
...>

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 9dfde07..7808897 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -909,7 +909,6 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	//added by amy for reorder
 #ifdef NOT_YET
 	struct net_device *wds = NULL;
-	struct sk_buff *skb2 = NULL;
 	struct net_device *wds = NULL;
 	int from_assoc_ap = 0;
 	void *sta = NULL;
--
2.1.4


