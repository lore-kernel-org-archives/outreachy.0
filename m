X-GM-THRID: 6664599067722514432
X-Received: by 2002:a81:9ac5:: with SMTP id r188mr9877567ywg.3.1551722890871;
        Mon, 04 Mar 2019 10:08:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4c4:: with SMTP id 187ls1211221ybe.11.gmail; Mon, 04 Mar
 2019 10:08:10 -0800 (PST)
X-Received: by 2002:a25:34cb:: with SMTP id b194mr8663336yba.98.1551722890148;
        Mon, 04 Mar 2019 10:08:10 -0800 (PST)
Received: by 2002:a0d:ebcd:0:0:0:0:0 with SMTP id u196msywe;
        Mon, 4 Mar 2019 09:40:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqx7QzAFsb1bI6sLjs5QWGg684wxdB91B1ycbKvU/xuDN9t6nxotoTbXxL1NWrpvFNkrBUOU
X-Received: by 2002:a25:4c85:: with SMTP id z127mr8361310yba.69.1551721222861;
        Mon, 04 Mar 2019 09:40:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551721222; cv=none;
        d=google.com; s=arc-20160816;
        b=HAmg9Y7a7L5dWeNa6vLL+/J+lTQJAdwWuDYht9nUv5T8ui9w+wmM7AVUJinLi8SXrv
         TJ67sBtUMftr7fgMtxNM4BIn3QbLS69GQPDSA0yX+T4jF2SGhGyqJAqyIhzL177YC+s/
         ODYmpJONSznEZ7BE9qpFHlLz6JeaR3S0VXYFhvMtv0SvkRJ/FCoq5KIqUvd+xbvF/qWK
         u0sde5qccYFWUFDoIDb4FRpdxFxav7JMmTn9GmMnCAuUYLhoiR4sA4V+7YLZ16XuZNbU
         aNAbBV8gF9JSuiwwcTj9VGrMbEVfqQD4BSWhr/LVv2FL2ac+autH+njur28ZCpqioe66
         FZWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7x2XsQZOEM9KkaYqf1c5RiUc2Kw2ndxuYRnwRMwAm9Y=;
        b=heqCU68A5zZSjevllcvD655J3xJyX9AnRi3gMSzPg/z2tplQCtQxDizgbyVeN4Ia4r
         LOVBv4yzdzwiJ7S/OAnALInFTxa0otpbYTbRw1D4wsmslhPkK6cYqNutpGO7CU391jk5
         AgRLxE5Pyplh9avJnyVUS354Nh1Is9gWSZ+AKimtR3h504hsVHUPHmb88r4HF0TzHX6F
         hq7ip4ybmffk2Oc3/wIeTe8qIg8M3EPkc/dUD4t6yPRj6hGN7TkOfTV348OC8C81LAUZ
         JP/FzgaajBYljZtiGtfTrG+sJHBVw3nii5Phsx750SDSzcrQZppM52D02dTiA8HmrA7p
         5WZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=POAOChFN;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic304-20.consmr.mail.sg3.yahoo.com (sonic304-20.consmr.mail.sg3.yahoo.com. [106.10.242.210])
        by gmr-mx.google.com with ESMTPS id k62si261440ybb.4.2019.03.04.09.40.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:40:22 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.210 as permitted sender) client-ip=106.10.242.210;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=POAOChFN;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551721219; bh=7x2XsQZOEM9KkaYqf1c5RiUc2Kw2ndxuYRnwRMwAm9Y=; h=From:To:Cc:Subject:Date:From:Subject; b=POAOChFNepp/h/RN7GXvDol9H9HMAnKhsyQjK/VEMUNzQWDvgv9bZoOi2v2ZwwnyBFkQ7OHwtUhYo+Vz8oOzH81KskZWz3Nq6qvU0+FSWWCVoj6Swm6waccCLAsA7IYl8nxvWpZqeZexLjvdD1eP5ih6PTlWH2buzKIVJ6cXCEQ91pSo2eeu6qAKh80Yg/FeVlZ4/qfDROTWresAHw8Wue+SLD3aVTK91ztIZd+8dflYwPbB5pwpXKhhkDQ571fYLFcJuJjANLFB2ekb9u07Mjcc7JrlztfP/zoT5/rw5Uk1pni8ebBJyS/+WglUs6jjbvffibeHI6mTUGtAKarynA==
