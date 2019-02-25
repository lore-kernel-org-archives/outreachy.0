X-GM-THRID: 6661070369526382592
X-Received: by 2002:a62:47c6:: with SMTP id p67mr6716625pfi.24.1551106516725;
        Mon, 25 Feb 2019 06:55:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:246:: with SMTP id 67ls2043134pgc.11.gmail; Mon, 25 Feb
 2019 06:55:16 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYWh4efWZqdqro9Yu+oUBQ2Nm25DLameq7pSdv2w+QuVBee4FUCY27EfRWK+8Ze5ww33pg8
X-Received: by 2002:a62:2055:: with SMTP id g82mr6862886pfg.85.1551106516079;
        Mon, 25 Feb 2019 06:55:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551106516; cv=none;
        d=google.com; s=arc-20160816;
        b=JVCFfd+EtVj6eCGIyV5MXHdnjYLvmgHMaikKB+mn5o81pFCO0IYvoiZj4dHBq+sI3Y
         y8lYYYLGaV8RoYI309HTFc01uiG8ZxYs+jS1ORf9+d3RTF5fYGfY54s5qw4/zHxLgc1H
         tENUAb4UUUy5vZKmFdaPj0BKLtZvMUq8lPzR8USlfjRrHewMs4yKRwbUOpwVCi+U0u7U
         YOa9l70AyxtSoHBQqNUnSe1cW/y3QWtN6QaCjhA/5TOfZBz8Omy9zvzHX5BnJa7uEghf
         GZGb20ZY9EyWIm4Ru2156o4dO584S653JpsqcwoOz/ZlQ79yON6Ubi7gFI1xSphboXf7
         +/sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=OA8+XzSCN881+auAjG0JUx3pj/R8uFsZzA5CEyMwHtg=;
        b=o4sNYkigJd/gbljArNcx9kYWuBUcqdUjLQrEgp1e1kqrZQ/TU9SSXa8+UetdeplGcI
         4GCVnssabl7xvA2uMyfWh1VTvck7uGRWsKfup0kJUWB6Tv/Wlu07W/tyyEKEMMlQx6Y/
         NZ2G8TxgUm6Np9McOwN+HoMIuXx6lQg9zH0tXCb9UqXDV91NpXbJEBzAIcpSbhxFvLHf
         Gp053kvaBnFt3g9RzABBykTDMowcaDI2iHioqkQ0X/krCgRAiNhhJ27KkZKQVMCh0CAY
         6mq3z7RrAyVwM26fm63J1HBFgaaQ9DZxCnnzeBNmcUmD1/YI+Un1CKpC1slLWcXhoi0I
         lHCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CLfevnAn;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id o23si198990pll.0.2019.02.25.06.55.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:55:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CLfevnAn;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id r14so4598771pls.12
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OA8+XzSCN881+auAjG0JUx3pj/R8uFsZzA5CEyMwHtg=;
        b=CLfevnAnBEnh3qu3TmUlVTdUlmv1tkf9onD3SfYidK1/ljejjmZzaLzsyzRClbwq9l
         jVyrAIbO73sP1FBZVz5f8NRz2jN6DbtqdMp/Kx8a0lKF9rk3nKR8Lpt0rnV96wq2U+pz
         GdBRPYp5T09quiXormWkSrOp2o3enULrhd+4+e02kAFE0qQSRItcsDsDEwF73YpGKiiY
         gp/Xg96OEgp3p4D+zw9JszjypJ5ijnam1KlqAcV9jnaAKwWXtcmGVXx73+w7jFFToY/2
         prXgDx/5TEz3+y9QpVPI5cdWKV+ikAOPb28Tp4H1sJqVPYxeKToCYML5tY59MKrGbsN9
         D/QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OA8+XzSCN881+auAjG0JUx3pj/R8uFsZzA5CEyMwHtg=;
        b=lu65xtqIBxgSkruoTDVjBzEjymlI9uXc/gbWcuWP6au7Bu0HPXpdV1Vqd6MUicjXxa
         8YQpvwHggpTM0aTTLP+kK17uyyRM2w81fT2oQCnjiPXIrKAG8MGWjZLXgWM69sNixRm1
         UnUCpq39XeZpW9cy2fBUI3G2jceUhT9pNr3dqevXDcF/MgvUeaImdFyL9HvAzVWPg897
         Frc0PHNRtuWFJvc7TmKMFG0IWZYG7vYsiRItKyHNRueomTs05uH3uIk+xWHs/Hw/EPfh
         95nFOhrboA1qmmMdFPsNUJqWdUfc06ymrbKMZF0K4H3DZOGfM435Tlxn8xWN5Q2KSIPe
         kh8A==
X-Gm-Message-State: AHQUAuZNGY0yx2+2s3/ClhvbdQdxTjTUbHFoGPV/UcR8DGoGvdpLfQtQ
	rzxLxUrWzDQA5bBUPgXPlBsatN7JI5k=
X-Received: by 2002:a17:902:8d94:: with SMTP id v20mr20693964plo.194.1551106515519;
        Mon, 25 Feb 2019 06:55:15 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id 20sm11718665pgr.80.2019.02.25.06.55.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:55:14 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4] Staging: fbtft: Alignment should match open paranthesis
Date: Mon, 25 Feb 2019 20:25:00 +0530
Message-Id: <20190225145500.9018-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Clear the warning found by checkpatch.pl
WARNING:Alignment should match open paranthesis

Adjust paremeters in fbtft_par_dbg and write_reg.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2:The capitalization in the subject line is corrected.
v3: Commitlog modified to make it imperative
v4: Commit log modified
	
 drivers/staging/fbtft/fb_ssd1351.c | 2 +-
 drivers/staging/fbtft/fb_tinylcd.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index a8980d9f7557..9ac78ce30619 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -164,7 +164,7 @@ static int set_gamma(struct fbtft_par *par, u32 *curves)
 static int blank(struct fbtft_par *par, bool on)
 {
 	fbtft_par_dbg(DEBUG_BLANK, par, "(%s=%s)\n",
-		__func__, on ? "true" : "false");
+		      __func__, on ? "true" : "false");
 	if (on)
 		write_reg(par, 0xAE);
 	else
diff --git a/drivers/staging/fbtft/fb_tinylcd.c b/drivers/staging/fbtft/fb_tinylcd.c
index e463b0ddf16d..9469248f2c50 100644
--- a/drivers/staging/fbtft/fb_tinylcd.c
+++ b/drivers/staging/fbtft/fb_tinylcd.c
@@ -38,7 +38,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0xE5, 0x00);
 	write_reg(par, 0xF0, 0x36, 0xA5, 0x53);
 	write_reg(par, 0xE0, 0x00, 0x35, 0x33, 0x00, 0x00, 0x00,
-			     0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
+		       0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 	udelay(250);
-- 
2.17.1


