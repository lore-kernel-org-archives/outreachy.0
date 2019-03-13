X-GM-THRID: 6667786089217916928
X-Received: by 2002:a25:3b10:: with SMTP id i16mr14847279yba.70.1552464926875;
        Wed, 13 Mar 2019 01:15:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3414:: with SMTP id b20ls43570yba.2.gmail; Wed, 13 Mar
 2019 01:15:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRzkn/fitfeTk7rtD9CVOKprUtPXEfsXxzG3cy2Bfc9dk8OvFOUJDQFoyDA5Yx+fctzIZr
X-Received: by 2002:a25:ae96:: with SMTP id b22mr17574447ybj.94.1552464926042;
        Wed, 13 Mar 2019 01:15:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552464926; cv=none;
        d=google.com; s=arc-20160816;
        b=m6u6tqATn5PZ0GoqZAg7gJpTOh840I1+gng7apsBZaUNRIAySGaBzse2B30rjHDiA+
         5PhKSpOhGaJ6dfJxI8sVOGFBLIjhKtAAt5Eed44+GxwGUZJj9WLf6m+We2f6s8PKdF/v
         Xr6THRb0Hqe7jgYnNRGhEmg0vIoqOPNoKMZrMl2ZM4S9ut9K31is1o5F8ErQt+G9MBOk
         3bll7LpKnJ1cCjZPTjviTIUyovcFVQXecnCKM8604Go9X1yexEtupYXzaxyjj1rDfNHD
         IvO/DS6tyUocGwYh+9AvUJSkBl+SFM2olOS6ez6drl3V9rVDurdZhzZir4fQBmpivgt7
         Aojw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=usJIOl5LEd5eNCN7njtFme8DcJmcyVtvfxKcYJULF3M=;
        b=r4S6dYBH9Dw6jaaemTgo9Afmzwht4YTAycmajP+sisL6LrKeUGiKOU1PQtOWgZPPIX
         aevVekAj1ufsbV+vsyLiw4Jx/SqFiWZNhPtDA3eOIR8bh5rvjM0esPOuO1X4r3HTdEl1
         V5BYDg4kmk1bkeHLuih2WkfIVVFC2G9Kz8kNmp1TxXLoKkIsiZYn2qP+C+V+Pd7gWbXr
         IDg+oXoxeYfGfGNu8r1rSQT++H5fsqyLz9Vdzsasr5yeL4jd9vaFRBhSU9tIbRzr0SnT
         jCdWSFnFI7ENvhiiqFBLrKj3G5Djq3cybKH8F++pfO7mmwdxRfSRe0zvNlauEgL1i+Kh
         vGbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tLMNrj+c;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t128si554769ywa.4.2019.03.13.01.15.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 01:15:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tLMNrj+c;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id n22so844702pfa.3
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 01:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=usJIOl5LEd5eNCN7njtFme8DcJmcyVtvfxKcYJULF3M=;
        b=tLMNrj+cUM6N9ywUt0JW2ZWtKJdgXyI/en39BDG5AAhld5cQ+lg1CRlJYmd/X5nmzE
         6NFgMIGCSjEeDvW9/BRQ0j+6UpkVzHMlV3EdCJA7A3neDLuViaNT96OHgc4qrwqjjV5I
         nq8XW8tx5LYzMuJpviZVoaQy0lFOVXsnCZZfIFlbV+zvGEBFNTBDV1EvL83YsrIaJKsT
         cf7OtjPEYR4MFipwLo9Lw02dFerj/LvgiyTgVr3xPOvkNH5dpr250pMm1+bXXc1zIEKp
         L55oYV7rE2Zc3zqf6oXNDn6mHU746gLMVo3u9ncN6CRzo92mFWT+qs1g/QUj0ts7XQCb
         vY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=usJIOl5LEd5eNCN7njtFme8DcJmcyVtvfxKcYJULF3M=;
        b=FXCuMQIT4utb14cB6Hz4tiO3mJoto0hD5lpYrt7SRjrdOUAo5Y0LNgDwduJ8xcdzj8
         eMPkXfXsGh71/hwp9UQww7sasOvhlum2wRQHm4C/F0GTV/KebPM2aLPWwZJ0QtwVqcIx
         dP8SBrdq1wzBZ+6SbMz1LrcDToEXb2aGl+vaIeNOES8Vkv3xb0Vp5k3TNIM6MDzW06cQ
         vGhFV7FF9jIjLH60T+RbiUNOGXYXmc2VUsQZxzqKujqOpiHFZkfrm0JYmVUpCD/GhHDi
         k+b2vd56tLaAY0qbWoyZ2b02cY+1YGEjzed/4GBDodNDgck7cutqpOchJf+DT0oYfeHM
         nnqQ==
X-Gm-Message-State: APjAAAX/gtqSNbGkvxpMShfkqRlDnYPExtMyjeLn4YtaHgKERQput7te
	uM+zE7hdTmM9lome6Z40c/c=
X-Received: by 2002:a63:cd06:: with SMTP id i6mr39293909pgg.267.1552464925082;
        Wed, 13 Mar 2019 01:15:25 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([2409:4042:2e86:dc90:4c0:b2b7:2377:b784])
        by smtp.googlemail.com with ESMTPSA id u26sm15064217pfn.166.2019.03.13.01.15.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 13 Mar 2019 01:15:24 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v6 1/2] Staging: fbtft: line over 80 characters
Date: Wed, 13 Mar 2019 13:45:09 +0530
Message-Id: <1552464910-32765-1-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix the checkpatch.pl warning
WARNING: line over 80 characters

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v6:
  - Drop some invalid changes.

Changes in v5:
  - Make patch series.

Changes in v4:
  - Convert a ternary statement into a if statement.

Changes in v3:
  - Make the code in original form.
  - Use tab to line up the code.

Changes in v2:
  - Improve code order.
  - Make the code more readable.

 drivers/staging/fbtft/fb_ssd1331.c | 3 ++-
 drivers/staging/fbtft/flexfb.c     | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index 9f54fe2..4cfe9f8 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 		for (i = 0; i < len; i++)
 			buf[i] = (u8)va_arg(args, unsigned int);
 		va_end(args);
-		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
+		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device,
+				  u8, buf, len, "%s: ", __func__);
 	}
 
 	va_start(args, len);
diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
index b91b459..3747321 100644
--- a/drivers/staging/fbtft/flexfb.c
+++ b/drivers/staging/fbtft/flexfb.c
@@ -671,7 +671,8 @@ static int flexfb_probe_common(struct spi_device *sdev,
 			break;
 		case 9:
 			if (regwidth == 16) {
-				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
+				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n",
+					regwidth, buswidth);
 				return -EINVAL;
 			}
 			par->fbtftops.write_register = fbtft_write_reg8_bus9;
-- 
2.7.4


