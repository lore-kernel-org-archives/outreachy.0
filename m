X-GM-THRID: 4468779253760
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f87ff92ab976437e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.145.133 with SMTP id su5mr1987661lbb.17.1425039344470;
        Fri, 27 Feb 2015 04:15:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.68 with SMTP id y4ls107550wix.19.canary; Fri, 27 Feb
 2015 04:15:43 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr424086wid.1.1425039343136;
        Fri, 27 Feb 2015 04:15:43 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x241.google.com (mail-we0-x241.google.com. [2a00:1450:400c:c03::241])
        by gmr-mx.google.com with ESMTPS id cl5si100097wib.3.2015.02.27.04.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:15:43 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::241 as permitted sender) client-ip=2a00:1450:400c:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x241.google.com with SMTP id q59so5445519wes.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=t6R0Kndy1pHDFbKzGoqIwePc9cAK6WfTtejYAZZC5UM=;
        b=c/dIK/s4PxYyaE1TdNLhvkZwIzFgLh+SeaR3tjN7MipWa3K5/o0FcVJTZnm+aPYZe8
         WMqEd2sdw1lhUNK4SOpQEw6p35aPQrhsEy4yIgMdFaMdGB5oh/y4nefmVKwzR4wbpcEb
         Cwor3MoOklXHvzrSo6tm+QqPIRJ+uq3hQo5uKGTyyoBXJ4AfH3W3pQiogzQ08v/1qsgY
         hoM9Mw7QOPDANSgDuOOd2rsMFEuqfgw6jca8C46Y0uMBKQuu0KzqRZsY41Ny/m/FdanP
         7wloQAM7Q7zHqkcCx2eVDQbbesR1d2D8VmCpEhTnZGVhe+rTCBAwAJKvIghKnjZ1dz5D
         tIHw==
X-Received: by 10.194.108.9 with SMTP id hg9mr27805031wjb.68.1425039342933;
        Fri, 27 Feb 2015 04:15:42 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id ga8sm2587179wib.6.2015.02.27.04.15.41
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 04:15:42 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: osc: Insert missing space before '='
Date: Fri, 27 Feb 2015 14:15:36 +0200
Message-Id: <1425039336-14907-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Insert missing space before '=' to improve readability.

This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_lock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_lock.c b/drivers/staging/lustre/lustre/osc/osc_lock.c
index 4456557..350ad49 100644
--- a/drivers/staging/lustre/lustre/osc/osc_lock.c
+++ b/drivers/staging/lustre/lustre/osc/osc_lock.c
@@ -1010,7 +1010,7 @@ static int osc_lock_enqueue_wait(const struct lu_env *env,
 	struct cl_lock_descr    *descr   = &lock->cll_descr;
 	struct cl_object_header *hdr     = cl_object_header(descr->cld_obj);
 	struct cl_lock	  *scan;
-	struct cl_lock	  *conflict= NULL;
+	struct cl_lock	  *conflict = NULL;
 	int lockless		     = osc_lock_is_lockless(olck);
 	int rc			   = 0;
 
-- 
1.9.1


