X-GM-THRID: 6758464167600979968
X-Received: by 2002:a63:c406:: with SMTP id h6mr13172701pgd.213.1573577751944;
        Tue, 12 Nov 2019 08:55:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7c10:: with SMTP id x16ls823208pll.0.gmail; Tue, 12
 Nov 2019 08:55:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqx60W5rWiHyuTjAvd/5iLOrt6s5VWbJ28XULCKcIzudz6nUpyfBCbLqakdg6eDQISPah0YB
X-Received: by 2002:a17:90a:77c3:: with SMTP id e3mr8086578pjs.14.1573577750785;
        Tue, 12 Nov 2019 08:55:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573577750; cv=none;
        d=google.com; s=arc-20160816;
        b=cK8oK8byaTFe5Dsd5CheYiC2svZbYFbw2jfxmkd9kMPFAwGIkxDvgWLhU5x8Mp9M5c
         uzlXoyAevIC9eg0CmZyOs9J3nDiLEpJTGy1jclC8QjlDnbH9A0EImwmyvJxj3sNL4bXk
         QQgmgXgg3ZCVggZ+75Tq9o2zuCCIyvwFT3mPXydef8BNP+7aMzs3rsdmgqwL9aRcYYrh
         q1JnmS4V8u5urOs5IT1LSFrznvzS8n9tlgkiL6BZuVAKjnQgF/Kf3SB9kiObmAkvQGQi
         UHk1x+TT/3kWMb/Rpr8v8r6glRxQRmtRnC4seBNxpjiVQuQlPwH6K5p4JUL87LkN1TBX
         Xf4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=BlMAkrnyKu5xWVexX9Ig76FoxRSKHEIU4K4rFq7jLsk=;
        b=if6/s6tqxLkDG5P5ycmEhzjFB8/OYky0nl8mJS9T/9MVdYSRcC1P5EtApWk8B4wMtU
         c8eBcBn1DjCo98uDfZ12NB3bBzbYELVKCK9C1LZ9c62n0sx1f++Y9mOrYxcm2m04zrK3
         qYAKg0besWuNMcW3D3jEKgUKRqIT4Z4UyUWFqhesCLJCE+xZ6KIi66S4/u+WPcXRvF6c
         yCOTUEPArAJP6gb5bY7bewmw2lwRQZdDeKNBvBGOxB5gS2HVES1QWRhUcnTTKfMoI3tC
         oW9h0piAlVy8u6qvUlYyZvq7KKuBzzpYfSxkjFIdb5EF6/1uZpKVWSvQEcRZzdt2DcYU
         BuZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EflmrY3H;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id s144si1351422pfc.5.2019.11.12.08.55.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 08:55:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EflmrY3H;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf43.google.com with SMTP id g12so6645152qvy.12
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 08:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=BlMAkrnyKu5xWVexX9Ig76FoxRSKHEIU4K4rFq7jLsk=;
        b=EflmrY3H+qMQUDULMQBmeTImNrztCWF14X6J4HahrD2sJPXQ9iwf9j3m6ryXjgEXCK
         3C8ohaLtqvUtrfb+RPNPrvWgozS5sM6enZkzjISxTDqIqie1AWNxhX9FjcOEzWNXu+hj
         mHNGa62t+dWFSVQXVqXjqM1h13d/HI8FHjKFxLRc+5V9d68VKEuMhZuVC/srnZxMLVo3
         04Ji9SKYeaKKFAD4Il1W9+nxXzB2cYHAAejS/+DhtyoOZqht01fdCNUMlmJQw9n4KYaU
         SNrlBFCD4ucm8wuRPe716YFiT1lqUmNLRlJlwTDlbqCNPjadTntN6N0kBzwzV8xKaOFY
         84bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=BlMAkrnyKu5xWVexX9Ig76FoxRSKHEIU4K4rFq7jLsk=;
        b=SShwockQrSQ4EkJzxrl9FQMeqlNfslLwWA97gZFHsejvGYdBMWdiAakZlBCKtO84Qw
         ITK4QHxVGmMqCvwSgtZyypC/b+S49bITlewi12xx7CVDiqtRrzJeXgXRt/amWlPnlv8b
         m+8zfoyafGgzu6RIdjiIineElesaRNR5/5h79VnwoDRGd4AqKGqEB4AQirYEu7ac4EPE
         33z0vBlRAiz9e65BIyHJn0AeTw/VLewGZvu2UsRI0nlBUIXLsB9pHQJ2az0Ube9zzB/p
         mbsTutR6tZmSI7O914X4cHr7OpfxouxgLEGg/TVLz0Js8GidrWhc3Z4/aQk9jSvH0uwY
         +inw==
X-Gm-Message-State: APjAAAW5He1/vSeD2XwqsTwUwFSmxjqrVmC4ziGewZJnFgkiVQ7ToWeH
	1CaGXqzy5rvmv8/51iUNygQ=
X-Received: by 2002:ad4:53ab:: with SMTP id j11mr4372671qvv.47.1573577750006;
        Tue, 12 Nov 2019 08:55:50 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-154-98-65.dynamic.etb.net.co. [186.154.98.65])
        by smtp.gmail.com with ESMTPSA id n17sm9737301qke.53.2019.11.12.08.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 08:55:49 -0800 (PST)
Date: Tue, 12 Nov 2019 11:55:47 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 8/9] staging: rtl8723bs: Remove unnecessary conditional block
Message-ID: <08de17788f3fa0db1645319720082cef412356ba.1573577309.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <cover.1573577309.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1573577309.git.jarias.linux@gmail.com>

This patch removes a conditional block that had no effect.
It also reformat the affected lines to set the right indentation
after the removal.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 0f5dd4629e6f..b4b535c66bae 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -551,18 +551,13 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 
 	pregistrypriv = &padapter->registrypriv;
 
-	if (pregistrypriv->wifi_spec) {
-		/*  2010.04.27 hpfan */
-		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
-		/*  Timeout value is calculated by 34 / (2^n) */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	} else {
-		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
-		/*  TX/RX Balance */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	}
+	/*  2010.04.27 hpfan */
+	/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
+	/*  Timeout value is calculated by 34 / (2^n) */
+	valueDMATimeout = 0x06;
+	valueDMAPageCount = 0x06;
+	/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
+	/*  TX/RX Balance */
 
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
-- 
2.20.1


