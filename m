X-GM-THRID: 6618634579794198528
X-Received: by 2002:ac2:410b:: with SMTP id b11-v6mr442327lfi.11.1541021869617;
        Wed, 31 Oct 2018 14:37:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4411:: with SMTP id r17-v6ls28644lja.17.gmail; Wed, 31
 Oct 2018 14:37:48 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cTxlH3I8Cex/c8HZYQlufg/+fBt8b6IEJZdaN+kWv/SelaZe2U6NSxgJbAUKkiTayTZqKi
X-Received: by 2002:a2e:9597:: with SMTP id w23-v6mr495930ljh.25.1541021868630;
        Wed, 31 Oct 2018 14:37:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541021868; cv=pass;
        d=google.com; s=arc-20160816;
        b=YwFR++YmDvkzmMTbAdgWUSjDYvH+ayfSmr799ni3ziLtjCLtRTCBsXVUEq1hXQhU7o
         Vbf13aqEJY3XgcNMs8vN8YAwomf0WQWVgW+sGg6W6IBmRkIMxldiepWn/mDVibWx3IoC
         v75XCewyAXMzTA9++nNyR01uMPgOKIr3WFzeEyCdwO5ZSvuHAN8DMQ5BrQoc5raAUKWf
         7GgN/mYr4Ha18mkgbGrvZ2nU/VgJdVTSEbOT0O/9XZphYsK0yTlR9J/DZjoPAoMVTbTu
         zQcqwUznzbDmYI5mKx4GcT/dL9wbUm5ZOQqdBZgz5SVcCzv0MxXpR/I0kB6Jt6uOljV6
         FgyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hBmq7Z14/OJ9EwoUQMI4zv1pzkjP+HU1fufHLFsDXDY=;
        b=A4If7ai2dHu0VZC2qUvhqEcxG4zO41Lo7KaUWVmf0UH79misjURbqyelY2Z610Vief
         yvU8rdAkP971o0ED/BQakWcsvqqskIWHTOl02NXkSNlbmzhmoYxqKAf/2nZusgwYPvCK
         irmXmSo0yrNWM0V3lcU4hBBRBmG7n5+F0KiPGXGI6wnfhBDlVlflkDE56hxmieMfiGPt
         pXTAHZY1ZGTCvd0LYddVDplu5Ji57J79EwTQXc3p7rORbKHZdSge6wPJbwmrLRqbAOL9
         XhMT6UAVd12snOdCMKAcUGFBUZE+rNF0pDCOUtS1a85m0IRBjX8/CljGXdtXYXgGhiET
         CDpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=GbgZIpL6;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 73-v6si730366ljc.5.2018.10.31.14.37.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:37:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=GbgZIpL6;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541021864; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=FsW7SfEbWmIw79k8qqwEc5C4U5q6RivCkv+zzEWLTuulopzuKH13AS/CbN2ZpnnZXpRFDdJ9a5UvRsvcc7ZYycrjdXAzBeYQSZg5u/Kxe0Am/HGrRR+EXsIFtHdN7OZLI6NV0z7a+5okTYkK5ahvjIf9s/AJZ44Q4aWLEt1HbDg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541021864; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=hBmq7Z14/OJ9EwoUQMI4zv1pzkjP+HU1fufHLFsDXDY=; 
	b=g6RHKinVXOaKPWL4inPiNaWNzk71+2ElJasLsHV54FR1pD1BF6mY0xW3Oilv1qXIClokJWP074E3ODbqB0q+XPJV/WAjJe5q0w6lZ+1woi2DdBXOOaiq1nK1KEAL1w01COlnSxyKR/DGvkAfjRM3fv4n0B4KffaVYYH4JVqxHkU=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541021864;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1411; bh=hBmq7Z14/OJ9EwoUQMI4zv1pzkjP+HU1fufHLFsDXDY=;
	b=GbgZIpL6WTaoDy9DdVgfp0AxKw2qLl62fH4FBqPgIeTnD3ru79eJCP6YhOBpG8dK
	iqK0u5AvomNXxiLHpIxnxs/YhejPcSY10pgHxStejYfe6l3fv9y9+h3wHCSFMJdBj+D
	G0sbrVHIu5RO271fjz8e8mf+T5D/RAYeC0A42QzU=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541021864156348.8986631616822; Wed, 31 Oct 2018 22:37:44 +0100 (CET)
Date: Wed, 31 Oct 2018 21:37:42 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, alexander.levin@microsoft.com
Subject: [PATCH v5] staging: gasket: Create a free memory error path
Message-ID: <20181031213742.GA18868@kvasir.local>
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
	- Typo on the error handling label

drivers/staging/gasket/gasket_interrupt.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index 49d47afad64f..1a3e8b17e714 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -340,17 +340,14 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
 					       sizeof(struct eventfd_ctx *),
 					       GFP_KERNEL);
 	if (!interrupt_data->eventfd_ctxs) {
-		kfree(interrupt_data);
-		return -ENOMEM;
+		goto err_free_ctxs;
 	}
 
 	interrupt_data->interrupt_counts = kcalloc(driver_desc->num_interrupts,
 						   sizeof(ulong),
 						   GFP_KERNEL);
 	if (!interrupt_data->interrupt_counts) {
-		kfree(interrupt_data->eventfd_ctxs);
-		kfree(interrupt_data);
-		return -ENOMEM;
+		goto err_free_counts;
 	}
 
 	switch (interrupt_data->type) {
@@ -379,6 +376,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
 				    interrupt_sysfs_attrs);
 
 	return 0;
+
+err_free_counts:
+	kfree(interrupt_data->eventfd_ctxs);
+err_free_ctxs:
+	kfree(interrupt_data);
+	return -ENOMEM;
 }
 
 static void
-- 
2.19.1



