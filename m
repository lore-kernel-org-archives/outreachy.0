X-GM-THRID: 6338415801559678976
X-Received: by 10.36.107.138 with SMTP id v132mr4052002itc.24.1475777430521;
        Thu, 06 Oct 2016 11:10:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.54.199 with SMTP id l190ls694031itl.2.gmail; Thu, 06 Oct
 2016 11:10:26 -0700 (PDT)
X-Received: by 10.66.1.136 with SMTP id 8mr3473825pam.14.1475777426089;
        Thu, 06 Oct 2016 11:10:26 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 80si1221841pfw.0.2016.10.06.11.10.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 11:10:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 190so1490274pfv.1
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 11:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=HOlWJwzadOxKYHx02ctgjFSepuZDXar+z26yupSOgiU=;
        b=FQJ6ul4ruGKrwZi7DlwYTPyIHs/ExXZgIyn5b7JObAiCog0wQE/g1pBgRR6pKtjKVU
         9wuv92P/mB9XZsYd4QU3KZmRUDO+E8k2Qirpejx5R9Ze3JYVwdOy2cDWV0712bdKFHtY
         /ISNPYGdAOE1J7Qujmm0yXr7XQ9pr8ypv+ABBkGxVcpVzzZHaK4KfEjudOyq6DMqDFcH
         wEpe+oCJjFAgJacdXjySlOGKW+Eg0XDOAG8efHfAOj9T0dDad9Ajqh8GjA5chTQpaRY/
         GUKCh4TSJb93t7KjatOpXNzQ+GDvWteTPV1RokZ2ZGIjttgRdXFdonge5c8q/mAcobjM
         QFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HOlWJwzadOxKYHx02ctgjFSepuZDXar+z26yupSOgiU=;
        b=KASBc1RNsPiM59N3Dc40go9r2SMUQtchsPk8o2AcLSwz5vMUCR5eQ0ki0hpU0/Z/p0
         r8ZhqeVFsCvrUit2glOB19iGC+Q5/kudd2FzA5JnqNQwBzWOG2CHD32luM4fmggomjkO
         LoF1PfoRe84PqTzCDln21s8dxoHhL/2TiCK91Q0ibbVZO6YsLUq2s8CLtB4cxefY9dWl
         WBJfm/9vn0+ztTQYb7errVgiCP1/iHPWz23edAl2NI4XppDLFqirw69NCF3rZhqRM6p8
         xm9cy0mHizfYOoX1IQDqXzMaxK/Ap165uxzqgAbc2uARMC6GXs2r0y2qxkxMM9shig4z
         s1iQ==
X-Gm-Message-State: AA6/9RlTyJ4YH2rPIIpBulA8EUe34t4YNdoyhU/18Ct5/ca6jmRiT2tEDOVhQAlhqtotyw==
X-Received: by 10.98.34.212 with SMTP id p81mr28744717pfj.18.1475777425930;
        Thu, 06 Oct 2016 11:10:25 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.181.180])
        by smtp.gmail.com with ESMTPSA id b197sm7450810pfb.52.2016.10.06.11.10.19
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 06 Oct 2016 11:10:24 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Thu, 06 Oct 2016 23:40:03 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: vc04_services: vchiq_arm: Remove unused function remote_event_destroy
Date: Thu,  6 Oct 2016 23:40:01 +0530
Message-Id: <1475777401-30076-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove function remote_event_destroy as it is not used anywhere in the
kernel. Function detected using Coccinelle but changes done by hand.
Script:

@initialize:python@
@@
def display(name,p):
        print(name,p[0].file)

@r1@
identifier func;
type T;
position p;
@@
static T func@p(...)
{
...
}

@r@
identifier r1.func;
@@
func

@script:python depends on !r@
func << r1.func;
p << r1.p;
@@
display(func,p)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 2c98da4..7ed3277 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -414,12 +414,6 @@ remote_event_create(REMOTE_EVENT_T *event)
 	sema_init(event->event, 0);
 }
 
-static inline void
-remote_event_destroy(REMOTE_EVENT_T *event)
-{
-	(void)event;
-}
-
 static inline int
 remote_event_wait(REMOTE_EVENT_T *event)
 {
-- 
1.9.1


