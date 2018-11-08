X-GM-THRID: 6621495393645494272
X-Received: by 2002:a2e:7c02:: with SMTP id x2-v6mr521920ljc.1.1541687175516;
        Thu, 08 Nov 2018 06:26:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:df43:: with SMTP id q3-v6ls157501lfj.23.gmail; Thu, 08
 Nov 2018 06:26:13 -0800 (PST)
X-Google-Smtp-Source: AJdET5fZwQMnem7VPqcG+k4LYWljG9R2sOtpGzQapdi9dAdjGTgordjPHUSRirAFS2/NxyLCClYI
X-Received: by 2002:a19:c952:: with SMTP id z79mr473368lff.14.1541687173958;
        Thu, 08 Nov 2018 06:26:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687173; cv=pass;
        d=google.com; s=arc-20160816;
        b=04t9Teo7FLmGnD/pQCikRQbyEYohVBAPdrd1sSfqW5qcbB+KPKUK+uVeJ65qdKNOUr
         e1vmOGv1ArwbzV38gta/+EKpF3q7IrPvOZ1C/nLmc6Dwyrz/BeATH/jGE80vlujku/A1
         Rv+IZUdbH5NAZUI6gyaMsHlNJ26M7tyw+BwjQn/ZqmM3kB8H6HAgSGdu2OG3YV2mHMXx
         zOg8Jd1YJG6BVhgqtbmxryGZn6AEye7vMmbuDxEeIcxabBhzZn/4qoX9594IgplrXI3/
         wueTzmYTiMSHV7TLTsjIEUzTQDL8u6r3KtQQwqBqcuvaEpLPZqhkuZ5Onq83xWvMjPxc
         8REg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cfGf0qV7Kbqhmzy/141iJLC4Sj4gzOstEXk66bPHVFM=;
        b=mc4YyLEcJcSi7REkfRkjl/SZ8BlmdiBXX/InBP0c0J+eGsxcJ7WSd6vhCJFygg54UM
         A1xeWg8nNs3v4dH9uUeHLMmZu897VJQAq2uLEqtZVHZkb4UHguhKx67hMlNGnA7o7PAM
         idTfvJsQIaFJ19hXOv0+rEkpAyQbhyjiZwXiqJmlyP7RJivDQ0yKCvqO49gb/MuCtnZH
         PA3ME5u6T1TExhjJYRaX7edPg1UDChswU9ywl1gNNsW767bbrnbr5HFj5pxEGYJsO4tN
         idcuGAPPyUZ+vsHiPOQHcH/4HLPy6GNxSNiPQYPkXXmdZte+b0mI/jaBaxJQ8f+W3SE1
         Sr2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bUTgyAfG;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id a79-v6si141549ljf.1.2018.11.08.06.26.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:26:13 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bUTgyAfG;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687170; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=gcn5maTt1x78D7e73vhZmaEPZ2TMBcadP1IoaZ67mRa651/ydUAL6Q39+054U5zzNL7XiWdsvxNlmW84KvteUiaZR+ZTTRMXftUKavxFEnYopCzdvAjEwskyTYbOmp9A/ZZ+G1qOomlICZHidqv/7KjPBOsqh7DukjCRtz6w5jU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687170; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=cfGf0qV7Kbqhmzy/141iJLC4Sj4gzOstEXk66bPHVFM=; 
	b=V50tooia3AQ5hRb79vS96Aqa7hpjWF7LHnwGJCBzQ9VOqDKbWFzeKQmhB4Ol4IQTwSSYHVGYeB/mqhBLGhr2CgpLJvi4APtYL8HMMVkpN0ual9YjlYVuywsjgvEC/WLEO0pirWc5IE27isaed2PnBUSmR9W5Y9QXSIoNzPPE7sg=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687170;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1101; bh=cfGf0qV7Kbqhmzy/141iJLC4Sj4gzOstEXk66bPHVFM=;
	b=bUTgyAfGO3rTnyMy3fNkppgz/IrWFLsxExO3v8jwfeg2GuordzYRNwESNhNN2yiA
	o7wI3LIUS/A7LvUrLIGNJBSfKRtplJ9R2qTjHnETsx43FOa9ZtBo6rF+luvYLNXIjTb
	gBE7cxU3zFva5bvy+R/QR+dZa3DQkmC/DX4/Rm38=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687168685621.8664626390123; Thu, 8 Nov 2018 15:26:08 +0100 (CET)
Date: Thu, 8 Nov 2018 14:26:05 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 12/15] staging: greybus: remove extra space before tab
Message-ID: <9cbaef5c06e4a668e7a98ea14d4e6f0addb0388e.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra spaces before the tab character inside a comment section.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/greybus_protocols.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index 5783f715bdc2..a0eb72cb225b 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -914,8 +914,8 @@ struct gb_spi_device_config_response {
 
 /**
  * struct gb_spi_transfer - a read/write buffer pair
- * @speed_hz: Select a speed other than the device default for this transfer. If
- *	0 the default (from @spi_device) is used.
+ * @speed_hz: Select a speed other than the device default for this transfer.
+ * If 0 the default (from @spi_device) is used.
  * @len: size of rx and tx buffers (in bytes)
  * @delay_usecs: microseconds to delay after this transfer before (optionally)
  * 	changing the chipselect status, then starting the next transfer or
-- 
2.19.1



