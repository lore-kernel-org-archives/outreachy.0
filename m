X-GM-THRID: 1328454565888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6f1dd75346e94f50
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.131.106 with SMTP id ol10mr1366612lbb.20.1424446123620;
        Fri, 20 Feb 2015 07:28:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls305185lak.108.gmail; Fri, 20 Feb
 2015 07:28:43 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr1363135lai.4.1424446123155;
        Fri, 20 Feb 2015 07:28:43 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id r6si134797wix.0.2015.02.20.07.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 07:28:43 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f180.google.com with SMTP id h11so3685463wiw.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7vuBR9YkoSRv5snF16t7VNzNYPLXZBdCTIgSQ/xlCmk=;
        b=iNr4vzOwdFUnYIxFns2Wj3yPN1h75FVfylQWoltdBp1WC4/JZFhfw1j7TBRh/S+32P
         Ed4vzUqdlbWLJOpRBxOBpPDlI8zSJa8C2AVodZUgTG3yRfhF1+4IROl/r9GMMTUzYTL/
         pBC+uZh/r0dyd3THO7T6j+v3/lt0AQRinWNvszuccmCIJw0VVxXYHaQZzo4QS2Gqd714
         2J6w9lDY2XnGgI4lVlTmEFM37nyrPkP2xBW+mzMi32RJVnae+rW2B6gCdn+eK1b29KT/
         eDcl0Oik0mi3WQURZnNkZRKTHOw7xoby5LzN/QPCwPaD845tyPME1WQdANBxNDdbh0OG
         rxHg==
X-Received: by 10.195.12.35 with SMTP id en3mr19209114wjd.129.1424446123059;
        Fri, 20 Feb 2015 07:28:43 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id dx11sm39614476wjb.23.2015.02.20.07.28.41
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 07:28:42 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 3/4] Staging: lustre: lnet: klnds: socklnd: Remove return in void function.
Date: Fri, 20 Feb 2015 17:27:49 +0200
Message-Id: <1424446070-14232-3-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: void function return statements are not generally useful
checkpatch.pl warning in socklnd.c

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index 6ec2a13..4e66f2b 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -1838,7 +1838,6 @@ ksocknal_query(lnet_ni_t *ni, lnet_nid_t nid, unsigned long *when)
 		ksocknal_launch_all_connections_locked(peer);
 
 	write_unlock_bh(glock);
-	return;
 }
 
 static void
@@ -2530,7 +2529,6 @@ ksocknal_debug_peerhash(lnet_ni_t *ni)
 	}
 
 	read_unlock(&ksocknal_data.ksnd_global_lock);
-	return;
 }
 
 void
-- 
1.8.3.2


