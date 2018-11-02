X-GM-THRID: 6619412092796534784
X-Received: by 2002:a2e:9006:: with SMTP id h6-v6mr1266612ljg.22.1541201978333;
        Fri, 02 Nov 2018 16:39:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4210:: with SMTP id y16-v6ls189788lfh.16.gmail; Fri, 02
 Nov 2018 16:39:37 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dJhgZnYya+MEZ55eWS7zW7BGpFSFYZNqxRTnQBmMM6w4WWiZDFZcxIN6M/c/5P+5m7aq8Z
X-Received: by 2002:ac2:4187:: with SMTP id z7-v6mr239763lfh.0.1541201977586;
        Fri, 02 Nov 2018 16:39:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541201977; cv=pass;
        d=google.com; s=arc-20160816;
        b=QyEF4yCroJ01TgIWJ6gOZtYUcTj3RDk/kL837et0xJmn4SwjmAOlRPITk6sAUD+mOG
         7sOYXWV/hIXW5Zsy+i04Hl0LMT1Hxunws83M/XPOMLVRlKORGO3XV+qjjlBbpXPBJfYc
         7ENzPUTy0uXusSMOaFFwi0zBt4iZiqgpC3xDYTYSks9gIgt882/h6ItMgVSNnB+2hib2
         yx4sMnpNmfo6zCjPX3UuKdNknkdO3OFI2vSYCxqap2tymksQ96gyFe7NuHGdpTCkREoH
         JyaenfgONMOBwEKhT+P2RjQ7gQbcfTEdyMR5T4YQTOXoD1iQO8pUyYM56MN8OU5JIy26
         GaZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=l2w5frt7TApmXTV+1abkncXDInKD4sgIO6ORoXAxY60=;
        b=pdDPh/UrB2ouAL656cV+Sr2OB/gO5YjFyryw31TcAD4pX2HeVesW4eXw0ez7Lricjw
         2UtXU77RobobkysyznEC4I//NY6D2JlBYR1SMvDgr0Cd7OyqdKmm960gdwX+/jA8O/SH
         +OoDcYgQj7i6pUivLOCuckPqbkwh2NT2Kk/RVCiB1Ywx9BooC605OAOiokfy8yJK8kyd
         /dGxp4lQLhzXjrfD7pIzAh12coJUZkouG9uz3+Jng1CK6V5fb/dIyQAPRtYEIffdA3qO
         /Cqc1LAesQwy+001tVlSaAPf2s6ie9zFV5nfyDhoEn1xsGyBhIgnFzxR5j0v5QJ08tyL
         JAJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="J5gpN/FC";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id l5-v6si138141ljh.4.2018.11.02.16.39.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 16:39:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="J5gpN/FC";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541201966; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=dXR+DH7Sc0OFIGv870JH8YajSbr8i2arMrcZ8MBzO75+XwIuVHTb+Z5xABiXfe3nLGxTuB3xw+eDbAiK7rJyTvjD2Y2wPisgeicJhtoeZFIcCH6PFJlSAW+mHTrB5Qrf6FbxVWdG1Nrrzbb/R66oL3VG/diQjbIiNk+PCdlZEs4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541201966; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=l2w5frt7TApmXTV+1abkncXDInKD4sgIO6ORoXAxY60=; 
	b=LuHGPCAIt0yux+8Kh1oCwYjqvA45LZK5MG3qzT78tufGm0UZ7gZRg6tXSlKhtoCxzOxLLnBhN1WwO9nChYpU2qEsNTCXmeOGjXNZI0k56Wxrde0KVx+CPv+rLGds8SokBZ0Jljc0JM256wduhaqf8BGcZDjJS97KWOVuzqTg6/0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541201966;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1380; bh=l2w5frt7TApmXTV+1abkncXDInKD4sgIO6ORoXAxY60=;
	b=J5gpN/FCzkqCbwKEKEgQcuxNdlw07RnG947UYxAyzJM9402TS5MoAkmTWigPpTkB
	vIt1RfsQ7F7iJTlxwLphmnR8KwRYo5wK9TLOTF9YsyHM/M6LeianoSjVEjYNXIKICNA
	Dc+4dn61oeB2u7LzDs7lOyvP6dkJWwMG+4GhmW34=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 154120196552991.30299762675043; Sat, 3 Nov 2018 00:39:25 +0100 (CET)
Date: Fri, 2 Nov 2018 23:39:24 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: Add extra space around OR operator
Message-ID: <20181102233924.GA16172@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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


-- 
ta
ioannis


