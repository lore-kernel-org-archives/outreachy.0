X-GM-THRID: 6332645829524848640
X-Received: by 10.36.214.14 with SMTP id o14mr448106itg.38.1474434004427;
        Tue, 20 Sep 2016 22:00:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.175.226 with SMTP id p95ls4433770ioo.44.gmail; Tue, 20 Sep
 2016 22:00:02 -0700 (PDT)
X-Received: by 10.66.75.197 with SMTP id e5mr6837399paw.75.1474434002757;
        Tue, 20 Sep 2016 22:00:02 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si7269349pfw.1.2016.09.20.22.00.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 22:00:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so1848377pfy.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 22:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=kgFXn8ggMrOZqEK0s6ixUyveCWs7zUiU1oSRG8FQx40=;
        b=BEr/A1+JiJV6FesEamEQP/dOVu5tyyrKCAm78QNf+Bs8aAZ/ar728MQqxmelg4iaLp
         mXFs5QpL3HHRFx+T23dnQcOgxT0qdYpIYUmX5WuFeaHiCFyqVGBes2etOAbMCRkszzU4
         i6eSKbVZ/59ndiBTV+jVoKPPu4TcBrGsyYsjV9KPXTWc3p3CUJ8w9ai+a74PdUeNMVRD
         T71s7LnGtFKLQJRnnqRrI7rfQSQ9aPAA+2qUuIeTMPmD7K6afpHSHiHLEChuk+4JvUXi
         dltIr6+/XW3/NYB7EtU+3JoFRBopmlwbbnAGKMQAhzZSTvhYxzMDAFwrsbm8Ya3T3OcN
         Jzsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kgFXn8ggMrOZqEK0s6ixUyveCWs7zUiU1oSRG8FQx40=;
        b=PtuGma8Yt0zk28mcfBrXGXqbKHjsekrNZ1QF0TWYHiD0vRaBZIZvmB4z5SayYvtnGO
         XZo71NEMw+ZZ41GmE5mJnbpK7bbVAx/HO3OoA2VyZoDHXsiqqfrUmuvy66DLy7F1VqIT
         xDU6a5TCHg/T1OVDkoEGH2NkREjRFBcVXmU2wpa8ItP3FGC37tzQxeHKAVNrCrFqWJMm
         CNGqFsKCIzIEXzF0xHJ2tgopYqx1XEqp8CKhd+RFXSxCeIGhd5WK4l9apUcS1kck1Nzk
         X89K2NofGxCIfLuhgRsJ/BJcPHaHYddX9KAtPaMtvqibIjRiVAjTeAtNxntkKmGFxa6h
         yq4g==
X-Gm-Message-State: AE9vXwPORYEnf+LjzgN7QQRevLvCjiOIHoJNLgiChrinOFy+ikm1Jqf3TFZszpjTicJwOg==
X-Received: by 10.98.205.66 with SMTP id o63mr61166642pfg.37.1474434002598;
        Tue, 20 Sep 2016 22:00:02 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.62])
        by smtp.gmail.com with ESMTPSA id l81sm44493330pfi.14.2016.09.20.22.00.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 22:00:02 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: greybus: camera: simplify NULL test
Date: Wed, 21 Sep 2016 12:59:29 +0800
Message-Id: <1474433969-6815-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace direct comparisons to NULL i.e. 'x == NULL' with '!x' for consistency.
Coccinelle semantic patch used:

@@
identifier func;
expression x;
statement Z;
@@

x = func(...);

if (
(
+	!
	x
-	== NULL
|
+	!
-	NULL ==
	x
)
   ) Z

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/greybus/camera.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index 46d2e8a..491bdd7 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -1121,7 +1121,7 @@ static ssize_t gb_camera_debugfs_write(struct file *file,
 	       return -EINVAL;
 
 	kbuf = kmalloc(len + 1, GFP_KERNEL);
-	if (kbuf == NULL)
+	if (!kbuf)
 		return -ENOMEM;
 
 	if (copy_from_user(kbuf, buf, len)) {
-- 
2.7.4


