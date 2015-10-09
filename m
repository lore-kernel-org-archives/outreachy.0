X-GM-THRID: 6201947249365221376
X-Received: by 10.66.159.194 with SMTP id xe2mr11281721pab.13.1444410622323;
        Fri, 09 Oct 2015 10:10:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.138 with SMTP id d10ls1570516qge.27.gmail; Fri, 09 Oct
 2015 10:10:21 -0700 (PDT)
X-Received: by 10.129.108.133 with SMTP id h127mr11535685ywc.8.1444410621933;
        Fri, 09 Oct 2015 10:10:21 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id w5si255449pbt.1.2015.10.09.10.10.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 10:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ve7so33166548pab.2
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 10:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=AWaVZxYvnamRp4w9K8z+jnnX27koyXVDXrIJ4wVKFss=;
        b=uisu8uXjgGLVUNGFZNe7P8rrY44q4Umpe1JjHbyAdkNP1/CFvNOUdibP3vEvEGLdjB
         e9mxd9nPl5kAJKdTNT1wlFIFkFXtorpTZIb2kyov9wLMZHK4EMsA7d5jXnp0Er8dFK9u
         BX6ffbZigny6Q5SoWTca58A5qAlHsftc0ge2QO8zKNn0pQNX/zUSuJM8iwgfkSJLa1xt
         teGCZG0h1IdlBOzB02u0tEg98aN0iqTHneJ00CN2g1+5BKX/wA1gx5dgOzICd45gcM5n
         VFmsSqdu0jvG9X38WKeUYmUoN7BoPHBTe6sIC867fqcEeapGdbdzoZtCgQf+vYZIdHQr
         pT+A==
X-Received: by 10.68.219.169 with SMTP id pp9mr16800381pbc.115.1444410621799;
        Fri, 09 Oct 2015 10:10:21 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sn9sm3509950pac.16.2015.10.09.10.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 10:10:21 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: lustre: obdclass: lprocfs_status: Declare local functions as static
Date: Fri,  9 Oct 2015 22:40:07 +0530
Message-Id: <1444410607-5068-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444410607-5068-1-git-send-email-shraddha.6596@gmail.com>
References: <1444410607-5068-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5617F4FC.0099,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare lustre_attr_show and lustre_attr_store as static
since they are used only in this particular file. Also remove them from
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


