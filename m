X-GM-THRID: 6210359704363728896
X-Received: by 10.182.128.101 with SMTP id nn5mr35635955obb.31.1445962348219;
        Tue, 27 Oct 2015 09:12:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.53 with SMTP id 50ls4164707qgc.26.gmail; Tue, 27 Oct
 2015 09:12:27 -0700 (PDT)
X-Received: by 10.13.230.14 with SMTP id p14mr35131040ywe.2.1445962347792;
        Tue, 27 Oct 2015 09:12:27 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pe1si4330224pac.2.2015.10.27.09.12.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 09:12:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so226457112pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 09:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ez8G+DjqEYl2OqKtjGg3e5NS+MZ0qr3cFV9NbHGNGYA=;
        b=Kl88fFYTN0cKF7+QvRU4rnvKDEJl8JCPJny9rx3zRntNrQH8pqoN6VfMt9daTm0wwG
         PeNOmg7JhG/ubhyx4Px67oXQIn7/Nj+KFOAeQP8+yyVUG9quiKonCzXsAL2Ipd6LYj/E
         8TWgluAXlTImEx4MlACCHdRc0Mr4Qp6Ssh+qR31tyBtOm9t/ilRlZmhHjNMcB38qmLqR
         xhKq1c6Zqr7bbvWH5jXkrKPMeTdRwHHxBDerm+6mI9YUUuQNYNEW/nI/tgw1pA9ya9Fa
         ONOCx0H2w/UPwWTZi4m13sY+bNQJ+sNm+MU/MMPdecTEL2yuHPvaiEUuD+6uX4j3dUsW
         qEzQ==
X-Received: by 10.66.192.106 with SMTP id hf10mr29096799pac.16.1445962347299;
        Tue, 27 Oct 2015 09:12:27 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ux3sm40598775pac.18.2015.10.27.09.12.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 09:12:26 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 5/5] fs: nfsd: Replace time_t with u32 oo_time
Date: Tue, 27 Oct 2015 09:12:18 -0700
Message-Id: <7357c7919b4984f3b4bedeb6df67c20f666fd035.1445960986.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445960986.git.ksenija.stanojevic@gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com>

Replace time_t type and get_seconds function which are not y2038 safe on
32-bit systems. Function ktime_get_seconds use monotonic instead of real
time and therefore will not cause overflow.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 fs/nfsd/nfs4state.c | 2 +-
 fs/nfsd/state.h     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/nfsd/nfs4state.c b/fs/nfsd/nfs4state.c
index 1652531..fa50bb8 100644
--- a/fs/nfsd/nfs4state.c
+++ b/fs/nfsd/nfs4state.c
@@ -3404,7 +3404,7 @@ move_to_close_lru(struct nfs4_ol_stateid *s, struct net *net)
 	last = oo->oo_last_closed_stid;
 	oo->oo_last_closed_stid = s;
 	list_move_tail(&oo->oo_close_lru, &nn->close_lru);
-	oo->oo_time = get_seconds();
+	oo->oo_time = ktime_get_seconds();
 	spin_unlock(&nn->client_lock);
 	if (last)
 		nfs4_put_stid(&last->st_stid);
diff --git a/fs/nfsd/state.h b/fs/nfsd/state.h
index c9ecfc6..20d597e6 100644
--- a/fs/nfsd/state.h
+++ b/fs/nfsd/state.h
@@ -440,7 +440,7 @@ struct nfs4_openowner {
 	 */
 	struct list_head	oo_close_lru;
 	struct nfs4_ol_stateid *oo_last_closed_stid;
-	time_t			oo_time; /* time of placement on so_close_lru */
+	u32			oo_time; /* time of placement on so_close_lru */
 #define NFS4_OO_CONFIRMED   1
 	unsigned char		oo_flags;
 };
-- 
1.9.1


