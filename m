X-GM-THRID: 1888775831552
X-Received: by 10.152.19.100 with SMTP id d4mr328273lae.7.1424531170600;
        Sat, 21 Feb 2015 07:06:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.1 with SMTP id lg1ls357540lab.34.gmail; Sat, 21 Feb
 2015 07:06:10 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr323873lbb.6.1424531170203;
        Sat, 21 Feb 2015 07:06:10 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id cl5si317982wib.3.2015.02.21.07.06.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 07:06:10 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f182.google.com with SMTP id l15so8407990wiw.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 07:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fEBkVwcvOJ/zbme8q7kmnGD769ECQAafOW9gpoT89cE=;
        b=u/1LTufeRzLXqTFiUVwYR55VqR7f2xf2Any5o6+ffdaN1xiMkRqXFxYUYXDqoKO3ws
         H6vQLaI1qC/yleB3ZOFj8LzkznW7A062JC2MPUEQrbNyZJH307xWnH9+Em8ydvR1JveH
         3hojQwT+YgbNXpM//jo3gJxX3hulp3iuDYQccqgSbmMwu7YuF+dOO5+2q7zavMsgX/m2
         OMcxzqMzg0/+d+XM50GSob8uNIG5CkVSm+JevZMrq4PAJS2UlwZ/thvCoLEEve+WVdmO
         M24RqgzuqO1veUnikxpUMFysoA8TXrlCYeOyrfiJyVSr+vyG6zbpB0vxXs4Na4UgSe+D
         QUow==
X-Received: by 10.180.214.99 with SMTP id nz3mr4727772wic.82.1424531170105;
        Sat, 21 Feb 2015 07:06:10 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([78.190.92.185])
        by mx.google.com with ESMTPSA id jg3sm7319141wid.0.2015.02.21.07.06.08
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:06:09 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 3/4] Staging: lustre: Remove return in void function
Date: Sat, 21 Feb 2015 17:05:13 +0200
Message-Id: <1424531114-12823-3-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: void function return statements are not generally useful
Remove return in void function.That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/router.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index 1122fcd..69b7f12 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -269,7 +269,6 @@ static void lnet_shuffle_seed(void)
 	do_gettimeofday(&tv);
 	cfs_srand(tv.tv_sec ^ seed[0], tv.tv_usec ^ seed[1]);
 	seeded = 1;
-	return;
 }
 
 /* NB expects LNET_LOCK held */
@@ -606,7 +605,6 @@ lnet_swap_pinginfo(lnet_ping_info_t *info)
 		__swab64s(&stat->ns_nid);
 		__swab32s(&stat->ns_status);
 	}
-	return;
 }
 
 /**
@@ -1010,7 +1008,6 @@ lnet_ping_router_locked(lnet_peer_t *rtr)
 	}
 
 	lnet_peer_decref_locked(rtr);
-	return;
 }
 
 int
@@ -1083,7 +1080,6 @@ lnet_router_checker_stop(void)
 
 	rc = LNetEQFree(the_lnet.ln_rc_eqh);
 	LASSERT(rc == 0);
-	return;
 }
 
 static void
@@ -1579,7 +1575,7 @@ EXPORT_SYMBOL(lnet_notify);
 void
 lnet_get_tunables(void)
 {
-	return;
+
 }
 
 #else
@@ -1668,7 +1664,6 @@ lnet_router_checker(void)
 	lnet_net_unlock(0);
 
 	running = 0; /* lock only needed for the recursion check */
-	return;
 }
 
 /* NB lnet_peers_start_down depends on me,
-- 
1.8.3.2


