X-GM-THRID: 6618634579794198528
X-Received: by 2002:a1c:8c0e:: with SMTP id o14-v6mr562544wmd.16.1541034363373;
        Wed, 31 Oct 2018 18:06:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5287:: with SMTP id c7-v6ls3472665wrv.14.gmail; Wed, 31
 Oct 2018 18:06:02 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d5lr1EztlMW3TgTCv1YJCK/uDUrQhTR+YaiQiA2M+2YPBmeSgI5v5egsob+EAAOR6JqiX2
X-Received: by 2002:adf:e351:: with SMTP id n17-v6mr560830wrj.16.1541034362390;
        Wed, 31 Oct 2018 18:06:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541034362; cv=pass;
        d=google.com; s=arc-20160816;
        b=O3grxUz/SgJKHcZBGh1DA2MytxbIsQQ6ju96nP4aNICU4Yjh3pZwPZSzUZGdamuBgN
         ofd1yp5VK73PYWG6nMtK1e6PlSGCoghMeiD3Betbuk2xV/glHpCSdoWABPYsBVWPtOMO
         GqPbM1vESsjazGiJPcmU8j1GTtlBTrchJxpeLN2WlDfH0AP9uKu83nVla7CM3+2O1DCl
         ZZ+CP4aN+hM4ICCg8BWSX7fH+gDmHot/LL7EUDv/Ybzz6vCsgLgzlbveMSWMEVEvhmI6
         RAP1lyArIHc0Uk4i5V2AXbeJAGp8Qttu4aDQalWfSpNnwQXQ6beblvHRNLE8Amj574QR
         Gc6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=4jg19pVG7yglHysU32dz7KXspt53AoRxbkqn0ncvHlE=;
        b=wKcwvGTgGnWAanZkfN2svM3oivXqqPP8zhB6psiBy9Z9/J9cts/lrOacQ8D3AoQxUO
         IxwbFwB3nZgXM2BC5SB6dXh17xMvJEcrwWO/ESh7YEogwx8+xMNNvs10TCrB5UoAzYtE
         bildDNLIMK5+t4y31PdFYv7/UFgwgKmHQ6GkgPoGAOS03gW+YS4nNLlDhfBZ3AXaoA5y
         uvB2pCUqglrH8yR7GDcPWfcN9ib4ZLbso8LJB9J1q3zmTcufBXXdO8L+b0g5pkBro2Qz
         wAjUyLNHu5ccdvBZ5AKd6tlQrJingLetadQugeKZ50WWPqBixsVpFSTEekfpMGEpNHxZ
         EEmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=g2SbnTEF;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id n6-v6si261593wrj.4.2018.10.31.18.06.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 18:06:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=g2SbnTEF;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541034358; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=d2xtlutU8wHo2/c/oK0n9D0J6Q9TqV5DoIkNCUbcwXui6nol4yBYZ9+HdGq4dxyOZMDnJ3vIuozZZGmVJQ4vr4hOCW3bpUdWiGHdeRgYv1nXgff4Wn6+GddOaDSho5nmkQMmF8x9eAOdSWL6preSlAP5QMWxp6CEKoIwTI4uMeM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541034358; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=4jg19pVG7yglHysU32dz7KXspt53AoRxbkqn0ncvHlE=; 
	b=PieH7KsvoUlU2f/XPtl4lV8Vb4Rd17B2ABJAmHoTsaxHoTGz6wY8ZFtLs8JBWQ2fHimrwJ8Dl9JmT5b0SpMF3gii5FvByQ+BcEZVRO/GjUu3OkTLTzDT6iBvKBTD6tjtxqaqU/C4lgpG1Y6pqnAisd07wCd+y+LfdtrDJyd1b54=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541034358;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1424; bh=4jg19pVG7yglHysU32dz7KXspt53AoRxbkqn0ncvHlE=;
	b=g2SbnTEFaFk3lrxjtXmvVKGpHYhl0oO3ErSiJ56ZL+aaHu3yMv1HXD/zPF9fuxDA
	b8dzv91R7lSQzSwTMznrAVbHwKbc11KjiYdiEcJjIUwWzAqPRv0mDCPTdcOh/t7giVl
	OWJguwmgsCV6U8Ppcc+CAR9HtPv2NPhGhydvUo54=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541034356410698.7949233786144; Thu, 1 Nov 2018 02:05:56 +0100 (CET)
Date: Thu, 1 Nov 2018 01:05:55 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, alexander.levin@microsoft.com
Subject: [PATCH v6] staging: gasket: Create a free memory error path
Message-ID: <20181101010554.GA30222@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Create an error handling path for memory allocation. It avoids repeating
the same assignments and returns the respective ENOMEM.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
Changes in v5:
	- Correct label names to reflect freed memory

drivers/staging/gasket/gasket_interrupt.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index 49d47afad64f..4dbcac4c8e22 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -340,17 +340,14 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
 					       sizeof(struct eventfd_ctx *),
 					       GFP_KERNEL);
 	if (!interrupt_data->eventfd_ctxs) {
-		kfree(interrupt_data);
-		return -ENOMEM;
+		goto err_free_data;
 	}
 
 	interrupt_data->interrupt_counts = kcalloc(driver_desc->num_interrupts,
 						   sizeof(ulong),
 						   GFP_KERNEL);
 	if (!interrupt_data->interrupt_counts) {
-		kfree(interrupt_data->eventfd_ctxs);
-		kfree(interrupt_data);
-		return -ENOMEM;
+		goto err_free_eventfd;
 	}
 
 	switch (interrupt_data->type) {
@@ -379,6 +376,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
 				    interrupt_sysfs_attrs);
 
 	return 0;
+
+err_free_eventfd:
+	kfree(interrupt_data->eventfd_ctxs);
+err_free_data:
+	kfree(interrupt_data);
+	return -ENOMEM;
 }
 
 static void
-- 
2.19.1



