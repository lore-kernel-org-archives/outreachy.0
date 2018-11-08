X-GM-THRID: 6621495393645494272
X-Received: by 2002:a5e:8515:: with SMTP id i21-v6mr3777512ioj.29.1541687071604;
        Thu, 08 Nov 2018 06:24:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:25c6:: with SMTP id g189-v6ls252300itg.0.canary-gmail;
 Thu, 08 Nov 2018 06:24:30 -0800 (PST)
X-Google-Smtp-Source: AJdET5egcKJcDoD6rOsfde6nJztnKISMggYLeDj+RIt+HUQUzmIJxuy2g/+CkR9bldtnInulSaPp
X-Received: by 2002:a24:c7:: with SMTP id 190-v6mr1078019ita.19.1541687070254;
        Thu, 08 Nov 2018 06:24:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687070; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/69fC0cSaSNdFExvfK5L58Neuhk68jMFCX07S2n5KwdPNOceanxzfAlIlzpJQn0bU
         i3TgiJ0E51/RuZ5gIi05wEc88c24nit4przkIJZwbfWRJUNYlHnWDjscQk2O9+lnWDmb
         gb4zMYyO19nC3ldh6l4wIM4hm+w9pB7bXtlyGwOwXUiiATvI5zjXySbbxTZhOcebsvAW
         El/Mi7s7kBJLxPW2w31HAYSzuk1rWeKrr1TPjf1VGW1OiuvqFo/mvKazxkCMReBciy6p
         7VPnzNV3QnoRduo0FkpMgdQWwRLf4fxvh6pynAB9DJyUwob2/cimphL7HSd7OmQHprME
         wlBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JNNFLUEbv49w4UH4t0gWjSnzhe4ROpYgY1N4XaYMx/Y=;
        b=lyeBZ3D7UeXOVlAz4dSl8ZniB7JiXE2kyohyvihn37FWbBeJyts9t+UewfelZZs0L8
         Go4pmeUTOfAKve93WGXF1f5MHeFGqCuMeVB9ZomG+zgUbi+dNLiwnoGnlJGhyDYWB8zn
         BJL+VqjRHRjf3Z9sHJMGC1u7WzM+OFvtnMJX6RsTiJwGnK9NfZ+ltGRIahy1qqEgg+Sl
         hPC52d1v94G2e1MXWI9eU48YRDzYmVHqssIzyt49R/GnyTBl1EoMTl4Z0h5+NDxJNSfH
         XMNugw+ViiRauKhxn1FLF7cBG7CL8CLMM817jm1KosFv+VuxrVT2tlYsp5q3lOTrusqU
         WfKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=YyhIGGlq;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id m5-v6si108871iok.3.2018.11.08.06.24.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:24:29 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=YyhIGGlq;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687064; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=bkkBgdI1P3JXw52DYajWo3k9Ny19QYK3IczUQxdKdL1MriPp9XwT2NVQIixZNX1uOQoRpP71Vk4q8RHPDkFZ9r1kNNHv2vTA4gN2DoOGZ7bvkE+wmPbJlhgbIqoq9bgAMBYuLiOiyJL859wcyHIKD+jYppUIO+Bv1EDaXJoO7mc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687064; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=JNNFLUEbv49w4UH4t0gWjSnzhe4ROpYgY1N4XaYMx/Y=; 
	b=gShWq6ytKQGadK51KTFxtYCNu+fSj7MwZIS2/VUaFyHInS/OzxgRYARO5hikoP32UpWVCGF1z2TkYtS7wG8gTeJ1u0VI6sBaYt8LKD4uA4H9a+x0vLZWD5n8ofCFAK0iLvq6XvwGby0BeZsk8yky6nD9mqnKGvX3hEMcQwNiJZ4=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687064;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=657; bh=JNNFLUEbv49w4UH4t0gWjSnzhe4ROpYgY1N4XaYMx/Y=;
	b=YyhIGGlqWWRD/fhBMXrl6CvN1C9j5fGuZ0/O5o2sncvPew0c46g+PWwBaKfwg9Y9
	gmKuuHovC+aUNsVeHCmEoYYx9MOVQoNZgBrcNhEShjvuWeXrOIKxrITFC4dDi+PZc13
	wl+Wdu5jmLGQSxQUSnxHi+dvP45U5kvR9zmMkzzI=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687063264446.66447318020596; Thu, 8 Nov 2018 15:24:23 +0100 (CET)
Date: Thu, 8 Nov 2018 14:24:19 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 03/15] staging: greybus: add a blank line after declaration
Message-ID: <8a1f2c0553ce7d4719c5684370c78c0638624378.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add a blank line after the struct declaration.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 643ddb9e0f92..9c453e0b1b33 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -24,6 +24,7 @@ struct gb_control {
 	char *vendor_string;
 	char *product_string;
 };
+
 #define to_gb_control(d) container_of(d, struct gb_control, dev)
 
 struct gb_control *gb_control_create(struct gb_interface *intf);
-- 
2.19.1



