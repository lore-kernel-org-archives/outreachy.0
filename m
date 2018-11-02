X-GM-THRID: 6619077441472167936
X-Received: by 2002:a2e:3805:: with SMTP id f5-v6mr939010lja.24.1541124253570;
        Thu, 01 Nov 2018 19:04:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:67:: with SMTP id 100-v6ls2146706lja.15.gmail; Thu, 01
 Nov 2018 19:04:12 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cbdcKHvnIlHUn8JEaI/prutaY6x6rp3IdO+n3zFTEeG8wJeAhZ3TWpYtGCGvoC38mhoQbv
X-Received: by 2002:a2e:3910:: with SMTP id g16-v6mr942987lja.13.1541124252689;
        Thu, 01 Nov 2018 19:04:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541124252; cv=pass;
        d=google.com; s=arc-20160816;
        b=iExxw3FBc1dqNXZ2RunAbs+yFNwQGJt8WdkOGvmgFMMbmocrv+r7CEUr2zJdzJ1EMr
         HRM6OpTJmm4gpmkLOKeHxyNKz/SL5sVUqbHLWw4sJNKHY5h8IqWvnyEkQCRBKyfyLu1w
         x7PRos31M7s3TyIRrHC+6YYBOTN4O+OsTbOlZKuGlkY7XH3zxGBynefjqNeb8kkUXv1v
         kCpwBFpPMQRhQZ+TkSeuCcW2eDlXm9LSB1OhU+1k/gjCvqCuU8sXsI8stI879kyLzstL
         yQpTqvSV1dV9seChy9T91Uk3bK3nTCyKxQehTHxbLa4d4KzTedo7Yk8+6rr1cXw59+Cl
         6laA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WCJSPJ/DxQJSKaVK8s4p7mgaXOH5rxd3XRDYAk1nBck=;
        b=zD4gZUipISKOF8M5+lAmnirUKsNY7yLAWn79h7zmaIbEAXBbmlIc2JvlglDQ/U0/bK
         PACN9CwjGAKFm/ip5kXBPdHO7tmaP+I3Oep366KLxYqKNEYrq5Zyn7B6GE9CZ4c5A67A
         eWV9mWcj1F0SSLTX92arBIpg5fArz5vttfO7PfCzDcUPyZqhUp8M0SBhcZrPh0va+ygb
         fmnfY/ocHVQsoI6gezboHP8BZ+k8CEdUzHH6wAfuvj/AzdruaOeQNIoERnFM8Zw84cXY
         D16661W8nwKKKwgXT59iFtVoUsDAjjeQH2r2mXlAs4cYfScPeX6yr/mlwB+ziruQt6tI
         nRBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=YBn5o+97;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id d14-v6si390181lfk.0.2018.11.01.19.04.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 19:04:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=YBn5o+97;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541124249; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=V0HwbnK+VfpyO6giqCx7A1Kb3sfxl55Z7w1R4SUdF0r7aybypLE13kP512aalg1RcmCV+670HsYU7erl33JfTqn59oGhsQavE6BZ7w9OhzF7+stTTdFmjWa2eBL4+K/4hoQaS1zGK5v/szJStzEcJXntReGxSHeWW29Av0ffN8w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541124249; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=WCJSPJ/DxQJSKaVK8s4p7mgaXOH5rxd3XRDYAk1nBck=; 
	b=gO4Dzh0+L/djka7aUlfHkna4U9PogIDq7ayTKtCpHp5PCH898UjHI//x8PYdXX1ZNcpj8aaRXA6JCVpMVKlnqE39keP11AC+P1SRUn0NikSs7mTesx7qrDFuzd24DcGR6DfFv3UoBzhEBb55b3h0kU7w77CJ6cLclTOowPWkRD0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541124249;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=656; bh=WCJSPJ/DxQJSKaVK8s4p7mgaXOH5rxd3XRDYAk1nBck=;
	b=YBn5o+97Y52K5COAqPFnpadGVG44lzYrjFNnU2TVPqiM954hMzBawuUxPw8bPql3
	uwtHDfhzBa6rfiG3BaBhGuIIs+odhx4YJX6cY7JWMoJptf4+KOpfGBDG6G0rM7IwXeG
	9lLZe+7a6kTKoGBzM8bZFugrUZQLvamd4xig6Qak=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541124248184411.6808974111399; Fri, 2 Nov 2018 03:04:08 +0100 (CET)
Date: Fri, 2 Nov 2018 02:04:06 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 3/5] staging: greybus Add a blank line after declaration
Message-ID: <2e561efdbad10ccafa39580d2afa580611d056bf.1541123999.git.code@wizofe.uk>
References: <cover.1541123999.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541123999.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add a blank line after the struct declaration
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