X-YMail-OSG: 2rLJT.kVM1kYG1IAuzbgH0YSiNmvsQtVuPINkE6qljhVCNW67GOdmbz8mAX7goY
 rViXylchkuYKnnu.QPiDupptJPoYoQX6O7UfWJe2qqMLFV.X9C7vjGFipoLrk5UKvhdnh79fXewH
 W98P5BTUhbmq5b4vT9FM3I7fmwR4U6.fCzwSs8P6RB5qFg.lIrH5fAt01c6YS2S9wZhqCcXJ2tOs
 rlPkkoePeADSlUS_Jgq.e2dYlrGPK3IDu7O0mg_6.2kRjmHim2TKzh9f24f2RRnbzzFcPTx3E0eN
 F13hL_70n4jTj2vVYOT6.qiMwdOi2NUlXYUh6.agIc.Fp0vkyjxxepHqhrRk9VeBj4XzUaquzaaH
 giErJLJPvmqKBJXn909s1d4DUMJLQMekMBhnUxN7i1WXnnPsmNAyMvgfaASYhQBmXgxS5wolWTb2
 l8vo.WgJDu2xj8kYRQPhubhI2zFSXtZHh0I7mOA1BVxUSMEWPzUNpZuTk5__IJC_UeIw0XJj15io
 Rcw.1GIdMP6YmFkg_erByXqHPgLbTSTchOmhiGGyyAfhWbUKkYvj75l9XezoVeP_Db0cLFzvnqIl
 FinIOwgwReMOsgXs7sFsdHXd_x8r.neDhaeJ1Vt1_rKvDRu2IQjdxJXzPMP1fKhME05.cPtr59ln
 z_7vQcQ5mJFuWTUgQWQzWPPJ3djILjzMUxKM3XLk.FQBPoXTN7vSwPM0VbHsZ9LmE8YxlopJRFFL
 4Xv6JWPx65OH54KrACkhzfF.ToIpJN07IsaaOjRUgslUL36ggYE7raK2hrEIA2dij5fyXVuP4jeL
 qqgyqe2v4uxFN.Pr9bluvCW4alqFtyKuE.ImpYBa90HgK4SAjZrDY.nSGIGe.DGvOliI.UmS1c26
 JsXHWFLYPZlf82RvUPUZnhjvGIi.m924.dBa884hb9v0MKt3aW6aTgmEtQK.di_kQCWqi2KbS8_I
 6gzUeNDrETTxwDL4aEFo8g8qJFv.Hmf89APRJysG6QMUEt6ruepuq3DH43rLcj7DyiDCy5hix2mA
 _jdBo91AopfV7D6BoZxRdvSeIDe2IXVtRMeuBfLzWF9OczcFP_Z5WW3bOConZnoXDzYK.TKYQKou
 X7k7.5ZPsVBINllr4C6p1
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 17:40:19 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp421.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6ec14b959356166b1798ceee44b23143;
          Mon, 04 Mar 2019 17:40:14 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: greybus: Add brackets to avoid precedence issues
Date: Mon,  4 Mar 2019 23:09:47 +0530
Message-Id: <20190304173947.30135-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add parentheses around arguments to avoid precedence issues. Issue found
by Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/greybus/camera.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index 615c8e7fd51e..7b653a4fd63f 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
 
 #define GB_CAMERA_MAX_SETTINGS_SIZE	8192
 
-#define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
-#define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
-#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
+#define gcam_dbg((gcam), format...)	dev_dbg(&gcam->bundle->dev, format)
+#define gcam_info((gcam), format...)	dev_info(&gcam->bundle->dev, format)
+#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
 
 static int gb_camera_operation_sync_flags(struct gb_connection *connection,
 					  int type, unsigned int flags,
-- 
2.19.1


