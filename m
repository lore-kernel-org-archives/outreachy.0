X-GM-THRID: 6621495393645494272
X-Received: by 2002:a0c:c602:: with SMTP id v2mr3092039qvi.52.1541687076382;
        Thu, 08 Nov 2018 06:24:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:111a:: with SMTP id b26ls825326qkh.8.gmail; Thu, 08 Nov
 2018 06:24:35 -0800 (PST)
X-Google-Smtp-Source: AJdET5fceRZI+NbLp8PrSHh0aLf+bu5qLxuUGGz5nm6ngCBkzfaiIe54Musyg7fiUYTY8Zo7bGb7
X-Received: by 2002:a37:e208:: with SMTP id g8mr3015190qki.14.1541687075506;
        Thu, 08 Nov 2018 06:24:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687075; cv=pass;
        d=google.com; s=arc-20160816;
        b=DAgJTMJjVGtIDr8145NFpFWSh+Cbpa/TnFaUPwLNic8OlfdFbP36oFTnPRTi/Vputi
         VZask7yUE0rkbFtaO8o2dFnZW8hke9+DgPcXuX3WUF3x2czRwXeKEtgbDaVzg+QjYIYP
         SnqzAQHzM58StLUoyZYpZTxumDDeRkKL7+1zYlI+1k7KknP21+AYgIJfR9xvJVeQjUVs
         Zxktud9Q7yjhzC7Ul1SAsDCr4lHOrSjkQF6NxdfhSE2GPhsukdWIVcDEpm/7h3ZiZWPZ
         SLjxHAjxjY1WgCY7TqLfiQKxIFXAq5GDocuHgS8bZGZffNEUKOzNcTi3tjHiyGZ9WuJL
         cgeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OY6JWQAEwgZDlb4/qEjdQYPAavF7peq17vyBu6zTbGA=;
        b=gHSRdtuD8O2nUmxAe6A/Pp4gbMcDgYYekAGA31jwrR8k3ZRg/QcwbStQIP5vkt9nWC
         IrcU4HdRAu+7lQj+jQpj1JWpexdK3JEZEJ5LSb2+8vAw9rg/v56hQGRbrh/ulbzYjB74
         Htj4QvS6LWnZXV6ALTJwL6eLkt7G4el7oLYJeyKoFSraNl0OOGl+ka/EsgoirBWj2OFB
         /ouQgbXXOXy4JKUMbeUoWmS4TC1gl014J3xQxk2wHnodMClytoB5yzBORsrDkkGeDzc1
         y8ieSqVtYwBoC1Ae4rxXvXVaoLj5WH1jl+fISZl8T2eHprR9FADkTBoukTQRdi/QKCtO
         YSsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Fiyjj+0h;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id q124-v6si199656qkb.0.2018.11.08.06.24.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:24:34 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Fiyjj+0h;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687072; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=XosU0lagebvoLGJPc7XMCfNwSHI+Hg15LQZmanW3enoPStgcxB4OLOpYDKSmLjcOmB23Bwe8SyPNTJ7s/pGSXC9ZWi8X+JIaTulMoNwDXEPu1Dzb9x7vGjnlJVxFv2Rqehtdhw9GnJzxbtpjYI7RkOowdUb/VScNAwsxE7Xw8xk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687072; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=OY6JWQAEwgZDlb4/qEjdQYPAavF7peq17vyBu6zTbGA=; 
	b=dodeCVKbZEoGwF9WJpwahiP5QfpskKDfVKftn6g2JMtmlpNm2JwMx/QM570wVtxAygHtQLLfyZfS5FLOOweOBkItp+sQywrRv7VmrhbgOIFJn9dEGXsAkOcUtAISWJ6nQGkr828GuV+38pLxluR9Fiym6OqgXW68KI9au0KsIHw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687072;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=589; bh=OY6JWQAEwgZDlb4/qEjdQYPAavF7peq17vyBu6zTbGA=;
	b=Fiyjj+0hheNdkBheczuvfqludr1xwbm9qz+o3jOHe7o8s3llaYyNJiZ68qcn8HJI
	rJOm7CYXUSm6q9j/jJgTnkmPEDcGk+Msa77eyHbyCw6dFr3XYmRmotvVenoa/ZqRbRi
	Us17+U+or/9mjMlM214h/z5d6pzrP+FkD/AtQT4s=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687071474654.2347719248128; Thu, 8 Nov 2018 15:24:31 +0100 (CET)
Date: Thu, 8 Nov 2018 14:24:28 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 04/15] staging: greybus: fix SPDX License Identifier
Message-ID: <cec768a03414f21b413282b521cbbe781bfd8e12.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Replace the SPDX identifier with standard C comment.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 9c453e0b1b33..ebb7a2ee17dc 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus CPort control protocol
  *
-- 
2.19.1



