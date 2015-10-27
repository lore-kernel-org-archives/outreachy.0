X-GM-THRID: 6210359704363728896
X-Received: by 10.13.204.132 with SMTP id o126mr33412697ywd.50.1445962312347;
        Tue, 27 Oct 2015 09:11:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls4614700qgj.56.gmail; Tue, 27 Oct
 2015 09:11:51 -0700 (PDT)
X-Received: by 10.129.157.15 with SMTP id u15mr6004941ywg.4.1445962311672;
        Tue, 27 Oct 2015 09:11:51 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si4294071pbb.0.2015.10.27.09.11.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 09:11:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id la5so33633452pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 09:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fT+RTgdAX/nM29mvkqgdUnMguwPPxrTghU3oDTQ8vu8=;
        b=MX7DnLSygCH0kc/oCkHXBmARXlf6gaTs+KXsp9Cs3eTTXkhPb3080PnKkWE4Mqk/fg
         Zdqc6C98AN7MYzfsUH7kZHsvzgQh1gxlrGbeM16n4GiJL5h3Th3RUHZGhGJp23tJSLDP
         NRnpbIinu7kfioQngqZ6mUk8bfwXTkGPc6xBRJ8hRFtNNo0u0uifjWuo4fLx73vkbVHi
         5skeq4hFZFLseNV7E7KClCE71vpl4ot5QWlFFP4dvzJCWGRnpI7X7GwGcv/2MzU0+UYa
         uVS2ZIMzi7g4+UdenzF9XY22OnA2n0jbcM2cPS9C0rteFCXNpk0P+TXjhZ6ARmacxGI+
         H8tg==
X-Received: by 10.68.243.73 with SMTP id ww9mr29216430pbc.6.1445962311546;
        Tue, 27 Oct 2015 09:11:51 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ub4sm24923483pac.29.2015.10.27.09.11.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 09:11:51 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 4/5] fs: nfsd: Replace time_t with u32 dl_time
Date: Tue, 27 Oct 2015 09:11:45 -0700
Message-Id: <69d410176551b84828085ae6a2bdd9f35026a9fc.1445960986.git.ksenija.stanojevic@gmail.com>
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
index 4b3c87d..1652531 100644
--- a/fs/nfsd/nfs4state.c
+++ b/fs/nfsd/nfs4state.c
@@ -3499,7 +3499,7 @@ static void nfsd4_cb_recall_prepare(struct nfsd4_callback *cb)
 	 */
 	spin_lock(&state_lock);
 	if (dp->dl_time == 0) {
-		dp->dl_time = get_seconds();
+		dp->dl_time = ktime_get_seconds();
 		list_add_tail(&dp->dl_recall_lru, &nn->del_recall_lru);
 	}
 	spin_unlock(&state_lock);
diff --git a/fs/nfsd/state.h b/fs/nfsd/state.h
index 5c49ed65..c9ecfc6 100644
--- a/fs/nfsd/state.h
+++ b/fs/nfsd/state.h
@@ -129,7 +129,7 @@ struct nfs4_delegation {
 	struct list_head	dl_recall_lru;  /* delegation recalled */
 	struct nfs4_clnt_odstate *dl_clnt_odstate;
 	u32			dl_type;
-	time_t			dl_time;
+	u32			dl_time;
 /* For recall: */
 	int			dl_retries;
 	struct nfsd4_callback	dl_recall;
-- 
1.9.1


