X-GM-THRID: 6619601914535346176
X-Received: by 2002:a9d:4585:: with SMTP id x5mr11388689ote.67.1541246187983;
        Sat, 03 Nov 2018 04:56:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3287:: with SMTP id u7ls1529503otb.4.gmail; Sat, 03 Nov
 2018 04:56:27 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eTjoAarmV7/Uba4uRP5+3l8kuRx6NYt0yF3GX1YTBy/yBxBZTQnolayJhPzZuPTIkrOzKS
X-Received: by 2002:a9d:620b:: with SMTP id g11mr11035374otj.15.1541246187151;
        Sat, 03 Nov 2018 04:56:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541246187; cv=pass;
        d=google.com; s=arc-20160816;
        b=zf/TVQEc03OVIqLt2vkUHmJBinZEz6t1jQERR6DWoR6qGMKlJVxZrlqD3bk5lpvltX
         j8DVntNpvfhxCAkbnqbRIEHcJUi15DjclI+GilPJTwegcq/dCzNbMnA7zNruPOX4HxXg
         y6a91L/ySevbUQDKKXWMyhyl26ReNBk4nfDV6wxZaSDGqalcW5MeuqFV+wxfhKpqrO1L
         icm/47GKbf/SC1EKkw+l+PrSUA2RirVtySeSVgXdClWAkny8ewzMXkVFarxIRzXGD8Ul
         YMxqqF9pRKcEr8M/YRX36gGT51Ik4AAwxO4xkoDlgSFg88yLjAig9fxPwPQBlZD1hLqF
         NL9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2kF05ymZl4Wam0A5+2ICCs2zqBXWvQFKd79SZuBo8D8=;
        b=D/gbbb78cO68Xx3Ky9WVkKVd+//4dScCF2hJJYCyumL/hcMhXZYISLZXrpNcdgHuUG
         ZNAHxgXPAMp8c+guqxS0RkUAypolzm8K2ubmVvGGJXzQxyMzt7ewE6DAH4aEckQ0ZhEm
         /Wv/RaUlrq0//bJVUoBsoTqIwKOEn2GO2AFt+v6yeGBdw9R5vkk/XvDyKvG7Eosaz/cy
         fOFuxii2L71GBko1RhsU6Ns/zLdspLMz6NHeY/xc3sWWgYCvusSe7lQosieHgyucZ2qe
         NsI6h8YhgQQPZVgT1UwPru5cT4k4TfNyMGae8AX7m91BLzSgfJkv/tv7x5xfzQBFHQFT
         PEBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=amO+KxZX;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id u10si1490677otc.0.2018.11.03.04.56.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 04:56:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=amO+KxZX;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541246181; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=G1bgRic3QCvmzkM6tVKec4SERDV3QVezR866KwjLKd4e0GSew2u5ckjexSXh7B1Ic6JoXkUSTx97onnZXNw9d+iu5sUi8vB0UPOt1hg76f/MqFbqYQ9yKBZQ8T/g3pVCdxxpMy+LVZtN8gWUAyAhGuLNUCJjtEKPb7VLFTwEfmM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541246181; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=2kF05ymZl4Wam0A5+2ICCs2zqBXWvQFKd79SZuBo8D8=; 
	b=cyllUWPbrLi8TIubuePfYNt6hoAz2cZ7zkn92LQK0r38G61aeTGWIQ1qlfrLXxYTIqHqqHc10ZcoZ06HiwzcdIF39yJme+W8O32Dmz1T5gJyu7ocI4b+CU/X5jqEqdg1FYFRO/WJF+fU4KLkQ/wJ9+1+fG5UmzUcKHIR9WsL3Jk=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541246181;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1017; bh=2kF05ymZl4Wam0A5+2ICCs2zqBXWvQFKd79SZuBo8D8=;
	b=amO+KxZXSzTzOPADgyI1ECglTCKzObNnSpfiBppgEUmhkJRFI1FXsIu8EAu/iFtC
	qC3Hw+JrNd2IX6w32nF3tZNH90KXmph5wUYH4bUBBGcNtU5s1ghVLClJTgxlkSutFOS
	Gk4yzZu+KdtERVU14M6M4PD5bmD8dgOIfyWLhG/w=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541246180058504.3354551901599; Sat, 3 Nov 2018 12:56:20 +0100 (CET)
Date: Sat, 3 Nov 2018 11:56:18 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v4 1/5] staging: greybus: align parameters to parentheses
Message-ID: <4fd4de092eb8e066b64b17f5fa16090f121d3393.1541246060.git.code@wizofe.uk>
References: <cover.1541246060.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541246060.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align parameters to the right side of the left parentheses
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index dafa430d176e..6b1f3a27fa9d 100644
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
@@ -266,7 +266,7 @@ static int greybus_remove(struct device *dev)
 }
 
 int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
-		const char *mod_name)
+			    const char *mod_name)
 {
 	int retval;
 
-- 
2.19.1


-- 
ta
ioannis


