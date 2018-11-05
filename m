X-GM-THRID: 6620380698493583360
X-Received: by 2002:a50:ad3c:: with SMTP id y57-v6mr776164edc.7.1541427606195;
        Mon, 05 Nov 2018 06:20:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ca03:: with SMTP id d3-v6ls1379047edi.1.gmail; Mon, 05
 Nov 2018 06:20:05 -0800 (PST)
X-Google-Smtp-Source: AJdET5fGpf6QNqxV1lSE3FoLK5UXKGZFn3hUukTPJAb6WOqLVHOM4pc8NeFSlYwbEu3aptdsXfxB
X-Received: by 2002:a50:e78e:: with SMTP id b14-v6mr2568171edn.9.1541427605523;
        Mon, 05 Nov 2018 06:20:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427605; cv=pass;
        d=google.com; s=arc-20160816;
        b=mPNbDfmkeRVOw23JDAwaazjegyLCOcdadHFTAquqsawsi2cZlPgzv6+CmebWlw7UXi
         d1Wpb6zJXdWUp5q7cOvckJTAd2ZEHDm8Quk6Ixiy8qAVxptBOKSnmrrn0O9ql58kyoCZ
         sxvECV3YPjiz2rpvoYdibG+2uV92YN0PNBOLihU+EpkQTyzXw3iFm77xSv7gYhW1eJ6d
         cuOszsri6/5XU/O4ussn8G6eFgvAl3WjMSbT6tFJw/PfqAZXvkNEbx8OAvjgfHbDkJ3B
         uD6xaLhu7YHLjISf7epucSsxyZvYH7nP72RFWzBcFu1bV/3uQzSUmGxVIk8MwG+uRKY6
         RBfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qVbOLpBRQ99t5RkbDL5OCsVIr4LRsRoMWBD89JTSuo0=;
        b=CgLUN8ZcjJ2G2ueRKwCA54Snak+u9W3o5bgkDKqWmBWzgYfrW6NoIcT6AVOzU89i3A
         Ln0rm1C8lcKykuIgnuo0iX9gv6BioT0qE12Lpbl5d/60Ycg85QDqTsMtCtLbMaXRfdbJ
         BFWjps6TaNxrq5v1w/UOcgS8652YUTu3xd5q7V/hRnpDldp5qC4ehZP9ve4FG8BSHaz2
         /rMCXg8vMeGACv2BciVLcRGDT5nFXdvaKyCn1suqQUAjJYrWd2I04YRDflR+cvPIWe95
         OC/nUCS4Oe/XKmvkexaBPgyrbAUP1Xoaaya0JNRK2LHFO0G7GD3c/+Vh5buRf9TmhK7+
         h3Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gFBgdclk;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id b12-v6si137935edd.5.2018.11.05.06.20.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:20:05 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gFBgdclk;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427603; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=XZTD+3zahSvNdG6+rFIftTurqNPDb+tLPqSsjgR9hy13RFgONfPXB5216rEJZfv2sD17oRsK5dv7GWsB2b034PgaQx0IzYtknTiAx28PifVl78cexpPRvXVVX4dqQuZcaAGR3DqGj/Mb5bAjX24aa1W8w9T9hyjAuEHCp7JmmPg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427603; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=qVbOLpBRQ99t5RkbDL5OCsVIr4LRsRoMWBD89JTSuo0=; 
	b=VJwio2pJnwzpL7LBd8NKtZv3R18U3FoV44C+jaOkJ0GbSGT1lWbJeGmyldfIJWE2aVJkDVMr7VNLFkWhw+ugODNmq64W/Ty+5Kr2U7STGjXLvjT3CP1Zm4HwakMsKf4yJOYcakuK46vFwQbF29MUd7gcZ+cZF+VRy524K9HXIZE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427603;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=878; bh=qVbOLpBRQ99t5RkbDL5OCsVIr4LRsRoMWBD89JTSuo0=;
	b=gFBgdclkh+enYxoukRfgHwEL0f8I+egZE38vQTMcd47KV63aCvfhOSL5A5O89pZ0
	UGwUQfdTlbQ1yvhN6CSxkT5MV9NAGMb1D8+oaeCQLd8gyyQyjo+wUhVDu3fuok92uae
	4AzU0KEs8lc6huH6fEa2MCQJnQm9vXunJSOSh6Ec=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 154142760209751.5598978856674; Mon, 5 Nov 2018 15:20:02 +0100 (CET)
Date: Mon, 5 Nov 2018 14:20:00 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 10/14] staging: greybus: cleanup long line in gb_uart_probe()
Message-ID: <7fe735d1e4a5d0497711c8a34c95184dfc3c9930.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
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



