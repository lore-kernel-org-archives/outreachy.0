X-GM-THRID: 6543663108012900352
X-Received: by 10.176.91.130 with SMTP id y2mr1076014uae.96.1523565294384;
        Thu, 12 Apr 2018 13:34:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.94.76 with SMTP id a12ls618107uah.17.gmail; Thu, 12 Apr
 2018 13:34:53 -0700 (PDT)
X-Google-Smtp-Source: AIpwx48IM5SrFp71vFqWYNdWRJO5bRw3SJwGg6CmcIHE93MGljVQr8p2N7YxfRAiQuqU0LXFu/9f
X-Received: by 10.176.36.154 with SMTP id i26mr1110811uan.12.1523565293579;
        Thu, 12 Apr 2018 13:34:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523565293; cv=none;
        d=google.com; s=arc-20160816;
        b=VR+cvWoecm+61LO+1Uyw9T1dibTyx90FRn5qnxwAQSIo5z/wuNGdqG14xsXQxQ8KAG
         tBpWBQSoQtOO2VqB3SzEbqMWdvgpX6wuIrCoxMpkEXOVwgkEb//kqVxk7Q6Mhjff718n
         Xp6/ujyFvGj0mj3uEKiogu4aPMaiTRToEyFvxP1XUCIdt5CLi2Tb2oilzl/5FrAf8dNx
         iM+uQnVSjk0lhP0FXSFanDGhq6XkjyLLWaGjUP2OvC62Wq+z5GBYKZa84N7GMDpKxs/I
         /HNJo0uj9+JUjP8Qmt7pVeKgfpmBgXTE8i3mNJ2LHBoTEpnIOWUhyDVgnrg+iTvXqKo1
         d/MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=Wart829LnR6B3om91fBqL1zo8wk9IdgmQkQSXYYWH0g=;
        b=XjJ/0nU3Pp5p5plsoKhP8YxBGDKHq8WzWEvrME4jL2h4bYXcj+bKHXBBbBr1ZW8L1s
         D/K+sU1VSSHnxxM+p83KXjv8BZMPUpOjgQ48uAp/Txgnd5hNCXjNAYfLQSVBkz3ClIlF
         XyLwa3dwaBDIkZ7jDiqBkWqJ/cYEurMenj36AN9+oDSVZv5XLVwwnbidFm+cY4uRsmKy
         BzpLkhiV9GdLM/lydtyObNVrO0aWfqslXoKhTnr5r0hmJ4tRiQpABbvWDUjvjLZhHNR6
         qht756I2TYY0qP3CPj0ZucEVl3p/xY4Pf/fGH89Cb562VEvmq7Hi33+RsWq+vup8TWLL
         Zg5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Jt/lZMmL;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id o194si317184vkc.4.2018.04.12.13.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Apr 2018 13:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Jt/lZMmL;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x243.google.com with SMTP id l27so4720458pfk.12
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Apr 2018 13:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Wart829LnR6B3om91fBqL1zo8wk9IdgmQkQSXYYWH0g=;
        b=Jt/lZMmLb+2/bULIHvB8CeJ3NhkC7aXFdruURi2xmKBkWnbDR+uOb9lYB86bzY3JIE
         GT9eyfl3yvStL+fEVtdY1TgLWKRwVblLkL/2Vg7iNok1p/hHmueut57r65kp/SsU+9JZ
         bmM4R8rGoNHBVG955kMyVr5hKzBA3JhVwLIO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Wart829LnR6B3om91fBqL1zo8wk9IdgmQkQSXYYWH0g=;
        b=DJetx2t8Yr8CmYuGQtwlHgg9kYqmuqoiDqI+6EWE5dQqEI4py27Oej/ixoWRn4GRU/
         DdzAgV+KyYkp8gc1adpMzm07FJoawi3J5SlCHN9oJ5aTkxV/SalWLr7Wgoh16+aVH9sa
         NU0qLWLvmDvbP8uCiFoLOpHapyi0NXoTtYl5TzgTNUkNnY2JgYBcOHeBI/Y+nYwK7PPz
         ySadryocoq5sYsO5OgGNDWQavSOaBMTFSQfLCXpRoyHDeVGGqaRm6OFCBlBPuXIGR+oN
         C7IZr1hnOMY2dke6wHNY3FYtewf82lDBer8tKH7tmCTHGl+cbA2wfd1a7QyydeahiOJ0
         apHg==
