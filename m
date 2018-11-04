X-GM-THRID: 6620120308618625024
X-Received: by 2002:a50:e78e:: with SMTP id b14-v6mr2007825edn.9.1541366880568;
        Sun, 04 Nov 2018 13:28:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:52c7:: with SMTP id w7-v6ls3738290ejn.11.gmail; Sun,
 04 Nov 2018 13:27:59 -0800 (PST)
X-Google-Smtp-Source: AJdET5emh4n8O1u5+Lx1Z7/Xd86Vb7l0pNqE9Gt2/XlZsVb6P8KqCqxgDYYET6tBizEqjtfnvN/R
X-Received: by 2002:a17:906:4f95:: with SMTP id o21-v6mr2413618eju.6.1541366879675;
        Sun, 04 Nov 2018 13:27:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541366879; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ihz8CpaQv2SNoTD4GPPTmY7OMaBaAxo1VuRsvh+pu2bQw7BmImwvPHfpuVwU0kZop5
         hbJfZydQciZzi2jujMmB1jz52R7Zn+6yEJ+9Jwly561uCOx+T8L9xyShrqRc544TcEX0
         NG6r/+M/VRAea5/mrPVc/YgaJtkaHLtdAXd8ZxV4m1pu7+ajilKJF9ayg0i7c25tiHGJ
         ImPs7i/Un+oDoJKhH3NyFhlwFhgyGFYtV4beEIH2feg0UWwSUuy93SWqU/Q5diz8EwHI
         +cR52xkyy1/dCRg1u/PQyX81EyalWLjTAMYFfXTP6nTqaOMcGw9PZ07GpmPSLmyJCtbg
         Nlsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qSXoEyfRVMOYewzunCwjd6Manu+MQC0Ke/9TQ7P8t0Q=;
        b=sPXDkUUkEn43GXjDH2SL9AC6T7JXpCwUy0Patsj51z2u5t3vJQZIsZUpEVvIga2KeW
         G4aYO0obVq0mmZuE8zhbCRBcaiOYAn+2AdNx+p1EsjCWXwqh/x4ztBAzRrQdYkAp3xN7
         erH+bu/rxlSrjUy9/dI5dnO6VjAnNsTyc10jrArm01i2dgGLqD/eZ+o7zzchm87IxH25
         Lm51JQyYGXO9OR219+HeWTdl+tDzstTXHQaXXESKAfI7f3BIIu/kRRwFTsRa8mcjOUbV
         CY8suC1ojUBez26KkFcoa24nC3KszFFSbgLqR8OHW+H7UPLOJXToxAf1/SqgKyn+OgOT
         KOXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BolJ55xW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id a35-v6si193293edd.1.2018.11.04.13.27.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 13:27:59 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BolJ55xW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541366878; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=MLy+CCbtAA/CPUCvIWbSah0zTKpVgU2j1C62mrpmlQns/DR9unJdE0vTqe8+tYqOzq9tiKfqpRlINkRp3CN8dVpHdrgFggd6LT5h6OSb2ShDcLYYhh7nJYEFGEITDM7vs4XDXlzi4IIhOjXADTxwEsAeHm7KIVb3BjIifWAuEUQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541366878; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=qSXoEyfRVMOYewzunCwjd6Manu+MQC0Ke/9TQ7P8t0Q=; 
	b=h3J8RDmJAPbORoT1QeRwTsMDFOBI3B2Kj7GojNs2ERw8oV6Gk5/u5kAIWaVd8aXUH/9/X/hNRpOA7m7iu7fRbvNaGfLjH/asmdm6M3iqsWHV9xXereVNQz5LN8wxijz1zYgNjQVndVSMdk3ZwkRAaksKivmGWFuvm5iNL+XRK3E=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541366878;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=887; bh=qSXoEyfRVMOYewzunCwjd6Manu+MQC0Ke/9TQ7P8t0Q=;
	b=BolJ55xW65mS2KZuI03JA2rU9+z6TvH31rrX+XQL5P3yod5gUttYipAf6Y0GZdp9
	7sy629s/M+Z1SbBmMfvKo0Ynv9m5i8tktYo6XaDgGDx53JnW5vl9qgOW1T5M0rAfH6f
	bTn6gnWJd1b1NAE/1zgMlD1rhmruIW2cQ+uAjVfo=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541366877129532.1899385198731; Sun, 4 Nov 2018 22:27:57 +0100 (CET)
Date: Sun, 4 Nov 2018 21:27:55 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: greybus: remove comparison to BOOL
Message-ID: <1cee89fd0c01cad6be8c5bc21cc4473090b5c07e.1541366816.git.code@wizofe.uk>
References: <cover.1541366816.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541366816.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove two instances of a comparison to BOOL.
Reported by coccinelle.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/es2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
index b082d81833a0..afaa6d15c23b 100644
--- a/drivers/staging/greybus/es2.c
+++ b/drivers/staging/greybus/es2.c
@@ -316,8 +316,8 @@ static struct urb *next_free_urb(struct es2_ap_dev *es2, gfp_t gfp_mask)
 
 	/* Look in our pool of allocated urbs first, as that's the "fastest" */
 	for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
-		if (es2->cport_out_urb_busy[i] == false &&
-				es2->cport_out_urb_cancelled[i] == false) {
+		if (!es2->cport_out_urb_busy[i] &&
+				!es2->cport_out_urb_cancelled[i]) {
 			es2->cport_out_urb_busy[i] = true;
 			urb = es2->cport_out_urb[i];
 			break;
-- 
2.19.1



