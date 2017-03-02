X-GM-THRID: 6392973595050508288
X-Received: by 10.46.20.27 with SMTP id u27mr2357431ljd.4.1488480156429;
        Thu, 02 Mar 2017 10:42:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.204 with SMTP id m195ls25893wmg.23.gmail; Thu, 02 Mar
 2017 10:42:35 -0800 (PST)
X-Received: by 10.28.31.196 with SMTP id f187mr308472wmf.10.1488480155611;
        Thu, 02 Mar 2017 10:42:35 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id v70si956251wmf.0.2017.03.02.10.42.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:42:35 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u48so10656990wrc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7eiRoVgYTy5tAlW/YKBTl6T4y8gfvQ/Fdkcd6Yw4QT4=;
        b=m2fE3LJZUeR8SPCx4WjUjxYDRVUHcrTCYE9y+bpxwpXYmux9GOdCTsM1Oh9F/Jqrth
         +DeQgXEY/muqQvtlW13DUKkZvEYHwL5f7XlJXF5ew7UjpylUysfnL+lVx3FRj/PzhLti
         lNAzq9Uft+6yycr/SjFe1FISpTHoDjeCYppHqOeDHE8KuCI25ib+EMM22oL4y7TlcW/g
         6kTB444Yfu9lVhvaU9xkkfGVpc8zMDut9w47Z/4I9MW3xcpjhscrSSn2H1p05BWoHoOI
         2yrD2Xa98zbtNGBrPHh+emjbK+UrL3Ycn8dL/Gc1occ4atmnHv49vMBPngNl06iSmmn8
         XAjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7eiRoVgYTy5tAlW/YKBTl6T4y8gfvQ/Fdkcd6Yw4QT4=;
        b=YcqzyrUtLhM7bIrFrAG2E1wLl2tXo5pMPMAsc5fXJOqXSFFDTcWoysWzd2ZfuAFuQG
         OVyvEdZ17+61jTiaCS8bV/IftrEhdi0li/5y5IoaK3tFOxUPaj2n88Whovn6Ba8lZBxK
         bnDAars9W8dzLkWZHH8XNcoSiMVtv7fQyK/Bf7vkWA3SRJa/QUNwNDfPsGdgU8cw3G2+
         IDRaGdzLogvGPvl4NQ0p0it2hqBgTmIP0cI2e2mlAzoxHhLNvbPhXyVgwX4lCJwF9n5M
         pHLiakmZRMH+dkp86cQnfuCBMPWPDsxJ41xfu0d3cceLuqE0RdhLQhXdBWihfRjWJeFB
         ociQ==
X-Gm-Message-State: AMke39kcHbBw15nWXwVWww2KgL2nY8UIfOY1rDvXP0c5Le56SSMSp1xEF2J6umcINAhvJQ==
X-Received: by 10.223.134.44 with SMTP id 41mr2256670wrv.26.1488480155286;
        Thu, 02 Mar 2017 10:42:35 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.72])
        by smtp.gmail.com with ESMTPSA id m83sm28067304wmc.33.2017.03.02.10.42.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:42:34 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 3/5] staging:cxd2099:Add struct mutex definition
Date: Thu,  2 Mar 2017 20:42:31 +0200
Message-Id: <20170302184231.3428-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Added the struct mutex definition (A mutex is a mutual exclusion lock
used to protect data from concurrent access) to fix the following
checkpath.pl issue: CHECK: struct mutex definition without comment.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index b26f28d..001bffe 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -54,6 +54,7 @@ struct cxd {
 	int    amem_read;
 
 	int    cammode;
+	/* use a mutex to protect data from concurrent access */
 	struct mutex lock;
 };
 
-- 
2.9.3


