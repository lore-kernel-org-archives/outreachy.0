X-GM-THRID: 6620547167797903360
X-Received: by 2002:a1c:f704:: with SMTP id v4-v6mr50465wmh.20.1541466363234;
        Mon, 05 Nov 2018 17:06:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:81a5:: with SMTP id 34-v6ls1344464wra.9.gmail; Mon, 05
 Nov 2018 17:06:02 -0800 (PST)
X-Google-Smtp-Source: AJdET5dngrkg0UR+s/bzy9e8DNmWODcoXKTMDlsA3wEdcKHlFzoP32p2uZV3FC8jukLYyY9bUf9q
X-Received: by 2002:adf:eed2:: with SMTP id a18-v6mr636360wrp.27.1541466362478;
        Mon, 05 Nov 2018 17:06:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466362; cv=pass;
        d=google.com; s=arc-20160816;
        b=VxbTt0v0BYpbKU4JhjtGhEodiprDnAq0+FC5/iFYAAIBQOi3J8uuF5gGMHk5iUnnfU
         DNAatFNq/NJNZvp39oAnl0fFODjMjyhXhAbOlnsQzyEjM0mWHUn7MXwg7N0MaaGwx6OL
         DQz1aptHHR0J7/gFIr7x8ElFY/KrXD8P+qwCSMS9PjctuPk4gks2sZMF64QurwF55m93
         ZnsnPry0dDEBYpN5FGHDJD3z03r7/7jwSPgJye5exAYPmwYE7V0MAdMnJ3tCPYNJK03h
         93vdh0A3YsJmp2WOvxdZsJVlMHDaY6J6WRaYfe3tpMCAIM8RLmWElM7XLFN5KghnR2Jr
         4vWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IbC61pwIpTqKZ91OnHlirOY1h8j9JAMAb7qk1UkUiBU=;
        b=HN6QPAEukp95caa8/e/OHQYnBI4oC6r9OuZVKA0046/53mnwtxyfkt8Z3ugoES4Qm6
         LL5NuzxjczB6lXbtAU4iBysoOE1TM8qmdvNDKU1tWsWUn2c+FJdKwqJpOV5+vKqOFjJ2
         JlC5Tyvadeug4I3rLDRgtDkv+2NjSUOoV4ittO07s46TScyF4a0pSqHrjhFlC+/JaQIP
         9xdjJQ6kyetYQyoBKgrtw4UYJw6Z42Q+lTzWhZCCHsDi3UqMHZKZnBw5v/7yABQ40IHM
         ItwfDtkzGym1mtW8fg4RKgAUCwqoDG8u9jg8AwL/uxybzZm7YPFKBG82UK10gsZMCITB
         VEdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="JtmW/wdY";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id n6-v6si876417wrj.4.2018.11.05.17.06.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:06:02 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="JtmW/wdY";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466358; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=GEHG2Njdx55KEuT7wdtSJfGD4yUXxahEkRxE/ryexKv220rj/kM+dIF9zuE2a35w/Lj5SdHQQjYwTxLjRhbY4NoEGfKvg+fseLmbgGCwt2v4Rm5lgMmi2HUxSSagyV3lqF/Fr3bICCMBIKy0tHBLMj60HyiPEOdqXjZrJyFMfzU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466358; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=IbC61pwIpTqKZ91OnHlirOY1h8j9JAMAb7qk1UkUiBU=; 
	b=DTSMyx48nCBOrgF27DOV4fsRdvAybJqV1aHkkliKk72K+WiGv9ADWBevnjvaoOAKtdUkTzOQRqNTEOT6KcBiZd2pUKKKuz2HUt3hfExZTqoUR/TQE8CGZo6h4yowZKGPVX6b4OCljObX9erXAJYaOL/zDywKkK8ToredRtqt4YA=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466358;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=887; bh=IbC61pwIpTqKZ91OnHlirOY1h8j9JAMAb7qk1UkUiBU=;
	b=JtmW/wdYQucw+1LEcCr/Bhp48zGO05ZuiLtd0OW3vyvdA6H15R5nvUlzHxmC56aw
	HGP+XqUdmPEtBjPrVIR6eSn3H1VjfQFPm80G3bAa4OHoHvgnwePy5UNeGJZ0CTmYtvg
	nemD7R2ILvQ46O0WjdVO3eqvZBlHkn7xx8OBNKX0=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466357436983.5340206083786; Tue, 6 Nov 2018 02:05:57 +0100 (CET)
Date: Tue, 6 Nov 2018 01:05:56 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 14/15] staging: greybus: remove comparison to BOOL
Message-ID: <105c012b38ed3e3645be74b8be3e99b5da57d707.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove two instances of a comparison to BOOL.
Reported by coccinelle.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/es2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
index b082d81833a0..b4e3d6a3d523 100644
--- a/drivers/staging/greybus/es2.c
+++ b/drivers/staging/greybus/es2.c
@@ -316,8 +316,8 @@ static struct urb *next_free_urb(struct es2_ap_dev *es2, gfp_t gfp_mask)
 
 	/* Look in our pool of allocated urbs first, as that's the "fastest" */
 	for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
-		if (es2->cport_out_urb_busy[i] == false &&
-				es2->cport_out_urb_cancelled[i] == false) {
+		if (!es2->cport_out_urb_busy[i] &&
+		    !es2->cport_out_urb_cancelled[i]) {
 			es2->cport_out_urb_busy[i] = true;
 			urb = es2->cport_out_urb[i];
 			break;
-- 
2.19.1



