X-GM-THRID: 6621495393645494272
X-Received: by 2002:a17:906:c9c2:: with SMTP id hk2-v6mr430609ejb.15.1541771701818;
        Fri, 09 Nov 2018 05:55:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1b4d:: with SMTP id p13-v6ls284578ejg.5.gmail; Fri,
 09 Nov 2018 05:55:01 -0800 (PST)
X-Google-Smtp-Source: AJdET5f5bchpcvs6wrI1TXsDEawKBQ9QNY9Yb5YgyFMYQG0vni+GVCLi7qQxk/Y5lyDjTVBwFoIQ
X-Received: by 2002:a17:906:404f:: with SMTP id y15-v6mr433522ejj.5.1541771701063;
        Fri, 09 Nov 2018 05:55:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771701; cv=pass;
        d=google.com; s=arc-20160816;
        b=nNhVSD+nqmN9O+R7QSyD+8/256PcgIWIRthd3SJ00aFI4+dkutFbKagbIZF6CIHGmF
         u7ErzaUHcKDEz7rBGhRFKdZ3yzjhEYzJePGy6O57Fr7l5a48a+yo/a/J0cDYLorGkqI3
         TtBEGJzHSzKHEF8tG96uS1/XLUFSaNw7qqnzRuat5l7+KuvxhRE2+krvPlhV9oprf58Z
         op4TO87yBrNR/EoTKcGL39R4iFdqzQbevWW2hUkRUgMRfuVkaeXlZ1bsll9oHRFl/8xM
         X16wDuiVTwsqb+SDthro5UrPWRnDDRAT9UKrn+F2RSBBAMwcv22fYUI4jf6px0fmVYdp
         kcQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IbC61pwIpTqKZ91OnHlirOY1h8j9JAMAb7qk1UkUiBU=;
        b=MyC1Hyvvr2gHP550yGuvfivvSQiJ0oLATPn9mLTAjxB78sGt6P2/1sZMuecVVt3unR
         YXIUqJEz/CFAMS4vYj++1RSIsynYvLfZlxsYh1E+cXEbD3g3eSPI8ib2oXjUpSI9HHjV
         K+OjQ0a1O32+gdJ7rhkhKRqlPdaq6t1pXoylYyezIs5Uo95pEbJzLX179bo3GCysIMjp
         dI56U6TwclIZDJw+VGSNmffzWSNbWAvoC1pIFtmwl0C7J2a9rHBWDAMsNWoH5Xsjr4L3
         0htge+jSPQHM8C/kcRcRp2PqdSAwV6p0/RXsKi/+sI9PwyEVsWDFgmLA7hwyzhjujhI7
         XvMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Utb1y3A9;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id a35-v6si405267edd.1.2018.11.09.05.55.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:55:01 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Utb1y3A9;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771700; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=VP2vFeN9PTzhe6ZnYZ41zW6ZCf9V3huipwaqmrSeeaxoKT92dM7Sq4297/6HaVaOPAl2opZI0SrFOXrsEw+2tOicIqA93PtBJ+VIV+4Ubj85ZAU/MSKY2Wf77bU8QaywhvD+tWgfA7fESCmdrPFIT3CxVAkkzFppES54/5jaVpQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771700; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=IbC61pwIpTqKZ91OnHlirOY1h8j9JAMAb7qk1UkUiBU=; 
	b=Vy4p87QxISFulSdBSDXRXCi+x97XHWxm7Sfj5rN6xRYhoM1vm7+JFlY2TaErn9TDjz5YGUE7e+uuZBsY7WHvvK3F1M7SkjJz/ql/t/NInQiK1FbF12OLgxqWO7yEGimCGeCrrQzSiEEW5Xznwkzgz0SrA7Lx9lDQsDSsq/dik/U=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771700;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=887; bh=IbC61pwIpTqKZ91OnHlirOY1h8j9JAMAb7qk1UkUiBU=;
	b=Utb1y3A94FXWg35NQ+tppY3YEnvqSZ5c4sFYSWI0GjTdxAdrTUCchka/eKBJGAsk
	17NyfYGcTmV/bYqGnKmOMLPDJSc4Lq3i+CZDqY9tLN2acmb8poFt7jXOC9Dq2SmXf6W
	eB6XjlQP3E06fsUK9/aLpCZCWk4trZHBlqef1IXI=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 154177169877349.540836439397594; Fri, 9 Nov 2018 14:54:58 +0100 (CET)
Date: Fri, 9 Nov 2018 13:54:57 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 14/15] staging: greybus: remove comparison to BOOL
Message-ID: <177ad45e108354e5ac9a1d52a7c4658607a1bbef.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
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



