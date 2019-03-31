X-GM-THRID: 6674542859228545024
X-Received: by 2002:a1f:a4c5:: with SMTP id n188mr6367843vke.26.1554038139170;
        Sun, 31 Mar 2019 06:15:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7c4a:: with SMTP id x71ls1444076vsc.0.gmail; Sun, 31 Mar
 2019 06:15:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx9BhekwkjtPjzVhjeje7y956pjo+zakH721aZJlAGd82BCqaQSoj754gNKC5MsNidAQytm
X-Received: by 2002:a67:7f48:: with SMTP id a69mr6595016vsd.34.1554038138531;
        Sun, 31 Mar 2019 06:15:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554038138; cv=none;
        d=google.com; s=arc-20160816;
        b=fiZv351FuzHh+PiOF8mSyurQufSXW8fmY7b+bhOktbbmmHiS56IM3ob5+gA8cOy9hH
         OGq9hnbJdHGDNMWw3pAFCphE6ePIuRZCbyzXNhaCp6afea6b1IwU36CIkiYnjGaaoRXa
         O5dW/W2/Kaa76imt5oR79Y/y1afohwdWcSm+LZ0N7PkMY39g3FIE3VcyoH4PWbHMER8x
         pxH0TM0N+JZPhsKZgc0LxL9a3bev+4eN6nwjEpGAEkaR0GPzPJiTA2zTETVoiqzOKI5n
         XZi4w73jJsqaREoSiKLslIoh9yoA0O3OuF2Mhu/RPn6VgAtz21Hwzl3aieU8SpYzmiGH
         7KtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=vISd2Ql2YbBBZAxPhyBckMey7ehpTpwNGYzQzGU5jbg=;
        b=A8IvyaWchm7XXyGlGOBmIsFIRov+nKc2AoxeAXjncBHuNtjdIuKd7VulNDnE2GoqpN
         nXyj2DKj6IAh130yxBx14OR0rFlkyQAmPISdtCbcvawL0LOuVN3WRMYjzSe1WNyPWYk5
         8+/CdaFbW5eGBjzRb8xQgO8+FxKiic1qivt3IqnmijeoseBEYCdxynVNOkKuJqFAK61E
         La+NyCvqQXBBh0I6AiRdFScBCR34dJUOi8nj9x8Vcg20dobmD1ov6mNn4v4tGDer0Amh
         BopmdvOplxDI1QBjW8XvgN6BfmBT6XEryZKpSePa+8zDag8cJP5PAH/O9vZZBmbhzMPd
         cZbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fRw1k64d;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y8si492240vsc.0.2019.03.31.06.15.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:15:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fRw1k64d;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id 8so3209721pfr.4
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vISd2Ql2YbBBZAxPhyBckMey7ehpTpwNGYzQzGU5jbg=;
        b=fRw1k64dnmTavM+XifoFnbF31fdI+ZQnjrc7WCgWJ1quNhjiSGPj7i5g2dGt9VAyKU
         e2Wm46reWhXL2z3+E/vuPgZXi5xzdMrhsLZFezwqT99T5Jf1Gi1RWK+4OFrhYpx2Errf
         UX02wJpIBhaYG8zXolUhFZorDyp44jQgaebjH8q4i2Oj3ufrv2N8d3YUWLGdn6ogIlov
         IITFr1ukU246eT4qgj+Ni5F3dUOQu9zUZJ5AdZ1yVfie6Z7kmPkwsXkDXFTY1t4eEJI7
         8Ihune9hCGXFk3XwSrVFbB2/laJQSfI7flSULGUnCuVyOWevmYPwd75/3M3HSB88v2lx
         YY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=vISd2Ql2YbBBZAxPhyBckMey7ehpTpwNGYzQzGU5jbg=;
        b=bAcI3Zvq2ltFlBGnBPubIM073M2ZaMyplsMViBHs9WgCLIlmRQ43RkMvwOekDy0r4h
         kBx6IXdnjTHy2dXxtMZHUdPTi3Fj3UGcApNMQU62KK/QgjL/bd8GVfnLmvELlAeNPKRY
         K33ZlAEmHfiOBOuzX9FvJFJUop7hf8vD5HebAkGpJbZpMt1INFUub/aapXdgNTMPiI4t
         faib1b5UTfW36ETF3w0kPPSXHI9Tuo27reFUvo2y4B2uglYJ7Pz7feuS1IZO+vbbxMiu
         4A20DHO/6YV9zheR93RrCf2gsmJrrwzAwUKTUg7AbuWnlD7zCZm9+SjO9DeTxB8mEyMm
         zJ8Q==
X-Gm-Message-State: APjAAAVek+4gpb3WRRhvzLoju6EXr/4lY7W7mZJ/tknyeOh//w8DmnXn
	J0NcFLN8ABkgUyq26pvvTAwXQRps
X-Received: by 2002:aa7:8212:: with SMTP id k18mr2102885pfi.50.1554038137384;
        Sun, 31 Mar 2019 06:15:37 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id v6sm10085946pgv.92.2019.03.31.06.15.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 06:15:36 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 6/7] staging: rtlwifi: halmac: Compress two lines into one line
Date: Sun, 31 Mar 2019 18:44:52 +0530
Message-Id: <a94f301af01c055a8524ae77206fadd9f6e524eb.1554037161.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
index 0bd6abd..0ae0d02 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_88xx_usb.c
@@ -192,7 +192,6 @@ halmac_cfg_rx_aggregation_88xx_usb(struct halmac_adapter *halmac_adapter,
 u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter *halmac_adapter,
 			      u32 halmac_offset)
 {
-	u8 value8;
 	void *driver_adapter = NULL;
 	struct halmac_api *halmac_api;
 
@@ -205,9 +204,7 @@ u8 halmac_reg_read_8_usb_88xx(struct halmac_adapter *halmac_adapter,
 	driver_adapter = halmac_adapter->driver_adapter;
 	halmac_api = (struct halmac_api *)halmac_adapter->halmac_api;
 
-	value8 = PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
-
-	return value8;
+	return PLATFORM_REG_READ_8(driver_adapter, halmac_offset);
 }
 
 /**
-- 
2.7.4


