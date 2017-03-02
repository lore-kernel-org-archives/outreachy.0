X-GM-THRID: 6392991510876389376
X-Received: by 10.157.43.184 with SMTP id u53mr5680383ota.33.1488484328800;
        Thu, 02 Mar 2017 11:52:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.80.146 with SMTP id b18ls6484836oth.10.gmail; Thu, 02 Mar
 2017 11:52:08 -0800 (PST)
X-Received: by 10.157.6.80 with SMTP id 74mr5807344otn.5.1488484328437;
        Thu, 02 Mar 2017 11:52:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s64si1733599pfk.0.2017.03.02.11.52.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:52:08 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 16so1775270pga.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 11:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Xcng26hwis4gxcF72hmJMYanOjmvXJ8+5Fjb2YECZzI=;
        b=g1MWrAZRw5PDSof8v+IPT0ino8nspS2lRiyVlwI/zmT0cjeC8D+CMIr/sNv9zU51Sa
         hYF4BbBilYrF7IVsZ6A0GzseIUg38//58mj2Jd5ebsrRNPrRBVwnQgicP2suPvwLtos5
         1DG9kJJw4HkaQzUl7eloaUcKJEZBTmPvYlydj/LoQIL6mcemQ3rrMSLYcIZZUrIlzR1y
         VurUIqZGFnt0a0R58dh4qtQnctJIYAXkXyAAmY56GGtV3XqgoRphHV2yGfz0LCznKIi1
         5Eacye7XOql5+ENbBHZyQR+TZ8fU4VW+twObDgDhSBXOH1fyC04RgkhOJ6fU9FDPno5F
         Iecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Xcng26hwis4gxcF72hmJMYanOjmvXJ8+5Fjb2YECZzI=;
        b=CJ/hc3Hz6vXJpkzB1WzsC+u5MZqJZsDvs9hejJmKVG2FZ6r4+F3nCS3KVm5Q8F4Qzi
         pBFva2tXdx4VeVcJxQygYHiIMz8R/GhIBDBmkKSN9yhvuwhkJ+44v/qS/+m8r9peuzlg
         hztArut9OpyqvtFbFGKL2hD0n0fRBjwLD1JcI/aAtPYx2nVJ0sKPWJhmUhx7Y6mZg5L3
         1Yx/NloDlJGmFnWla70FxblPJf+Ra4EawhbCdnaxS4mUFlrqsR64MRRTJvgZi3YVqEjY
         ED5TXWv+d/okFWElisFAMrXvn6LBsB5ADzpdrbloAni9I9KpAGhnMRMzQiyhW80Y7agQ
         i/Bg==
X-Gm-Message-State: AMke39mbmia9jnoBDrq4uItaaWr1cbdS9eJRKk/6gorueNHm4HwioiQd+T+shz5kvwHN6Q==
X-Received: by 10.98.155.149 with SMTP id e21mr17785498pfk.24.1488484328107;
        Thu, 02 Mar 2017 11:52:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e70sm13965977pfl.105.2017.03.02.11.52.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 11:52:06 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] staging: media: Remove unnecessary typecast of c90 int constant
Date: Fri,  3 Mar 2017 01:21:56 +0530
Message-Id: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes unnecessary typecast of c90 int constant.

WARNING: Unnecessary typecast of c90 int constant

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 3dd5e7f..3f2b11ec 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -706,10 +706,10 @@ static int distance(struct gc2235_resolution *res, u32 w, u32 h)
 	h_ratio = ((res->height << 13) / h);
 	if (h_ratio == 0)
 		return -1;
-	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
+	match   = abs(((w_ratio << 13) / h_ratio) - 8192);
 
-	if ((w_ratio < (int)8192) || (h_ratio < (int)8192)  ||
-		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
+	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
+	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
 	return w_ratio + h_ratio;
-- 
2.7.4