X-Gm-Message-State: ALQs6tDHN/Z1UElbwUfXw8newstvehT4QmjV/JwF5FyMjk+qLnaGIq3B
	9R5oPR2kYLORKi2T8KQvjs8XvtV0
X-Received: by 10.101.101.15 with SMTP id x15mr1852059pgv.322.1523565292565;
        Thu, 12 Apr 2018 13:34:52 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id m21sm8402413pgn.0.2018.04.12.13.34.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Apr 2018 13:34:51 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 2/3] Match alignments with open parentheses
Date: Thu, 12 Apr 2018 20:34:34 +0000
Message-Id: <1523565275-21820-2-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523565275-21820-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1523565275-21820-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Match alignments of mostly function arguments with open parentheses.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 0a6555d..1f1a77b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1321,7 +1321,7 @@ static int ipipe_g_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 			void *from;
 
 			params =  kmalloc(sizeof(struct ipipe_module_params),
-						GFP_KERNEL);
+						 GFP_KERNEL);
 			from = (void *)params + module_if->param_offset;
 			size = module_if->param_size;
 
@@ -1394,7 +1394,7 @@ static int ipipe_set_stream(struct v4l2_subdev *sd, int enable)
 	struct vpfe_device *vpfe_dev = to_vpfe_device(ipipe);
 
 	if (enable && ipipe->input != IPIPE_INPUT_NONE &&
-		ipipe->output != IPIPE_OUTPUT_NONE) {
+	    ipipe->output != IPIPE_OUTPUT_NONE) {
 		if (config_ipipe_hw(ipipe) < 0)
 			return -EINVAL;
 	}
@@ -1414,8 +1414,8 @@ static int ipipe_set_stream(struct v4l2_subdev *sd, int enable)
  */
 static struct v4l2_mbus_framefmt *
 __ipipe_get_format(struct vpfe_ipipe_device *ipipe,
-		       struct v4l2_subdev_pad_config *cfg, unsigned int pad,
-		       enum v4l2_subdev_format_whence which)
+		   struct v4l2_subdev_pad_config *cfg, unsigned int pad,
+		   enum v4l2_subdev_format_whence which)
 {
 	if (which == V4L2_SUBDEV_FORMAT_TRY)
 		return v4l2_subdev_get_try_format(&ipipe->subdev, cfg, pad);
@@ -1433,9 +1433,9 @@ __ipipe_get_format(struct vpfe_ipipe_device *ipipe,
  */
 static void
 ipipe_try_format(struct vpfe_ipipe_device *ipipe,
-		   struct v4l2_subdev_pad_config *cfg, unsigned int pad,
-		   struct v4l2_mbus_framefmt *fmt,
-		   enum v4l2_subdev_format_whence which)
+		 struct v4l2_subdev_pad_config *cfg, unsigned int pad,
+		 struct v4l2_mbus_framefmt *fmt,
+		 enum v4l2_subdev_format_whence which)
 {
 	unsigned int max_out_height;
 	unsigned int max_out_width;
@@ -1475,7 +1475,7 @@ ipipe_try_format(struct vpfe_ipipe_device *ipipe,
  */
 static int
 ipipe_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
-		     struct v4l2_subdev_format *fmt)
+		 struct v4l2_subdev_format *fmt)
 {
 	struct vpfe_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt *format;
-- 
2.7.4


