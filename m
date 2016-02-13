X-GM-THRID: 6250655488927596544
X-Received: by 10.98.68.194 with SMTP id m63mr5245584pfi.7.1455344429979;
        Fri, 12 Feb 2016 22:20:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.15 with SMTP id 15ls1070848ioo.92.gmail; Fri, 12 Feb
 2016 22:20:29 -0800 (PST)
X-Received: by 10.66.132.81 with SMTP id os17mr5261566pab.12.1455344429694;
        Fri, 12 Feb 2016 22:20:29 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si1853040pad.2.2016.02.12.22.20.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:20:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so4892393pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3Mzbgt2hTpFN16Lfl3lbaB5BfgVx0sQ1P+Fbm/p2byw=;
        b=AQHbHvXvhkUeTBDYauLdhBfkyNyd7Pn806InQZHaLOs6z9TthufQQpeBURgyJ4aP+H
         x+/ttBJPDouAVlGgLyxI0rM/Nz8pESRr+DEELHCjPr7ZFWHwEnTQhPiNRZnfOVM7LmRr
         4cH4Az0FlgbIQ6y88zBRsfjDKqwNTUrYu9HUq/fp36LSA2e156bXYVJG8UT15auQKTiZ
         48Q+X732Jv2jSo3h9dh2/1ONTDA6Q4UardrDP0uJT8tqaDsRY9441SAv/tz4iqfEDnUI
         wcTrufMDLBWI4+XXZXiQ3xMwde7+dkx3I6NKOoST2cqqAtYl0XoB1ivPyYAz5RJbzwP2
         G5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3Mzbgt2hTpFN16Lfl3lbaB5BfgVx0sQ1P+Fbm/p2byw=;
        b=baaesrgLETcanyuiEP48ClKa24RpJzZ+uTFKIG8vyL36+HlB8Nu40p3D/vCUVGCnD7
         nsgaUdxqUgKO5G1938e920rN7vB2DoF5BaQjOT1qEcbZwmSybvswbYHoxzipZyWlH5jw
         Uz6/kzjc6Bscs9mKaSoMl3uC/cxQcbM+hrXvEj3ZvGOl5Ozkaf2btLy1fgdENwrAtYgK
         EwNM9zXVOT0ngy9AGmYEBfyzD9WSsXm6QJNsWFDbkgFiUwB1SMeQXnGnk8jffPm3Yqvy
         dG7vw8EQWEBLXSG5cI9CzHBesP6YYQon4eD4994m+6BJFQVIUh/R6wTaTqluYH+0ikVo
         oJSA==
X-Gm-Message-State: AG10YOSGR/O568pQZ/IjPo444T2eP8F1VQfWeYHWIF3T7EKHsoqsCOFLgUgrKAS95cZPdA==
X-Received: by 10.98.67.149 with SMTP id l21mr7809383pfi.112.1455344429601;
        Fri, 12 Feb 2016 22:20:29 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.145.71])
        by smtp.gmail.com with ESMTPSA id o184sm23502684pfo.36.2016.02.12.22.20.16
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:20:29 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 13 Feb 2016 11:49:37 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/2] Staging: media: Remove multiple assignments
Date: Sat, 13 Feb 2016 11:49:35 +0530
Message-Id: <14e6ff95c26bde7c1727f53136532416b4008031.1455343091.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455343091.git.bhumirks@gmail.com>
References: <cover.1455343091.git.bhumirks@gmail.com>

Remove multiple assignments by factorizing them.
Made a coccinelle script to match cases:
@@
identifier a,b;
constant c;
@@
-a=b=c;
+a=c;
+b=c;

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_isif.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 65f6ce3..cfad426 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -1239,7 +1239,8 @@ static int isif_config_ycbcr(struct v4l2_subdev *sd, int mode)
 	 * a lot of registers that we didn't touch
 	 */
 	/* start with all bits zero */
-	ccdcfg = modeset = 0;
+	ccdcfg = 0;
+	modeset = 0;
 	pix_fmt = isif_get_pix_fmt(format->code);
 	if (pix_fmt < 0) {
 		pr_debug("Invalid pix_fmt(input mode)\n");
-- 
1.9.1


