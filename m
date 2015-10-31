X-GM-THRID: 6211756809938534400
X-Received: by 10.107.18.17 with SMTP id a17mr11197073ioj.24.1446287349523;
        Sat, 31 Oct 2015 03:29:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.25.246 with SMTP id 109ls1470517qgt.12.gmail; Sat, 31 Oct
 2015 03:29:08 -0700 (PDT)
X-Received: by 10.140.195.2 with SMTP id q2mr10080929qha.5.1446287348024;
        Sat, 31 Oct 2015 03:29:08 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id iz5si994083pbc.2.2015.10.31.03.29.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:29:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hy1so92148130pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZGphkINnbSDemVvitPZoCntOT6EGIH4jfjgHVVF0FZs=;
        b=L6V8NvXmlzVnQiyw9MHuXMOEonrsyHmUSYOLjRQJw7mjo2KY40Zj0UMub0C8NBFHmp
         tCmyPUEDgMqaHuldiXpxrDc1OjBdw0Pmt1/1QhtPvWUfrGLy6X3jskUMu/fjpMY3vQWM
         Sjb3trW4WhzBABFSe2lBsfPoiZJsB2++IDhdN/U2dFBzF2vbFLFIcgCq9FyAUsw0iOFE
         CWZna75n5K5/qxPMCY5apQsaOEcDUxDRK7D+q4nullez4WOuEQlckKSmUkBDdAKv491x
         88ZH5/CI+8a88hCCQjh+jteX5iwGsjpTYSaNAUiXwS3tA29kd4RsnqVKdvBKAoFsHAK1
         qpGQ==
X-Received: by 10.69.1.9 with SMTP id bc9mr13267410pbd.128.1446287347902;
        Sat, 31 Oct 2015 03:29:07 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id wh10sm13145706pab.2.2015.10.31.03.29.05
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:29:07 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: <devel@driverdev.osuosl.org>
Subject: [PATCH 4/6] Staging: lustre: lov: Remove unused function declarations
Date: Sat, 31 Oct 2015 15:58:44 +0530
Message-Id: <1446287326-9404-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
References: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.563497F2.0111,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These functions have been declared in header but not used anywhere.
Thus drop the declarations.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_internal.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_internal.h b/drivers/staging/lustre/lustre/lov/lov_internal.h
index 515a5c1..87bc1dc 100644
--- a/drivers/staging/lustre/lustre/lov/lov_internal.h
+++ b/drivers/staging/lustre/lustre/lov/lov_internal.h
@@ -151,14 +151,6 @@ int lov_stripe_number(struct lov_stripe_md *lsm, u64 lov_off);
 /* lov_qos.c */
 #define LOV_USES_ASSIGNED_STRIPE	0
 #define LOV_USES_DEFAULT_STRIPE	 1
-int qos_add_tgt(struct obd_device *obd, __u32 index);
-int qos_del_tgt(struct obd_device *obd, struct lov_tgt_desc *tgt);
-void qos_shrink_lsm(struct lov_request_set *set);
-int qos_prep_create(struct obd_export *exp, struct lov_request_set *set);
-void qos_update(struct lov_obd *lov);
-void qos_statfs_done(struct lov_obd *lov);
-void qos_statfs_update(struct obd_device *obd, __u64 max_age, int wait);
-int qos_remedy_create(struct lov_request_set *set, struct lov_request *req);
 
 /* lov_request.c */
 void lov_set_add_req(struct lov_request *req, struct lov_request_set *set);
-- 
2.1.4


