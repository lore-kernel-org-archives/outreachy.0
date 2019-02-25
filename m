X-GM-THRID: 6661070369526382592
X-Received: by 2002:a63:6b41:: with SMTP id g62mr6776438pgc.47.1551104124059;
        Mon, 25 Feb 2019 06:15:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6152:: with SMTP id v79ls2941466pgb.12.gmail; Mon, 25
 Feb 2019 06:15:23 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYU/qGn5kGKg/o6a00OJZjNtUTLSwHxLfNcN/EINAq4lBiHh4evRyZdjHlW+k/JEjvCGHgj
X-Received: by 2002:a65:4b85:: with SMTP id t5mr6680618pgq.112.1551104123177;
        Mon, 25 Feb 2019 06:15:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551104123; cv=none;
        d=google.com; s=arc-20160816;
        b=1D6iXwxZUCRGwwCA+SsLG5R5ngm1tfTDN8jI96Zcu1XOHUYy4l95TK8kUKBwe3ylvd
         MgJ+0kYUFpOk8WidKX+stxg7axqHkuKK4pmEH8DwHTnxeym06yYI73TKqV767vANtUnn
         tUYQYMbfuBzfHT3+stA8JIlrgmMslkAoaF8zA6gr6O8mfFao+FPHkzRMyp/oepScIq9M
         XcfeP5zvube3Uxn6ZK+lFLVIp1uzEX+zzsI0Et2SXgIdi76BMU8nEcW7X3efCF+nipjD
         94Z7+ShCGbAaoj5zpAC10NrwlegQihBCiTjVTCzODqWoG6pL9VlJSwkHxi02R1RyKrz6
         HYtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JwxP4MMHcoKTvzCiz26iMkbhCKdQ/zVT/SwzLQRKfXM=;
        b=DEMn4zx7DF/xLcb6/j0tXutZXGBH8dV9dflz5A8zbcNm1yaJu93bbMJ9p3tbOzcsgU
         QewK/g2fc/vtkKyROs43g+GD5JbrlbRQMviJEa0OiEY5swFUtvHDRXdgK6F49cUua5/w
         +s5AOKiAROJPw8B8GHt2DrhR7IskYfzC0KezRbSk77zU5XNoSW/f2JnsKo/5wnOoBvrQ
         Ke8oFDKfGnmZTJ+hw4EFVDjE4m9ImqH3sgnUJssp8JO60K9/P/x8xLcKagC0THC4ekUc
         XeoLKruIgCmzX/GEI0ts6NSd5GyqRCpNXQ/37pEAVF3Be26tzw+US0NA8oyG/tm/T0oF
         TIMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ax9mACv0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 23si532253pgc.4.2019.02.25.06.15.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:15:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ax9mACv0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id m10so4552175plt.10
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JwxP4MMHcoKTvzCiz26iMkbhCKdQ/zVT/SwzLQRKfXM=;
        b=ax9mACv0LYXT0q/xLr74t1DgjWcsm265lUA49Z+YisIuoOwPxm/h6VQkDB7gmUYzI4
         dpbKhBEoDSJ1JZa3MWVCxOZ6Bhyq3VtfWhokYP05p2z2X23HiHpR2tid1E88AAzENir7
         8f/Krv7SGJk61VVHumCvv6KeAIggqNZGzWCDOs8oPCq/9HVX+Nc4G/Fy++Q9RGTxcyPq
         6MsGPoxAZLUj78ADIoi/6baK4hKXlCur72xa+BbtM6tpJCvvxKqkWkcYjrXlDlJpkiQe
         ir3eC8Mm3rRzS06MmMiuyA9wF+OCgcxelttArIjhTQsmgJn4CVIvgOM9KUX0xndmor7y
         r1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JwxP4MMHcoKTvzCiz26iMkbhCKdQ/zVT/SwzLQRKfXM=;
        b=YlQd34c/ljnRSid/AauMSCshK3sNwz22L5W7AduY9HkJBbr8CVnO6IbBHGQx6k55np
         8vL3SoJ2KbCyZC25KuwLCfaLrUGgcTz+VEPK6Ukwg79al6TKglcJqvyIJ1QWls6v2nbE
         N7OkJJ7sAOsUtpS79XBKjD9oyVtdT+ab1EVXz8dgEettKqm72+ns9RaTlYtdu/2rUPQu
         w7EoIag+jyJV9PORbUpqGTdcwYlXBLuniVGaMFvXhKlrZEF703ZGBPgOclC/0va94Cdq
         WgJnpn4UuytoZ0cmhPc/wtXHIIGqLE4+Y+LolxmMfG5nEnP8K+BJt0q8kPsAefZHVacR
         b7Ng==
X-Gm-Message-State: AHQUAua9rEIe1b4Bb6cBa9a/wpcMzYRT5GlTAQK6mww1ODElk/DgUhz6
	jMnxi1Y3gWj9APhfoYYGhB/dKmd0iK0=
X-Received: by 2002:a17:902:e409:: with SMTP id ci9mr20146528plb.221.1551104122522;
        Mon, 25 Feb 2019 06:15:22 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id 63sm22989802pfs.65.2019.02.25.06.15.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:15:21 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] Staging: fbtft: Alignment should match open paranthesis
Date: Mon, 25 Feb 2019 19:45:07 +0530
Message-Id: <20190225141507.6925-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Clear the warning found by checkpatch.pl
WARNING:Alignment should match open paranthesis

warnings in fb_ssd1351.c and fb_tinylcd.c are removed by matching
alignment  with open paranthesis

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2:The capitalization in the subject line is corrected.
v3: Commitlog modified to make it imperative
	
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


