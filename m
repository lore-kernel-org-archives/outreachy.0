X-GM-THRID: 6619408354530820096
X-Received: by 2002:a19:e307:: with SMTP id a7-v6mr1130412lfh.3.1541201107243;
        Fri, 02 Nov 2018 16:25:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:6e4c:: with SMTP id q12-v6ls799032lfk.20.gmail; Fri, 02
 Nov 2018 16:25:06 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eRoZM8mewqveae1f+sxYMNXoH8SPdetphCEsjzLuUxrT50WYiT4ka414U9DAMFD3mmq1cr
X-Received: by 2002:a19:519a:: with SMTP id g26-v6mr1131049lfl.2.1541201106291;
        Fri, 02 Nov 2018 16:25:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541201106; cv=pass;
        d=google.com; s=arc-20160816;
        b=z7UAA6tLynuMvdyf+H1rnnYhd6pIytSEAgEfP/Ts3BRW3kTRWHEtModuk6THQH+JRH
         dC8MtQWejZIeNSLgZArC/c+WBDMTnEBsHlTZZH8QNYUwR7+UVStBgjPHa4OOKb3kEkyW
         4QvoYqsFByJCAuTsrEbWL8P4VbP0jaoxhn2OwJZi1M/n81EiqlBCw8S7Q6UQ3onqgkej
         COEuCOzoI0CfaO5ymHOwR6DGYuiyKp0hPd1HQYo/Q4AyhWZ1iH185eB1t2wOK/vbcnZY
         6miwICk6TOzb5cvdoS15P1e7NFFHDzZ2M6IcuwrrZy6MLlDxuC/idaEu4ePszO8D4G5F
         jp9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ApsH/7hjLxjWvlFP6sDInNC1l2FqLwju6Ad6Lya1tZs=;
        b=gj96ZDkIe7f49XBV9NTKZtklvP43nOoQS9BNf5tlLovhtvFjKtlqmIFqc20jtE29YM
         eIrcKAc/1i+UIyd/mAS9SPHzwlbUMlFEOq8Mx7JvBOIvvZ5cTWVn5KcwUFwmSDODU1pC
         5C8H381hlBHE4/Oo3btUsMdwIPLqbCF6S5ZeOCXv8/XH0IDZKMqrdgHVk8b/lx1+HEP+
         bttS6tg3CxY/+gxTsly2zRGuG2qXHVXMxVbvmcrv5G5PIILQo/2L4fEmXgofKBoBdoCj
         qWL+mLkxCRJfVQ0ERDMSb2ez6v9guOwf17v4w0r36VtiKWMAlBaBgOeQ0pTls6BEZl7n
         NC7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FyLLrjIB;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 205si783419lfb.2.2018.11.02.16.25.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 16:25:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FyLLrjIB;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541201103; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=FgZFg/jg5Z4EjXW32r1mXDJ4VL57t+/tk1ISaFcajZxRliNJv+2/HIYH5BLj2jnHi3cgFq5aWpw1kHB7DvC/H7b2j1zuVF95QEJf2XrJUVNg6H2DuquHbLWGXCkccOBW5FN+HF0EKDo6xsQ/GBXSMIMQ3gPNCOALvlyHR+Y7h5k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541201103; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=ApsH/7hjLxjWvlFP6sDInNC1l2FqLwju6Ad6Lya1tZs=; 
	b=hU8I3db7WInDDfHIIon6B9vdap+/uJHQI7u5MOgfdrfAO0O+K0VDQ+rB5KBGX2wvHYcDO0ZOJeRF2Z8zswH2SLbS+EVUfpajgKem7yxW7HdPyQbWsth8IZDZ+iwn0T2sClQPgn/E1DsunGDSIfPBwyt+D3ngVk2Xka5/MoUGfpk=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541201103;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=899; bh=ApsH/7hjLxjWvlFP6sDInNC1l2FqLwju6Ad6Lya1tZs=;
	b=FyLLrjIBc01P7tQLBineeyNEU4iZsskjDOOvynwzw6irWtADKwRq98gCN8ezsRPl
	0FWI0+Tc9QfQOL2wMy7P+QfvzqgeMBaqNgNuHd/ybx/AJtMQWGOgKAxyG+hvwxNkhKp
	mDvRRIgLKMMi+a1QdKn/5AddncRQM5m37FlXKiKk=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541201102758965.0805552297993; Sat, 3 Nov 2018 00:25:02 +0100 (CET)
Date: Fri, 2 Nov 2018 23:25:01 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: cleanup long line in gb_uart_probe()
Message-ID: <20181102232501.GA1571@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Clear line over 80 characters warning in gb_uart_probe() by adding
appropriate lines breaks.
Reported by checkpatch

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/uart.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index b3bffe91ae99..735f70c09823 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -829,8 +829,8 @@ static int gb_uart_probe(struct gbphy_device *gbphy_dev,
 	if (!gb_tty)
 		return -ENOMEM;
 
-	connection = gb_connection_create(gbphy_dev->bundle,
-					  le16_to_cpu(gbphy_dev->cport_desc->id),
+	connection = gb_connection_create(gbphy_dev->bundle, le16_to_cpu
+					 (gbphy_dev->cport_desc->id),
 					  gb_uart_request_handler);
 	if (IS_ERR(connection)) {
 		retval = PTR_ERR(connection);
-- 
2.19.1


-- 
ta
ioannis


