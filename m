X-GM-THRID: 6621495393645494272
X-Received: by 2002:a05:6000:10c2:: with SMTP id b2mr1721255wrx.13.1541771624217;
        Fri, 09 Nov 2018 05:53:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4cc5:: with SMTP id c5-v6ls461172wrt.30.gmail; Fri, 09
 Nov 2018 05:53:43 -0800 (PST)
X-Google-Smtp-Source: AJdET5eQVPrujG2sUpGbD2I4Ak29GHDrs9HPdoFF15e4jpuqxXNZeSWihXsMChUuRRq2n80byxpa
X-Received: by 2002:a5d:4a89:: with SMTP id o9-v6mr1787764wrq.32.1541771623456;
        Fri, 09 Nov 2018 05:53:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771623; cv=pass;
        d=google.com; s=arc-20160816;
        b=bPHow4bZbMsjn8nok6y/yKKsQHAnd/GA9nHaKgfUcWX8Cyk7auWgcsFabr2RHIhaqX
         7XdNiZmisGFJbgtDuuP1u+24fqrR3nRwyXhsVC6t1/1Bkrd2BO51sa7JSCaUFRqFgMFr
         Vcha3MfNX4m9cNKX3+JiWYI/pgLF4/CWh1vRU3IXW+ltx2xXDuA3ZlqbdBwVJ9ZSlCXR
         mYaR/ywS+COoka+0FPhek8D3PxPReHI0Jj+b2xNzxhEOtuCGYvtufmEi7u5nBL6XTb+2
         PkK3gaX/hqRZRw6Gmoa1SJmTVDNDU+JEQN7RqJfHFiwT4B2BCnWeb425ffJYq1CX+A9D
         7wOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JNNFLUEbv49w4UH4t0gWjSnzhe4ROpYgY1N4XaYMx/Y=;
        b=p/ILVSNZRPhyDMyKUNA17z2C+lQuYOgQQfquhCQ2OePQ3sL2t0uEI7hrfDg18iGQb7
         8rXPtEv1GdfMf3t0H9snkpM8rxDrrQuc6LfxuFMv8KAk9TnTZjVGf6W1W7k6iDrCBapa
         k4PFF5A/Vhcps6H2/wd3MHMU2AAJSdbwkmx0t7D0OAhgx0sqsEtCVKctTswQfaALqSUj
         62OQWqKa/E7E+qPfiF2l4oeU7ddougshxaZONbBPWG8hSuySqnTaN6lsG5T5TjN9Xiyh
         H0qdT501NC0KswatumyYSlUP7wVRFJGujv3/viS/wTMmEjj3oNxEQc67oMzwkb5C8+9s
         COoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bEMIfWnk;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id u13-v6si233424wrn.3.2018.11.09.05.53.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:53:43 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bEMIfWnk;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771620; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=cnxaQ2mtd3UaUHIRnvcJ/LCkk5jmA5sOH3h4QtmGH+0n/Hv1PdeFqWM9xwo3HYboNbfOREb8tiDTuy2PZfAiQxcF3/XcKcXbg2R2ATVqRiHgCUV8NiL9W6lvYGkACyGnq/hkw7Xdp6bZWlYV2gQFPR69OkJvdjE3tHCEEhkjx80=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771620; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=JNNFLUEbv49w4UH4t0gWjSnzhe4ROpYgY1N4XaYMx/Y=; 
	b=Zvkq14CteMR3StrEXBpkTFrWP6UZRXHi7zhI+ZSmjPuCa7SQEU8F0RnOlAm30JYpPLAS9wo2EjZA28wmpzUkwiy9EVlBYpZuAnYHA8yZEhzcFFHxBM7jyK1XhmrBvDnKCHZm4TXBvsBOIg9VldKJ2TIumGIPerFAv7wijOh7wEM=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771620;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=657; bh=JNNFLUEbv49w4UH4t0gWjSnzhe4ROpYgY1N4XaYMx/Y=;
	b=bEMIfWnkZOv8wDwMVnwxFrVWwTvawyaLViZyJv2HdAuiEltaya9cj581hxWjcXaL
	BN0Szgtg1fTp0FXnkK1DW9C+cTH4VzJkOIkjxyznWr3XnZ9K27zqvnpMVziWoNEU8Jk
	MRCS35MY+Uxe5zeB0g1HB20ocSufZumhM4w9FzqA=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771620545953.7918914964386; Fri, 9 Nov 2018 14:53:40 +0100 (CET)
Date: Fri, 9 Nov 2018 13:53:39 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 03/15] staging: greybus: add a blank line after declaration
Message-ID: <8a1f2c0553ce7d4719c5684370c78c0638624378.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
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



