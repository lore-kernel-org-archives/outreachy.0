X-GM-THRID: 6663862445889552384
X-Received: by 2002:a67:ee0e:: with SMTP id f14mr7373527vsp.0.1551551382233;
        Sat, 02 Mar 2019 10:29:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8442:: with SMTP id g63ls2703578vsd.5.gmail; Sat, 02 Mar
 2019 10:29:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqyfeyxisgagdUiRCqzpDymhoqX/2F74EMHQRC9+jinSu5oj300F3hTKkCF4v7GrscZMJdyT
X-Received: by 2002:a67:fb59:: with SMTP id e25mr7257730vsr.5.1551551381586;
        Sat, 02 Mar 2019 10:29:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551381; cv=none;
        d=google.com; s=arc-20160816;
        b=DQO0WGP4TWp5pgCmkRif2LzMtMdeOm64vigUTzqmpAOT/27+N56gzaO0iB3UGCxu+P
         selL/MN4jmbc454UGDk/vcBMrOxSL6kChZkxo3X74tjCEtlbCRh/8C27P/pvfpsV/Z0U
         D3SxF705+vhIiVnJ/q+oJOAqbllRG0zrE6RmkzY7gOXcNF6BvDDzNFXHac+5UQOaUevR
         636PRYF+rt4UTnM1o3/STfmp0roFY6R/oslIPe3lL1x4wIV8+1QbCq7Nhlo5lGHpjBz7
         J4QQ/dtsA4XAZDO4pXZ1tiGzqb0jUTXntiteNyESiHwbMC6YN4/NJoWDjSH4FXtXWHE4
         nbkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=TO+JA1Ursnq4agWgrJYsbcLPlZxSTlZMYtlWNpAMy48=;
        b=niV8slhwN1e1JexTTdWjOmd8np0YRo4FOFp65TFsG+is7lLHFCFFtTrIjFxN5awrQ4
         j+wsdF2whFAGUyqKYIsGIgSbt5hAv+5LesPMa7w+cSWVDbf8poHr14W5Yu+JviRGwNst
         0LlbH02ZQlXLPGFXcn6LAEZP+UIzqGIHx09IatitOY2Mw31WM68Q5/NRGzj/wj+bW88Z
         xiSHK+ldXbGpWM3igKceDd31s0AQjrYsr+Bq7iyJDltqF0LJdXnra7yNhQ806YJ43G9q
         GOWAxJgLa5H4sioPAYlk9UvPm6ijzwBcJCJSOdchAS7pIgPBwlEULfAmRuIX/Nqt3us8
         pqHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZa+P3VF;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q85si65580vke.5.2019.03.02.10.29.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:29:41 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZa+P3VF;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id n74so497152pfi.9
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TO+JA1Ursnq4agWgrJYsbcLPlZxSTlZMYtlWNpAMy48=;
        b=CZa+P3VFi7DkjWrNoMYHDAsK4n1Ahxniv0miXpd25AjJaNQLQqRPsEhvKZpdFEBO6W
         OwJUUECbJpGKwYw8MFVu1hAa5Vqt5U/VhCYewQS92iDbC2AP5jml2hyalOVNOuxTbnUI
         rW7cQepZde+F0cksndd7Bq+SOMjQ3rjTcK7QQz1O/VW3RJpD1gWr7fNAiPWPMO90HgiQ
         g3wn9e9QmcLhNSMYDPrR6au3XxEqfNokp2wbRKxTSlh4CkuJ9ZtXPDYe5FgS2mjszGPn
         WbnOOrjRofCTQxc2h6riJAZlmff7Wk1XEBubsEsPwVg/Z19dZSNc0jpexNKeOHoki1bg
         b03Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TO+JA1Ursnq4agWgrJYsbcLPlZxSTlZMYtlWNpAMy48=;
        b=mK55rwWJrNYUf/HIi1CbJ6gkRS+zkUx2m4aejFhAFS2oY0SVFKjcqnYW1mP1PiqY9h
         eVnz0p9VKPU6BGAWZPa5yQMlaI2rjaYwzq9c3nGnxDWIAEVDzHJOnHoBaBvhSIaha6V/
         7gJ60yeM7qVSoe9gj4eU8ovqc0Zx2LOEDjl0LxmXNCXBdwJJUS+kmDj2t7HNIl0+htMu
         tIEj7Kdhf43vN5SIgNrGaT2RHHeHUF+XpM/E8DMmVJf/JKkjuwcXJ6QvFZnX42fpFsnM
         scFtCyO1hE63/cxpmmDw7+vBsLn6KsGhUFOaKC0MwEjXC2+RQTQVpFtBzYc0VimZmZF6
         AbYw==
X-Gm-Message-State: APjAAAU8dgV+5F9M+5l5NVcJSvhVtb9nX37c/en83MHE+0/uo8vnwIEy
	6m2lOOdKmnVJ8xR07WUMbhg=
X-Received: by 2002:a63:c705:: with SMTP id n5mr10569217pgg.73.1551551380701;
        Sat, 02 Mar 2019 10:29:40 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([114.29.227.110])
        by smtp.googlemail.com with ESMTPSA id w23sm2197007pfn.60.2019.03.02.10.29.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 02 Mar 2019 10:29:40 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH] Fixed Warning: line over 80 characters
Date: Sat,  2 Mar 2019 10:29:10 -0800
Message-Id: <1551551350-111229-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/pi433/rf69.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index e19b9ce..0c189a7 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
 {
 	switch (flag) {
 	case mode_switch_completed:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_MODE_READY);
 	case ready_to_receive:
 		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
 	case ready_to_send:
-- 
2.7.4


