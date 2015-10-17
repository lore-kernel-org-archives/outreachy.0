X-GM-THRID: 6205612297408217088
X-Received: by 10.194.118.65 with SMTP id kk1mr4638129wjb.5.1445068918635;
        Sat, 17 Oct 2015 01:01:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.82 with SMTP id m79ls406880lfg.19.gmail; Sat, 17 Oct
 2015 01:01:58 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr4643439lbp.21.1445068918083;
        Sat, 17 Oct 2015 01:01:58 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id hs5si221601wib.1.2015.10.17.01.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 01:01:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id p11so37440801wij.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 01:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1pGqyZFTK9GaRnviKjNqH3G4Fug4xNsYuzWNAb3gRuQ=;
        b=qr4lRvR0LZphPvZpvn5Q/Z4OBDjBjUi0oHib6vn/sFaIYUqYo9aUtaWop5astwrbb5
         O4dnK7IWeWQdai/nU4Ou+ZkOXfQBrTFEcnIo8Yy6+X2fyHollWuzJapOeA1rcpCQDTgG
         xTV5QZ1h7MLAeSJ3Qt/Q192AozBmdBW7GVoVlycApfdLO4S9g7xkr2zZKBvkW8DyO6xt
         hkrW7A2dQ/a/eZQS3S+/4et71VaKipdqMOj9qNht8EWSfK6r3D3KDoe3y6wywJf7FgNM
         AtJJUk5dmsE8jo1etHCQRc1/TuiNXzuD4USR8uhLGqZJZNLkiBmNNeGm5vPFmbkfc1p3
         HFkg==
X-Received: by 10.181.8.72 with SMTP id di8mr9430402wid.62.1445068917988;
        Sat, 17 Oct 2015 01:01:57 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id ka10sm26956252wjc.30.2015.10.17.01.01.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 01:01:57 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 4/4] Staging: lustre: include : Remove unused macros
Date: Sat, 17 Oct 2015 10:01:43 +0200
Message-Id: <05ab101e947b154314749a1ceb051a9af96c1753.1445067394.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445067394.git.ksenija.stanojevic@gmail.com>
References: <cover.1445067394.git.ksenija.stanojevic@gmail.com>

These macro are not used anymore, therefore remove them.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
Changes in v2:
        - nothing

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


