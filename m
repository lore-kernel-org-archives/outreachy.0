X-GM-THRID: 6393330913423392768
X-Received: by 10.200.57.131 with SMTP id v3mr1173904qte.9.1488563360002;
        Fri, 03 Mar 2017 09:49:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls9770920otd.46.gmail; Fri, 03 Mar
 2017 09:49:19 -0800 (PST)
X-Received: by 10.237.34.221 with SMTP id q29mr1141300qtc.33.1488563359655;
        Fri, 03 Mar 2017 09:49:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h79si174545pfh.2.2017.03.03.09.49.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 09:49:19 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so10483360pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 09:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hRDcKLqcQlGruaCoetldLID6JaNigB9rqxeQfkV3xps=;
        b=UetmzaZFaPtnzVfbwCdn+A01TDaEMPMCKUDb2Vk4gqRHvvi4qeeUB1lUsygI/NGJTG
         1pGPBo4URggtkywf5hIRKzA5VQlyYCk4b9BfyrsCq3Gj5TcawzJfy1XKCyyP5zppt4+2
         qdiz5VzdWLsaEveCU1L9A+5Vmz7a+7vmfw9YzceLxU+yS/JpWc5gufvuios1cHK8uNAJ
         HXFGLoO1V2UWlQSX/28dQLik4IogFTRCe3fL9unLXxLAXx7EWSvbBXtwDFxJSZLgSlus
         yay5s7/5+gSCebEwlUyxT1gcqj0KWPtNopJWmblAmw3YIlJTKZ5ExjjFMWDB5uIUpqeY
         DbiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hRDcKLqcQlGruaCoetldLID6JaNigB9rqxeQfkV3xps=;
        b=rNLaaDnd7bEuxuvFb+6hxYcikz4lVB9mi3v69aVg8h85y9mlxz6XiZ3W4ljt/ysuNe
         e7qIkOJayhfkyFXlfKs/qKawYtX8HvIxsbdmp4oi7NZHGdRmE7xbHvlwdJ9twKHibI85
         s8KwMaNMiU339q9lPROhdqneF71kigtC6qnfqpjTjdTQvW20QxAj7M5f2jk/mKXbOnXg
         AiMOS6RZnmoh5FzzSByReUwqc7GJdL1RmbkAKdh1qh5DlzZ8VvINwQLCEbVaiNlLlKyy
         XzGXfmj/6RCVK4CU0CsMpny4mHPS6iiRmAH3trzCiPnCdyfr7lYDaqUoicGinLXUELVm
         L/Mw==
X-Gm-Message-State: AMke39lY2G8kpwLsdMm3uAQWk+Nm4XXOFW7ZU0132t+numKZjnmZP2fHL4RVZjtRnyQa4w==
X-Received: by 10.98.97.68 with SMTP id v65mr4882139pfb.124.1488563359419;
        Fri, 03 Mar 2017 09:49:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z4sm24774676pge.49.2017.03.03.09.49.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 09:49:18 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/5] staging: lustre: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 23:19:01 +0530
Message-Id: <1488563344-31032-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488563344-31032-1-git-send-email-singhalsimran0@gmail.com>
References: <1488563344-31032-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_obd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index 271e189..09b46924 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -640,7 +640,7 @@ static int lmv_fid2path(struct obd_export *exp, int len, void *karg,
 	int			remote_gf_size = 0;
 	int			rc;
 
-	gf = (struct getinfo_fid2path *)karg;
+	gf = karg;
 	tgt = lmv_find_target(lmv, &gf->gf_fid);
 	if (IS_ERR(tgt))
 		return PTR_ERR(tgt);
@@ -657,7 +657,7 @@ static int lmv_fid2path(struct obd_export *exp, int len, void *karg,
 		struct getinfo_fid2path *ori_gf;
 		char *ptr;
 
-		ori_gf = (struct getinfo_fid2path *)karg;
+		ori_gf = karg;
 		if (strlen(ori_gf->gf_path) +
 		    strlen(gf->gf_path) > ori_gf->gf_pathlen) {
 			rc = -EOVERFLOW;
-- 
2.7.4


