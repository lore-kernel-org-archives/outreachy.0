X-GM-THRID: 6212138738119606272
X-Received: by 10.50.30.232 with SMTP id v8mr4733471igh.10.1446376266872;
        Sun, 01 Nov 2015 03:11:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.227 with SMTP id z3ls584288igl.16.canary; Sun, 01 Nov
 2015 03:11:06 -0800 (PST)
X-Received: by 10.50.134.199 with SMTP id pm7mr6388263igb.0.1446376266605;
        Sun, 01 Nov 2015 03:11:06 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si1507687pac.2.2015.11.01.03.11.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:11:06 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy1so112241539pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 03:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=LqCLZUelx4HEmfPIfeKy4kGbQoJMciBzJ4Gx1eU0xIk=;
        b=NaCxGE35JGGyi/8XEgDHXZBDYxPqnbrJOLsVnC4SYw29YvpzP01IfIZoSq7b1JWfxa
         JhOOHe7lcd8/Nzpp5AZEWh36t7rH/v/WiSlTMvnFGTRFd65YZcerWuEat9kv1y0aNt8l
         Ca2yG1T4T21/oSjdNZVAuL1yZmFnooxYCT4sbLvmJsvQcEtb6GhM4T5VHsL1sSxvnUxO
         9hoQGzbB/0dm3Kgxpn9REllnGhXNk+MWxxiSdP124wLHXHVgBaxRoq76IVX7QDJJ+fQl
         GKME427tfIa7RzuabtomzoHvqTEloj4ss3n1dp5OqWIvzu0VltOAFVJN1yZvLWq8WJ78
         5Aew==
X-Received: by 10.68.135.1 with SMTP id po1mr20258913pbb.23.1446376266504;
        Sun, 01 Nov 2015 03:11:06 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id jt1sm18047346pbc.83.2015.11.01.03.11.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 03:11:05 -0800 (PST)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/3] Staging: lustre: obdclass: Declare local function cl_lock_mutex_try as static
Date: Sun,  1 Nov 2015 16:40:46 +0530
Message-Id: <1446376246-6959-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446376246-6959-1-git-send-email-shraddha.6596@gmail.com>
References: <1446376246-6959-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5635F349.00AC,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Function cl_lock_mutex_try has been used only in this particular file.
Thus declare the function as static.Also remove the corresponding
declaration from header file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
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


