X-GM-THRID: 6621495393645494272
X-Received: by 2002:a19:ed08:: with SMTP id y8mr840552lfy.10.1541771683604;
        Fri, 09 Nov 2018 05:54:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4210:: with SMTP id y16-v6ls110333lfh.16.gmail; Fri, 09
 Nov 2018 05:54:42 -0800 (PST)
X-Google-Smtp-Source: AJdET5cC0DRUwSNlCxSYzp2cb8ZtHK+6cT/uPlEYBRyX1/m9iMs+edv6yUwxoEBfhZkJE4Cqdfel
X-Received: by 2002:a19:5519:: with SMTP id n25mr851631lfe.1.1541771682811;
        Fri, 09 Nov 2018 05:54:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771682; cv=pass;
        d=google.com; s=arc-20160816;
        b=zBA80o1/X9+UbEbLum6g47tteaadumB0101K1dydYfjVlaR1BtKeu7tAlg9NO6crL8
         Jp08rIFx0FGTZAJsRC0hOa5+9qc9krFr+d1vBdOqgakIYeADCPzVmYmBwUcWM3gDu1or
         ZiPXuUl2mUe1OrvGhKVWv9Ny3MM91hnuIoiSYoQKIAi9+QZCcLF89Xc9lOMLvHInH9RG
         Mc7Tr9CZd1klRqIdT2+4oMPT8a3PKKSxdFzhIEPZpwDge4qs+6lqI49vtHbgVew2Ta0F
         0Oj56DzyxsnxTzOaJVTrEs+4RnzHLvUx2abQ9u99m2GL1I93Wjz3JD+yhrRfa1nhR/Rw
         Cwxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=;
        b=qIwNf0YrHPO6bn2ysL5via0x4J88AM/3LgZrZIAW81lsFhd5Igk5WJGGGxEX6lc6Ni
         UM4Kl9sH3vckkt0M8bIc0SBFXukJ3bKxtuDEsI3vqJgHaaY0S7UU9OiE/VLg9R9Mhal5
         Olf8yDspYXluBX/akm01GSiZatqBcuTtcOH5zf0zcYVwNVn6bcwGu/jo5LfNAVBCWwLV
         1x7teypWUkOCn/aRUTe5+nk8QwXggKmM34huWSPJ3aeGpxHVaKxzyj9lQ+JbgoY+rnRX
         YXzLOsIeugZ5P9DmuVduwglfYEVdVqM0BfQoeugJ+32A3jB3z09bobdHZxSq20+kNR7n
         s+ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=WRRoX5VH;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 205si234981lfb.2.2018.11.09.05.54.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:54:42 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=WRRoX5VH;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771679; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=TvHe1aOrvMhcQbrBDAwJ5ncd8qit1WrI9+bP0zoRW13L6vITNl1VUCSil3oFOp2todQ7sDuEKfuz7WAZzaMyDgkiMG63m39Zqs2WpOnQZxg8FZDIeDmaPsGn+rPrec9QbpFXMvDi2HEIqVThR75e5uJWzeoQhL+eqI+CJxEOVug=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771679; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=; 
	b=LnQS8ZPg+uvname/73cpn+pPZnimppx2c/wcegFFHkU7EM41utSDDXBb5geyT4LKBxvlzuUhV6dLLJuyRLB7ym6BdpC5K/7yA1Ty1oRLJdu+fZMMDUSulN9hCMfz3F+uCjJRMzwTpdUh6nOh6n22KkZR1V487QSxDjml6pLnS20=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771679;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1359; bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=;
	b=WRRoX5VH/tX987sRy/RuCnQStlb1s8Z+FtYpruvM1FjwkoYo6F2HkMntopIKedJt
	g5cta5/wzjkb76zUDFOm6PcTC00YsVfM9UUtE/DQlL+hnBQllV3EMtPCHTEDs3NLkRZ
	kbEjDKLJkM54XzemqeJdN1dhA9rp4a2VAfe33rKU=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771677942595.6989048224668; Fri, 9 Nov 2018 14:54:37 +0100 (CET)
Date: Fri, 9 Nov 2018 13:54:36 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 11/15] staging: greybus: add extra space around OR operator
Message-ID: <3d9077a01a66eb7a71a1d26067e2749d873d7ae3.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add extra spaces around the OR operator.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/greybus_protocols.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index f38f4a8db2b7..5783f715bdc2 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -866,10 +866,10 @@ struct gb_pwm_disable_request {
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



