X-GM-THRID: 6621495393645494272
X-Received: by 2002:a1c:c48d:: with SMTP id u135-v6mr314497wmf.4.1541687166041;
        Thu, 08 Nov 2018 06:26:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:18c:: with SMTP id p12ls687505wrx.15.gmail; Thu, 08
 Nov 2018 06:26:04 -0800 (PST)
X-Google-Smtp-Source: AJdET5dpwzmWZXddKhkktKY4MwOb5wYhrWVvKCyS7uAy5YQd1FgyqNRpo6fHQ9d1e2qZEwqJew9V
X-Received: by 2002:a5d:6251:: with SMTP id m17-v6mr1048620wrv.7.1541687164911;
        Thu, 08 Nov 2018 06:26:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687164; cv=pass;
        d=google.com; s=arc-20160816;
        b=bQ4Wj3QnfnOfalwp4AFXnQRAayqLKM3WqEqrJfUb7sYfI80r38R7YOw2UHmcPx9Z7T
         ecNobpjszlc3hGhY/tiQ4Es/st2eVOuaZZXLbr0neQFAbsMODjslF8vmuRAH1bTLS/TH
         6VX8z2moBr3xSiPo027UcF1QMGugf6b0loztg2QPVKpI6IegP3T+/ecP3WqIPmihhHmd
         2cQgWrHHRg6cPy2MKqdXcvJKQ53MoHWbq6jcYqLerYkWggFi5eDTx+DbuPNIxAi0EiJu
         gTjJVigigWjcC5xwY6kNhR6AIYgn9OF/P0Yz0Q7Kq+c4bpkKv95NedhxdAXSI1fOTNp8
         Gqvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=;
        b=DU+g5A+FKjyZQlUtBPH9WaGzZh03pAfcaCgEknQdiC++XuHmcVlBeuQHyLI/Wx1zj+
         g/tnssxfH3TIYmglDNwR3vAoYuSyndgkcoHbZ1DmZTGQQwa0QnropJzQxCgWzaXmftDu
         3FfOrTT/l569ASfO0EnByvZP6irfigtzjVEzO+ijjNBVjIlrc/C4ClS1mxVlQao043sT
         HVVTrVgUCYgS9c6joElvHnR1v/4RDM3DpK0u39XOAYhnbZKk6r7hLc3o8Y0QrIKon2m0
         28je1Mj8sctkb3GkzZMe2Pz1IAtokRxV5icmkVtkG8Pc4XBeFRtqLUhOPXHb1WinA5V+
         EXPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=f8B6DN8z;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id j187-v6si53176wmf.3.2018.11.08.06.26.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:26:04 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=f8B6DN8z;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687162; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=PVMzJBOUcGI6ypnxsXdOUmT9e0J7FRfsJ/weihGj4vL7q7WeNFFPVXN7GoFj784+H0FjoNRKmoSQSuDK4jHjPX93T/CAj29Z9YdsZTxwZi/i250B9QMaA+9K3r8KxrgPELqE4GJyzlvgPD3anXaAbCiWQdIVixHMNBdCXYTMhf0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687162; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=; 
	b=IdRTK36PmE7WaXLScsXbrmNJ0LpWMK6X3+qR/iphjTacz8g2j1hYW6aszfb0gOdrNWXU+eyCpCJqZ78pqx2oyI5hznsQjvGnFtwAcgnx6IMJUbIyGphh5YsQkYBR4TXQZu/u9yDyAOI2lrLV8eEyD9mQZyMcZjHuXdpddfLQe/g=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687162;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1359; bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=;
	b=f8B6DN8z1a9jthyTRWgZTXUTwh5E5yBHJf/CoMEJVkQfZ0j+BKwhJOJR3uEpuBZv
	A6nhcoJogn9w0Txi5n1vfhU+sCUtowP4DX6KaQRz1Tk5c00Zv7eMjW0u1WKZUZNVotZ
	UkT9xl+t3IovflvPooKR70eZQyNQ4Vj8jJg1uh34=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 154168716054581.43904612691074; Thu, 8 Nov 2018 15:26:00 +0100 (CET)
Date: Thu, 8 Nov 2018 14:25:57 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 11/15] staging: greybus: add extra space around OR operator
Message-ID: <b6d67733b9d56d8301823449c9e4fe282727a078.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
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



