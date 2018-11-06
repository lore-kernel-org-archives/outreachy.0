X-GM-THRID: 6620551130625605632
X-Received: by 2002:a2e:9cc8:: with SMTP id g8-v6mr946659ljj.29.1541467479387;
        Mon, 05 Nov 2018 17:24:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:6e4c:: with SMTP id q12-v6ls1221085lfk.20.gmail; Mon, 05
 Nov 2018 17:24:38 -0800 (PST)
X-Google-Smtp-Source: AJdET5ebYtN6WPZgNsYaEJdRABk5EEd/u3vSr92Yo+OY9Ec25SFLXxDdpEG9rywyRrg/dJ0PuYmw
X-Received: by 2002:a19:ed08:: with SMTP id y8mr1906144lfy.10.1541467478198;
        Mon, 05 Nov 2018 17:24:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541467478; cv=none;
        d=google.com; s=arc-20160816;
        b=p000Pcw3seG4F6ZgUz+XFINMbqWgbTpXQn6FTTtxOIaSKB0CgJ0Nju3Xp+T6kRQ2Gi
         y3nis7rAanDrMUTygOH4aEKCA5tfwxhCLH438wC+qSWe3pkh25gP5w8J/kJQJrwfqrcq
         KuHnEuuHrJ00hO19qbEHOy02XvD7sf3honYEzcNoHfGXJZs3lffp3HSPAJeUW0B/SxwJ
         EI/jIXT/Kz0p1C2yG1MxkDRgv0uIMlnHqkX+vftZAlHyBRD6wVkTVrDtonKOwLkkP/vM
         GR40sjXih8mWd8e+n36tbUWQAo4ZjQCrT5RK7FA0kOjJnp7dbuK9y2O+WGgv2VO7U9bW
         912A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=IZOPc4P9hNJMXmVVsebr/l2o1RvmY5AwvRuqtIey8As=;
        b=oIAOTwl+sQY7BdcZMGICcRxgJteq4z2Xav5AfJIAbF6ONzrfiq6jlKsry1ItgLZKBE
         g7NamPXmVNfky2Z7Q+8hVHv462yP6F6v8uc1nmGLJpEhwpt9n0IgIg7qtp/xLAdbVK1t
         MNs4TFEEmA1jLrOJGoU4Xgf+2qvk6VZmjENCA3PVP+m9dkjIHJbvdHMuqpsv8XMcWSj9
         fes12B1+1wn/pF997Btl1nkHsW+lIyt2zG2MVFuPVLCsaKtgX/XLMDToryV8I/FX/DAW
         p5ZwcElUDcsWcVfNnpFv/VwaDvMmhkCusgMg4vFahqvzWUbi+tYrWWTVRT7JceST4KsK
         AWAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SF9TRKRJ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id n5-v6si546998ljh.2.2018.11.05.17.24.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:24:38 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SF9TRKRJ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id u13-v6so9886945wmc.4
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 17:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IZOPc4P9hNJMXmVVsebr/l2o1RvmY5AwvRuqtIey8As=;
        b=SF9TRKRJnc5X5rbVFQqsw2nikcFGXtau2WrVO78IFt9I69xBuBiXvhSwhLaG31y3Up
         fOVAjwgfaGCyyN+v6hQ3/O4TC13AT8b39C+yykcscZCbZr20971deqq8H1vHBqm8Fspd
         Wr8qkLar2E28MHT2B9+t71kU/eKMlF75mdpQ3/T0mo69Xa1KCY/bZfnaLnUmBhC6PTS4
         uG3gg7HazjlNy5RulgwNpSwJDpoKYfVSATZDz/K7iB7IQFrlZvIKjp2Gh+wZZpu7x1d5
         naoEOyZ0OIqAELKR8YV+k2hTXUAyNMwlhOkXbkzmJoW9swga4T7ByafNDD1zbvjEhKu6
         nrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IZOPc4P9hNJMXmVVsebr/l2o1RvmY5AwvRuqtIey8As=;
        b=FIkRoFjq59km9jvIEslq0umMArtdz6GplfX5jU8297HL0WXwakApvoFyy8rqT7mv2F
         nfkwNQvO+kB4Amb52rPBELTx7or214LoTSZq7tspfje8YyCz6E674VjIZ0Xtv5PuWdn9
         Z3zRR3yZHKwMGovzsHaR198kmFCuEoUUedbleriYv3etVHnhiatKpSea1i+SZvAlzyot
         Egyx3U1iAoqB5Zdhc0gcWdN1+LNGAhSpgcf3UT5NVCpfG4nOAOFuHvgwPnsTd/RpotI8
         H4qmeAspZ7NaokvaYNAFGL4Rnsgxe5yIr0R3+YxVb1IuPcdPl0sufaoBhedif9JTNris
         eNMg==
X-Gm-Message-State: AGRZ1gJp6O98hbG0wH+ZAmxVomkueX85DlIm3rPLINrxv0fg9dkG5Ru5
	kjmLoOjS8hoKimAeWbe7tg==
X-Received: by 2002:a1c:5706:: with SMTP id l6-v6mr337949wmb.51.1541467477346;
        Mon, 05 Nov 2018 17:24:37 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.gmail.com with ESMTPSA id l140-v6sm349279wmb.24.2018.11.05.17.24.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Nov 2018 17:24:36 -0800 (PST)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com,
	Irenge Jules Bashizi <jbi.octave@gmail.com>
Subject: [PATCH] staging: davinci_vpfe: Correct misspelled words
Date: Tue,  6 Nov 2018 01:24:26 +0000
Message-Id: <20181106012426.24099-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

Correct misspelled words checkpatch complains: parameters and initialize.

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


