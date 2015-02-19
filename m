X-GM-THRID: 845841170432
X-Received: by 10.152.1.5 with SMTP id 5mr822512lai.4.1424375020657;
        Thu, 19 Feb 2015 11:43:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls209941lak.108.gmail; Thu, 19 Feb
 2015 11:43:39 -0800 (PST)
X-Received: by 10.112.119.141 with SMTP id ku13mr823865lbb.7.1424375019005;
        Thu, 19 Feb 2015 11:43:39 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id ev8si6469839wib.3.2015.02.19.11.43.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:43:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id l15so11561912wiw.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=FAywYnmx9qjuYelX1flW4z/GPdqGfErElx+lE9CvoLQ=;
        b=YU1GbqI2enPjg79qxNDckNB492iaiPLW2i6/n0ggxNfImzWtpJqZdjhrUFhpZY+B/L
         EPLaaqsZkWfKaJKYw2f0Z/gUWXR7hvrlzP/qRxQgFV4c+B69gjg7VeNa3wS3bQ0rF199
         b8hF5vdHnxstTNz7W5UaDI0JDwQ5QAICLQRvEz7j80xdA4mV6OL9Ngz6jCyrNElYk4wX
         Y1WVDUCXKxnkTuEV1XwFWc6TfMod+VNSaWY+RHDQUcvnOfIFgsUv1+u4XBPDdIstCHG3
         iwuQanhC+7ven3XCrrzj1BJqw1CGMwACKEdGfvjQ8XfShvon9FwAK6wt//kElwx1l7ob
         36XA==
X-Received: by 10.180.21.133 with SMTP id v5mr9542080wie.27.1424375018902;
        Thu, 19 Feb 2015 11:43:38 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id u6sm33865014wix.12.2015.02.19.11.43.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 11:43:38 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: media: vino: Added blank line
Date: Thu, 19 Feb 2015 20:43:23 +0100
Message-Id: <1424375003-20085-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: fixed e-mail address
 drivers/staging/media/vino/saa7191.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
index 29e3296..f223e47 100644
--- a/drivers/staging/media/vino/saa7191.c
+++ b/drivers/staging/media/vino/saa7191.c
@@ -521,6 +521,7 @@ static int saa7191_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
 		break;
 	case SAA7191_CONTROL_LUMA_DELAY: {
 		s32 value = ctrl->value;
+
 		if (value < 0)
 			value += 8;
 		reg = saa7191_read_reg(sd, SAA7191_REG_CTL3);
-- 
1.9.1


