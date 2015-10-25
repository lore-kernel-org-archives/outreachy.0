X-GM-THRID: 6209690424503697408
X-Received: by 10.112.12.132 with SMTP id y4mr7495300lbb.0.1445806218827;
        Sun, 25 Oct 2015 13:50:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.208 with SMTP id r199ls585334lfg.2.gmail; Sun, 25 Oct
 2015 13:50:17 -0700 (PDT)
X-Received: by 10.112.55.2 with SMTP id n2mr371046lbp.9.1445806217929;
        Sun, 25 Oct 2015 13:50:17 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id en3si310170wib.3.2015.10.25.13.50.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 13:50:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx6so89295481wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 13:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=LGPO6kPG3MTjdebS4RAIu+SH6Bbgk64b6zDwRmQxDq8=;
        b=YZBihZ+u+/368y7VYp5RUjipo5pUIQmW+Qf5KgBRVklrtQcpyNed6eqeYeI/SOxE/E
         PhtQggRU429608Fwrqkfzv7vsZo9DpZ/jAza8OlAtP6L5CyuwMIWaHyAGQG0Fqb7c86o
         Mg7Ld3zyeRAw3XyDgendKfuKDvQ4QBuhahKVBxE7kjRpFeG7+7/H+Zsd09ams1iEAOwq
         6pnEH3w76rH57XXTgo/Vmmy+5687TOiot4MT4UTrS4mXl4JLUlG/aUButX9LllP+V0uu
         SMTd93MCEPAGnTOARq1cgQA5jCAhT1ZZPaB4Q5St/gEyHPfhuSv0++7DBWJ2GHZ7PBug
         TONQ==
X-Received: by 10.180.216.97 with SMTP id op1mr15001919wic.51.1445806217815;
        Sun, 25 Oct 2015 13:50:17 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.193])
        by smtp.gmail.com with ESMTPSA id lg1sm11355617wic.17.2015.10.25.13.50.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 25 Oct 2015 13:50:17 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: iio: Remove unused variable
Date: Sun, 25 Oct 2015 22:49:42 +0200
Message-Id: <1445806182-6740-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove variable that is initialized but not used.

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/light/isl29018.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/iio/light/isl29018.c b/drivers/staging/iio/light/isl29018.c
index 73109dd..bbf7e35 100644
--- a/drivers/staging/iio/light/isl29018.c
+++ b/drivers/staging/iio/light/isl29018.c
@@ -117,12 +117,10 @@ static int isl29018_set_integration_time(struct isl29018_chip *chip,
 {
 	int i, ret;
 	unsigned int int_time, new_int_time;
-	struct isl29018_scale new_scale;
 
 	for (i = 0; i < ARRAY_SIZE(isl29018_int_utimes[chip->type]); ++i) {
 		if (utime == isl29018_int_utimes[chip->type][i]) {
 			new_int_time = i;
-			new_scale = isl29018_scales[new_int_time][0];
 			break;
 		}
 	}
-- 
1.9.1


