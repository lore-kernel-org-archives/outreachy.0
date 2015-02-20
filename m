X-GM-THRID: 1526974119936
X-Received: by 10.112.159.227 with SMTP id xf3mr1170756lbb.11.1424462693810;
        Fri, 20 Feb 2015 12:04:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.231 with SMTP id bb7ls324786lab.50.gmail; Fri, 20 Feb
 2015 12:04:53 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr1512525lae.7.1424462693294;
        Fri, 20 Feb 2015 12:04:53 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id o3si170011wib.2.2015.02.20.12.04.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 12:04:53 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id l61so3426741wev.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 12:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZNG5zOd3qneKwnQs5JRg3qGTYC6sFV5kn/lO1l6vNuw=;
        b=KoehtPwd9HPLNqzWgkumob1bk3wh7Q18Yme0dEl9MYfcku+GsUe6cj+RKqkKk7SDG6
         lv8Va+cjJjY4IBk5lNkwu8rUnHAlarvA3E4jiK+8KMb2VGQNJioBmcL144icwdmZOfex
         /t1k53VBLv3ICLlQ2VELFeSqnx241cjk6AckeRIq8Yz5Fct34WWm0A15saCZJg6AAV8B
         pj8z1NYnRikCojUUH+26opLG8iZlWmSv1nV+EksxCd+J+TbXCLLbGyWvJX6fGaJjfzG0
         GRVy8aCR2qbQ84AH4CtWan48Vk9olHyjPK3I6HvFPD2CmE+n36jNiStxaUwA9uQR5DMn
         PrLg==
X-Received: by 10.180.72.98 with SMTP id c2mr707941wiv.87.1424462693197;
        Fri, 20 Feb 2015 12:04:53 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id p1sm3809165wib.23.2015.02.20.12.04.51
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 12:04:52 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2 3/4] Staging: lustre: Remove return in void function.
Date: Fri, 20 Feb 2015 22:04:06 +0200
Message-Id: <1424462647-4861-3-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: void function return statements are not generally useful
Remove return in void function.That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---

v2:changed the subject line and description

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


