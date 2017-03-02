X-GM-THRID: 6392991510876389376
X-Received: by 10.99.45.194 with SMTP id t185mr5776634pgt.114.1488484348242;
        Thu, 02 Mar 2017 11:52:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls5837402oth.13.gmail; Thu, 02 Mar
 2017 11:52:27 -0800 (PST)
X-Received: by 10.200.52.65 with SMTP id v1mr1306013qtb.70.1488484347849;
        Thu, 02 Mar 2017 11:52:27 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si977022pfz.1.2017.03.02.11.52.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:52:27 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so10264878pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 11:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4yFLE+lvAxwak77dt9wjPLFa9U//YsByRu1Q/KDjaho=;
        b=rML16GitmclK3fvIbUpCRrOIZlvWeQ8vNGhjqAHqZpIeHzosRWwYsUWTKFAahP0KzK
         c8kxPBCJE1nX0BglnDCaJwS6ztrLQgsYr3Z98TfhqrA0slsnUE+ClSuvb6NloW+mwr6D
         /cvC7etreK0zQaDkjyiPjzQO1AU31EM7Pu0bM8jRVGH2U67LMmv3DRcZDa+OzLE35KXm
         92aCFS8hPqF/Fxm5fF209Prsz0UQAbx7Y8rEwi2KiA6SAhuVKdcIQ0FN1tvbkFzY09ne
         JttDfnnwwIqstZI+0MY9ASkA4mcapcXCk5h6vooFbspDH4uvJ772UqGC+S+UfRY0Uvs+
         8CcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4yFLE+lvAxwak77dt9wjPLFa9U//YsByRu1Q/KDjaho=;
        b=OUkva8B68NPEINRbP2RJqMiMwzMdtXL0SSA/scagHdira30AaZ3D8ERwJWYKXWYw4N
         f5FzDf06uon/MD5zB/yAkJMCva4r2+2TwOJW3/pZjtKi6aLHYMlRttPrdHSj19a2C91K
         cy0DtGxsekRAXHw/9fjbSXHrEX2o/ktyYMSVCuqvy6RF2S1DEYE6EnQrUryn5k/FrOTY
         zaHalDRo3ROYykXl1XpD2gpTMGasVrz1mVfzqEQAEAqAi2SYrFNWv4yLg1KWQGKb0qZ4
         Ip63npHHuBkbepupTs3Bnt5zXdEasqvglR7XZ0GrNNA7MP6RhLY2jkTQflJvleYJ50ik
         Rj4Q==
X-Gm-Message-State: AMke39n3B2SCN1AIJ4KDowl3Ups5ySAMliucwJ4u+7EbP5wMYd2rTO8CgFpy2LLswUpOdQ==
X-Received: by 10.99.146.70 with SMTP id s6mr17155936pgn.109.1488484347557;
        Thu, 02 Mar 2017 11:52:27 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e68sm18638704pfa.85.2017.03.02.11.52.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 11:52:26 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] staging: media: Use x instead of x != NULL
Date: Fri,  3 Mar 2017 01:22:01 +0530
Message-Id: <1488484322-5928-6-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>

Use x instead of x != NULL .
This patch removes the explicit NULL comparisons.This issue is found by
checkpatch.pl script.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 165dcb3..40a5a2f 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -255,7 +255,7 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 	u16 reg_val, reg_val_h, dummy;
 	int ret;
 
-	if (info == NULL)
+	if (!info)
 		return -EINVAL;
 
 	/* pixel clock calculattion */
@@ -797,7 +797,7 @@ static int gc2235_set_fmt(struct v4l2_subdev *sd,
 	int idx;
 
 	gc2235_info = v4l2_get_subdev_hostdata(sd);
-	if (gc2235_info == NULL)
+	if (!gc2235_info)
 		return -EINVAL;
 	if (format->pad)
 		return -EINVAL;
@@ -917,7 +917,7 @@ static int gc2235_s_config(struct v4l2_subdev *sd,
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
 
-	if (platform_data == NULL)
+	if (!platform_data)
 		return -ENODEV;
 
 	dev->platform_data =
-- 
2.7.4


