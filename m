X-GM-THRID: 6619244143382102016
X-Received: by 2002:a37:87c3:: with SMTP id j186-v6mr8935850qkd.51.1541162887881;
        Fri, 02 Nov 2018 05:48:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9de0:: with SMTP id p32-v6ls8985161qvf.3.gmail; Fri, 02
 Nov 2018 05:48:07 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ftzyhAdx0Cfh/z3nfI+Wep+ykRxNRT0seQrj9VlEqBTADQK68avc9Dd4SeO/rp3xnraa31
X-Received: by 2002:a0c:d25c:: with SMTP id o28mr7338372qvh.5.1541162887171;
        Fri, 02 Nov 2018 05:48:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541162887; cv=pass;
        d=google.com; s=arc-20160816;
        b=AYenU9kEUQnX3eQ5QkWrt7JGk/bB4+omM+V0Ll4RHemo/VDw3u0Okfkb90sVModlOg
         JgaY/JfllzaX+XQiw4Zy5Gl5TBFvI2qFRRxm8gJHyQh645dP2puYJQgyfPDDdepAiAI+
         okfSdLPYU74oPfNaj9XhYwXfgZ+dYL6M5CdVWq28SokdCA7rtsOhvo6W5vqhdH80XUeH
         enyMJMn+wwP7AMIMveuEiAJYH7W7tBnJjBhlUD9NZFbdLE6lbydc+z7VRy6LvLVGiIIZ
         CL7wPKJN5ZrN6g4aA5mzMw0mhjY05OXuFaDAjNb7SHBaN2YrhvEfGTDJGSLjbNmyNjZ/
         lxAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0mHsw6iLGo0NkyRnLRHSxdRN11i4pd0RiG6vNzcVh64=;
        b=ok9IA7scmWF9/L67KtKmHrfOGQ7Ff4qOKnKoYUlhF41gErOPPD5D+nSBW71HLJawq3
         D902S8T6yDSWqrfzYs9aSlH5rDAcEB96SpUaeXe+I16Fr4W7HHbg726iiL9/4gGTLFuM
         3i5Y4hkjhSF8en9KPhNtN90EOh5fvyKMqtWt7n/NHeCLuCBpGabSNsDTD1HnzbXEHpgs
         iM1ksVy9CeMbQGqsqyhtwyaWEwZ78lbYAI+DiTBRCJ3dlmM7weq9JUkuMyavnMc+OJvH
         4BilANcm6O2K3QqZ/6KWdb5Ug89mXwEjRkXjeCdAMBjY5QeVh3LE5bso1YCYpGOnfBf4
         xxyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CSNozjob;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id q15-v6si147623qtl.2.2018.11.02.05.48.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 05:48:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CSNozjob;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541162883; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=crq7R/4+E3FPfwSWq5Z+2if15/gjiktLe0XRYf5ylgPur/iwuerQlVjUV7BqHx25ymNDf18IQ9tpx6ao7tGGb0nurqSkM8S90UOuBVwct1Wn3/2kkpyWnXg5oUx3pQLyuE5ts6A7FZoLxmjPq/QXwZ/wShW1qhU2gxBSeIH2ND4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541162883; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=0mHsw6iLGo0NkyRnLRHSxdRN11i4pd0RiG6vNzcVh64=; 
	b=erDy5kZvwU8pNJkQ2KzYau6C42x8MPYE7GNCGhBiEtZExQPYYo0v/cSW4/9fSw+Aqms2bf0OTsVywg6za9lV0AbB/7p5R8yLe6b2TXWfHg/Og9p4uuNm9tytANcaZTNdOTjdr+vdBhtWtx/h7Vp4q8KLB4dCqzi/begXRH+6vG0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541162883;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1327; bh=0mHsw6iLGo0NkyRnLRHSxdRN11i4pd0RiG6vNzcVh64=;
	b=CSNozjobhiCVpr1QVTfq0hflq7s05zJwye40YME0LwX+6P2/CYfPXhGOlyaLKDel
	aOtTULtvuiCIgheAbs+6710yXNETPgMw+aL6NyiiVNxbJnRh3VYCX+2QaFfu38ewoLk
	q5wgye/9TdZRz+fbNs8QwEG+U4Un6jeFoPkTBi5g=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541162882561755.8026903560256; Fri, 2 Nov 2018 13:48:02 +0100 (CET)
Date: Fri, 2 Nov 2018 12:48:01 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/5] staging: greybus Align parameters to parentheses
Message-ID: <537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541162672.git.code@wizofe.uk>
References: <cover.1541162672.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541162672.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align parameters to the right side of the left parentheses
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index dafa430d176e..d28773e06838 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -28,7 +28,7 @@ int greybus_disabled(void)
 EXPORT_SYMBOL_GPL(greybus_disabled);
 
 static bool greybus_match_one_id(struct gb_bundle *bundle,
-				     const struct greybus_bundle_id *id)
+				 const struct greybus_bundle_id *id)
 {
 	if ((id->match_flags & GREYBUS_ID_MATCH_VENDOR) &&
 	    (id->vendor != bundle->intf->vendor_id))
@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
 static const struct greybus_bundle_id *
 greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
 {
-	if (id == NULL)
+	if (!id == NULL)
 		return NULL;
 
 	for (; id->vendor || id->product || id->class || id->driver_info;
@@ -266,7 +266,7 @@ static int greybus_remove(struct device *dev)
 }
 
 int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
-		const char *mod_name)
+			    const char *mod_name)
 {
 	int retval;
 
-- 
2.19.1



