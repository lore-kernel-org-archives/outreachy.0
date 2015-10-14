X-GM-THRID: 6205612297408217088
X-Received: by 10.112.140.202 with SMTP id ri10mr1257407lbb.10.1444856897978;
        Wed, 14 Oct 2015 14:08:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.195 with SMTP id f186ls91118lfg.32.gmail; Wed, 14 Oct
 2015 14:08:17 -0700 (PDT)
X-Received: by 10.112.150.229 with SMTP id ul5mr1287752lbb.2.1444856897331;
        Wed, 14 Oct 2015 14:08:17 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id h2si985281wiy.0.2015.10.14.14.08.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 14:08:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id gb1so247040664wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 14:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9N5gpI+0OEJl2lrm52qHOer74CB0Qp2etEN2R4GOfJc=;
        b=KGsGp5yiqPrThp3pcyhAUT4MkTV4HbxsVr5wxNARwiDrDSU2qsOoSaJdEoWqkLEXWS
         r58M9VCikJ0mjrIbZYiTAMvk6ttXAUuk1XPNuvCEnomV2HY1vJOkH87IE5gKTgJkPQpP
         3nhOUUQl4mpveEBaDXQNsGGjq3WBNgKJwPVVV4bFAn/4ac712Bpv1PSsw+ZDvLFz5pzz
         FPziNtL9fanwj0f+QxHtW/M7/ixZkYEkNGnR81xdDj6hpPkno8LxDk3L7uQ/BvIC7LRU
         ch1Dn/9jsp8fAPHIHWxIbhAC/1dHKXerJYRh3Lhsblh+hEV0VuEdbWwfwRWMfVIUBd4R
         030w==
X-Received: by 10.194.108.103 with SMTP id hj7mr6357696wjb.46.1444856897217;
        Wed, 14 Oct 2015 14:08:17 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id x7sm20785871wia.10.2015.10.14.14.08.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 14:08:16 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/4] Staging: lustre: include: Convert macro class_export_lock_put into static inline function
Date: Wed, 14 Oct 2015 23:08:07 +0200
Message-Id: <06e089928a1944c174da99f712e9d81d4f4e07a9.1444856328.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
References: <cover.1444856328.git.ksenija.stanojevic@gmail.com>

Static inline functions are preferred over macros. This change is safe
because the types of arguments at all the call sites are same.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 5a57876..4871b6a 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -233,15 +233,16 @@ static inline struct obd_export *class_export_lock_get(struct obd_export *exp,
 	return class_export_get(exp);
 }
 
-#define class_export_lock_put(exp, lock)				\
-({								      \
-	LASSERT_ATOMIC_POS(&exp->exp_locks_count);		      \
-	atomic_dec(&(exp)->exp_locks_count);			\
-	__class_export_del_lock_ref(exp, lock);			 \
-	CDEBUG(D_INFO, "lock PUTting export %p : new locks_count %d\n", \
-	       (exp), atomic_read(&(exp)->exp_locks_count));	\
-	class_export_put(exp);					  \
-})
+static inline void class_export_lock_put(struct obd_export *exp,
+					 struct ldlm_lock *lock)
+{
+	LASSERT_ATOMIC_POS(&exp->exp_locks_count);
+	atomic_dec(&(exp)->exp_locks_count);
+	__class_export_del_lock_ref(exp, lock);
+	CDEBUG(D_INFO, "lock PUTting export %p : new locks_count %d\n",
+	       (exp), atomic_read(&(exp)->exp_locks_count));
+	class_export_put(exp);
+}
 
 #define class_export_cb_get(exp)					\
 ({								      \
-- 
1.9.1


