X-GM-THRID: 6617780359505379328
X-Received: by 2002:a2e:84d6:: with SMTP id q22-v6mr368294ljh.18.1541004485184;
        Wed, 31 Oct 2018 09:48:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5914:: with SMTP id n20-v6ls1082712lfb.25.gmail; Wed, 31
 Oct 2018 09:48:04 -0700 (PDT)
X-Google-Smtp-Source: AJdET5exSqeo8bj/w/QTlJdVJh0RoBZTRvNOYryx2D19rvLS5Qg10JWZpjq6V4b6OcM/BkVy4+Uu
X-Received: by 2002:a19:e307:: with SMTP id a7-v6mr337905lfh.3.1541004484012;
        Wed, 31 Oct 2018 09:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541004483; cv=pass;
        d=google.com; s=arc-20160816;
        b=Png8EEFUIBb8M7juSZx2tGyeAoLjR0P8r1INBLqR8EyOZWEPZZ/foLeRD6ZdaaigLt
         AOKq6VniB5es7uBU+mNereU1mNX0uILHA5S1XKuK2UYb3mRnx8K77QZA9JBU0rdgHE2I
         IMxZepVOk0OCXawZbWSI8fTDRAf+KcBrPkfFF/OGa0zREbY7M7pshdZ69/xHcLHpNHJ0
         0UrkZ3OGjOmgzLOAZTsA96tcwJXQkDMtS5h6yfuylY37rtkjyqGfkd3Uli83THwyHbv4
         Y2UpDmjOJyqICpzCxPrUzc6aQ2xiGGccxL6NXnDBRUdHc6Yz9U1DN+AF8OSMy3zgMEBY
         njzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=/5h63ndakUMIkJZjaxQ6a5ICcl4g2hDL0+lJJiiiVqU=;
        b=cXlx2ulrnJ938osoo0qlm46STl2WNkvXXLbzcGmDOMedqIyj7u0KUfmlVT/wjdIBqW
         gNb/4NF3n1TXDGmQSStrk9AUlgAoSKYj1Rt4CCMqpFq5XiNTeHmJNHNRLCimFFsKQAeX
         EqDgbUHKIgPKOrtqYLL4CJWXSUsNgTXfzQoeK4eOMPilifRJ6rrB+2z4Y+bmqmlRDo+T
         2vSqpg2n644NPLLs3QOeVofpxIWFYmq4h/wz75BLk3bt38vwFxc9hR/qHmNo4C2t0shu
         h1E49u5JXxvGDPesJ+ssfy/PquZ22rACop1yETQb6wd01kURXYbWH5oYDvbT696jB8US
         j+HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BJnHLfv3;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y12-v6si146079lfh.4.2018.10.31.09.48.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 09:48:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BJnHLfv3;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541004476; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=JkttiMNUxglSnlxoo7vYRoEazy7coCmHB00C2oIPwqnHGCjB4vyMHhFqPoNpAWgw5MzL0jJ0k3YxQ3wwKF5bMUktJzn4UEie00loiWK1zv+Ip+9OUpIgc+jctquLwjkTOJpMFKP/9u4oEUj8rcOCdpsTWhfl5nrpr3CLDrzK60A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541004476; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=/5h63ndakUMIkJZjaxQ6a5ICcl4g2hDL0+lJJiiiVqU=; 
	b=X6Nfd+XEIoIaZ99qjZGk77bsrYID7jM5KyP4Ijv8x/BY6TqpPg0+iFxGosP/GIqq8nbl1lsTnhriScHpMx2wVZ7ZV4ybI6FVt4WP/bDoQ0ymH/19U0kdcQwlC+CxXd6kDYTCPiMfU34qTxDdXPojz5F+xWt52RY638gJsxM8I50=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541004476;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1607; bh=/5h63ndakUMIkJZjaxQ6a5ICcl4g2hDL0+lJJiiiVqU=;
	b=BJnHLfv3FMYh390k7tfShJuv2x8yU7i/ejKPgQ3kKNgIhCxR66H52QyHrEddgW6C
	SiuSQbfaaam5kRd3gixSMsWI1cX5rlK+Nu0kK+n/r6MobCz5UUyePkb4syCqmQ3m75Q
	JGoBiVgDz1haP+uCkqz4cYzfQPqrnEicvEaxLFpU=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541004475461657.8710649976794; Wed, 31 Oct 2018 17:47:55 +0100 (CET)
Date: Wed, 31 Oct 2018 16:47:54 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, alexander.levin@microsoft.com
Subject: [PATCH v2] staging: gasket Create a memory allocation path
Message-ID: <20181031164753.GA14140@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix multiple error allocation path by using re-direction.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
Changes in v2:
	- Specific tags for memory allocation
	- Free the memory in the right way as for kfre

drivers/staging/gasket/gasket_interrupt.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index cdfb72af1c52..23232ea8f4d9 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -348,21 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
 					       sizeof(struct msix_entry),
 					       GFP_KERNEL);
 	if (!interrupt_data->msix_entries) {
-		goto err_alloc;
+		goto err_free_msix;
 	}
 
 	interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
 					       sizeof(struct eventfd_ctx *),
 					       GFP_KERNEL);
 	if (!interrupt_data->eventfd_ctxs) {
-		goto err_alloc;
+		goto err_free_eventfd;
 	}
 
 	interrupt_data->interrupt_counts = kcalloc(num_interrupts,
 						   sizeof(ulong),
 						   GFP_KERNEL);
 	if (!interrupt_data->interrupt_counts) {
-		goto err_alloc;
+		goto err_free_data;
 	}
 
 	switch (interrupt_data->type) {
@@ -397,10 +397,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
 
 	return 0;
 
-err_alloc:
-	kfree(interrupt_data);
-	kfree(interrupt_data->msix_entries);
+err_free_msix:
 	kfree(interrupt_data->eventfd_ctxs);
+err_free_eventfd:
+	kfree(interrupt_data->msix_entries);
+err_free_data:
+	kfree(interrupt_data);
 	return -ENOMEM;
 }
 
-- 
2.19.1



