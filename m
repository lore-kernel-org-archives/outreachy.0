X-GM-THRID: 6619709511585234944
X-Received: by 2002:a6b:691c:: with SMTP id e28-v6mr12383146ioc.25.1541271226170;
        Sat, 03 Nov 2018 11:53:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:85ae:: with SMTP id d43-v6ls7009584jai.2.gmail; Sat, 03
 Nov 2018 11:53:45 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f2F8HclObIQrQIIUiIyHKR/ppVB4tnrHO9nkTfmLYurbrOMfwjrRtg3PgFl2wN8uwqodey
X-Received: by 2002:a02:4d95:: with SMTP id t21-v6mr13470141jad.2.1541271225000;
        Sat, 03 Nov 2018 11:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541271224; cv=pass;
        d=google.com; s=arc-20160816;
        b=N7ytmpdwkPNA3DJrFYvHjJd8UBoA00Zv3a5vbyJQaWBQ5R36JB+r1/E9DdmMGgaAXX
         YuekhaWAZeZGSN4DEGBk91wzMq75zjyjtzKNxQeVCOmPgYtRfCppBOwZLQm7n1/diiij
         eSaorSK6ayQlBoxiilk5jT+hr5R4PJVM0MFzXm6M7IuqEi3+lcS4ppRGr5WnFWEwyI2v
         MsRqVyJeaTPn4TXCFn7h5RpsBBJTrU7/z8ahIP4YeZFv8Jk5gHKnWMejyvTzzeHROHw4
         cdNC91CUizxUujd1U/6Dwthy2mNJ+5vemmggL6e8zowOaUg7V7ZTT3jobZcxukuMWQkE
         Q0Fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=fsVsJyZjrffCdcqGhxwgjKD5QZOAMO1DtiGEl4B2a6k=;
        b=qREg3ZtNOHIW97J7/R2inC9T1AE7yqfZsQh0gkeds4hobi62nUB0BWXcbr7J6oESiw
         kDit2XJnMC+IXSQ7RbiTIjh9akHBUABpFvTWAXt35mWbCmNLiQ36FisU4wDu31djZ61l
         Q2ZXaTnyekEQY6QtZOK/9Pw+8Bq4ObxrB4aNdMcfY8zJbGjIvvJoW32uIOAF06lqCLfn
         DY6DVjt+1p83RjuE1XGlimU/jBpGNZcQpGTTfwm3RKNnixf+iMICD+6juewgUv23hQmn
         gEbieD8hwDMNyV76BhDCBVYSbuWVB/sw+HKN3PpLUDpyDixH8PdU+fxkMx2WgHQ9mgev
         m29w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=hvyBi4ng;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id c188-v6si1175974ite.0.2018.11.03.11.53.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 11:53:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=hvyBi4ng;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541271220; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=c6vAIc4vX2fmYQLk8md1klh9nOBBTDvcMxxk5xJ3mVF7wDpcLbByfZ74W0+TkSNUcoEQRBmIE+EdL4autiJsBXGq8BeIeeM/QwIYxdUWrNdEqu59d+5MzqCavAPMyp+1zpch2veuSQjqASnE5oDVA2VfKkfRwUUGXz8KkznsNxc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541271220; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=fsVsJyZjrffCdcqGhxwgjKD5QZOAMO1DtiGEl4B2a6k=; 
	b=E5Rr/n6ZgpeaQH9mgCRo04JwgaUvaPhBhORBdB8EMrGb6GK6wQBTHGvPgsBlbU1ayoVDWTPMGUt+omut4wsLyvUzVL1RfwR2xZTK9rmWD9JtunzLQYyfbyLtmJWhI14Ujcp46GeTPdZR9w4/JYiapNSXkEZ29blCwQ5Yub8ZZQw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541271220;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1446; bh=fsVsJyZjrffCdcqGhxwgjKD5QZOAMO1DtiGEl4B2a6k=;
	b=hvyBi4ngBIOBJm5N5rxqIxqEJicGaHYHhVkVu2yyd3zg/UEHaRQHINtCVmqXhyK4
	dRDzW/oMBPXru+WQ44tfqD7axzvpTxGnycQ4HmQq7T9/CJZt0Dy/I08ouPf7pnLaUAI
	IJLhDeS+He6mRLZ8tyNgyl6KX3jpgWeDb2AD9L7Q=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541271218553848.9554310511209; Sat, 3 Nov 2018 19:53:38 +0100 (CET)
Date: Sat, 3 Nov 2018 18:53:37 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: greybus: add space around OR operator
Message-ID: <20181103185337.GA21317@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add spaces around the OR operator.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
Changed in v2:
	- Rephrased commit per suggestion from Julia Lawall

 drivers/staging/greybus/greybus_protocols.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index 9bd7b6dfb476..ddc73f10eb22 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -878,10 +878,10 @@ struct gb_pwm_disable_request {
 /* Should match up with modes in linux/spi/spi.h */
 #define GB_SPI_MODE_CPHA		0x01		/* clock phase */
 #define GB_SPI_MODE_CPOL		0x02		/* clock polarity */
-#define GB_SPI_MODE_MODE_0		(0|0)		/* (original MicroWire) */
-#define GB_SPI_MODE_MODE_1		(0|GB_SPI_MODE_CPHA)
-#define GB_SPI_MODE_MODE_2		(GB_SPI_MODE_CPOL|0)
-#define GB_SPI_MODE_MODE_3		(GB_SPI_MODE_CPOL|GB_SPI_MODE_CPHA)
+#define GB_SPI_MODE_MODE_0		(0 | 0)		/* (original MicroWire) */
+#define GB_SPI_MODE_MODE_1		(0 | GB_SPI_MODE_CPHA)
+#define GB_SPI_MODE_MODE_2		(GB_SPI_MODE_CPOL | 0)
+#define GB_SPI_MODE_MODE_3		(GB_SPI_MODE_CPOL | GB_SPI_MODE_CPHA)
 #define GB_SPI_MODE_CS_HIGH		0x04		/* chipselect active high? */
 #define GB_SPI_MODE_LSB_FIRST		0x08		/* per-word bits-on-wire */
 #define GB_SPI_MODE_3WIRE		0x10		/* SI/SO signals shared */
-- 
2.19.1


-- 
ta
ioannis


