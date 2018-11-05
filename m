X-GM-THRID: 6620379413564358656
X-Received: by 2002:adf:9bc9:: with SMTP id e9-v6mr2219545wrc.2.1541427224025;
        Mon, 05 Nov 2018 06:13:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b7c2:: with SMTP id t2-v6ls5464378wre.27.gmail; Mon, 05
 Nov 2018 06:13:43 -0800 (PST)
X-Google-Smtp-Source: AJdET5f5vQ1/MoLk5K/8Dn8OGg4JjPMGSM0Lv3/uz4iMZark9x4R9DpJARpa7lW06cH4fda+9zR3
X-Received: by 2002:a5d:6112:: with SMTP id v18-v6mr2194759wrt.30.1541427223202;
        Mon, 05 Nov 2018 06:13:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427223; cv=pass;
        d=google.com; s=arc-20160816;
        b=yaJQA5L+sXD0/MOGK06HNJdehST6UsRZ87ySZbx9wTrADJ1SGhIRWqn+eqST7xY8qG
         cEhvRu1W5/MVYpASPx58zl9nPfexlei58OSiQBB6aenv0liuDZsOUlQ2eX0tZ8tvYfax
         bp2E0TEOaEQZ47fHehupNDYsTIbsJJxi0D12iKBJK90+mmZSolgCPnKD0trjUC9G/j8+
         DODoBohMLngz5LZag9hfSp01nU6d0InxK3OTQMNBJrGHvTUXlQp5euYa9rYD5/fVhNP+
         ekUS17QqyU780BBmj1zv2BHgCKOgt0t73SgZVDyqsUdxuiAX+PbsAqF7NRpAqL89fPvV
         cpsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0SezbZ0J/0YXY3zh/ciozBNfrr1Yjp/4Z+PE+/dZZlQ=;
        b=mR2Z5aDPuB/Jlu6dKdR0RbbMesdVN4nUQZJSaAsWCMPKVzHagGLq6JPCVyGc31wbRi
         gMFofiDYQETsilnSTTyrvBvkjzqTm2VrqeKkoU8IdhMmXPlnWr3POOIjFGmY4rtYJiIF
         8yNxXsgOxee5FdINPtNlKy3pDVlAMZMGAjgvGFUX1E6J27pSSRBqP4YtMnex+88StjWw
         lgg2Ibq+yvKIJGDWvnIVYzF4W3PQ+z0T6akZVP8mVAUbpcxPlgsxlMbLwNhsSsXmFNT7
         7oy2gLWwF57xrRiMJVCh+wh0Vf4nT7oT+fPJCqfsFjh4O+dnhfRaWOtuFaC4KoHOh8xU
         Peow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=JbaaVzLo;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o8-v6si68376wmd.2.2018.11.05.06.13.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:13:43 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=JbaaVzLo;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427221; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Z/f/DO53Uk6MBU9Ia7hm7pD/0+snCX0le9lmUN9f53K/OiAgGg4mQwac8afCvKbW4JH126n8amhbUfL/scq5uHkFz2lLckq1GVRP2WHgR6LmM2/nEocHjdr9pJOXK/JOPbIRuydOwZCeVJ3vzxhXzK5HKybORerStlInxwk3Gco=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427221; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=0SezbZ0J/0YXY3zh/ciozBNfrr1Yjp/4Z+PE+/dZZlQ=; 
	b=Celj8RvNa76qNhBM+SnOw3cJShXTrdTeesoGLpmQq6Zxsk55XBdK7maSCeDTpmzhY5lN75OIDaTcQNeDaf9dpz72VtkZMkEsMQBIES1La6uSQAVSG5W3FAlhZ3JBhPv2M32s5IFIrumk+5cS9zTq1TvVfdSO4liUl3EPt85spiI=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427221;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1259; bh=0SezbZ0J/0YXY3zh/ciozBNfrr1Yjp/4Z+PE+/dZZlQ=;
	b=JbaaVzLoM6S5BXqCGZ4JhPAPOFVE7wZSqd7fBynu1HQIxjw0VfoEcq7+U2tV5nn2
	gh453tQLLaDKPE1FfcE1uFkoBO1auaRF89++uGv3Iiy9bWxum7DsWCFqQT78vyXINQd
	xgVeNnpDruP8PJvrHCvRTZ+vK6z93CQt/E+s04BU=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427219220817.9407571589725; Mon, 5 Nov 2018 15:13:39 +0100 (CET)
Date: Mon, 5 Nov 2018 14:13:38 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: zoran: remove unnecessary braces
Message-ID: <1ba800e85e010e26181be78c0fc33a9f3910dd2c.1541427136.git.code@wizofe.uk>
References: <cover.1541427136.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427136.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Braces are not necessary for single statement blocks therefore there
were removed. Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/media/zoran/zoran_device.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 1e6782b72369..47214e2de04c 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -285,9 +285,8 @@ zr36057_adjust_vfe (struct zoran          *zr,
 	case BUZ_MODE_MOTION_DECOMPRESS:
 		btand(~ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
 		reg = btread(ZR36057_VFEHCR);
-		if ((reg & (BIT(10))) && zr->card.type != LML33R10) {
+		if ((reg & (BIT(10))) && zr->card.type != LML33R10)
 			reg += ((BIT(10)) | 1);
-		}
 		btwrite(reg, ZR36057_VFEHCR);
 		break;
 	case BUZ_MODE_MOTION_COMPRESS:
@@ -300,9 +299,8 @@ zr36057_adjust_vfe (struct zoran          *zr,
 		else
 			btor(ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
 		reg = btread(ZR36057_VFEHCR);
-		if (!(reg & (BIT(10))) && zr->card.type != LML33R10) {
+		if (!(reg & (BIT(10))) && zr->card.type != LML33R10)
 			reg -= ((BIT(10)) | 1);
-		}
 		btwrite(reg, ZR36057_VFEHCR);
 		break;
 	}
-- 
2.19.1



