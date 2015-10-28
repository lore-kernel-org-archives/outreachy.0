X-GM-THRID: 6210837635007512576
X-Received: by 10.28.55.135 with SMTP id e129mr608094wma.7.1446073334017;
        Wed, 28 Oct 2015 16:02:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.41.199 with SMTP id p190ls12732lfp.58.gmail; Wed, 28 Oct
 2015 16:02:13 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr11283294lbc.7.1446073333430;
        Wed, 28 Oct 2015 16:02:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id t2si10357wme.1.2015.10.28.16.02.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:02:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wmff134 with SMTP id f134so1203948wmf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 16:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RVomlg/iE8EAPSs2xY0WMKxNa2eBfNKgQvmHXNLx/+Y=;
        b=WqVbqo58jxm0z5/P0s/drKPepxBOnLc+U+nu6BI9zSBmOcv0z68hm+5TqEdqLxp58O
         hDCa0v36g+MaeoD0ZOB88IOvmzOdWdCHP4rdN++iOeQhzTVpLJmGXw49V6IqF73lP5UV
         ufoVU6YOkHM9utUQtISjZJzjPf8Xv6/8o4ENlA9ubX9rjwqRbhmZxKNRo6bADDDTSzf8
         oHMsbCXd6kZHYQ+kut18vItyp5bybFzFvJq8UaTM5UADjccnlOxEXclwHuBoHSzg8S6A
         4A3GtvJvpjqGc2MPqBCWtBxO+MsqsgVoo+/xUMHO75iXGwzuEPLAHw2fPEalVoN/fMpD
         6Khg==
X-Received: by 10.28.9.201 with SMTP id 192mr3312301wmj.5.1446073333333;
        Wed, 28 Oct 2015 16:02:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id 199sm6138472wml.22.2015.10.28.16.02.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 16:02:12 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 7/8] staging: iio: accel: place logical operators on the previous line
Date: Thu, 29 Oct 2015 01:01:54 +0200
Message-Id: <aa7c50b2e256e388fd7a83c754be7292beaf7050.1446073162.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>

This patch moves the logical operators on the previous line in order
to follow the linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index dbe0a64..455d896 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -980,14 +980,14 @@ static int sca3000_write_event_config(struct iio_dev *indio_dev,
 	if (ret)
 		goto exit_point;
 	/* if off and should be on */
-	if ((st->mo_det_use_count)
-	    && ((st->rx[0] & protect_mask) != SCA3000_MEAS_MODE_MOT_DET))
+	if ((st->mo_det_use_count) &&
+	    ((st->rx[0] & protect_mask) != SCA3000_MEAS_MODE_MOT_DET))
 		ret = sca3000_write_reg(st, SCA3000_REG_ADDR_MODE,
 					(st->rx[0] & ~protect_mask)
 					| SCA3000_MEAS_MODE_MOT_DET);
 	/* if on and should be off */
-	else if (!(st->mo_det_use_count)
-		 && ((st->rx[0] & protect_mask) == SCA3000_MEAS_MODE_MOT_DET))
+	else if (!(st->mo_det_use_count) &&
+		 ((st->rx[0] & protect_mask) == SCA3000_MEAS_MODE_MOT_DET))
 		ret = sca3000_write_reg(st, SCA3000_REG_ADDR_MODE,
 					(st->rx[0] & ~protect_mask));
 exit_point:
-- 
2.1.4


