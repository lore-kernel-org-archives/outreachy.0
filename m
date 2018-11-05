X-GM-THRID: 6620380698493583360
X-Received: by 2002:a2e:84d6:: with SMTP id q22-v6mr1875508ljh.18.1541427625265;
        Mon, 05 Nov 2018 06:20:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:42c7:: with SMTP id h68-v6ls741676ljf.3.gmail; Mon, 05
 Nov 2018 06:20:24 -0800 (PST)
X-Google-Smtp-Source: AJdET5cEG86z0HNLRtu39ina1OcWXTBHX/5ZpOAUMKIKXiqG7qaGDowqbEhsM8EgwQ/M7f0nu7cs
X-Received: by 2002:a2e:9b42:: with SMTP id o2-v6mr1899658ljj.23.1541427624255;
        Mon, 05 Nov 2018 06:20:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427624; cv=pass;
        d=google.com; s=arc-20160816;
        b=YjgVOve0j/4PGrDcH8CbOQhh37pPFFEG730hIV7EsU3j3V1YmYdjRxgLdXJD3Q8BCw
         bN+NFjUE1aNRyVU/ry8rhORSXhsKR56cbZFNN10MkQWSI7jvtAaFNDgYfiM+F15Tw952
         h1sUh9uqioJyVdhoJfuGVojCzWNrdcBcjDyPpiu6xWi2e67RsaL6626D/JcF3FA6EEL7
         YPIbeiq0Anxsk4mtYUjoZXLKYBC62FSCHQdRa8TDiGMBe4lCD88HhQPxE1XDpW5c3Abq
         4NyfUzJ9tNg+BujcqQSnnsi5mU8FWxDWqZMcbjQ19vTFxyUBM8xI5LvOzyk1NUy3Imyx
         7Fjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=;
        b=PPnfzgyCxcYpfzG3r1RvQ8meP47vhAG5Kvv1Du1QX9rx0P3mETMwUXbKeXlvDiZXDb
         bX5VvcW7CaooH/IImZy3jGoUiYl+r53gqwS9fs1oBWgjE6RIlavc9lD2v2/fS7VjuBob
         oXYHi+y4E7dCQru6WWEM89PgOOpxmlguG7bJ/FrLmVtUkDGX4YY7jGMEj+o4NpXU+Mli
         u330lmOgzylQFcZW3du7vohs841/l8+X+mB4PsXpp0PlgVjsb8fORzEw9DnpCuSN2N5L
         9waMwlBRFQ0vz4Ug4kNMdF/nAsEj+hc5o7jqwfIiC+6XPutZR+Kc3B7zNA4Dk7E5Fzgv
         82eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=a2BEwBHq;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id t5-v6si236749lje.3.2018.11.05.06.20.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:20:24 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=a2BEwBHq;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427621; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=WLrUOvF6gDf2VWpo+OxPf0YcyVqTALjSudJGvCsXFNMGzqgZlNBjDnxTVe02GIVOsj0/YGyQpwVTrt/OB2iZIDY1XCXFz9NLOemoaMie041haJoeNM0QOKDrd7w10lpWc/rLpKo7cEPYKresHe4Dsk3HZAyQeQ2pWf3n9w1Ymkw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427621; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=; 
	b=dIiKcuSLpnHxxi6cWYvVu9Nklbq06qn71zDe1MQVrYkZV125UXRXgYjHiJ+YTFq8Sd/DB0FjYHpdzqYjypS2OyQE7ebp0csSCPYvPeITa8zKDjL0ZYhUA4EaRV5dSvtow+ad3hiJM8uFoYq47Nq8HJPr2Ut40uDA7U3t0cq2BnA=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427621;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1359; bh=FT4ImI4nYuItZt5LiCmwSVILGaUDtrF1c2rSzszA3gQ=;
	b=a2BEwBHqCUQNsnxBdkedbxwGiH1Q/8kRCPElQSNqvkfgzxM/k8lUikp23hUEYeCT
	XVNg4O2IbF+beytP2EKabZUk+dtBg5K2vT7POVlf7HrBRdyBWMLLStCJY/665Z5QYxy
	NfVa+RxiKraibwuDxu3L1P49Yui1ClLcnFOrsXsY=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427619662588.9990203626547; Mon, 5 Nov 2018 15:20:19 +0100 (CET)
Date: Mon, 5 Nov 2018 14:20:18 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 12/14] staging: greybus: Add extra space around OR operator
Message-ID: <b1213353512432e3f5b85f018dc3c4b3c98296ab.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
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



