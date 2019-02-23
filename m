X-GM-THRID: 6661070369526382592
X-Received: by 2002:a24:b70b:: with SMTP id h11mr1230520itf.26.1550901301265;
        Fri, 22 Feb 2019 21:55:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls2350091itc.5.canary-gmail;
 Fri, 22 Feb 2019 21:55:00 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaFLvzaCW9vUqd2PnrsE/1+np1l8eGFd6QJFt6YH4lH2rL5+BiiRpOqgIJGiyJIH4MipKbn
X-Received: by 2002:a24:75d6:: with SMTP id y205mr1212729itc.36.1550901300342;
        Fri, 22 Feb 2019 21:55:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550901300; cv=none;
        d=google.com; s=arc-20160816;
        b=ATgRCnYgCxnNyGridLOIOwloBWIwTc1cmr7rnspbw7n2U5ZY6LE/tTk50gVmr8DJ/b
         al6HjvGAFWOCNNk+Vkn2nKkw5AEdwVMrztimTvbUAskM10pQlpsOV/miqIuDAfZ5ktpJ
         16w+GOO4/pGsDqGLsSm+oWMiRM3B54ALdyeEbC7iiDVr3nkE0wWmaBFyrGtGJwvrDq0h
         qybu7iD7VttnpWAi+UXZ+grHjwMfbxTHPM3Z/W7TXUuKU/nJUIufRzHFHJbctKGg3bmz
         OThXztr+FtqZwa0Jwz1frSLvmW5HHBkeYmWxoIEhR+ul/crL8I3BfsTvnsCgFrEIFa8W
         nGpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JPxaSDn+IWRjeYEU5ec3xbXs4RAHHBv78vQJeyfVkOo=;
        b=Kb6oVK4ByrmGYfjuWPhdMcdAJaHpDabexKICCgzK1HIi/ZPOqsIyrE5gLGABDLlV4i
         VMFkr49yXtyT05GOAewKXnFgk0QWrwZlWmUbFRZGgU+dLuHtkhioiUxMH8T8CrlX+UMa
         SQEqLJ8IsdfwMOi+0PmEYrdaOE056Rel0ov5qXF4RAq+4mwmNT3Nq79vbmArwYaitkL7
         O9V11uRZCWuJnZaQ2fPmwaGup6PngnFRD/mDQOoMFjvqzAYNXjnLs2Cp4IpCROxRuMqE
         fjXGJPnd44r8pCdtLIwHKtiohzee9qnruVdeJaRKgJbmoqFJYVNRZ90QDTp0ZhghgCXT
         /BCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d1KeUPm+;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n185si144519itn.3.2019.02.22.21.55.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 21:55:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d1KeUPm+;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id u9so2074092pfn.1
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 21:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JPxaSDn+IWRjeYEU5ec3xbXs4RAHHBv78vQJeyfVkOo=;
        b=d1KeUPm+6KrjXFwqtFUGzqA36yQ19TBrejUunJuyQvP+6701W4l6enoUS3MFQaF+9j
         BkfVyHj5flIowA8bnPr2prYt2kLlxdRX8lAbkW17a7kdKMjZj4Viu7UiSvH1b+I75x1C
         tNV4WoeUQbaUC8RTYrTmdLadh8DhBq73unkOwBCfE1bKd8BiY06FmojaIw4FF9eT5RGT
         hZDJPU2K2dOnkWyQxnTBiwDHLgRQS+qU+n5LMnVZIqHp0lVkzlh/ge3aeSLYeDcyKQ7S
         cl+3EtG+XJwdm6gT+8+zqd2Tti88c0X5B81zk4o+pXjoNW3GH+sxMtvecRKVAuHahcV8
         Yqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JPxaSDn+IWRjeYEU5ec3xbXs4RAHHBv78vQJeyfVkOo=;
        b=bHjrT2eSlCfpgTfh8+0Gh8VQI0T9dBacimpVJcaxsTvNNhFPVHgyHOPHoScU/H1gF0
         QaXPGb0QJAf+ljx5XGPqzkC3UM15w7+kAlmOsTJTZNORRcmrg+v20/FmZNILkwOZ9JoP
         1he1GK5/c+OmJx7ZlwPkpN3kVMIFvffJO/e1VVl98R+fnYbGfoyZJUciwNyvClAJbK/K
         nYyAjYLWUOcGznETKPHCx4z/6FOSd5HS3/gasAdM/PIEkrq+ldfcYv2FP57HVxEB0UAA
         QwJwt11EMhAfgqc0VvmDQJJkk+e2wg1CZeZu61t7ceiSA8VQG+p0Wr9m3Uup43wjq8x9
         SvKw==
X-Gm-Message-State: AHQUAuYtfpBc1mCV/VTkLptmZy/BNu5Uz4qBeH4TRY+So5SV929sMaXN
	jl2i+WikFNa746hUzvHLqOWp9ss0xt8=
X-Received: by 2002:a63:31d6:: with SMTP id x205mr7473594pgx.41.1550901299510;
        Fri, 22 Feb 2019 21:54:59 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id b197sm6791192pga.89.2019.02.22.21.54.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 21:54:59 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bhanusree Pola <bhanusreemahesh@gmail.com>
Subject: [PATCH v2] Staging: fbtft: Alignment should match open paranthesis
Date: Sat, 23 Feb 2019 11:24:37 +0530
Message-Id: <20190223055437.4249-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Clears the warning found by checkpatch.pl from various files
WARNING:Alignment should match open paranthesis

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2:The capitalization in the subject line is corrected.

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
index e463b0ddf16d..60cda57bcb33 100644
--- a/drivers/staging/fbtft/fb_tinylcd.c
+++ b/drivers/staging/fbtft/fb_tinylcd.c
@@ -38,7 +38,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0xE5, 0x00);
 	write_reg(par, 0xF0, 0x36, 0xA5, 0x53);
 	write_reg(par, 0xE0, 0x00, 0x35, 0x33, 0x00, 0x00, 0x00,
-			     0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
+		  0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 	udelay(250);
-- 
2.17.1


