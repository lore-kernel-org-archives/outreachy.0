X-GM-THRID: 6210837635007512576
X-Received: by 10.28.170.75 with SMTP id t72mr608271wme.5.1446073335162;
        Wed, 28 Oct 2015 16:02:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.15.195 with SMTP id 186ls38202wmp.9.gmail; Wed, 28 Oct 2015
 16:02:14 -0700 (PDT)
X-Received: by 10.28.132.75 with SMTP id g72mr5443wmd.2.1446073334832;
        Wed, 28 Oct 2015 16:02:14 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id t72si151073wme.0.2015.10.28.16.02.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:02:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wmec75 with SMTP id c75so1199853wme.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 16:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ooo5XTfR3EESxtnvnMLf7vkz1A08X3OvFMq6UqVvym4=;
        b=yEwsnKE39Wxu/fANnysnC77F+2egI9lv+vGgI7o4C1upUuuYWdffX2fKKaD2EcUrlU
         5R3V88hAK7BeWDcj6ju/O+KBm463FQ9pozXC60bI9fyCECBhC/WWlj7fZ3gpE/clLWtV
         8vSYjrTa4A41fU3Gxf4vkGBwLhpXbrwBSHIBJD34/y49SaBevGbaFvTFDec2Q41FVc/i
         F9j3NgGZCwGYEgCialLTUK5X97//v2t5fYVB/uD//xbZ6zLjKlHSdFqSiDa4ievrPH95
         H46q+hT/XVgzyjifWyGMq8lhM6MEORJopuV2ybYAIwOUdqejilOgNzbNUZclHtWGWRsL
         sSiw==
X-Received: by 10.28.143.8 with SMTP id r8mr3269544wmd.3.1446073334739;
        Wed, 28 Oct 2015 16:02:14 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id 199sm6138472wml.22.2015.10.28.16.02.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 16:02:14 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 8/8] staging: iio: accel: add bracket on all branches of the if/else
Date: Thu, 29 Oct 2015 01:01:55 +0200
Message-Id: <a1646174efc7d0014e7968b68aa1a3d899530b30.1446073162.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>

This patch adds brackets on all of the conditional branches in
order to follow the linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/accel/sca3000_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index 455d896..03cb225 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -849,9 +849,9 @@ static int sca3000_read_event_config(struct iio_dev *indio_dev,
 	if (ret)
 		goto error_ret;
 
-	if ((st->rx[0] & protect_mask) != SCA3000_MEAS_MODE_MOT_DET)
+	if ((st->rx[0] & protect_mask) != SCA3000_MEAS_MODE_MOT_DET) {
 		ret = 0;
-	else {
+	} else {
 		ret = sca3000_read_ctrl_reg(st, SCA3000_REG_CTRL_SEL_MD_CTRL);
 		if (ret < 0)
 			goto error_ret;
-- 
2.1.4


