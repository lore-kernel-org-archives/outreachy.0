X-GM-THRID: 6619380955766325248
X-Received: by 2002:a67:8c2:: with SMTP id 185mr11713895vsi.6.1541194792469;
        Fri, 02 Nov 2018 14:39:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:1cc7:: with SMTP id c190-v6ls2691736vsc.4.gmail; Fri, 02
 Nov 2018 14:39:51 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cXw3mDHU6WDToh1QtccpqE20J1BKqiBip9YpeqlGQZHYj7ZiG8RnMhThW7BhJG7ytCFxFR
X-Received: by 2002:a67:7b8a:: with SMTP id w132mr11731953vsc.5.1541194791544;
        Fri, 02 Nov 2018 14:39:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541194791; cv=pass;
        d=google.com; s=arc-20160816;
        b=bkFj5suWJdUymVfDHNDHfEhtOP6LgS2zfPxz5LhC4S7QRNizDMOalJNEIYAmydrHzP
         Lj69MHueEwjybmk63rOFiQl03YJxKRk0fxFtXoIhHQipw9JmgeptrHDO3qPBNJMTJDt6
         NRvxD/1oD233tLPCqZQ4xjz8Z8F8E6hb3vPhVp2FI9fsYfNC2+OCc766Gk4R0qmPFX8U
         GjZIEXf8L9X8jKjmeuPuPpFDidNSXgIrasK83QiZFXUXBa1ucJn/WlJEkEEuabAbv0S/
         2cTpEZBK+RKa2ayPLkE3Ckap0Nk3ZxFYDIoXpmqFXDcVIVjVpYo2LVS06ezY0d2Sj5hv
         Lcqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cLU4c9tdWvTKKBC33/whk7egRZOg3IEj7RpnAdUdJyA=;
        b=OCTFNvA5vlIAuNHNx33HuGjMm1Iimco0kjQpcSb7bVzwVEqvX9jNSFBIlxZAb6eTaa
         pPxGihkWHJPipxEzs1wmRgq3HKYvLe3tLAWRYDUEosHC3oy52toWW2iDfE8oewXMdx4d
         OW0MbRmhZT5ko7x6Aec51+qzbUMoZLA/HNEk2IYy6A0/5wBWdcBDCkXQBpOWJZVLS1WU
         MFyGGiTI2yWfO1VR9BC5PywTNS9yFNsNOk9R51huCwxNxj/VRxu273TUQ5Zue1JAa09o
         cG2NMkSmyYpiQa8YqrjHT92X7vJpWAci+JqCF2IE44ybsQbXVhkEIdvha3k1ufhZBRTI
         Fhrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Hqf0em+1;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 143si624415vkw.4.2018.11.02.14.39.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 14:39:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Hqf0em+1;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541194787; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=cfqNS0ziU27yYK0QNjIvUfvBCrZuw5oUwW/ro28yaVYs56Bp2vCSmSpKki4zAjILZzhab1BBX/vcnVY+DkOOYVl4IGYrN0HZWGHce0qSJPtjQ8NTW5Ivlne0A6C4VKRP0mJNB07P47EhaNyhrirVSwnt9MHSVLFvf9MSCFmcSPY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541194787; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=cLU4c9tdWvTKKBC33/whk7egRZOg3IEj7RpnAdUdJyA=; 
	b=OR5MUSI6a+tzpK50/9vOXVQjSXd1d5468R7n/Dr/zURNfAsJbMX04aWava6mMLZIW0tJNFHK5MPGYb6ZYdFlqqiqDN0qDBeHN4cVQNSlsCgo9k2AsqkH+pAu3Ca0Ybr8D5iwonUq08KZH3MWAp+u59P35Fx6qE0+K5pby/ahC2Y=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541194787;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=771; bh=cLU4c9tdWvTKKBC33/whk7egRZOg3IEj7RpnAdUdJyA=;
	b=Hqf0em+1dbE+9qX5e5IN8YYf9O0l1Yb6KWmT8YrkKstE6hOQY/ichmYv9QlRDtZk
	GsP9ltB2w4JpJQCpKW3+x2eaSQpEioV0vBF8npN2Mfug8poaF64pcuvDOSUg1sE/YTU
	obrp0m2skjvVKpFFip02+4W7ycBWLx/B469j8X80=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541194786243274.474012595687; Fri, 2 Nov 2018 22:39:46 +0100 (CET)
Date: Fri, 2 Nov 2018 21:39:44 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 5/5] staging: greybus Shorten comparison to NULL
Message-ID: <1f66a183a15277e3fe96368d6165e1e601c87605.1541194567.git.code@wizofe.uk>
References: <cover.1541194567.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541194567.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Shorten pointer NULL check by simple truth test
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index d28773e06838..0ed3b0ffee5a 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
 static const struct greybus_bundle_id *
 greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
 {
-	if (!id == NULL)
+	if (id)
 		return NULL;
 
 	for (; id->vendor || id->product || id->class || id->driver_info;
-- 
2.19.1


-- 
ta
ioannis


