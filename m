X-GM-THRID: 6201691543779147776
X-Received: by 10.129.4.15 with SMTP id 15mr19877325ywe.54.1443943849451;
        Sun, 04 Oct 2015 00:30:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls1798410qgj.56.gmail; Sun, 04 Oct
 2015 00:30:48 -0700 (PDT)
X-Received: by 10.129.156.216 with SMTP id t207mr3379643ywg.26.1443943848943;
        Sun, 04 Oct 2015 00:30:48 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id uv4si3091203pac.0.2015.10.04.00.30.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:30:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so5354668pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 00:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=fKJBVL7gKDvZK7iotoMMLufRxkXnPSMnqL298tEIfIU=;
        b=QI6gabgWMkSNdbWzRt94bAV07EqXKXK6bmQS7Hd2SVGDaP686OVSL/h7Nj0afZbY/j
         g2NNcxoaXcQk45N13WXTqviuRRBppRQOJlC0a8JkfTCRWlckjfW04z5yHjuOqvgjPgR4
         7kRRPH0Kk6Uq97AFFAAAqALVRkLirtrw2EuKz49wy3J+nFW7yRt44esR4EjA0m4rlyW9
         lvOY+GboGaN2wmjeCg0gsd3wrB3FJOrRKtj9ZRv6ft405wVdYK/IpmjAQAcjBf4qcgMT
         2YTk5WjnM7JIJfcgswcSjfBRSLUPhcFix06PBtNo+B6cwwUl02QLL9nhe0pqEjcmnkX1
         Gzig==
X-Received: by 10.68.168.97 with SMTP id zv1mr31482405pbb.86.1443943848814;
        Sun, 04 Oct 2015 00:30:48 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq1sm4087085pbc.82.2015.10.04.00.30.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 00:30:48 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 6/8] Staging: lustre: obdclass: genops: Declare as static
Date: Sun,  4 Oct 2015 13:00:14 +0530
Message-Id: <1443943816-21546-7-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
References: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5610D5A7.00E8,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare obd_export_nid2str and obd_zombie_impexp_cull as static
since they are used only in this particular file. Also remove the
corresponding declarations from header file

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h | 3 ---
 drivers/staging/lustre/lustre/obdclass/genops.c   | 5 ++---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 6fb67a6..e73cd00 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -92,13 +92,10 @@ struct obd_device *class_num2obd(int num);
 
 int class_notify_sptlrpc_conf(const char *fsname, int namelen);
 
-char *obd_export_nid2str(struct obd_export *exp);
-
 int obd_connect_flags2str(char *page, int count, __u64 flags, char *sep);
 
 int obd_zombie_impexp_init(void);
 void obd_zombie_impexp_stop(void);
-void obd_zombie_impexp_cull(void);
 void obd_zombie_barrier(void);
 
 struct llog_handle;
diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index c1bffcd..8573e49 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -1108,14 +1108,13 @@ void class_fail_export(struct obd_export *exp)
 }
 EXPORT_SYMBOL(class_fail_export);
 
-char *obd_export_nid2str(struct obd_export *exp)
+static char *obd_export_nid2str(struct obd_export *exp)
 {
 	if (exp->exp_connection != NULL)
 		return libcfs_nid2str(exp->exp_connection->c_peer.nid);
 
 	return "(no nid)";
 }
-EXPORT_SYMBOL(obd_export_nid2str);
 
 #if LUSTRE_TRACKS_LOCK_EXP_REFS
 void (*class_export_dump_hook)(struct obd_export *) = NULL;
@@ -1178,7 +1177,7 @@ static int zombies_count;
 /**
  * kill zombie imports and exports
  */
-void obd_zombie_impexp_cull(void)
+static void obd_zombie_impexp_cull(void)
 {
 	struct obd_import *import;
 	struct obd_export *export;
-- 
2.1.4


