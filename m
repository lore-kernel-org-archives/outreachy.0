X-GM-THRID: 6620380698493583360
X-Received: by 2002:a1c:cc9:: with SMTP id 192-v6mr840997wmm.8.1541427590458;
        Mon, 05 Nov 2018 06:19:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6887:: with SMTP id h7-v6ls4309129wru.20.gmail; Mon, 05
 Nov 2018 06:19:49 -0800 (PST)
X-Google-Smtp-Source: AJdET5dhNJyPZUBrQXQK66rKGr0R9/LfL3b/Og5SSWPPGeKbF/vgqe3kE2T1T3+5wzy8o7hrCyEU
X-Received: by 2002:adf:8229:: with SMTP id 38-v6mr2121255wrb.17.1541427589604;
        Mon, 05 Nov 2018 06:19:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427589; cv=pass;
        d=google.com; s=arc-20160816;
        b=yIWV7xnXTficbFisLCVpKHC9ynaC1drbjtiDASRabrOCuGqRNaX3Haqm6TAhWPyCC7
         PQtf9wGQq/Lat7mLe4tYgJFaJ7m1jlYkHKGhxHBBuUCpp/YEjnajwraKox79kcNglcjd
         J3e46cG5b0E58gFDSQDXJTfU5YPhmY4O+Y2jyZ8ZTEnKYbpatD5542gBz0+yyWVKwCBt
         2P7XXGP/6DIzPulHuvBEzU6kP+rKPP19TaxNfzu+Lz9+T4Y8O/1iPlKKY7mpwSZC8Qv7
         CtxwCOAxUxsJfsKBSgwgOKO3ksOLUu7MWrhs5jW6839r4lzmi9Q39ElSFRevNqI1gL7/
         gVkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0UqVsD5769umg4XBn+5kgTa0R08TBuYzYIA5vaCGKmg=;
        b=ioI4XxaP3qBMcMWAtdZ8BAAhWUNVesUkdVa3nuyt4Pvo2/XWwJMd3YLFFDEX05CERY
         t+/zYi6CECzEZMdd4tZxG3/lhppKOhiHjXUq4Iq8S9JPVOU0f3oDh3NTzQd4jWNBW2uL
         l81GuUElvct5kKV4cnwTTYGWCWvLGw7Mh63cTjjF0gTpcLyBndxuk3AswrnRitpmFEZd
         qlm9wB9qQeql1eGahwhUZDMaKWiqsC9uovuaXVSZQWq3LJcvPgVOjohJUSq+Z8lJOT07
         bptitR0rmSYXl9KI3og2SpK5+ZxMqWqgQq7Q9b4ls9UM6chwsJo69fc4FfUwkOwQdn/C
         fCxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=KKW+qlES;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 18-v6si233678wrb.2.2018.11.05.06.19.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:19:49 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=KKW+qlES;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427587; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=EJKzK2ogzllD346jZfPvHYbYrHYk6cReytTj6wuLa+q0n/BKsstG5+zoKRf0/jDw67fH5MY4EPp48QYFXy6i2hWPFxxveOp6X7R5i3CsjJx2iVwBedhr/+zMG+rYIDoFaBMC9upkS89PF52MrA46TvAfDAzwzO3KLcf8d7kSGPY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427587; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=0UqVsD5769umg4XBn+5kgTa0R08TBuYzYIA5vaCGKmg=; 
	b=INdTxZyYr8oHtD9gqkMrZIDAYb+5fxxngRkMbT8/qnXYwz5XPMtr9w6/YEq30bxW7/RJu/WAma9ZhBloPnPPnz/brmuor8acBsCFPketnXY5BEiVXZlloPcN5+tNxO2VgXhLuwSr7kTbdc0ywnbyO0B6r4DzBDW2FDv7copvUfo=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427587;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=621; bh=0UqVsD5769umg4XBn+5kgTa0R08TBuYzYIA5vaCGKmg=;
	b=KKW+qlES1nrAQxTgZLRwWfhkFgQpJaD9kPHzDG9Q6ezBjZoaHxyKPc+5O33kYwtD
	042tjzmwYpYMNOGPwOH6w3OETmXcYd2yHn+5R+ng05SxzAo4Alyh/VVIP1JRp36HIqN
	ltL/uWxtSFqPJPyAEsxuQNLU3GEHY2w6/r2CfHaU=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427586601166.4752521726915; Mon, 5 Nov 2018 15:19:46 +0100 (CET)
Date: Mon, 5 Nov 2018 14:19:45 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 08/14] staging: greybus Insert empty line after struct
Message-ID: <109cdf68802386216117767a01beb729265e2daa.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Insert empty line after struct definition
Reported by checkpatch

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/bundle.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
index 8734d2055657..4aaf7a0880fd 100644
--- a/drivers/staging/greybus/bundle.h
+++ b/drivers/staging/greybus/bundle.h
@@ -31,6 +31,7 @@ struct gb_bundle {
 
 	struct list_head	links;	/* interface->bundles */
 };
+
 #define to_gb_bundle(d) container_of(d, struct gb_bundle, dev)
 
 /* Greybus "private" definitions" */
-- 
2.19.1



