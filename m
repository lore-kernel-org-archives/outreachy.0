X-GM-THRID: 6205612297408217088
X-Received: by 10.112.198.33 with SMTP id iz1mr1251211lbc.8.1444856950579;
        Wed, 14 Oct 2015 14:09:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.209 with SMTP id r200ls87991lfd.6.gmail; Wed, 14 Oct
 2015 14:09:07 -0700 (PDT)
X-Received: by 10.112.144.99 with SMTP id sl3mr1252088lbb.12.1444856947732;
        Wed, 14 Oct 2015 14:09:07 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id w4si6517wiz.0.2015.10.14.14.09.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 14:09:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id q12so102303132wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 14:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TJmN1BmLz59MDgjVgSveBU+WDKBsd3ML9an+UdrpzSo=;
        b=yuPDRCgbZOQ0SeuXlhRgko7is+y35XCxHBQCxJpqEWo/pF7zEO2qnL9ntkUZJQO6KS
         wWnx4ZJhFUCkXQeMgssZGAT+n+7quMLKhdHYWkmcNs5oztf6z/ZAWTudSdEGvGmtk4H8
         n2r8obLcm0aoGtTp6I0BUos755q1zAGdeu5R9QIBuWkFdABwnlxc0h31byNNIdtO39Mp
         tgHRhhvS3yryJ6gPGm/3P14dzy/dWXT/NIRGuvEG46dio1ZzwOqixUglwyefT83/u8z7
         e1DvPkf8YpxUV1fQ7JM9AUALO/3EgWsDt50+HeftQN2/zn3g4j9Cdcxa29ACY55aWntp
         Wr2g==
X-Received: by 10.194.185.16 with SMTP id ey16mr7324626wjc.32.1444856947624;
        Wed, 14 Oct 2015 14:09:07 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id r9sm12245281wjz.35.2015.10.14.14.09.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 14:09:07 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 4/4] Staging: lustre: include : Remove unused macros
Date: Wed, 14 Oct 2015 23:09:00 +0200
Message-Id: <05ab101e947b154314749a1ceb051a9af96c1753.1444856328.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
References: <cover.1444856328.git.ksenija.stanojevic@gmail.com>

These macro are not used anymore, therefore remove them.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 4871b6a..53c255c 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -244,23 +244,6 @@ static inline void class_export_lock_put(struct obd_export *exp,
 	class_export_put(exp);
 }
 
-#define class_export_cb_get(exp)					\
-({								      \
-	atomic_inc(&(exp)->exp_cb_count);			   \
-	CDEBUG(D_INFO, "callback GETting export %p : new cb_count %d\n",\
-	       (exp), atomic_read(&(exp)->exp_cb_count));	   \
-	class_export_get(exp);					  \
-})
-
-#define class_export_cb_put(exp)					\
-({								      \
-	LASSERT_ATOMIC_POS(&exp->exp_cb_count);			 \
-	atomic_dec(&(exp)->exp_cb_count);			   \
-	CDEBUG(D_INFO, "callback PUTting export %p : new cb_count %d\n",\
-	       (exp), atomic_read(&(exp)->exp_cb_count));	   \
-	class_export_put(exp);					  \
-})
-
 static inline enum obd_option exp_flags_from_obd(struct obd_device *obd)
 {
 	return ((obd->obd_fail ? OBD_OPT_FAILOVER : 0) |
-- 
1.9.1


