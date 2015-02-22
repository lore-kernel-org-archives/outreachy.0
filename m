X-GM-THRID: 2273030701056
X-Received: by 10.112.99.37 with SMTP id en5mr521757lbb.17.1424574505646;
        Sat, 21 Feb 2015 19:08:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.26.74 with SMTP id j10ls434146lag.7.gmail; Sat, 21 Feb
 2015 19:08:25 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr527488lbb.14.1424574505080;
        Sat, 21 Feb 2015 19:08:25 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ta1si407159wic.1.2015.02.21.19.08.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 19:08:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so10125289wiw.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 19:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RpRCz0JNx9cUwnqY048ofD7sdNXRVThjXPCrgl4dDZ8=;
        b=avrBNviYrR9m/7pdN3R6Z/S2S9PPejw+cChQ2CGZFKH1PjU3e/qo1Q9pX9Do4kc7zA
         Yzhl8kjbDlXthlEOygPDqe5W5pEFsX82+xLjNL+LmtYWKVCbzFD5V0SPG54gWlSQo3b9
         xxqR5BK8Nn1tW5SshonAvi7TntwHiOvjS75S3WSQ43TBVom4NKShbP9p+Fc/y8Ez9ZWV
         MaHf/KXRXzudw0bDizpa/1vUDs5hAl7GMRHPTorX6HtQXQOdCc6QDKvzxxl2oEbEU6h6
         6lF/ciJjLsZU01s4K/Jre8WFHYGxaTwGvoLUwwSmxtBGE32YGxtfmgNVIzlGWUV0T4RH
         Q4qg==
X-Received: by 10.180.105.166 with SMTP id gn6mr8359211wib.47.1424574504996;
        Sat, 21 Feb 2015 19:08:24 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gm2sm9446449wib.5.2015.02.21.19.08.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 19:08:24 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 4/4] staging: lustre: lnet: klnds: o2iblnd: Added missing blank line.
Date: Sun, 22 Feb 2015 05:08:07 +0200
Message-Id: <29bf54c829a63219a1c0c5d53954e6aaafd3455c.1424574336.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424574336.git.gulsah.1004@gmail.com>
References: <cover.1424574336.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424574336.git.gulsah.1004@gmail.com>
References: <cover.1424574336.git.gulsah.1004@gmail.com>

Added missing blank line after declaration. Removed following checkpatch.pl warning:
WARNING: Missing a blank line after declarations

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 0592b57..b8af4ff 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -2976,6 +2976,7 @@ kiblnd_start_schedulers(struct kib_sched_info *sched)
 	for (i = 0; i < nthrs; i++) {
 		long	id;
 		char	name[20];
+
 		id = KIB_THREAD_ID(sched->ibs_cpt, sched->ibs_nthreads + i);
 		snprintf(name, sizeof(name), "kiblnd_sd_%02ld_%02ld",
 			 KIB_THREAD_CPT(id), KIB_THREAD_TID(id));
-- 
1.9.1


