X-GM-THRID: 6388900397139886080
X-Received: by 10.200.33.233 with SMTP id 38mr5381987qtz.87.1487531791425;
        Sun, 19 Feb 2017 11:16:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.23 with SMTP id g23ls8744476ote.24.gmail; Sun, 19 Feb
 2017 11:16:31 -0800 (PST)
X-Received: by 10.200.46.241 with SMTP id i46mr5496352qta.70.1487531791103;
        Sun, 19 Feb 2017 11:16:31 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h130si1815998pfe.1.2017.02.19.11.16.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:16:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 5so10055540pgj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 11:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y5UK2aazNErNEDyQ3hVoa7AVyJIV4wWUFszSnP5fZm4=;
        b=bl1raUDrZ4zeKK6KbDJ2uB+vebwp3kvNlaxNY0sFj0BYwWRjNh/M0/rDpecicmrpBK
         CLknyD+oS1PkNROtSu4JkkqIqboPUWhDdTkdGrl5CyM0oirQumouwd1bvDwHgeX/RtwL
         v0AlqUZVW3M3qB2AFyac9fd2ewnSwCZ9v+Vx9OOLjcmdF26YThrnUTOLXKjft/9g/Rht
         JjAXnQBrMMzOilGjSQqP4PeUSD2BfPImPN0dNGlekZIRZbCjOXX2Wfjd8k6bL8dzf3KL
         YzkedQMZjQ8bJdpXE7rs7bVKIZe8ChCDvAutwpD2Z2AgMdLaL3TtphLOQeiOPEDuSIQc
         xdnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y5UK2aazNErNEDyQ3hVoa7AVyJIV4wWUFszSnP5fZm4=;
        b=UNzjI4UF0WEBz2kg+jINg/lnM8gGhsz8KUlHnelKOfi9HSAVeXfFV0ZgsNwcVVdOiz
         /5GFZUbtCIp8wy5j7l7DfDp/VUnfMskd7EyapyEkUpi7mP+a7bpEz1vfx9COcX7ohKNe
         ZAmC3LlF/7kKFTGZEBidZgbJ2+u29qMkv6MtN1WVitK8ZgDucTo+81p531h7PPINZBaJ
         T3FxTElzGNLocxlM6AZ44CPwCw7oRmBsPz9G87QY2yqLE970p23HXGld9V4v91H2rd8A
         gvuXOFtRraFqaamauh0ptXaOWRWE+7CZs7GzffwEwJPPxCsV4WTPXmQcV2i4fF6cNpbB
         cDGw==
X-Gm-Message-State: AMke39nsZu/cz6HOWs/+97l56MJZd2puJVxofW0PlYTwyUy29LntVshJIIUQKrab/fxBBQ==
X-Received: by 10.84.129.67 with SMTP id 61mr26398404plb.103.1487531790881;
        Sun, 19 Feb 2017 11:16:30 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id x15sm30796960pgo.56.2017.02.19.11.16.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 11:16:30 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: media: Remove ternary operator
Date: Mon, 20 Feb 2017 00:44:18 +0530
Message-Id: <1487531658-18368-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Relational and logical operators evaluate to either true or false.
Explicit conversion is not needed so remove the ternary operator.
Done using coccinelle:

@r@
expression A,B;
symbol true,false;
binary operator b = {==,!=,&&,||,>=,<=,>,<};
@@
- (A b B) ? true : false
+ A b B

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/media/platform/bcm2835/controls.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/platform/bcm2835/controls.c b/drivers/staging/media/platform/bcm2835/controls.c
index a40987b..4d7e2a2 100644
--- a/drivers/staging/media/platform/bcm2835/controls.c
+++ b/drivers/staging/media/platform/bcm2835/controls.c
@@ -218,9 +218,7 @@ static int ctrl_set_iso(struct bm2835_mmal_dev *dev,
 		dev->iso = iso_values[ctrl->val];
 	else if (ctrl->id == V4L2_CID_ISO_SENSITIVITY_AUTO)
 		dev->manual_iso_enabled =
-				(ctrl->val == V4L2_ISO_SENSITIVITY_MANUAL ?
-							true :
-							false);
+				(ctrl->val == V4L2_ISO_SENSITIVITY_MANUAL);
 
 	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
 
-- 
2.7.4


