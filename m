X-GM-THRID: 6470864213191426048
X-Received: by 10.28.236.83 with SMTP id k80mr251941wmh.29.1506615479454;
        Thu, 28 Sep 2017 09:17:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.155.208 with SMTP id e16ls1281060wrc.11.gmail; Thu, 28 Sep
 2017 09:17:58 -0700 (PDT)
X-Received: by 10.28.72.135 with SMTP id v129mr250456wma.14.1506615478257;
        Thu, 28 Sep 2017 09:17:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506615478; cv=none;
        d=google.com; s=arc-20160816;
        b=vhVqRoXVZ2LY+Yj7tXDHWxZwrYCi1Lmsos/y/y6MeVcLy98m+fW/ugtcHiIHPC+520
         tjI05E71fTiYAaw0fyAwAd2PS0SWTE+CoeC7/0pCBqqsHOrAGLNhv3GWhzUDN34yxKyi
         BH3fMvHcC8cgpn0vwIB0D4+++6vX7bKYK5mfrPM2qW86ddY+OwP48MjkUaz6xTWjh+yY
         I2DyYR2f4mS10S941vvj4NZkwe+k9M1RLZ2u+DfS9zTs18Gm8fOi8Zy/5Fjxwq0s1AuA
         lmNh9bArYZMm05e3TcJTauvb/iCJwlKj6hh/Ub1zmUGha5ILjQEKxu/67ZdOJ4PEwwi0
         fktQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=7Xlw7/U+UBV8fZtsBTJv3N6RpfB4/zQFdppVFy5Pqz4=;
        b=wyvH/lEb+HAtOiORzMU96gAeE4BqQa+CaZMjde3o0zphbh2Si0MfyZpdrEql/PzW9p
         kYsEpIfOD53F4eIa4UI90aas3jq1aUc/s0N2H4RAv/rUCGN29JOuycYtLx620plWOs9+
         MWvCn0kwIXlByIXAY4GL7jgoYm67ehGS2KjCHfaQrgICrCeT6q1CL9T52AGlLxQnFwAw
         vBB1MKaAUKwteuNochVYZ84JYjGJh9QjDCfyh6HSiD5HjclGVW5VZCa6EOeHIi2q0fis
         L+Vbs3KyancgVRf/zsQtrRHWeWBHcZOebJCmFtv4WvQEeHFa8gaXWkh/lBTG/sC54v0K
         xZRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RbGS467q;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id h17si206017wmd.0.2017.09.28.09.17.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 09:17:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RbGS467q;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x236.google.com with SMTP id q132so3329109wmd.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 09:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7Xlw7/U+UBV8fZtsBTJv3N6RpfB4/zQFdppVFy5Pqz4=;
        b=RbGS467qpiXQxWpX7j7zkF+ZMSYj8zx4FKSH0qi5ODj+OdVaaPLEr9Ji4J3IoJ4hvQ
         NfcD8TtvxmBpHxgKC16rvvs+daWTis8Gtyg/inVNXB0NQbznfD62VlbJMY4ZnQHPVc4C
         WTuQY6zMMIL3jan71ri58dxtWDltM1f7C83Yvz2sG+FY6YmHFaAj/AVk4y8RKGVUxQe0
         0hP4u8qp4h/rmVEa52mf2U2eS752lVRLMNF42ver+9lWZU041GJFj3dl9Y4D7h3SSbJ9
         XsMdpVTo0GCtSaSGFm0qto7+2QsU/19elDFpEdpxJhRP+YmndqYLaDGn+zIjul2rqSCI
         2pVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7Xlw7/U+UBV8fZtsBTJv3N6RpfB4/zQFdppVFy5Pqz4=;
        b=n/d0g4OcUPIFEDALdKuMG5nbC/JqE+iFT9uRsQLQWEYZNv0Xl2Gn4ufl753KxtU6Y8
         I4x/61s+YmfQymSMcvykG2FKprYwBlLRx/Lbvrs675UD8/wa2ck9SV0XDQBekmI4XYpS
         xcsFHc0MBxaH6fLJqIym0WlqLdGa8n0/v+PJgNMVnh/Q13IVEGKQNgV0OIP3xQ3vwH3y
         Ei1Erku6GoG4HOROlZlE6o5KQQ/7cj0FpOjt3RE4S9T+cNSVfM8TxWysVH/ZLvSnNKmO
         CzcU2iy9NhmVfjyhUG2SL7kL3a1H2GnGR+p4PL/Tx53RwN505AcsReBffWM74MAkC8FD
         uZIg==
X-Gm-Message-State: AHPjjUiyNzKHVFwwLJFzMKAxBMNkGD0hKc8XKMhNKcfnYpfm/a+yb3tV
	EGAEadFFpGjaOjyn7dTQFUs=
X-Google-Smtp-Source: AOwi7QDyxNaWkFHNF49fYhakrwjnLYorSdFH6uZ6q/1PsZ2xqKcC4i5fl+AyiS+i9YKYzp0SWK2zUg==
X-Received: by 10.28.35.142 with SMTP id j136mr1409272wmj.55.1506615477952;
        Thu, 28 Sep 2017 09:17:57 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id k52sm4118591wrf.62.2017.09.28.09.17.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 09:17:57 -0700 (PDT)
Date: Thu, 28 Sep 2017 19:17:56 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: vc04_services: Remove extern variable
Message-ID: <20170928161756.GA3062@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes extern variable vchiq_arm_log_level, because it is
already declared in vchiq_arm.h

Issue found by checkpatch.pl

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Change in v3
	- rewrite the log message
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 0159ca4..29702ea 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -84,8 +84,6 @@ static char *g_free_fragments;
 static struct semaphore g_free_fragments_sema;
 static struct device *g_dev;
 
-extern int vchiq_arm_log_level;
-
 static DEFINE_SEMAPHORE(g_free_fragments_mutex);
 
 static irqreturn_t
-- 
2.7.4


