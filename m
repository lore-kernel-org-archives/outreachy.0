X-GM-THRID: 6393291379359875072
X-Received: by 10.157.66.1 with SMTP id q1mr1256372ote.47.1488554146052;
        Fri, 03 Mar 2017 07:15:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.81.210 with SMTP id s201ls733386ita.18.gmail; Fri, 03 Mar
 2017 07:15:45 -0800 (PST)
X-Received: by 10.99.1.78 with SMTP id 75mr1308261pgb.151.1488554145013;
        Fri, 03 Mar 2017 07:15:45 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id s64si94749pfk.0.2017.03.03.07.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:15:44 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x66so10125045pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=Sw+ZwxzH4nPW/Klvz/lcHSj33FvOr7OYl4Miua4d1/xu2R/2sRvp3N3ipbvze3hwcD
         w2pslZMKxb57N9gW+W0FF/2mzI+IJi3p+uWJ7UuLEEOKqG7lQ3e9+GRDY6JCWOj+NdBp
         gONozLG7GxtK0offtLg/AeSC3R1Jz6zlQE3RKfxxF6DGAr25lkxx3U3r5hwt1TL5yYyT
         FUp+mJ80Csg98tLA3YrVa1xAa1UuqrywIArFYxCTRDrFB+NG3JXS9dzZWYEQMCOnFU6W
         Lx3rGcmQAgi2pFfNIlZo1lSlCpOVtixdi0dpW13+ScUlC5R30nEhEir8kUa5+mpQQqjc
         jO/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=DLjHjEURnfxNDHgorEXeFU2hXeEXtlHmFLim6bcw+H6xpKcAAFoNMh8tOZ6hOwID8d
         E5DWvALdhLSPMQtsyjyeklemjonf0b4Wr4QBZiWm+06cShu8YmXgroQhtsNDWi1JNxBY
         /h3r8NY59Vxnb31ICuI2KM4LlKcvbB3y3HbuqWl2Kpe1umu8Jq9rxF7M/BwYeUKOL255
         fxBcCEciDCmdTiHpWaQCGoXTlJwBFjZY1Yhxu5SBYrC9dqf2g94DwQDx3KdjDW9imu51
         pmhrqzkLePI8bplb32iUvMZShwpe7Ks+wwN2pp9Yu612C5Ztn8oZq5Z2yrfB4n+YUa2W
         Q7eQ==
X-Gm-Message-State: AMke39mf+XgSbDEHVzQYcYQ4L+DtIsx9eS54uXX+X9doM8rMhKHfPuvsNg1Nx5vJToAYGQ==
X-Received: by 10.98.50.66 with SMTP id y63mr4091593pfy.21.1488554144820;
        Fri, 03 Mar 2017 07:15:44 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s13sm24113248pfk.26.2017.03.03.07.15.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:15:43 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: wlan-ng: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 20:45:38 +0530
Message-Id: <1488554140-28805-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch replace "the the " with "the". The replacement couldn't be
automated because sometimes the first "the" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 82d3a70..3ef85ac 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1310,7 +1310,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 		/* This one indicates that the MAC has decided to and
 		 * successfully completed a change to another AP.  We
 		 * should probably implement a reassociation indication
-		 * in response to this one.  I'm thinking that the the
+		 * in response to this one.  I'm thinking that the
 		 * p80211 layer needs to be notified in case of
 		 * buffering/queueing issues.  User mode also needs to be
 		 * notified so that any BSS dependent elements can be
-- 
2.7.4


