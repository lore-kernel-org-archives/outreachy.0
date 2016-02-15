X-GM-THRID: 6251461618501156864
X-Received: by 10.31.165.1 with SMTP id o1mr15244485vke.12.1455531832168;
        Mon, 15 Feb 2016 02:23:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.132 with SMTP id f4ls638594obe.75.gmail; Mon, 15 Feb
 2016 02:23:51 -0800 (PST)
X-Received: by 10.182.118.169 with SMTP id kn9mr14219813obb.11.1455531831670;
        Mon, 15 Feb 2016 02:23:51 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id ff2si2826974pad.2.2016.02.15.02.23.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 02:23:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id yy13so83878980pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 02:23:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=u63Z/e+Q0504xILg9HQQfIKHYrWzDmhbzZipH/yF1JU=;
        b=oEI8ZDPMOw2muSQtvaRmOmdstbxIxJ4b0M7K0QtsfwmpwbV4n0KjdhOsbFNYYQJYgI
         RCfwSpwQ2rhqN57EEXQKnkiy3lPyRY97ka4ggAlAcvhUW0o81aiDjn91trwq/b0OJxvG
         J7LcT1IFOtQDuQoljnLbOtlBITiDvJm7Ygwr3ns3aXz1/gxBhrR2dnJ2dhwr2G9m2X7G
         GlC/xO4vcU8NG3Ik8x2G87KKNgJ3/QPkZr0yF2UQAY5vkaNKsugTvR8X8Z+IpXashzZx
         Q1nuBmtb/QmsAZHxVQv65zHQAW7g8GAI3JzkT6XcCGtlNQ8Kg0LTmwvJJJxRB3IhdkVz
         kVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=u63Z/e+Q0504xILg9HQQfIKHYrWzDmhbzZipH/yF1JU=;
        b=i2rhttxgDAALvbknCGn5oS7b1Nwk2jr9+Kz+xgZ96Dd0c4cQjHyLA1F9psZ1vb3Fgr
         fHmVEGqAddkqSCfT0sgV5V4hZzdrmQWOjIrOoQZqFUsME7U25naZKsjUrR+/zuJOAEiT
         +FGQ1E9/inqusz1bfVyM+oKH/SudSyRAuoIXMAax/YEm24hMzhIn24HjfGyBHfipEg+h
         bEguToS6n8xgYuOQ3+lTp3lqVyMWCzBhWB/dxmutU38tzoYlbb6V4hpkAzJ5P4sh9xvu
         4Te4KCoNE+i6ulU3wc4VtM6bbVXZg6xAgs+u2fSf8OXAvXRobsr/xorZ+FXTQNNw3VFL
         hczw==
X-Gm-Message-State: AG10YOQC4L4Kyk5hD+5jvhUzi+ChinoTJq8oPlFgaW1I2Bdiw8Vt6x8HDpBgg8rIkTtxeg==
X-Received: by 10.66.124.131 with SMTP id mi3mr22031627pab.7.1455531831526;
        Mon, 15 Feb 2016 02:23:51 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.149.176])
        by smtp.gmail.com with ESMTPSA id yx4sm37489384pac.5.2016.02.15.02.23.47
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 02:23:50 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 15 Feb 2016 15:53:41 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: include: Remove do-while(0) from single statement macro
Date: Mon, 15 Feb 2016 15:53:40 +0530
Message-Id: <1455531820-14913-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

do-while(0) around single statement macro is unnedded so remove it.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_dlm.h | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_dlm.h b/drivers/staging/lustre/lustre/include/lustre_dlm.h
index 9b319f1..455f9ce 100644
--- a/drivers/staging/lustre/lustre/include/lustre_dlm.h
+++ b/drivers/staging/lustre/lustre/include/lustre_dlm.h
@@ -1206,13 +1206,11 @@ void ldlm_resource_dump(int level, struct ldlm_resource *);
 int ldlm_lock_change_resource(struct ldlm_namespace *, struct ldlm_lock *,
 			      const struct ldlm_res_id *);
 
-#define LDLM_RESOURCE_ADDREF(res) do {				  \
-	lu_ref_add_atomic(&(res)->lr_reference, __func__, current);  \
-} while (0)
+#define LDLM_RESOURCE_ADDREF(res)			  \
+	lu_ref_add_atomic(&(res)->lr_reference, __func__, current)  \
 
-#define LDLM_RESOURCE_DELREF(res) do {				  \
-	lu_ref_del(&(res)->lr_reference, __func__, current);	  \
-} while (0)
+#define LDLM_RESOURCE_DELREF(res)				  \
+	lu_ref_del(&(res)->lr_reference, __func__, current)	  \
 
 /* ldlm_request.c */
 /** \defgroup ldlm_local_ast Default AST handlers for local locks
-- 
1.9.1


