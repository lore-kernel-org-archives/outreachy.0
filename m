X-GM-THRID: 6619835502508900352
X-Received: by 2002:aca:cfc7:: with SMTP id f190-v6mr13076683oig.29.1541300575491;
        Sat, 03 Nov 2018 20:02:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3e8a:: with SMTP id l132-v6ls9607777oia.7.gmail; Sat, 03
 Nov 2018 20:02:54 -0700 (PDT)
X-Google-Smtp-Source: AJdET5el68spfAJbABTfGW5sr5NaqpP2Dz6UB80o3TzzAM+zrGIsXWz8u+b8H1XH6KJwj6Ewxahw
X-Received: by 2002:aca:4bd2:: with SMTP id y201-v6mr8869298oia.22.1541300574461;
        Sat, 03 Nov 2018 20:02:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541300574; cv=pass;
        d=google.com; s=arc-20160816;
        b=UCg+FvIeoKwCNFoN0B3/w7w817XtsP6OfRn4Ks8Zs0/s+86nEmiigpaPszRcEV2vlK
         JrGaIanfzSUy51yoWDbkQgMfsTOdY7jGQBGGn249RB1zzSlbDuEsegRjqGF9WcXUCLjn
         0OADWw2c9Cmgx3K5KI+xEMqBejMIOHiZnvAzoyLHc4I7KgRzodE+FcCDA5uIoSn/e8zG
         gTjGvYi7C6dEr8EFtnLtLH1nfLbrYvKNOxcHUdNZzs78KNYsT/QYT0q4/ou0QLC5iMOj
         fdSoGsQTUGU1MV6RLAfhCZlGUx8tkDXgREWAujYGt77gNze/qak/MSpX+2h8q4+QLTkq
         b6SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iQknmGpwaETOf9MfvfaX+xra+wKGO1n8fYotxl2dYg8=;
        b=yVrh7ExLBY1oiFTWNXrFzWiswaFMhvnIoh5RTJv+Rp2Po9AxOBBDwrppMfQxArdB7E
         5T9whdrImoEB+0RMOX1ta2vueLXqM+II16LD0QWYpv/MV7vxZe4hip4zM0u5OJl0PqWb
         o+5BIQ6mi/lNnDyOxypz5oRQ7dhDusrKsXh8flnvFk6SHT2KeGMo7U/ondckMvqB5r4X
         AcFwwZ47FTk8HpeEfATExf9DdzX3jTb4w9p7izgvbWwB/n3DowmyiuUqW8BPX4ZrBcX2
         YNbWdRImrwIQLa0uMwP7a6x8GdqL/Q/KE3OvHFZ2NiOljPvlhQy4C2UWbxrzK6vNEXwE
         xyNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=WH2p1Qcw;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 25-v6si1179964oij.4.2018.11.03.20.02.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 20:02:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=WH2p1Qcw;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541300569; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Z++HvSnqen8x9O0s2AFVvQi5ERyxFaIbC4xQLx9Ft5XR/VFxFnctwrKZV61XWZqS3gOYRXt5/fJchbSVeHkerXrfalufLYOMdLg7lc8X/s5fPtnPN9ob0SpSbJ6qCnLiY56dtuBLQHXtjg46nwiuhUD0W5Lb36VNHUvBOTKhoxA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541300569; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=iQknmGpwaETOf9MfvfaX+xra+wKGO1n8fYotxl2dYg8=; 
	b=MhvJ1Whf6vLhQAFj1CAXI/SaS1awbo4ZmlPk+eJmGDDTBerAzxMZWZaMbGT59RxZwL/A0dCFeefTeXEBfpPyBj4rJPwyvMi8M6wPV85BK05QBu0qSs0nCQGjgZkP56Id9Myca0YbtdrtwykX8C2wbZHrCbnsmW19R5wurBKHv5Q=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541300569;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1903; bh=iQknmGpwaETOf9MfvfaX+xra+wKGO1n8fYotxl2dYg8=;
	b=WH2p1Qcwt5anrvGqPocr81dQfELC2Pgd+e0xk/oJYK2w9Ruo+7YPH1ZG5JPB2OKR
	MVKF1/qIoZiav3JKwAQoXDcse0Th+Mu48XaO7ltZWGaJbrVvryYwU8wIni7V9hep3TQ
	XEK2LIJCNUlAa25sn+PTKjYPPf7BuqyAf3wwnF4w=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541300567372348.1335242888473; Sun, 4 Nov 2018 04:02:47 +0100 (CET)
Date: Sun, 4 Nov 2018 03:02:46 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: zoran: replace masking with  BIT macro
Message-ID: <e1f47470988dd3e5a8e7d39bf6a051e6de2637a3.1541300498.git.code@wizofe.uk>
References: <cover.1541300498.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541300498.git.code@wizofe.uk>
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



