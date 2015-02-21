X-GM-THRID: 1800831762432
X-Received: by 10.181.29.66 with SMTP id ju2mr263341wid.1.1424526549662;
        Sat, 21 Feb 2015 05:49:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.70 with SMTP id c6ls270299wie.1.canary; Sat, 21 Feb
 2015 05:49:09 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr301913wjc.5.1424526549405;
        Sat, 21 Feb 2015 05:49:09 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x244.google.com (mail-we0-x244.google.com. [2a00:1450:400c:c03::244])
        by gmr-mx.google.com with ESMTPS id ew5si314344wid.1.2015.02.21.05.49.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 05:49:09 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) client-ip=2a00:1450:400c:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x244.google.com with SMTP id u56so3352171wes.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 05:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7dWftKU5P5RSzFNYDlCSDB375Idjm4mFurUi1XuTTP8=;
        b=XC5GqUuetUOxFejQbLtr+scWd4VOFYXBpkBuMpaNZPh5f/v22RbQbq76fPZf+qHb0w
         tdK+qMBOd+CwUbMXsvij/tQPmpVEOBH2+EGrz41Jtmj7aqR8B52joYKVBmowZmJs4jrg
         6lkFl83uazQJ7YavFLlGjMJD+WqZadSFNmaHSlrmpxaRsTCZmnvPnJTZ1sWUOAX3WPab
         pAIlI2P7TLQMC+9nJ9rXXjlutL/MHhCPakI8bcfAzCm+jiwNrXHogPXxpnA8k8qGFRU1
         Nd3h5TV95ipmIJsAbLEoylQpVyq6d8d8O05p/iG4wc58GCkUMBgBYlo5ERFGa2/Tgm+g
         HFdA==
X-Received: by 10.194.94.1 with SMTP id cy1mr4572103wjb.127.1424526549327;
        Sat, 21 Feb 2015 05:49:09 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id n3sm46717327wja.36.2015.02.21.05.49.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 05:49:08 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Fix line over 80 characters
Date: Sat, 21 Feb 2015 15:49:01 +0200
Message-Id: <1424526541-15280-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with line over
80 characters in rtw_iol.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_iol.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_iol.c b/drivers/staging/rtl8188eu/core/rtw_iol.c
index cdcf0ea..0d1a246 100644
--- a/drivers/staging/rtl8188eu/core/rtw_iol.c
+++ b/drivers/staging/rtl8188eu/core/rtw_iol.c
@@ -25,7 +25,8 @@ bool rtw_IOL_applied(struct adapter  *adapter)
 	if (1 == adapter->registrypriv.fw_iol)
 		return true;
 
-	if ((2 == adapter->registrypriv.fw_iol) && (!adapter_to_dvobj(adapter)->ishighspeed))
+	if ((2 == adapter->registrypriv.fw_iol) &&
+			 (!adapter_to_dvobj(adapter)->ishighspeed))
 		return true;
 	return false;
 }
-- 
1.9.1


