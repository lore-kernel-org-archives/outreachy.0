X-GM-THRID: 6620379413564358656
X-Received: by 2002:a17:906:3041:: with SMTP id d1-v6mr2838895ejd.1.1541427213720;
        Mon, 05 Nov 2018 06:13:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:52c7:: with SMTP id w7-v6ls4032268ejn.11.gmail; Mon,
 05 Nov 2018 06:13:32 -0800 (PST)
X-Google-Smtp-Source: AJdET5f6yLam5fQh2ZVh9/yD/J8mWyYaDs8j8RPmslwaaQ4wD69+++n5pKc2dFecHqxEsOq9GRpW
X-Received: by 2002:a17:906:6091:: with SMTP id t17-v6mr2467207ejj.8.1541427212921;
        Mon, 05 Nov 2018 06:13:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427212; cv=pass;
        d=google.com; s=arc-20160816;
        b=S7a6AVlkrNIVw7Uxe6OQ2RfGzeeIZ6lNKnw5vmTIGsYHijX9KeDSmMNDnZVuo5FLXG
         v0j4R4MM9Zoig5a6jifG6P27TTdtgX7A20B/QSeeo+1vqwMLNS4qrtQfXB3HJ7YyAcf4
         oz48Onw1F4i86v7OGEJxJxpdFcRlMn5KC6Xt1ueQrfLzS2EbqN9zBVRlpd5CEZz/7Zvo
         PWQsH7Ul8ABW2psE9JtylbV0F1ASrUXvM/GqeIAebZPzBsmv9eXoO5h3UG+m8ggfIT64
         oZ47KIE6GUfz5gBT3wJzyZz/MbDygaR9PcF1nIsdVqwA3CmsyD+JSrMjPooyJsLkw7ge
         SRTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iQknmGpwaETOf9MfvfaX+xra+wKGO1n8fYotxl2dYg8=;
        b=Uk0gf0QEFJr4TxDBTgbndCdtrJRMbR7ZqRexbXWj4vbhmpH3iLRvfDQc2MdT2mwZQD
         cRvdX16C+b1j+/pgUCAW3E+O5SL3dNT3cEGHqel4pdrOWna1NX4PhNfR4K0znEkwFsCO
         HGqE1c5bCyq9fMIfIYkF19WpnW/LPOCdcBrTusSDzPC85hhclYvpfTUrpPMHKUygW8aN
         gMRYG0VLGS50j9/yHrKUjjkOYucQzWlRuwMPGkpJEFxOxde+CF4KwaIzU82Cm5fSr9Pf
         54R3SLAQgXOm2s7AFX4OU+TEhY5lhOYsXzhipU1U+CIMGG0NIsdsppSJEdkMslewQeO1
         Ymyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=dwojdgta;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y16-v6si1669555eds.0.2018.11.05.06.13.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:13:32 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=dwojdgta;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427211; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=X0wEjcFmruxSf0a68gvVo6KlL2ku2Xah+xnkXozC/ZajmHozpF9ZEEsjxpSij2FtEdx3jZV8xzVvN+EoE0kjVLc08NZwpGvPZtjJD6Nl5Tr7cIw5hPKmn+EujUKdWAQZ4R+AI05Ld48iCvV4oATObWd+QL1WQVqsCXaZ1uRGxgY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427211; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=iQknmGpwaETOf9MfvfaX+xra+wKGO1n8fYotxl2dYg8=; 
	b=Z2IVCe/jxb0WVHEC53joqROHi1Xbm2q9bGe8pG34Sqjl66l4YTYBoRYAAkEsFMjucXYEa9+BgdUnUK9tJllHV8QXuhKIYU7zAuKUtnN0EhJELEj60FPB+f9PyBJdXvzKvfTKnoktuEYiOQdvh7oTWnTpPwvdxksrzX5eiILrECE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427211;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1903; bh=iQknmGpwaETOf9MfvfaX+xra+wKGO1n8fYotxl2dYg8=;
	b=dwojdgta6/BZ1fdc7Y48s/AEuWjiSpwRZb66nw62WV4rPiz5n1q8zZzrnPklh40Y
	i+mOoaAiO92B+8kHW4DSeU9AIGHL2VD6gDlrapygleQBnJp647H4pPxo2P57ki4GdDQ
	D8Lc84dLQCPztT7J+Ui5aPXkV8DapHt9TN/GtVis=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 154142720987277.32501554020337; Mon, 5 Nov 2018 15:13:29 +0100 (CET)
Date: Mon, 5 Nov 2018 14:13:28 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: zoran: replace masking with  BIT macro
Message-ID: <f5cb20814f9f4ce4d4de2b1b5b972aca741eafd2.1541427136.git.code@wizofe.uk>
References: <cover.1541427136.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427136.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Replace bit masking with the more preferable BIT macro.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/media/zoran/zoran_device.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 40adceebca7e..1e6782b72369 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -92,7 +92,7 @@ GPIO (struct zoran *zr,
 	/* Make sure the bit number is legal
 	 * A bit number of -1 (lacking) gives a mask of 0,
 	 * making it harmless */
-	mask = (1 << (24 + bit)) & 0xff000000;
+	mask = (BIT((24 + bit))) & 0xff000000;
 	reg = btread(ZR36057_GPPGCR1) & ~mask;
 	if (value) {
 		reg |= mask;
@@ -285,8 +285,8 @@ zr36057_adjust_vfe (struct zoran          *zr,
 	case BUZ_MODE_MOTION_DECOMPRESS:
 		btand(~ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
 		reg = btread(ZR36057_VFEHCR);
-		if ((reg & (1 << 10)) && zr->card.type != LML33R10) {
-			reg += ((1 << 10) | 1);
+		if ((reg & (BIT(10))) && zr->card.type != LML33R10) {
+			reg += ((BIT(10)) | 1);
 		}
 		btwrite(reg, ZR36057_VFEHCR);
 		break;
@@ -300,8 +300,8 @@ zr36057_adjust_vfe (struct zoran          *zr,
 		else
 			btor(ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
 		reg = btread(ZR36057_VFEHCR);
-		if (!(reg & (1 << 10)) && zr->card.type != LML33R10) {
-			reg -= ((1 << 10) | 1);
+		if (!(reg & (BIT(10))) && zr->card.type != LML33R10) {
+			reg -= ((BIT(10)) | 1);
 		}
 		btwrite(reg, ZR36057_VFEHCR);
 		break;
@@ -407,7 +407,7 @@ zr36057_set_vfe (struct zoran              *zr,
 	} else if (HorDcm >= 32) {
 		reg |= 2 << ZR36057_VFESPFR_HFilter;	/* 4 tap filter */
 	} else if (HorDcm >= 16) {
-		reg |= 1 << ZR36057_VFESPFR_HFilter;	/* 3 tap filter */
+		reg |= BIT(ZR36057_VFESPFR_HFilter);	/* 3 tap filter */
 	}
 	reg |= format->vfespfr;
 	btwrite(reg, ZR36057_VFESPFR);
-- 
2.19.1



