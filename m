X-GM-THRID: 2273030701056
X-Received: by 10.194.221.65 with SMTP id qc1mr526419wjc.7.1424574504044;
        Sat, 21 Feb 2015 19:08:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.200 with SMTP id la8ls429471lac.90.gmail; Sat, 21 Feb
 2015 19:08:22 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr535696lai.4.1424574502504;
        Sat, 21 Feb 2015 19:08:22 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ta1si407159wic.1.2015.02.21.19.08.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 19:08:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f180.google.com with SMTP id h11so10125289wiw.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 19:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=XZ1tQRQFLlZVN3CUKwClqNvxj5+p18kHZBTzsH/MZJU=;
        b=e2qX5vGKvNV7gvINVHIUitg3N/zKrDPkw1qfRpy8lOsE/YtiiRsuoq5yEkJClY/10c
         lxDPnZ7Y6ovwuX5OOsw5efCdlSgYQD8NV9UkDP6zmR91q66eeGs/wybDzMkPKOHapCww
         bTU6hV7NgZ2m0owsndZcrb5V2kr/g91g8hZdawwXZPG7A24q1LRKqCpYX+dtD1B0Webe
         q10iUgdrkUOUrSwykRURtP6XXLRIxLJ6ADLcuto6mUG2BusNWXOUna0TDL0kX+eC89zP
         LZe5pzt0Y1sZAL2Vscv3RsRP8A7C1zR2pXAzexUHA3xn4Zlmm00YF/xsAp9+uySjUSQE
         vNZg==
X-Received: by 10.194.2.75 with SMTP id 11mr9431813wjs.78.1424574502423;
        Sat, 21 Feb 2015 19:08:22 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gm2sm9446449wib.5.2015.02.21.19.08.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 19:08:21 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 2/4] staging: lustre: lnet: klnds: o2iblnd: Removed useless return keywords.
Date: Sun, 22 Feb 2015 05:08:05 +0200
Message-Id: <9ea14228739f62dad2fe91710248ae66934695c9.1424574336.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424574336.git.gulsah.1004@gmail.com>
References: <cover.1424574336.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424574336.git.gulsah.1004@gmail.com>
References: <cover.1424574336.git.gulsah.1004@gmail.com>

Removed return keyword from void functions. Removed following checkpatch.pl warnings:
WARNING: void function return statements are not generally useful

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 64d5ea3..3d1ecf2 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -1103,7 +1103,6 @@ kiblnd_query(lnet_ni_t *ni, lnet_nid_t nid, unsigned long *when)
 	CDEBUG(D_NET, "Peer %s %p, alive %ld secs ago\n",
 	       libcfs_nid2str(nid), peer,
 	       last_alive ? cfs_duration_sec(now - last_alive) : -1);
-	return;
 }
 
 void
@@ -2862,7 +2861,6 @@ kiblnd_shutdown(lnet_ni_t *ni)
 out:
 	if (list_empty(&kiblnd_data.kib_devs))
 		kiblnd_base_shutdown();
-	return;
 }
 
 static int
-- 
1.9.1


