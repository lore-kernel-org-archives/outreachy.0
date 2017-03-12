X-GM-THRID: 6396646958796111872
X-Received: by 10.99.45.194 with SMTP id t185mr14778307pgt.114.1489335428817;
        Sun, 12 Mar 2017 09:17:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls963972otb.8.gmail; Sun, 12 Mar 2017
 09:17:08 -0700 (PDT)
X-Received: by 10.13.231.66 with SMTP id q63mr13873615ywe.79.1489335428561;
        Sun, 12 Mar 2017 09:17:08 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a3si2730073pfb.2.2017.03.12.09.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 09:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so16383138pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 09:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=d8xOqJ1jMov0BewGlkiERmDJlrUxaEBBGRD+KiqE9sw=;
        b=p5kT4HFAJaJBld0u05snNvqHaYeLvQm8ZYSczltCFGXMfN60xi+hhFIwvRwkGoBExS
         nydGr2c6oyq/Y+VMQ1hxUDWQ80dFUcXvYgYFhrMUkuAE5X7GSOOobOJVb2nXj9w1wMBL
         T9Plxug79BjtYxQR8EikQpO1QNv2Y/JmEvwWVy4JQ19jLAXthyV1JK3yMtJHToUMp9Ja
         eW/U1jydV0vK/53O3pyIvaVCrS8OazDQnhl71eYxRe0UHnjW0iFvxEHfwg5Vm3qd2p+H
         lPUQS+ypJ50gkLSEk1CbTbDwgl22rNB7t3ZkgCd6Bug1kAmbis8na73hswLpUjp/cN5l
         D/Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=d8xOqJ1jMov0BewGlkiERmDJlrUxaEBBGRD+KiqE9sw=;
        b=mMJDtr+c0lS9ipFRDmfubCMVCYGHFkb51ZknfzKZptOJEq208d4PvMH4lIX6LYu4Jn
         ciC/6yNkquIqb0y8MUvsYLkOSbnUbAhfb7CH2AK7LGYJFaR94o8va0AetzjDL8Wt13Nk
         oCL4VF/L2DIkgojJmsWWBISaKGMEYKZKQn+IDYhR8XKzvk/W8EUb3m8PvW0iayM+sgQP
         KCrv2coVkjn1M0i2oZZA0hhydl1pvCFb4PHLy3W7VXAIl5gipiJxS64iUrEFziKbKLah
         0uSAo5OrI+nC6QcsjwPn5M23CcMgqMSlwMa2bWQ9gac21FMfvuGkNRhm4K4wvAnEMm6X
         vDVw==
X-Gm-Message-State: AMke39l+ADv7WqlwuzzPI1qF6Bbd+JGkcihFVSa97D3gjwWw7tqUFlzExt6ctAQHzdhCSA==
X-Received: by 10.98.50.66 with SMTP id y63mr33091043pfy.21.1489335428138;
        Sun, 12 Mar 2017 09:17:08 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.194.58.130])
        by smtp.gmail.com with ESMTPSA id 74sm29199706pge.14.2017.03.12.09.17.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 09:17:07 -0700 (PDT)
Message-ID: <58c57483.4d04630a.675c7.7fd1@mx.google.com>
X-Google-Original-Message-ID: <20170312161703.GA17490@<rvarsha016@gmail.com>>
Date: Sun, 12 Mar 2017 21:47:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: media: atomisp: Compress return logic into one
 line.
References: <cover.1489334608.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489334608.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Simplify function return by merging assignment and return into a single
line. The following coccinelle script is used to fix this issue.

@@
expression e;
local idexpression ret;
@@

-ret = e;
-return ret;
+return e;

This patch also removes unnecessary declarations.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 9 ++-------
 drivers/staging/media/atomisp/i2c/ov8858.c | 4 +---
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 4d15e20..6a5a08e 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -541,10 +541,7 @@ static int __gc2235_init(struct v4l2_subdev *sd)
 static int is_init;
 static int gc2235_init(struct v4l2_subdev *sd)
 {
-	int ret = 0;
-	ret = __gc2235_init(sd);
-
-	return ret;
+	return __gc2235_init(sd);
 }
 
 static int power_ctrl(struct v4l2_subdev *sd, bool flag)
@@ -585,9 +582,7 @@ static int gpio_ctrl(struct v4l2_subdev *sd, bool flag)
 
 	ret |= dev->platform_data->gpio1_ctrl(sd, !flag);
 	usleep_range(60, 90);
-	ret = dev->platform_data->gpio0_ctrl(sd, flag);
-
-	return ret;
+	return dev->platform_data->gpio0_ctrl(sd, flag);
 }
 
 static int power_up(struct v4l2_subdev *sd)
diff --git a/drivers/staging/media/atomisp/i2c/ov8858.c b/drivers/staging/media/atomisp/i2c/ov8858.c
index cc7da2a..9574bc4 100644
--- a/drivers/staging/media/atomisp/i2c/ov8858.c
+++ b/drivers/staging/media/atomisp/i2c/ov8858.c
@@ -2206,9 +2206,7 @@ static struct i2c_driver ov8858_driver = {
 
 static __init int ov8858_init_mod(void)
 {
-	int ret;
-	ret = i2c_add_driver(&ov8858_driver);
-	return ret;
+	return i2c_add_driver(&ov8858_driver);
 }
 
 static __exit void ov8858_exit_mod(void)
-- 
2.9.3


