X-GM-THRID: 6619835502508900352
X-Received: by 2002:a25:2007:: with SMTP id g7-v6mr2452515ybg.21.1541300589468;
        Sat, 03 Nov 2018 20:03:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:a4c4:: with SMTP id g62-v6ls10998673ybi.9.gmail; Sat, 03
 Nov 2018 20:03:08 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ey0e4mKP60cjewLcC5ux0yJO8gtWpA8Ko7wd4+luUpTRbeh8n8SOnHReAz6oY8KoLQAifv
X-Received: by 2002:a5b:305:: with SMTP id j5-v6mr677102ybp.43.1541300588654;
        Sat, 03 Nov 2018 20:03:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541300588; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y29ZqEk9/lCdBMazej/D5OFT6hxxSoMzDgL2PZabOQwyuuPYyV2N/o4K82uVq0wkSo
         hE1yevPjoyl3becnhwcpj0EMwn7zTnrDpTCNvkhYJVpZCcXzLbaC6cEfroSNYmcjIFbf
         bEPFntACA3RK7lv/LN7dIQ1Sz5Npod3ESSPjY7v54sjWHqUO7VrJA4sTeJcsB1ygARCw
         lPV90AIY17fINeM/ntdQP1xU9uOu9t9AfEYf6rpCwSlPq9WqW7ugzohLgq67xg8s1xqC
         hv/l0wQkdx0vxl5ixsp0oKS5+MJQdtsT0ppIbG94Q4Y93SQZTMBHjISgJ60DK3JROY94
         haMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0SezbZ0J/0YXY3zh/ciozBNfrr1Yjp/4Z+PE+/dZZlQ=;
        b=CkjuZ4pr1ENe5D+kmtZh7QgwcC0VGFfM3lguU4WBOsuzvWl0cfgsumcwzaX31XJacV
         YRhHA0zixn9kwQQi465skRYOshmb9HYFCwyuroI2HwkJgMug/d8mGvdB+1bfzyJYobXJ
         lO7OuwVAMtzHSCXyP3/ZXmtrIJfHIAzpjR1HG5/qPht+kfFznAzk+8errGHnsCMIsP2r
         h5DYNN8kg8JOGfqLAvQIb5W2As5cRfvjVbw0laGZ4uwwEny/D9o3Il+LlPkwqi8E/o58
         0Ds7yHwAWNdYOwfyGFyn0j75UQ/U9XqZGPRNHt0SpH4NORqbTntIqNk8p2skiUxdRy0n
         pNnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=LI9Tll6F;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o123-v6si395347yba.2.2018.11.03.20.03.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 20:03:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=LI9Tll6F;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541300584; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=IZqNQKVTtOm2CdUtYYlsPDG2X9LNOlxd6DkaoxUo7mnWHPDoEoynjIJVyy4t2ui67ABJxjun0LwfQnuUIsOpl6Z/+G3/j6m4dL4iHbUyhEJ+bBKRnRZOK+ijaykO99atc/FSUmK43yslPakUgZGvx4YOU/+tUIG45JxepRmgroI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541300584; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=0SezbZ0J/0YXY3zh/ciozBNfrr1Yjp/4Z+PE+/dZZlQ=; 
	b=i0FglK9siv6gMhUjfXgydr9u/T6Ir2BxsC43+EHFjDebCnPqbZCNFv51pMNiNwKwsv/ueQ+c/4UiU8hAlHauznrQWhla2rP3nyMSzOycXN1bnj8TFxWmbV2sSSOY67A77mXl3MXntUO9MhQZZok/IGnBa53jWOWHtrr2vY1el6o=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541300584;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1259; bh=0SezbZ0J/0YXY3zh/ciozBNfrr1Yjp/4Z+PE+/dZZlQ=;
	b=LI9Tll6FUD8l4AqC4dKAZJyGTU/bEyXppktMxK9M+y4KxvTDkKyjHJP+6JF+oom3
	2HycYTya3JPBwc72yDpBFjmLcwwNFen0y657FRbvaDU1R0i9GN0ivfP/NRLNWVSeFMa
	ZFTo/rqE2179KhQU5rVNMsHnTfcmFlkPdYs/ESKQ=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541300582055710.8261674668588; Sun, 4 Nov 2018 04:03:02 +0100 (CET)
Date: Sun, 4 Nov 2018 03:03:00 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: zoran: remove unnecessary braces
Message-ID: <7a011559cd164a16c8656ca19e4c11306c891ddc.1541300498.git.code@wizofe.uk>
References: <cover.1541300498.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541300498.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Braces are not necessary for single statement blocks therefore there
were removed. Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/media/zoran/zoran_device.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 1e6782b72369..47214e2de04c 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -285,9 +285,8 @@ zr36057_adjust_vfe (struct zoran          *zr,
 	case BUZ_MODE_MOTION_DECOMPRESS:
 		btand(~ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
 		reg = btread(ZR36057_VFEHCR);
-		if ((reg & (BIT(10))) && zr->card.type != LML33R10) {
+		if ((reg & (BIT(10))) && zr->card.type != LML33R10)
 			reg += ((BIT(10)) | 1);
-		}
 		btwrite(reg, ZR36057_VFEHCR);
 		break;
 	case BUZ_MODE_MOTION_COMPRESS:
@@ -300,9 +299,8 @@ zr36057_adjust_vfe (struct zoran          *zr,
 		else
 			btor(ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
 		reg = btread(ZR36057_VFEHCR);
-		if (!(reg & (BIT(10))) && zr->card.type != LML33R10) {
+		if (!(reg & (BIT(10))) && zr->card.type != LML33R10)
 			reg -= ((BIT(10)) | 1);
-		}
 		btwrite(reg, ZR36057_VFEHCR);
 		break;
 	}
-- 
2.19.1



