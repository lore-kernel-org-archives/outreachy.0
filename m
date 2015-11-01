X-GM-THRID: 6212138738119606272
X-Received: by 10.129.108.212 with SMTP id h203mr14106332ywc.38.1446377812578;
        Sun, 01 Nov 2015 03:36:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.138 with SMTP id l10ls1680694qgf.36.gmail; Sun, 01 Nov
 2015 03:36:51 -0800 (PST)
X-Received: by 10.13.223.72 with SMTP id i69mr13690112ywe.28.1446377811890;
        Sun, 01 Nov 2015 03:36:51 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si1512457pbb.0.2015.11.01.03.36.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:36:51 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv9so123588528pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 03:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Jqy2757b8iUXq3Tfl/mTWJslwo01+dHvAZ32vWrj3qs=;
        b=N8BbuDBmqiP5853X+Ndobb4jIbOePrfeBTblOKPswcZeJInVWoupIapglUld2vv/JK
         7Vk7TYA+c5siyHib/ayY9eorEA7CEsFDjXY5JqEqpQo2bpQbW9LOVPA2C2yU82DSfux6
         ItCgg6k9quqMZgntAqFv+6IxR4Q/Q2LYrJCWJNgIANEbOj1qENpXVmAzDsDJsKiB1UMm
         pt2LLkaPR2shpWzUXN06aLHiOrDcQUnzIpU8/mbGoNPHfiWX1pUX2ywwxglxeh9nIXpa
         op8urrUhXuL//mykexf8UEBUk4MeEQkKHMUSeEm/ByPc9NHicrSR6EwFApa/kLmJtruM
         7UqQ==
X-Received: by 10.69.16.228 with SMTP id fz4mr20258619pbd.164.1446377811759;
        Sun, 01 Nov 2015 03:36:51 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qn5sm18230904pac.41.2015.11.01.03.36.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 03:36:51 -0800 (PST)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/3] Staging: lustre: obdclass: Declare local function cl_lock_mutex_try as static
Date: Sun,  1 Nov 2015 17:06:34 +0530
Message-Id: <1446377794-7761-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446377794-7761-1-git-send-email-shraddha.6596@gmail.com>
References: <1446377794-7761-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.5635F952.00B3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Function cl_lock_mutex_try has been used only in this particular file.
Thus declare the function as static.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 No change

 drivers/staging/lustre/lustre/obdclass/cl_lock.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
index 5621beb..1836dc0 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
@@ -687,7 +687,7 @@ EXPORT_SYMBOL(cl_lock_mutex_get);
  *
  * \see cl_lock_mutex_get()
  */
-int cl_lock_mutex_try(const struct lu_env *env, struct cl_lock *lock)
+static int cl_lock_mutex_try(const struct lu_env *env, struct cl_lock *lock)
 {
 	int result;
 
@@ -705,7 +705,6 @@ int cl_lock_mutex_try(const struct lu_env *env, struct cl_lock *lock)
 		result = -EBUSY;
 	return result;
 }
-EXPORT_SYMBOL(cl_lock_mutex_try);
 
 /**
  {* Unlocks cl_lock object.
-- 
2.1.4


