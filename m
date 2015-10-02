X-GM-THRID: 6201108859850850304
X-Received: by 10.66.144.2 with SMTP id si2mr7587185pab.6.1443808179614;
        Fri, 02 Oct 2015 10:49:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.133 with SMTP id w5ls1660842qge.68.gmail; Fri, 02 Oct
 2015 10:49:39 -0700 (PDT)
X-Received: by 10.13.209.70 with SMTP id t67mr14084526ywd.46.1443808179137;
        Fri, 02 Oct 2015 10:49:39 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si1833990pbb.0.2015.10.02.10.49.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 10:49:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id lk4so111582081pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 10:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Z+FLIgyJodSCnTfgcE27Uv93tu4vwoYj9DMh+sFFwZ4=;
        b=t7vOyQwQicKYZPGFy+GInYmo8VH8yvwUM2DrMSkpFhPPtAWAmlbaK+vd9VjrBBawVg
         m0JOORgLZAfyaqAIXfyAYWjmYBAUP6ZPhJeBDHT5Y4bmRvsJl57OpNcslTZxnTuPmrE2
         E9Pxor6liKPGH7gRcSMb7mP5UHuy3p4CsA7g8i+oXwohhIxC/oUxp/5ZhZF87ipLPGaN
         mXkiO8w+MAC8HIj4lZ0V9rliHu6R+/H0uxGY/LATQo6pAJkDgalm1TT6XefW3pS6AgQj
         Zcr1Jewc6Mu9vPWqVHep3slmfBkUnKVlflSFatBlENgpAwWhmaBTHjiXdLldIpLcI2kt
         lS6Q==
X-Received: by 10.68.98.34 with SMTP id ef2mr21339039pbb.45.1443808179004;
        Fri, 02 Oct 2015 10:49:39 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pq1sm13027912pbb.91.2015.10.02.10.49.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 10:49:38 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/5] Staging: lustre: obdclass: genops: Declare as static
Date: Fri,  2 Oct 2015 23:19:13 +0530
Message-Id: <1443808154-13944-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.560EC3B1.003F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare class_get_type and class_search_type as static since they
are used only in this particular file. Also remove the declaration
from header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h | 2 --
 drivers/staging/lustre/lustre/obdclass/genops.c   | 6 ++----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 5ab7296..2cd4458 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -256,8 +256,6 @@ void class_import_put(struct obd_import *);
 struct obd_import *class_new_import(struct obd_device *obd);
 void class_destroy_import(struct obd_import *exp);
 
-struct obd_type *class_search_type(const char *name);
-struct obd_type *class_get_type(const char *name);
 void class_put_type(struct obd_type *type);
 int class_connect(struct lustre_handle *conn, struct obd_device *obd,
 		  struct obd_uuid *cluuid);
diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index c1bffcd..2ae0ea9 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -90,7 +90,7 @@ static void obd_device_free(struct obd_device *obd)
 	OBD_SLAB_FREE_PTR(obd, obd_device_cachep);
 }
 
-struct obd_type *class_search_type(const char *name)
+static struct obd_type *class_search_type(const char *name)
 {
 	struct list_head *tmp;
 	struct obd_type *type;
@@ -106,9 +106,8 @@ struct obd_type *class_search_type(const char *name)
 	spin_unlock(&obd_types_lock);
 	return NULL;
 }
-EXPORT_SYMBOL(class_search_type);
 
-struct obd_type *class_get_type(const char *name)
+static struct obd_type *class_get_type(const char *name)
 {
 	struct obd_type *type = class_search_type(name);
 
@@ -140,7 +139,6 @@ struct obd_type *class_get_type(const char *name)
 	}
 	return type;
 }
-EXPORT_SYMBOL(class_get_type);
 
 void class_put_type(struct obd_type *type)
 {
-- 
2.1.4


