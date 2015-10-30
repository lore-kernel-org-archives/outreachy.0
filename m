X-GM-THRID: 6211463142533234688
X-Received: by 10.50.61.234 with SMTP id t10mr2801481igr.4.1446218965885;
        Fri, 30 Oct 2015 08:29:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.148.130 with SMTP id w124ls676318iod.29.gmail; Fri, 30 Oct
 2015 08:29:25 -0700 (PDT)
X-Received: by 10.50.142.1 with SMTP id rs1mr2812620igb.0.1446218965557;
        Fri, 30 Oct 2015 08:29:25 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id iz5si674068pbc.2.2015.10.30.08.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 08:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hk11so77533086pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 08:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=7hR/gbz2Q2XiY1dghPq7cSb2v2QJ8hLaxUhDRgFa5Ac=;
        b=Fppp7n0D3YSnjvx3UiT81JqRL/9RQJDRKnpLWYWX8Ulvz4py7UgVfgV+24yQ9TQtQj
         Drp8cFn4sicHp/YqSrDgi29dWEYpG5+0wL6RVJ+gJ1a5z4ljhbfhWTYgOlqOp8/Ke6sY
         BZTweaV2FKVrJ1mfhHPrwzGAo8jhj6IhCPN/UCOyAIEVDjtgQzB3a8WPG7AyqIttmCPy
         krLJ1pgzJaX5ZAoefpA8M3H2BGQ1CgC7+wmveayqfUtV01+7khAmikQDApwflHiOb/Q0
         mvhxrI9M3Le4SpzlJ2sPv/U9XJuq29KlfVmbf3LuCPZpwisA8ogkQtFqFmgYOA6H3MoX
         bprQ==
X-Received: by 10.69.11.97 with SMTP id eh1mr9590519pbd.71.1446218965423;
        Fri, 30 Oct 2015 08:29:25 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dn4sm8883843pbd.0.2015.10.30.08.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 08:29:24 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/7] Staging: lustre: mdc: Remove unused mdc_open function from header
Date: Fri, 30 Oct 2015 20:59:04 +0530
Message-Id: <1446218949-8599-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
References: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56338CD4.005E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Function mdc_open is declared in header file but it is not used anywhere.
Hence drop the declaration.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/mdc/mdc_internal.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_internal.h b/drivers/staging/lustre/lustre/mdc/mdc_internal.h
index 5e0c8b5..a41e2b9 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_internal.h
+++ b/drivers/staging/lustre/lustre/mdc/mdc_internal.h
@@ -97,11 +97,6 @@ int mdc_resource_get_unused(struct obd_export *exp, const struct lu_fid *fid,
 /* mdc/mdc_request.c */
 int mdc_fid_alloc(struct obd_export *exp, struct lu_fid *fid,
 		  struct md_op_data *op_data);
-
-int mdc_open(struct obd_export *exp, u64 ino, int type, int flags,
-	     struct lov_mds_md *lmm, int lmm_size, struct lustre_handle *fh,
-	     struct ptlrpc_request **);
-
 struct obd_client_handle;
 
 int mdc_set_open_replay_data(struct obd_export *exp,
-- 
2.1.4


