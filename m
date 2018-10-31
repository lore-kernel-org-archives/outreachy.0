X-GM-THRID: 6618627943350403072
X-Received: by 2002:a2e:9597:: with SMTP id w23-v6mr479595ljh.25.1541019404089;
        Wed, 31 Oct 2018 13:56:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b42:: with SMTP id o2-v6ls239106ljj.6.gmail; Wed, 31
 Oct 2018 13:56:42 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eTO0DLMwjw5oAZq2CspDiIfD1fG35c707+ilxNPmoSDFzOTWog9szpx6DdmxiH93oS5gYJ
X-Received: by 2002:a2e:3e11:: with SMTP id l17-v6mr465372lja.7.1541019402956;
        Wed, 31 Oct 2018 13:56:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541019402; cv=pass;
        d=google.com; s=arc-20160816;
        b=UyGT5Kydzh+uYd1NKY8bBFTXVoMl5xNKzCySkE7DtDhgQRydnwJkVwa6T85QPsqQ01
         fMUariWx0PtYryq6ffNeQUbh0OHD/EIDCVoSzZB3iqcLDmKacmVjxmNXfJrlCnqpTCKh
         a9bXgicUX11MI4IvrwSq1IDpKlImxG/3/gl4slPsbyURMghsAHHHvH+2gqjP9sU2NAAh
         KQjlc9nXRelx8NFY9G3l4DPw+HCu0wZpLjj37xCnCnR6EK98nNuriB9RWwUMXmY3zQA/
         SvUCw9kLa9NuPmmpbVVeW/b8ykXe4KwF9gBSnVxTr22XdSBu4gBGAKVZMWoF9s3zSMPz
         60bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=8RDeWdO9Ctmtqejt+FdgDr/lSE43pQkj88Z+G8uGiBI=;
        b=F01msTi8vOEqDhiT47sRRsikq1XNep+CvaV0vUv3F4ndRW5sE5QeyN8RPlzu0V+h5c
         0HSb8sa88vfR0Q/KqBNvh2Y+gQT48GDgiTXG9JBhCkP1dzFLNT70fyGeGSxuv0Alo78D
         X3pDpUnP8EEHR1Rc3kTyNSUpnTWL/6qgUWAmRPxQ1eZg6sK94R5Yh1Rp/+cFOoWfLER0
         w3G8KGWmN+toN68v+AGbLAyiG/KefnDNhwxNA2yia48gKEMiBJfRKgDWaAsG4VVlQso4
         PS4kedZJuXgNUDthByJoZ84Km6/qLJiv6xqFZZed1u6mibwikl8439YMKhaq48EqW9qT
         VePQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=H3UfSPMY;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id r79-v6si1067558ljr.3.2018.10.31.13.56.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 13:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=H3UfSPMY;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541019400; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=OML1KIYZHlH+6VDQutaOjhMTbWDjbmnft0IZf9J1k/AzU/WemGMQxUUh1oySgOB4QWHx1pXi1WkpUUzlnnF8EAaaA62SoMv+gJK4/7jNN1N4d4fCWq388x3t+KZUxnvWGKHb2vPrPftOqUToTig5sDAz7X1xp7d7C5Q2Azbag6A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541019400; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=8RDeWdO9Ctmtqejt+FdgDr/lSE43pQkj88Z+G8uGiBI=; 
	b=E7HrUd4v7dmZ6FPetalqCLn2r66mtkMluloaok0GT78yrEV5LxQ3QpJi9sbm8QWcegjvS/5eMtus1GIdKIaVBmRQkALfGMIy+m1qVRe4g1PkOwdpqkeO/YcWYUK7wgM4u+sSp/izHr44Jje8ueDEtsRMxnribtusscg18CzY7pA=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541019400;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1206; bh=8RDeWdO9Ctmtqejt+FdgDr/lSE43pQkj88Z+G8uGiBI=;
	b=H3UfSPMYlnDSsWTvWuCj42zCe8aUIyt78qZIu2PtNXFx5XChzALYBhArDKWcbyLC
	3/P7Q0WGr93saP8ms0z8It+d5cb9ISIEkKKeKGcFRSgn2ilSHTzpAd7tk7Zq4NtMeAL
	YmoNudF/NIPR9qVpIX7MxxyjgxG3ChcEpJQICv1c=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541019398082403.99094735660447; Wed, 31 Oct 2018 21:56:38 +0100 (CET)
Date: Wed, 31 Oct 2018 20:56:36 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, sasha.levin@microsoft.com
Subject: [PATH v3] staging: gasket: Create a memory allocation error handling
 path
Message-ID: <20181031205636.GA13583@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Create an error handling path for memory allocation. It avoids repeating
the same assignments and returns the respective ENOMEM.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
Changes in v3:
	- Modified the label names so they free the right memory 

 drivers/staging/gasket/gasket_interrupt.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index 23232ea8f4d9..b1ee9a70bdd8 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -362,7 +362,7 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
 						   sizeof(ulong),
 						   GFP_KERNEL);
 	if (!interrupt_data->interrupt_counts) {
-		goto err_free_data;
+		goto err_free_all;
 	}
 
 	switch (interrupt_data->type) {
@@ -397,11 +397,11 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
 
 	return 0;
 
-err_free_msix:
+err_free_all:
 	kfree(interrupt_data->eventfd_ctxs);
 err_free_eventfd:
 	kfree(interrupt_data->msix_entries);
-err_free_data:
+err_free_msix:
 	kfree(interrupt_data);
 	return -ENOMEM;
 }
-- 
2.19.1



