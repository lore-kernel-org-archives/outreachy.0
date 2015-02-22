X-GM-THRID: 2273030701056
X-Received: by 10.180.8.67 with SMTP id p3mr490533wia.7.1424574504406;
        Sat, 21 Feb 2015 19:08:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.71 with SMTP id r7ls340110lag.42.gmail; Sat, 21 Feb
 2015 19:08:23 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr528892lal.3.1424574503830;
        Sat, 21 Feb 2015 19:08:23 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id o3si401136wib.2.2015.02.21.19.08.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 19:08:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x232.google.com with SMTP id w62so12043762wes.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 19:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=b59Lj1gmQTfs8bsgUjVCkSrBce6QZeW+Y4KhQUqEWBg=;
        b=IurFwCoGZA7qeFE2p6YPM0MZfmMjNkqKBIGPa2zzuk2HflDAft4lGrCCFW4cK2j0Mo
         Zc8HeFnYUPtq24SLcag16EgSFa8SLJiwOWR3BVXj0/1AzEjF8R7kSEiV3si/3jiWNG/I
         01VyuCKCgpqoZMF69P2euXA+63UG+g8aPXaTuroQ2+gHym/X5oRWSFlYCWLsrxjnXLKt
         02IvrS0L7giAJE2C65g25TIF22izfW9zgUKAImMdzNuqEEucEB0+KZqzFMbgkYN6G9Yt
         MSJZ6jk0JO16qhFsas34Zz5GS2hf5lN6heUQV/uRpnWg+by5rhQQbBLxY86lMP/O8o+U
         XdMg==
X-Received: by 10.180.78.202 with SMTP id d10mr8528079wix.25.1424574503754;
        Sat, 21 Feb 2015 19:08:23 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gm2sm9446449wib.5.2015.02.21.19.08.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 19:08:23 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 3/4] staging: lustre: lnet: klnds: o2iblnd: Deleted unnecessary brackets.
Date: Sun, 22 Feb 2015 05:08:06 +0200
Message-Id: <9a2b8d0ca35d5ac508ac9f7600ccb3e3a742cf13.1424574336.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424574336.git.gulsah.1004@gmail.com>
References: <cover.1424574336.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424574336.git.gulsah.1004@gmail.com>
References: <cover.1424574336.git.gulsah.1004@gmail.com>

Brackets were removed from the expression that containing single
statement. Removed following checkpatch.pl warnings:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 3d1ecf2..0592b57 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -2740,9 +2740,8 @@ kiblnd_base_shutdown(void)
 	case IBLND_INIT_ALL:
 	case IBLND_INIT_DATA:
 		LASSERT(kiblnd_data.kib_peers != NULL);
-		for (i = 0; i < kiblnd_data.kib_peer_hash_size; i++) {
+		for (i = 0; i < kiblnd_data.kib_peer_hash_size; i++)
 			LASSERT(list_empty(&kiblnd_data.kib_peers[i]));
-		}
 		LASSERT(list_empty(&kiblnd_data.kib_connd_zombies));
 		LASSERT(list_empty(&kiblnd_data.kib_connd_conns));
 
@@ -2884,9 +2883,8 @@ kiblnd_base_startup(void)
 	LIBCFS_ALLOC(kiblnd_data.kib_peers,
 		     sizeof(struct list_head) *
 			    kiblnd_data.kib_peer_hash_size);
-	if (kiblnd_data.kib_peers == NULL) {
+	if (kiblnd_data.kib_peers == NULL)
 		goto failed;
-	}
 	for (i = 0; i < kiblnd_data.kib_peer_hash_size; i++)
 		INIT_LIST_HEAD(&kiblnd_data.kib_peers[i]);
 
-- 
1.9.1


