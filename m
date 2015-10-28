X-GM-THRID: 6210837635007512576
X-Received: by 10.28.170.75 with SMTP id t72mr608233wme.5.1446073330919;
        Wed, 28 Oct 2015 16:02:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.217.85 with SMTP id q82ls37689wmg.4.gmail; Wed, 28 Oct 2015
 16:02:10 -0700 (PDT)
X-Received: by 10.28.170.203 with SMTP id t194mr607290wme.1.1446073330504;
        Wed, 28 Oct 2015 16:02:10 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 13si155662wml.2.2015.10.28.16.02.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:02:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wmeg8 with SMTP id g8so1202969wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 16:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RHHfN4CaOPRUnd2ruQ5dRi7jeUqnl2PfLCG2rJYMHOY=;
        b=As6eWJMYlWR4Bgp/M3wZGR/yt3323/J8aFYcnWbgl2mAaj2mpNjUoX51dfhjTzdx21
         LtvYxS5BaHdi2/KYwbi8OnOINM1iVpR7wh8iDPV2DDGFXA2UpF/hW5DgqoZjn99s0r7j
         1oQlXCIfK31gQaHzffepVOu7ZdktqgER6cv/obk2cTAwhjkGyadiyXy2Bn2KTwJ8PKqJ
         5xsMVS7p+7nJScQ7EQ2CQExrL1F6vtolhg1n17QjkT69bU5F8SsMtXF0l24H/6XwwdU5
         oImZcdW6bAS0GMhIi/Oe2SG8TIzpETC0MdNfkh3Mw/4tfQZHSNuuJzSo92Vj4ejLk6xv
         izPA==
X-Received: by 10.28.10.132 with SMTP id 126mr2930890wmk.97.1446073330410;
        Wed, 28 Oct 2015 16:02:10 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id 199sm6138472wml.22.2015.10.28.16.02.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 16:02:10 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 5/8] staging: iio: accel: fix block comments alignment
Date: Thu, 29 Oct 2015 01:01:52 +0200
Message-Id: <698930f0b13f23306cb22ee4bb917fa42e524e44.1446073162.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446073162.git.ciorneiioana@gmail.com>
References: <cover.1446073162.git.ciorneiioana@gmail.com>

This patch properly aligns the block comment in order
to follow the linux coding style convetions.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/accel/lis3l02dq_core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/lis3l02dq_core.c b/drivers/staging/iio/accel/lis3l02dq_core.c
index db28b55..7a1939a 100644
--- a/drivers/staging/iio/accel/lis3l02dq_core.c
+++ b/drivers/staging/iio/accel/lis3l02dq_core.c
@@ -406,8 +406,10 @@ static int lis3l02dq_initial_setup(struct iio_dev *indio_dev)
 		goto err_ret;
 	}
 
-	/* Read back to check this has worked acts as loose test of correct
-	 * chip */
+	/*
+	 * Read back to check this has worked acts as loose test of correct
+	 * chip
+	 */
 	ret = lis3l02dq_spi_read_reg_8(indio_dev,
 				       LIS3L02DQ_REG_CTRL_1_ADDR,
 				       &valtest);
-- 
2.1.4


