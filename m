X-GM-THRID: 6207045610887970816
X-Received: by 10.182.128.101 with SMTP id nn5mr22576597obb.31.1445190424352;
        Sun, 18 Oct 2015 10:47:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.109.170 with SMTP id ht10ls646386igb.20.canary; Sun, 18 Oct
 2015 10:47:03 -0700 (PDT)
X-Received: by 10.66.144.164 with SMTP id sn4mr23618651pab.9.1445190423827;
        Sun, 18 Oct 2015 10:47:03 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si2952994pbb.0.2015.10.18.10.47.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 10:47:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so5804050pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 10:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PtM+KFUc4jezdCg+oA6mkJkWejPcnikGzFHPzCPhYnU=;
        b=YUyJZ6F29vMXKrisnHXwid69tDjSrRoroO96vLtgOwxWsyZBA4b67w9o1iEYGldOXw
         c+v9NAfcPObKP2ELk4w3RZe76f2W9Iho1Cng/MQY4FfnYEK7bXDBhvn8Z2ojlnAgHZvj
         59fCpLVRCvD0Xj06HX0LuCcoeM1MFFFYFeS/lUUvog/8B9FXx65gJE+G3shvoiVjfHN1
         Cl5FeiGbGDuQ0XO1u8mZqzVLx23Jln1OrtIlJ3RTozXQ2wRIXvml9cq1Y/bRCNSn8nDc
         6bMA0Z4/29QUeF97z/+l8u/neg+62QwNFJdph2HPKI03UCq8ZEosvr9qVnMgSSURP7yi
         QwfQ==
X-Received: by 10.68.90.34 with SMTP id bt2mr29671608pbb.145.1445190423684;
        Sun, 18 Oct 2015 10:47:03 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id pc8sm31923376pbc.27.2015.10.18.10.47.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 10:47:02 -0700 (PDT)
Date: Sun, 18 Oct 2015 23:16:45 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: lustre: lcommon_misc: Correct block comment style
Message-ID: <20151018174645.GA33087@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Alignment of block comments should be correct.
Fix checkpatch WARNING: Block comments use a trailing */ on a separate
line

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/lclient/lcommon_misc.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lclient/lcommon_misc.c b/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
index 8389a0e..8458a62 100644
--- a/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
+++ b/drivers/staging/lustre/lustre/lclient/lcommon_misc.c
@@ -45,10 +45,12 @@
 
 #include "../include/lustre_lite.h"
 
-/* Initialize the default and maximum LOV EA and cookie sizes.  This allows
+/*
+ * Initialize the default and maximum LOV EA and cookie sizes.  This allows
  * us to make MDS RPCs with large enough reply buffers to hold the
  * maximum-sized (= maximum striped) EA and cookie without having to
- * calculate this (via a call into the LOV + OSCs) each time we make an RPC. */
+ * calculate this (via a call into the LOV + OSCs) each time we make an RPC.
+ */
 int cl_init_ea_size(struct obd_export *md_exp, struct obd_export *dt_exp)
 {
 	struct lov_stripe_md lsm = { .lsm_magic = LOV_MAGIC_V3 };
@@ -73,8 +75,10 @@ int cl_init_ea_size(struct obd_export *md_exp, struct obd_export *dt_exp)
 
 	cookiesize = stripes * sizeof(struct llog_cookie);
 
-	/* default cookiesize is 0 because from 2.4 server doesn't send
-	 * llog cookies to client. */
+	/*
+	 * default cookiesize is 0 because from 2.4 server doesn't send
+	 * llog cookies to client.
+	 */
 	CDEBUG(D_HA,
 	       "updating def/max_easize: %d/%d def/max_cookiesize: 0/%d\n",
 	       def_easize, easize, cookiesize);
-- 
2.1.0


