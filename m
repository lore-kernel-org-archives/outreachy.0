X-GM-THRID: 6620551130625605632
X-Received: by 2002:a2e:3c08:: with SMTP id j8-v6mr2260109lja.10.1541467181289;
        Mon, 05 Nov 2018 17:19:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:944d:: with SMTP id o13-v6ls763277ljh.20.gmail; Mon, 05
 Nov 2018 17:19:40 -0800 (PST)
X-Google-Smtp-Source: AJdET5eHw0VZ7F38iBxoAQrf7SuIHFHeOZoK8zX6O5Vgi5Zq9jBFy6z4ShDwHsTorEaoLy5ITzPh
X-Received: by 2002:a2e:9902:: with SMTP id v2-v6mr1312486lji.6.1541467180324;
        Mon, 05 Nov 2018 17:19:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541467180; cv=none;
        d=google.com; s=arc-20160816;
        b=k3fYu6lWXquXrY1Sjhko24Q734fkAj+KsH+/5nAVce3YHMmYAlfzsLwL8MV1AVfZxD
         3sYeBLourzlJ15/OBn1d5yYkSx+acIJOUb++AhYxIgwxKhuhc7ZPWi8okrQzwB4TuI10
         qXVtxUrsP9kiEUO6MxVFESobzTFL1K/ppiWnORW4NrJ5I3A5TGkRE3vdSPX9GHmwZkX4
         YNNAU3h+dQFpReb8/WpbC2iiLRAEUaO4EL/x+gFXiITWwUxx2AWWWpy1W0XU66hKw0he
         n7vM282dWk3fLTx0FmjasWJZbAbqm/LUNnqTLW98o6qUpopngKc76HYmHRhd6pBFeVEH
         jE6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=w9wCF+A74bcz64nYwuof3YTFeavmwou4CBhHq5g5Y8A=;
        b=rY6TzBqcQvGh3uK15G7AKN0OHfwM3zE8+qrQ+p+fA5vh9roRYOX68OzeM5rWOnQVj4
         2w3oI5cFdmCYbMgS2hzAl6hNb5bWMzh33LgnXdcZP2UeK2I00X3HlfsQhEIW8/NX842P
         37Oi++Au5+ssD9JCNEhEzvGje6e5ZuJBNMKlmBg4ee0c7MnvsKUcC+PAko4JlnLPSgpf
         x5apTTRqRoTPkbNlZf5dHdUbcRAI9A2mkUceVzc/RETlhNJgS32u+OEz07eErz5iQEL7
         6f3bnyBuzwJAnf3Utl3SMdFBRIdppbueZOdMQki3WAszFcYZwrWwmor2076h6aStWTD4
         x7cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kdIxGexF;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w13-v6si1614532lfe.3.2018.11.05.17.19.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:19:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kdIxGexF;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id j17-v6so6464591wrq.11
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 17:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=w9wCF+A74bcz64nYwuof3YTFeavmwou4CBhHq5g5Y8A=;
        b=kdIxGexFz5YqcBMij9HZeT3G1w7El/O9ENv0DymGqouzHMF+d8eqMTaDU3grIRMWlz
         QhNaiSaHnkkz/vinRi1y+0AmgkI+EaJubJSkzBbVMZES9Qv+Hl8SPUTzSAJjuei59eRo
         Ju6SkMyHQHSA6mnqXrlKTkaGEcmpa08luENx4rWanwI1xyQqCvWfyN6OHUff/k2JVkss
         u1tk6nxMCoehc7x2SfDB/XheEBQvGPr1qjG1cJFlbe45Os0MLILPMKbUH5xzrVOWU+v1
         CSZqjHj/1Nkrp76QhC18i2kVncSbGiKujE0RbEPLIb/p0gmsorqEizle6TNMM/dxPCgq
         Eccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=w9wCF+A74bcz64nYwuof3YTFeavmwou4CBhHq5g5Y8A=;
        b=byOHxEY4VRhBHzR+iCJOLZ+RbnU0hhm8wgJUG+K5q5WTIfiezDEycinFb3C/YXjApk
         BdWHucDAffbcCZiALWVjop/L0iA8Frv9b5zlS0D+Ut6bk/r6pTpR5pwbVROzZv17oQcZ
         wscFWMCwO/rXdr8xLv8STtFhSenqfPM4z6Oy88ZcdId8M7PSkQQ7Lbc6XofMA0IxPOwD
         8nTvnI1BYmy3gNqaaigLzXbg1ejwujbBl48H4zhMvx2s3eXzOBf9oyNaSEQiflqF+3aM
         7v0HHeV7xhte47d7BnV6SZyO0pW33mhtxWOQRdNpm7IXh3+TQa6vVy6pjXXn073aMSfY
         XZ1Q==
X-Gm-Message-State: AGRZ1gJfDInxoi3MidQfOiTGxvHFQF8PA5pGZhIeQxapdtG87awVFLs0
	V/+yt8PlDxxAnaEU3yd1Gg==
X-Received: by 2002:adf:dc87:: with SMTP id r7-v6mr23345621wrj.143.1541467179436;
        Mon, 05 Nov 2018 17:19:39 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.gmail.com with ESMTPSA id w11-v6sm17545581wrr.96.2018.11.05.17.19.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Nov 2018 17:19:38 -0800 (PST)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com,
	Irenge Jules Bashizi <jbi.octave@gmail.com>
Subject: [PATCH] staging: davinci_vpfe: Correct misspelled words
Date: Tue,  6 Nov 2018 01:19:27 +0000
Message-Id: <20181106011927.14360-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

Correct misspelled words: parameters and initialize

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_isif.c      | 4 ++--
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 39eb0819ab4e..5172822d7e6f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -678,7 +678,7 @@ static void isif_config_bclamp(struct vpfe_isif_device *isif,
 	val = (bc->bc_mode_color & ISIF_BC_MODE_COLOR_MASK) <<
 		ISIF_BC_MODE_COLOR_SHIFT;
 
-	/* Enable BC and horizontal clamp calculation paramaters */
+	/* Enable BC and horizontal clamp calculation parameters */
 	val = val | 1 | ((bc->horz.mode & ISIF_HORZ_BC_MODE_MASK) <<
 	      ISIF_HORZ_BC_MODE_SHIFT);
 
@@ -715,7 +715,7 @@ static void isif_config_bclamp(struct vpfe_isif_device *isif,
 		isif_write(isif->isif_cfg.base_addr, val, CLHWIN2);
 	}
 
-	/* vertical clamp calculation paramaters */
+	/* vertical clamp calculation parameters */
 	/* OB H Valid */
 	val = bc->vert.ob_h_sz_calc & ISIF_VERT_BC_OB_H_SZ_MASK;
 
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index bdf6ee5ad96c..257bd96bf730 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -531,7 +531,7 @@ static void vpfe_cleanup_modules(struct vpfe_device *vpfe_dev,
  * @vpfe_dev - ptr to vpfe capture device
  * @pdev - pointer to platform device
  *
- * intialize all v4l2 subdevs and media entities
+ * initialize all v4l2 subdevs and media entities
  */
 static int vpfe_initialize_modules(struct vpfe_device *vpfe_dev,
 				   struct platform_device *pdev)
-- 
2.17.2


