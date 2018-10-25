X-GM-THRID: 6616190768823402496
X-Received: by 2002:ac2:42ca:: with SMTP id n10-v6mr23946lfl.16.1540451955769;
        Thu, 25 Oct 2018 00:19:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:d75e:: with SMTP id o91-v6ls307942lfg.26.gmail; Thu, 25
 Oct 2018 00:19:14 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d/NwDjKGTY0eCbeE9/lmRUOwmwmM7ilq1d+JCDAtyMmJ8PfdKZyS5WszPqCXYYGTEsXDlz
X-Received: by 2002:a19:519a:: with SMTP id g26-v6mr24070lfl.2.1540451954829;
        Thu, 25 Oct 2018 00:19:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540451954; cv=none;
        d=google.com; s=arc-20160816;
        b=vfgkKT8iwM9Cl5GJkg2hlEz2ZGjv0S1fnLo+jummTyv4se2cPj+b66L6pgw/tFn0om
         7FSw+WidQHRI11QBP4XzS7lnusJWTWgx7ILUZM1wiime2m8RRqO8wiIrnG06WhBXuRdI
         7p6YNEi2Rj8FVQTBV1sXg0FMPFSTSWocl4+Amx3dANLdu7LokL5dxDWMzOgwjiauzyS3
         Ja6XfUuX2GWxQb/FyfkocomJJ/A/qPH9WTvuu01o098XaTysA9k4jK8N3K6LnTfs0X0/
         8Ikm4hINQOULgWsjNuNIcZqKIC/hCpZSdA8kpIxCEJwhnLdNjtTAcB0y7TMeTSJxemch
         FWQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1AJMaodcDr7zxMHZzPE6xFtYuqdz4Dg1j43H59dq0og=;
        b=VaAPLlu5ajjZjy9zoeJ7RW1pK8tmYwEJySVD9w9jRKUjvmiar6VW3AIkrIz853Sds7
         S+qOGOPcckvQIucoebzFblRhqofH1rFNXxoJTWFq6SbYHm0lwuQAsMWpep2n+gkr/OMa
         PTBAzLeIWhmqTbXKRn5cRBGPpc/MWlbI2hCx9lhpBZYHkG1eBTDJP/yFXXcUpdASyzPL
         dYS4oBKsRBwhqMlwH8mjsXhkNLKXpu8znBx9vvHg1RGnVS+TrobClvwe16HGLPW9Xemp
         XK4zA/ccObHV273o52vksujDhWiNbw6KruV0GBgoF31oGOMK+LMP62tpHrHsNJhU1QzG
         F7aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t4qgrZ9G;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id m9-v6si238281lfb.5.2018.10.25.00.19.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 00:19:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t4qgrZ9G;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id q6-v6so8099824wrw.11
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Oct 2018 00:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1AJMaodcDr7zxMHZzPE6xFtYuqdz4Dg1j43H59dq0og=;
        b=t4qgrZ9Gu0PQG9oJWZucMciJlq83Tbq6AwCfaWav/1qO3r/al9KtmeHhaulSusQq2P
         LWpxA9R/aGaDqNpK7+NH3jVVlSTLQC0PCRp25EQtZrnRDhF7LPX73HaGwaAO4SltJtlZ
         HHdikSeomx1YBz1F7S3IskNKyYXcFaZDGeYqXdJhoj9SRnmtcfwrr3cq67xk+emr3DYV
         fR7UD2ZB0fHf5BT3QWxGA8FQYy5GWgohSAMp30pxVo8eu9foYAEljaP7JQPcG84zd2gg
         1ktpjJWkDuz3ZFuPNH4A4zOe49kiAzlvK1v1M49AmoLAN1m48i0nhu6gUdBIWesxCbDT
         u5mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1AJMaodcDr7zxMHZzPE6xFtYuqdz4Dg1j43H59dq0og=;
        b=SSK++3xIR0/IMAKnP9OmmsWpdOkJdha7oumfTlGgb+NUTE973PJvARWrLltNCpiUi4
         91NONB4+nOkhpteNLxv7RhECeHjDV+ksXwH9evQoQHOrqY8i4hWCsLjAvosvp6IxgV2T
         Cgymy4GYoi4NpMc7TqXSMcnRijnxAhkIFk/hpyy9fZ7rjsw3rHwqve7vxmthW/88lmSs
         YhEhakwL7uZ2tja25UXccrdR6HuhBra+svSkltGOU2DJ5jVVEEYKQhd7Qs1u7BQsR5OY
         tW0oezg4hvnqsBVb8ugsHauqkQdSekhpXIJJr2PLtytufrw+gSAVnu2X9fXZdH185FP7
         8E2Q==
X-Gm-Message-State: AGRZ1gI3GOHZQKYhTJL+0i4a4dJ+DDlw8edcj32mFgH5qWn+VaGmCi/R
	YxO9IfMNsM4zNcpmdAzLGYRdnl711xk=
X-Received: by 2002:a5d:6a47:: with SMTP id t7-v6mr569828wrw.78.1540451954197;
        Thu, 25 Oct 2018 00:19:14 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from xubuntu-vm (host86-167-247-131.range86-167.btcentralplus.com. [86.167.247.131])
        by smtp.gmail.com with ESMTPSA id 195-v6sm368128wmx.21.2018.10.25.00.19.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Oct 2018 00:19:14 -0700 (PDT)
Date: Thu, 25 Oct 2018 08:19:11 +0100
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rts5208: Reduce line lengths to < 80 chars
Message-ID: <20181025071908.GA3336@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Reduce as many line lengths as possible to < 80 chars
in order to fix checkpatch warnings. Some lines not feasible
to reduce.

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
 drivers/staging/rts5208/xd.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index 1187c75d764a..c8b78cc9eade 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -1155,10 +1155,14 @@ static int xd_copy_page(struct rtsx_chip *chip, u32 old_blk, u32 new_blk,
 					return STATUS_FAIL;
 				}
 
-				if (((reg & (XD_ECC1_ERROR | XD_ECC1_UNCORRECTABLE)) ==
-						(XD_ECC1_ERROR | XD_ECC1_UNCORRECTABLE)) ||
-					((reg & (XD_ECC2_ERROR | XD_ECC2_UNCORRECTABLE)) ==
-						(XD_ECC2_ERROR | XD_ECC2_UNCORRECTABLE))) {
+				if (((reg & (XD_ECC1_ERROR |
+					     XD_ECC1_UNCORRECTABLE)) ==
+					    (XD_ECC1_ERROR |
+					     XD_ECC1_UNCORRECTABLE)) ||
+				    ((reg & (XD_ECC2_ERROR |
+					     XD_ECC2_UNCORRECTABLE)) ==
+					    (XD_ECC2_ERROR |
+					     XD_ECC2_UNCORRECTABLE))) {
 					rtsx_write_register(chip,
 							    XD_PAGE_STATUS,
 							    0xFF,
@@ -1751,7 +1755,8 @@ static int xd_write_multiple_pages(struct rtsx_chip *chip, u32 old_blk,
 
 	retval = rtsx_transfer_data_partial(chip, XD_CARD, buf, page_cnt * 512,
 					    scsi_sg_count(chip->srb),
-					    index, offset, DMA_TO_DEVICE, chip->xd_timeout);
+					    index, offset,
+					    DMA_TO_DEVICE, chip->xd_timeout);
 	if (retval < 0) {
 		rtsx_clear_xd_error(chip);
 
-- 
2.19.1


