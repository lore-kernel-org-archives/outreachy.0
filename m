X-GM-THRID: 6620547167797903360
X-Received: by 2002:a2e:3e11:: with SMTP id l17-v6mr2150697lja.7.1541466340573;
        Mon, 05 Nov 2018 17:05:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8ec8:: with SMTP id e8-v6ls296929ljl.5.gmail; Mon, 05
 Nov 2018 17:05:39 -0800 (PST)
X-Google-Smtp-Source: AJdET5c1X4Q++5Pk6TIcPKY5ftsaXnhZW/1HNjLuwsHygmKErtvrEnjrcbvFbFBoTkuBFpHuvX/I
X-Received: by 2002:a2e:5d0c:: with SMTP id r12-v6mr870924ljb.8.1541466339850;
        Mon, 05 Nov 2018 17:05:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466339; cv=pass;
        d=google.com; s=arc-20160816;
        b=ss8KJoKgceT/qaYBOqGQtk+4624O6WYD4WsDZ2eOxfLwwJiylAKVMnFL3Zo/qjtKk9
         /Tk+L1sdKxN3AC1Plw0dXaA7MWI5z9IaqLURqfR30P8Ynsc8cJAN7uMXiuz0UNm9BiH9
         fb+5GJa+170lP3QpCvLQC0b/XE4SAneDKwBLjjJaAG9WZeossB4gjXI2RvDeMnU6V2dJ
         JpQ6XaRAT3bcSnXyvJH31U1VXRU7YnJ9Ul+5A7Ihw1KpzUjCdIHspgUjLMcdlNgdw/70
         FBHpz6ZjVlGhf2SW9SawI7Eh2rVOha9brFb8lt8GEHmnJ+NKdJ+n9UzaebgThokp6OdV
         7qIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=;
        b=t+ZQhKOJPCYGycLtz27cFD5Y9ZoSEKItK/gsMZz2N9nV545BALoPjMK7zDKY+auJhk
         FCiB4gRHZdbJEJ+2UFiB5nXb1w6BnOmk6UeixPCbvLaDQZ/C+NH5GSAohScG3/0BeykI
         kUMHK3MnCZYb6cCRREyFcvQBsyJjk38b1RDYNvmthfWVjXGArpH5W60i05HXHvyEeRYT
         Trtf++vcVEatznIb9fAeRRJxmUk5+4uMsM9qpuPbYgBmj0HGVMi45NWiECxshbsRJZx8
         zp5DNw0pL+Hrl0jZCsG6unvdaMdhunnsi8Oup8oGst5P+AP1ssq7MqY/ZXPiqL6WVziF
         9x0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=DYGRFem9;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id n5-v6si545973ljh.2.2018.11.05.17.05.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:05:39 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=DYGRFem9;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466336; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=GDBM+Qm7r70+cad2rBQz3ySI9GHlmUTLP20/4kh6kkJMEf1nTbkNcfQqZTxiVAnAdBaSaYwbUT+Kjo1RsTHB3qcQSndX59I5gc40OL8aPxZchEpW+P2ovHwpC1KsunU5Tw+5eMbtwB/rJGPG1SKv0FYTrC1wGWXurIyatu7u4aA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466336; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=; 
	b=fGs1uQytipCXKObqRBOx6zVLcGYTGXonsinLElVbN5voDh8gPaTKx9PPqD70m65rf3DsV6hJ+QFU0WLqKbdL7mXMf1lQUHWMaPt/2hfhO5v8DbFXOZxVY2ybY0mXbPJN5gCqrzJL7MBSSnow2ME0OjMkvDVjehRjsuz7nbAt+rM=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466336;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1359; bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=;
	b=DYGRFem9wMqspFskD52QoXIYlEjrkz2jiyAT89mfxJ8R+b8XTf2dF5WhMouJBtOq
	p3VWu7Eu2fAF+jo8QrjJBpGo1MFi1+8Lp4AQtWj1ds+Rz9bW5SA8Onq/U5vTGG0wkQM
	s8HqllZs5NeisxJ7MbrJahL2i7IP8578nNLFySA8=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 154146633524155.62503200679578; Tue, 6 Nov 2018 02:05:35 +0100 (CET)
Date: Tue, 6 Nov 2018 01:05:33 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 11/15] staging: greybus: add extra space around OR operator
Message-ID: <b6d67733b9d56d8301823449c9e4fe282727a078.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
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



