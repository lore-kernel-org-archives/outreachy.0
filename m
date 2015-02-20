X-GM-THRID: 1289358409728
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c166ded58e2c82b7,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr1261990lan.1.1424437851997;
        Fri, 20 Feb 2015 05:10:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.201 with SMTP id m9ls280887lah.6.gmail; Fri, 20 Feb
 2015 05:10:51 -0800 (PST)
X-Received: by 10.112.64.171 with SMTP id p11mr1259504lbs.12.1424437851581;
        Fri, 20 Feb 2015 05:10:51 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id r6si110380wix.0.2015.02.20.05.10.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 05:10:51 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id hi2so6353083wib.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 05:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=La8i6Xp9veIwN/II8VmMhhmgZtmBpFdc3fIDG1FtTNY=;
        b=ZQF2KGctoGehzH4YYPXKbEl1Yb7PyGsA4G2xuar1XF5u+ePsRybZN1HVfnelHeclr5
         s+TA8a39xaULoRkOLq5cMmcg2TQjB9J5rPvZR88nwL4K+oQKf1WXBduTS3qKQeMHhHwQ
         1ynGMIpKV1VwnHWNxDM6pJSomxi4e3Ww/Sw3lbJHEFNksWHh9KUBGntEC3Z/yoQYby//
         xLM2xkRfHlgP7o6LwEOKvvNDVaXEahk/eFN2udpe68VghW5Qq2osJM/k9tzJ0t/AJxLR
         if5AYlQk5ppiwYRuGSfZxfTcG5Nx131a6E/N4nHWnUKo8/J9DjhBGwS15hGWitlnEloJ
         jamQ==
X-Received: by 10.180.149.242 with SMTP id ud18mr15641210wib.94.1424437851351;
        Fri, 20 Feb 2015 05:10:51 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id cf12sm42029569wjb.10.2015.02.20.05.10.50
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 05:10:50 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: imx-drm: Array was made static const char * const
Date: Fri, 20 Feb 2015 15:10:49 +0200
Message-Id: <1424437849-11055-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes checkpatch.pl warning in file imx-tve.c
WARNING: static const char * array should probably be static const char
* const

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/imx-drm/imx-tve.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/imx-drm/imx-tve.c b/drivers/staging/imx-drm/imx-tve.c
index 31fe7cf..b1063a8 100644
--- a/drivers/staging/imx-drm/imx-tve.c
+++ b/drivers/staging/imx-drm/imx-tve.c
@@ -538,7 +538,7 @@ static struct regmap_config tve_regmap_config = {
 	.max_register = 0xdc,
 };
 
-static const char *imx_tve_modes[] = {
+static const char *const imx_tve_modes[] = {
 	[TVE_MODE_TVOUT]  = "tvout",
 	[TVE_MODE_VGA] = "vga",
 };
-- 
1.8.3.2


