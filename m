X-GM-THRID: 6209942832976756736
X-Received: by 10.31.41.141 with SMTP id p135mr21594878vkp.7.1445864993948;
        Mon, 26 Oct 2015 06:09:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.228 with SMTP id 91ls3261779qgl.15.gmail; Mon, 26 Oct
 2015 06:09:53 -0700 (PDT)
X-Received: by 10.129.154.205 with SMTP id r196mr27076364ywg.48.1445864993551;
        Mon, 26 Oct 2015 06:09:53 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si3491924pbb.0.2015.10.26.06.09.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so188724387pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 06:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=BQn5SfToHrTPZitcpo/7HaR+T5AyE7c9z43OxXBkzHw=;
        b=DWCbPhvwQr115WxRrZ5l2sLbDXGyFnvozTIYTSkwZ3FlTrL1VAotftVNVLIZnrvvp5
         WyteLUlsTgzhGqagAVVvn0/B2zicNopMxxVsiq47bMhbFqWz+E/B+PGcsODJkj+Fay+6
         uI/R3/zoa2Ixjqp7k7dtxCxDPYBUiFUrQ6FS0ysolOKOoWdYK4IAgBNUnACchldW6xh4
         xGIW+xR1JJY41HAoIrj0fwDWua6KHXyHjOlvUGUzJne9kDBTfYMCB7Nf45naoUfsotXF
         8G6s9baFP52J74/i9uTw4PChV8Yzb9MGNmb5Fid8ZDjEfll99XP18pVLdGzKgprKy/1u
         1oRQ==
X-Received: by 10.66.164.201 with SMTP id ys9mr22244298pab.50.1445864993419;
        Mon, 26 Oct 2015 06:09:53 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id qn5sm34181086pac.41.2015.10.26.06.09.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:53 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: media: omap4iss: Removes unnecessary blank lines
Date: Mon, 26 Oct 2015 06:09:30 -0700
Message-Id: <509530dc1a59a63a9e8293622a751fdbe130285e.1445864494.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>

This patch fixes checkpatch issues:

CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Please don't use multiple blank lines

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/omap4iss/iss_resizer.c |    2 --
 drivers/staging/media/omap4iss/iss_video.c   |    1 -
 2 files changed, 3 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_resizer.c b/drivers/staging/media/omap4iss/iss_resizer.c
index 48bed44..bdcab8c 100644
--- a/drivers/staging/media/omap4iss/iss_resizer.c
+++ b/drivers/staging/media/omap4iss/iss_resizer.c
@@ -482,7 +482,6 @@ resizer_try_format(struct iss_resizer_device *resizer,
 		fmt->width &= ~15;
 		fmt->height = clamp_t(u32, height, 32, fmt->height);
 		break;
-
 	}
 
 	fmt->colorspace = V4L2_COLORSPACE_JPEG;
@@ -734,7 +733,6 @@ static int resizer_link_setup(struct media_entity *entity,
 		else if (remote->entity == &iss->ipipe.subdev.entity)
 			resizer->input = RESIZER_INPUT_IPIPE;
 
-
 		break;
 
 	case RESIZER_PAD_SOURCE_MEM | MEDIA_ENT_T_DEVNODE:
diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/media/omap4iss/iss_video.c
index a98991a..97d3faa 100644
--- a/drivers/staging/media/omap4iss/iss_video.c
+++ b/drivers/staging/media/omap4iss/iss_video.c
@@ -25,7 +25,6 @@
 #include "iss_video.h"
 #include "iss.h"
 
-
 /* -----------------------------------------------------------------------------
  * Helper functions
  */
-- 
1.7.9.5


