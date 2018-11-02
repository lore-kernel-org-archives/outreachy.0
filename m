X-GM-THRID: 6619380955766325248
X-Received: by 2002:a2e:954b:: with SMTP id t11-v6mr682515ljh.28.1541194750102;
        Fri, 02 Nov 2018 14:39:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:42c7:: with SMTP id h68-v6ls321137ljf.3.gmail; Fri, 02
 Nov 2018 14:39:09 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fz8+56ATELqYw/dKxn8kDMcwxORxVFQCFS72bqGJEYuGxTlzHutyf74/k3Ym2WDTP8bwP2
X-Received: by 2002:a2e:42ce:: with SMTP id h75-v6mr1250540ljf.27.1541194749380;
        Fri, 02 Nov 2018 14:39:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541194749; cv=pass;
        d=google.com; s=arc-20160816;
        b=RsffYVRw9WtYsnkULcBY0U3srmd1cdmobZtgLKNXrdlYzNXKQV2zcwdG8i9bza8ssV
         a3DOhadv0MnfqxpO9Nl2l2doLzHhgsB1G3D6p2tIZJY5+T2GWXgIPCezzYEMn4J03Zma
         qq/QnpKv7dhBem8r7fWpim4WtXvxpIhRKQJ1OZ22KKGxIl69coqSFuhNq/K1sOv1p8jr
         eUvzOHZiF3mA/RWhw7YT/5ShEyRjPWQaw91H+FiNPiYf06AIAcqwIKozdPppfpyxmISI
         tywz6ysIvYwxgDk1IxXS9fQbkBziG7l5z+WE0cNPC2DLvuCWRxsgQ1RpTPgbXROSigRd
         RSkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9gvf7ioKdpIC/W1h1XG55oWwZqpLPMbumb83SxNGOXo=;
        b=BbAqNOl4mIrtfa6CcESrDdxB+VHw1SehxCOqnRVgUX/t+U+M+XAuM51uc7Pbzb+6q+
         fsbORBzRWGjwJWZ77ORiiQLVaepEAQvVcruhgEZO/o9Na7U+oIeGufiUFi1I3T+TSpkR
         y2u3JXh9abLma3mwCX+NOMc6Cm3UWKvB6l49UBwcfCb+9Sg3CG/xzi5YypXwmzgT3bHX
         vgEXRW1kpvrlVe7c7EnwilnwFuX0n5uvUpmmcJEdjJSdjcUSM9wP0AEMZ1Jy+GpR/4vy
         53Q+mBZUFq7flAw9pziZ9HPFt/TTY1JKv05+tnhC3aRXdY9bPyADrDkiEUtVfVVdTOmj
         LPlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="M/TLwc4J";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 73-v6si919473ljc.5.2018.11.02.14.39.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 14:39:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="M/TLwc4J";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541194747; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=dLSV9vU3Z48hGagALjQjtuM+SvRwjaMQ/0fmn7sDg7YlbnuZ0z0+fNQD1G/9ITcZQlW0StUuBmYfSmuYrYpIyeI8ffus/KdlleszU6jtI6RxSBvzWCO6Xgu7I6qhDhsgk1GSfn6TsMLU1Ib3X66KpINP34RjOsVasx6yoieStCM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541194747; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=9gvf7ioKdpIC/W1h1XG55oWwZqpLPMbumb83SxNGOXo=; 
	b=O5qK4kUT45PUeIQpH6k05FnQXMf4vQNHeLO5V4VRkdy3pk3JNBlMNlP5K62TWq8hq6jsODW6D82EYv4xFovL2vwbYBXUhHneU4ruwGNQFxY+O0BoLOBS9CoBOcpima954Xy+0Rl96bWHiLcskM8jmivLOcz3VnJpLW0umetpV98=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541194747;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=677; bh=9gvf7ioKdpIC/W1h1XG55oWwZqpLPMbumb83SxNGOXo=;
	b=M/TLwc4JtHrGBLB7OBd+sGEZzVpoYTnQM/9xgcm/XO03P0q7N8qScKf75Y29+Ukl
	/82DTxyopxmRxDMYX2aB+jonErjd4h+gYJWSv8cOwKDH4uOzZlCTBzw9AszLY6k4RYL
	Mhc6r8O7aMpWkoyi35ZhUP87F0vVHin3bSxJzKF0=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541194745767174.47006777356398; Fri, 2 Nov 2018 22:39:05 +0100 (CET)
Date: Fri, 2 Nov 2018 21:39:04 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 2/5] staging: greybus Add a blank line after declaration
Message-ID: <74afca17073a9f7a6aae8856dd3b6525c942c24d.1541194567.git.code@wizofe.uk>
References: <cover.1541194567.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541194567.git.code@wizofe.uk>
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


-- 
ta
ioannis


