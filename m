X-GM-THRID: 6663618170330284032
X-Received: by 2002:a0c:8776:: with SMTP id 51mr3001244qvi.1.1551826128221;
        Tue, 05 Mar 2019 14:48:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ba29:: with SMTP id w41ls148475qvf.6.gmail; Tue, 05 Mar
 2019 14:48:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqyoS6cRKZeXLElg3PX+cxDxQ/VH9sOAxLix5FyGJFPfs7JH/xQwG0bQlIpXavpo/38JP+vY
X-Received: by 2002:a0c:bd83:: with SMTP id n3mr2937481qvg.5.1551826127782;
        Tue, 05 Mar 2019 14:48:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826127; cv=none;
        d=google.com; s=arc-20160816;
        b=i3EZDYnSM84SPkCsIFK5qkF2bkh2k93GiSPf5FzkHPA9Tx87HjjfSRG8tRg8L/ZaE2
         kgKulMPrNNKR9LdXgYuuNkL7fD1d3jJN8mSnUUY/m2mD1OSxneqmA44taTOl3OiQpC4y
         APp22stNn0xnhpvRycDiDzBOAFAPVrm7jrUNKESaAmj03gLKjynHl/FZgKnYe3ScW6ay
         Vs3DrsrXvu15O6DK0S7l5UHzPM3873aC1i/8dLE8MJffAh1LPP7cum2KcPccmYd7vy+x
         Gw6R8c8XxaKBFB/F4HUXk1T4S07pquik5unh5lgv4NYq2C8tIQ27TdSwrZlSR11KEFOO
         LwiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=8vhKNDvW3typWiCsO//NPgqLyW6N9dkqrx8qEtBeB2o=;
        b=1Ao4tHBDrcjKGWVebnZDLROLcfMJyXQ6tg9r72i8HkqovEOqd7MFobQzGyY0nm5Zts
         CobYssVhQlsCYZmQk7pMvgY1KE9qiGgKCqyENRjcFPDyQRsjhpzLwUvyFzspMXFDGrUp
         /oPG9XvgphamH0pC7MTJ5IaBMrI9DMKuIO4/RCpFbPEYXSiw0Cn7/OfUBS6Zq0lLGXfu
         zaeo8jGv70YLzNY+z0pa30FPx4wfVCVq7JuRsLMR+wEtkk9YcSgQamX98W+cyRwltziZ
         AG8Qdi9SG300EPVDB/pM9t41CagPG8HOFOoYXcPDjbaIxiwms8RwGt+eDiNLWRM9G564
         2e8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EQKq4hmP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e12si284712qtg.5.2019.03.05.14.48.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:48:47 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EQKq4hmP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id e15so8944532otk.6
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=8vhKNDvW3typWiCsO//NPgqLyW6N9dkqrx8qEtBeB2o=;
        b=EQKq4hmPzqXr5hvEuDe+jI23ojdrOOtVDgybK5RSMy7oWsVsTdaWmQ1O8DlPFpw9FB
         wxCbMh7FzgGP/G4ShKvorbZxjDEkgQC4O11GcY5iy+DJqwNCTqFhEZlNymVemSf4ujLz
         O44SzB1sVsShtBEaNg8/NL/zD1CqBTP6FbCn7afxbev5nxqbBy4C7Qj4SLHKg6tVqA5i
         2ivaEi6zBtyC0zXpCORPgFmmCuo+amI2FJw/HLTIDE8/z0nfX4WE2CmtZPB2x/qk7Lnk
         fq9NnYUjkwL2ai9xkRPA01LdlY5iEljastlfAWHtc9j7XuHtatUyLYR+Vs2qYIwrWKy9
         XFVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=8vhKNDvW3typWiCsO//NPgqLyW6N9dkqrx8qEtBeB2o=;
        b=od2cPoTk27MGDqY57MkKqzWXTP0yCIKIG5bDaRfQUeDPqX5jk2f4Ktk282hFaXdvkI
         pwW9IcGGBAWN1lFuwqlVRkzhIYNJcyHdK6QthgYiMk9yG5PwD11iHKzqLnWDQguv9d2V
         /9Z92ByIw2TF6p4zxjInaBAOa+xWGM+kCCS4gzrDlWfkn5F+Te18ev4hJcHT3Qmm+tMZ
         LT35m9jZfWHVaPi1gHwmTe1jQASTErVYwIY9icaFtSdpdkHQDdxT34I7bPuv8SQgxhGg
         zo5F+Sc31gIQ7eSNVFU56RPmHLw69fA/KnG1RfYAFKPOtsGRhzNlLAdPXq8R//0WU/zx
         WR2g==
X-Gm-Message-State: APjAAAVcTx35Fdmin+qeP3d+CuwPvjB4ArdnXIDaTvJDPWEBi6jPWbAS
	o646tpN8F31oVASFtHNk6SE=
X-Received: by 2002:a9d:5c8b:: with SMTP id a11mr2407265oti.64.1551826127206;
        Tue, 05 Mar 2019 14:48:47 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id u21sm4124051oie.29.2019.03.05.14.48.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:48:46 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 6/6] Staging: vt6655: Align function declaration
Date: Tue,  5 Mar 2019 16:48:28 -0600
Message-Id: <1db72c339e3e19890d11e22caa6fe87a2d8ec5fe.1551825578.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
 <cover.1551825578.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551825578.git.madhumithabiw@gmail.com>

Fix function return type and function arguments to improve readbility.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/power.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index d6c581b31569..9725de3bca6a 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -48,11 +48,8 @@
  *
  */
 
-void
-PSvEnablePowerSaving(
-	struct vnt_private *priv,
-	unsigned short wListenInterval
-)
+void PSvEnablePowerSaving(struct vnt_private *priv,
+			  unsigned short wListenInterval)
 {
 	u16 wAID = priv->current_aid | BIT(14) | BIT(15);
 
-- 
2.17.1


