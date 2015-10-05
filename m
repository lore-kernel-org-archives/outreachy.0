X-GM-THRID: 6201947249365221376
X-Received: by 10.31.3.93 with SMTP id 90mr23632957vkd.0.1444003373765;
        Sun, 04 Oct 2015 17:02:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.103.161 with SMTP id fx1ls1188534obb.44.gmail; Sun, 04 Oct
 2015 17:02:53 -0700 (PDT)
X-Received: by 10.182.213.73 with SMTP id nq9mr24330555obc.33.1444003373503;
        Sun, 04 Oct 2015 17:02:53 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si3300301pbb.0.2015.10.04.17.02.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 17:02:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ex6so158088473pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 17:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=vZ6dKWHNfHfaQxF73Bql7bMWpD25W5LrY8FoBs8Gfs4=;
        b=ENjBeMpw3ctdKI6/M+4zIdg1Qxtzp/rtOJjSh4YLoo6H2A1Me7EvafBCKkYk12ZeAE
         m4Dhn9/XN/RMgbqsBum7iWT0YA6LBg1+JE2Jdfb8vuxS38QZVj2P40JzhQMOkydh/Hd+
         BZ7HJiJWQ+JjOMiedJh8dvRZ4GTLWK/uAG+H6Trx9ZbC7JmL7X4kO+xIGfjd22xzpAVp
         BUQtymJ4r88KUI6hgvx4evCXYSBBr3uv2lMI3ZDkXDkGUFrC87VyMkedcCJ5okl4rFo3
         4GUFjS+veSE1Kq0zRwjR/aDujvKhOtAZq25/Xn2DzEIrLXoSTrkW74yQvn440xtAEFig
         GoBg==
X-Received: by 10.66.150.105 with SMTP id uh9mr36086618pab.78.1444003373362;
        Sun, 04 Oct 2015 17:02:53 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id py6sm23884348pbb.62.2015.10.04.17.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 17:02:52 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/4] Staging: lustre: obdclass: lprocfs_status: Declare typedefs as static
Date: Mon,  5 Oct 2015 05:32:37 +0530
Message-Id: <1444003359-6619-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
References: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.5611BE2C.001C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare typedefs  lustre_attr_show and lustre_attr_store as static
since they are used only in this particular file. Also remove them from
corresponding header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Made commit message and subject clearer.

 drivers/staging/lustre/lustre/include/lprocfs_status.h  |  5 -----
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 11 +++++------
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
index 22f3777..6d127a0 100644
--- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
+++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
@@ -713,11 +713,6 @@ static struct lustre_attr lustre_attr_##name = __ATTR(name, mode, show, store)
 #define LUSTRE_RO_ATTR(name) LUSTRE_ATTR(name, 0444, name##_show, NULL)
 #define LUSTRE_RW_ATTR(name) LUSTRE_ATTR(name, 0644, name##_show, name##_store)
 
-ssize_t lustre_attr_show(struct kobject *kobj, struct attribute *attr,
-			 char *buf);
-ssize_t lustre_attr_store(struct kobject *kobj, struct attribute *attr,
-			  const char *buf, size_t len);
-
 extern const struct sysfs_ops lustre_sysfs_ops;
 
 /* all quota proc functions */
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index da4afe0..65819bf 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -1467,23 +1467,22 @@ void lprocfs_oh_clear(struct obd_histogram *oh)
 }
 EXPORT_SYMBOL(lprocfs_oh_clear);
 
-ssize_t lustre_attr_show(struct kobject *kobj,
-			 struct attribute *attr, char *buf)
+static ssize_t lustre_attr_show(struct kobject *kobj,
+				struct attribute *attr, char *buf)
 {
 	struct lustre_attr *a = container_of(attr, struct lustre_attr, attr);
 
 	return a->show ? a->show(kobj, attr, buf) : 0;
 }
-EXPORT_SYMBOL_GPL(lustre_attr_show);
 
-ssize_t lustre_attr_store(struct kobject *kobj, struct attribute *attr,
-			  const char *buf, size_t len)
+static ssize_t lustre_attr_store(struct kobject *kobj, struct attribute *attr,
+				 const char *buf, size_t len)
 {
 	struct lustre_attr *a = container_of(attr, struct lustre_attr, attr);
 
 	return a->store ? a->store(kobj, attr, buf, len) : len;
 }
-EXPORT_SYMBOL_GPL(lustre_attr_store);
+
 
 const struct sysfs_ops lustre_sysfs_ops = {
 	.show  = lustre_attr_show,
-- 
2.1.4


