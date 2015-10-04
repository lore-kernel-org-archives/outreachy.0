X-GM-THRID: 6201691543779147776
X-Received: by 10.140.145.78 with SMTP id 75mr22063750qhr.1.1443974977297;
        Sun, 04 Oct 2015 09:09:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.177 with SMTP id t46ls2770351qgd.2.gmail; Sun, 04 Oct
 2015 09:09:35 -0700 (PDT)
X-Received: by 10.13.202.195 with SMTP id m186mr23462475ywd.55.1443974975692;
        Sun, 04 Oct 2015 09:09:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id zg1si3202364pbb.2.2015.10.04.09.09.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 09:09:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hy16so11598906pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 09:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=fO61cmu0V4B8nTFIrOMMLZ33v//Y7q2GfuU7rI1tVyE=;
        b=hJWOQXxxcO/t81LaBnSmtRmUJtNhXZhgfZHMdqJ9VMwGE7OU9fRRoCuq8pa9Emsy6Y
         o/liuHd7Y1p96FrDTMM7kr8HeLlbGis3tPFpawEu43zYFVDc6S84Ap/IU53slKw/EmVe
         UH1sROKK/s79gbGz2DO14IHFvb+rT59Wnm5BnawL83nwkfUoG4IQ+aSH7h2RB3IC58gf
         DBO230rdfp3R8RM2BZSJm2yxPLwlQ9Vy2/WMmj7iFG22brbVk5yXoclE7nskcE3fprbG
         w0mf9SJJBvFp0JiUzHqxcmb0VexP09g4w/CHVQnoZLnE9HoQZfjIC6q0jdda2vGT7xtR
         3awg==
X-Received: by 10.66.150.161 with SMTP id uj1mr23535805pab.148.1443974975558;
        Sun, 04 Oct 2015 09:09:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yq2sm22705483pbb.39.2015.10.04.09.09.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 09:09:35 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/4] Staging: lustre: obdclass: lprocfs_status: Declare as static
Date: Sun,  4 Oct 2015 21:39:16 +0530
Message-Id: <1443974958-5994-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443974958-5994-1-git-send-email-shraddha.6596@gmail.com>
References: <1443974958-5994-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.56114F3E.007B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare lustre_attr_show and lustre_attr_store as static since they
are used only in this particular file. Also remove them from
corresponding header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lprocfs_status.h  |  5 -----
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 10 ++++------
 2 files changed, 4 insertions(+), 11 deletions(-)

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
index da4afe0..c8a5ff4 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -1467,23 +1467,21 @@ void lprocfs_oh_clear(struct obd_histogram *oh)
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
 
 const struct sysfs_ops lustre_sysfs_ops = {
 	.show  = lustre_attr_show,
-- 
2.1.4


