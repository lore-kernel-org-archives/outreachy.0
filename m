X-GM-THRID: 6620380698493583360
X-Received: by 2002:a05:660c:70b:: with SMTP id l11mr4679457itk.5.1541427632374;
        Mon, 05 Nov 2018 06:20:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:660c:b10:: with SMTP id f16ls2110071itk.9.canary-gmail;
 Mon, 05 Nov 2018 06:20:31 -0800 (PST)
X-Google-Smtp-Source: AJdET5emJFeWccXgScn3/C6tUDT82FSSud0Kb3ukF5CMRNwwwZUZHuSHMW5JUZ7IwlQMPhNSrfIo
X-Received: by 2002:a24:5495:: with SMTP id t143-v6mr6236600ita.34.1541427631357;
        Mon, 05 Nov 2018 06:20:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427631; cv=pass;
        d=google.com; s=arc-20160816;
        b=po03veVP/dDKCaKbqYI6zuGmFqJiBwWuIwFfRF9iGl1hC/BExFEYMXxoE8LrRLf4NO
         Nhm3eBBlZxm6avT9wQnK75UErD4y8rvNXuuX+9vRgvms3lVbZy+NT4eLXAON+7syG3pK
         wKmv7DIoi5EoVHQ0+nL/nsIjW097G3NRL+Gj/ULmVC4pyXa7+/l6PX8iL0XNg800bXnP
         LlHcFLPtYxjgwMu2zwsqh+Y/uFd1sK2y9Jry9BHICE9vtUsi8s+8d1EBtCm7yz3gJDhN
         epak8lLRalmNaL5OS9FWpOaS80ASuAyv7w3jj5OvGdpyQ6apZcpxY8HSIgfcvM6mgjAc
         Xl8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ii4tQxKC13FJJ2p/yrTSxdkdZJ4Stkg0vu1OMcqs5yc=;
        b=aaxiB/wQhRYfSl5k/PGMGROxl1Hd4Gtf9SYK9/CdO1uedeanBl9sYUruhi0Ya6heFH
         TdYuHfpd5KOZkY7N6jUSpM8tI7K5gT3MN9vjk7xkTMP2xSLzAaCRihG9cnVsPXvwiyVk
         8WOQVXby2fuZivOCxr3d8E+e6dVoEcpyD6Vc8hGJGxhAfJ1v9P8hVODGZkPopXu7qk5b
         tibYpTC12gOOO9PrkEeufpP2or+k/CJXgJuX8iLVV9uNO05cYJylv0ZseagVbJpkRX8U
         upkNHznWMYunf2eev/vpwiyZ1OUQlcg+C6dlmpbDIzWc4Pt6r9EM220hPDYAWlpZeDiI
         PqnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bB2vlKGP;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id c188-v6si1361128ite.0.2018.11.05.06.20.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:20:30 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bB2vlKGP;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427628; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=MKpzqT44o74hIVJiB6HahBWmZm7gio5RyJ+ZZzjsfO3P2Qdp6qndwbaZh0qwMJrUK5/3mzFa3gADZfWeFznjNBxsgfa9esEoQZGVf4JoQL9aA5Y8uf6rXfFvtxEvDACMehNkpXjGUJmUwexpqyp+EUyVQx4buDmTtzBH3BgiW0c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427628; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=Ii4tQxKC13FJJ2p/yrTSxdkdZJ4Stkg0vu1OMcqs5yc=; 
	b=gWVgnqmrNRgwy4BL9XPfehY5crPstHPfM1Iu8/y/fKNWy8zg5eGouCYjgcDgbj2lq1DkK+YfilyVTGq303GiC4Ol06z0JAYXCGhE6DcLE4TxFDAodK7ix7dDNGV15//h1Fof8iKfZClglaK+2QJCcdXfhXOj6lq0MsQ4vRV0kJc=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427628;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1172; bh=Ii4tQxKC13FJJ2p/yrTSxdkdZJ4Stkg0vu1OMcqs5yc=;
	b=bB2vlKGPyHIcbtbGlNEmWq2CbTBpLwhiXMLV9/e0hqh7JWQlrV5V5lRLDp6BFtoK
	Q+MLT55MqqdGnaujmdNQ1nvwR3VC8EDyPucHEN8ShQ/DJZtaStE153zf3ALmmOooFHz
	dlTfvkL4cBxuhsA22h0uVtWi0z9iY7Ho0uBI7KfE=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427627520542.9803243817786; Mon, 5 Nov 2018 15:20:27 +0100 (CET)
Date: Mon, 5 Nov 2018 14:20:26 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 13/14] staging: greybus: remove extra space before tab
Message-ID: <c3d0430802080528ae01eb3dfd67c2bff1e20b83.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra spaces before the tab character inside a comment section.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/greybus_protocols.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index 5783f715bdc2..429a952c5200 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -918,8 +918,8 @@ struct gb_spi_device_config_response {
  *	0 the default (from @spi_device) is used.
  * @len: size of rx and tx buffers (in bytes)
  * @delay_usecs: microseconds to delay after this transfer before (optionally)
- * 	changing the chipselect status, then starting the next transfer or
- * 	completing this spi_message.
+ *	changing the chipselect status, then starting the next transfer or
+ *	completing this spi_message.
  * @cs_change: affects chipselect after this transfer completes
  * @bits_per_word: select a bits_per_word other than the device default for this
  *	transfer. If 0 the default (from @spi_device) is used.
-- 
2.19.1



