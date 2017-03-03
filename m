X-GM-THRID: 6393291379359875072
X-Received: by 10.157.82.90 with SMTP id q26mr1287149otg.20.1488554965064;
        Fri, 03 Mar 2017 07:29:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls307265otd.49.gmail; Fri, 03 Mar
 2017 07:29:24 -0800 (PST)
X-Received: by 10.157.46.92 with SMTP id c28mr1222503otd.145.1488554964652;
        Fri, 03 Mar 2017 07:29:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id s64si101046pfk.0.2017.03.03.07.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:29:24 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so10194781pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=iehuSnIp9ik4rUb5jBL91D0eQqbB9GwqLk3Hlnrsfg89IjbO6ozdGYLe4wOYlQwZYW
         Fe7NhYYT9y16T5PRwvDWcPnlcw5muoN6/9JshgxcyiZb3lEnZ17HMP3wUgpTZky3O2Kr
         KQCRJ5ZYAoYAqsUG7JLcAa2ZnkR7tJ2nKIsHp9xptK+89oJLANEXGAdZdrwTQhZvwk9e
         fSEdvFaHPuRsdeUSXc/+zuVJqa3mY9yCGrUHPQwK+p6qsIQ+OhZy34dhvw/VZm0Mf3uj
         PLJtXdulEiS6dUzwKXQ3PQiVBtLmRk8cG+Ainv0+uEfAp8ZeYGek/Tu6krZi9OOP279P
         yzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=caa4crWwTQK3iU6DDvbb6HlHGxlJff3/JaTTqqY0/Rs=;
        b=KNQiyle6v60yI9Ia0JUuwzRFRJkDk+gk10IOlcSeTx8bbyrOM1uUvKu9iGKoDwgHs5
         xgpxDMerVEgvBxzIMkmauARg3ke35FvUBcPPYkqm27LH3bC9+eQSFry76NZwAWjs6c5Q
         qaBwTdiSpfnCfyO5Gh2LQtO653gS7+XwVTLlqbIohqkuz0af86T/6dDG94soJb9a7H78
         yZisDYv9ZRGsYF6h7MWAQ8DKxW5Nrjs1aYFE3ihIsJC4GKZf15tmYXXQV5Ria8sBdAFU
         9bJPpQSN3MpnjfWK7/isuOVFmTWOxy27aNp9yU+m4Q4oNS9ao5T5+wWs+7SH4/V7VfLw
         9Tbw==
X-Gm-Message-State: AMke39ny99Rb79WZ7LR5eyR7FlA3IMgTbrBjGtAtr4mGFOZvE6wGE2m4O0B2sy7T1MH8sQ==
X-Received: by 10.99.94.198 with SMTP id s189mr4200071pgb.211.1488554964384;
        Fri, 03 Mar 2017 07:29:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h25sm17377416pfk.119.2017.03.03.07.29.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:29:23 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: wlan-ng: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 20:59:18 +0530
Message-Id: <1488554960-8697-1-git-send-email-singhalsimran0@gmail.com>
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


