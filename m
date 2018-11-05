X-GM-THRID: 6620380698493583360
X-Received: by 2002:a25:880c:: with SMTP id c12-v6mr5877855ybl.77.1541427514284;
        Mon, 05 Nov 2018 06:18:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ba08:: with SMTP id t8-v6ls12074930ybg.19.gmail; Mon, 05
 Nov 2018 06:18:33 -0800 (PST)
X-Google-Smtp-Source: AJdET5cWidIe4/wyWihoWL9XbV5dF9O2WhFedw6QQCtvwXVEWoqra+TFvU1qnHpfAc83VhCJNlBt
X-Received: by 2002:a25:38d:: with SMTP id 135-v6mr13064032ybd.61.1541427513214;
        Mon, 05 Nov 2018 06:18:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427513; cv=pass;
        d=google.com; s=arc-20160816;
        b=HEAGbj0pDAKP6uwdvGv/3BIzhlWo5/JPhtFWASbs3Q7dUtKTzyE+YCiWWpn/8oEog7
         aQO0SJdFQ9gWE8G8ChDLy6OiGLYPmj9gP4u85CPcV6rB7S+GAp8WRarLgCwD4B1x538s
         La2pO4FryG88JWaTsA4doMc9XlWLP4KZ5wZKE4egfT/ka9HUl7R2g0///tvP5Cx4nxB8
         TsguX63fNb4BJifiq9kyp+aB5IGEqkBvSnCeHVhf0AxhDiUaqrT/AscmzCWkgeMAKiwP
         x25onqojxXLKBnIxk64Tav2uqu2N1cpIbMGPf3jqPH2hlQWXEzocwBlB2WDurrV2of3i
         LyiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0mHsw6iLGo0NkyRnLRHSxdRN11i4pd0RiG6vNzcVh64=;
        b=J76JUvmS/jArL3QzcsWW6YCpVoJEbEJCb70Pc9KWZkn0HjOW1yeTq2tKpKjfDn80Zb
         L3MV6/+4HZWckMKmP2PWosTZg97r7/kNdw/yg0P4LlsGpsBXm4KOjLDY0NF2n6uZS5DD
         2Y5NQdlbMXqGdXfcXjX/B+VKQGB6ijjdBPtD20pbcb5eGPL+Uojf35lIGSslA+qWLDR0
         4fROGXWe5YQ98LBg5TyX9NoznfQtS7pTVPLVIR4aM+S93JITjH+mKitJB+SKoqAsoRk8
         Q4J0SoXcEPuNbWFunrfRQQF/VlZOiXyq+adTAR+ek0WK3Fg7YY70UnCUPKapfItywqHc
         0Huw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=hjNf+d+z;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 134-v6si133751ywe.3.2018.11.05.06.18.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:18:32 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=hjNf+d+z;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427510; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=gQ16/lQNvfm6yFcu+Y8Oe/EvU3rlNCn5T6EM5eKfJYELrPHxn7HatnF9sNMA7s5kRHUT0yk1bmztM92cidDg2YuwhPTIpuIJtQQ/lMz1sHoUxiLJfFV3w8Nv3kbvYcJVh9quNEUfjC16DICvpSuQDnev94o1i+48RQY0fYbzeCg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427510; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=0mHsw6iLGo0NkyRnLRHSxdRN11i4pd0RiG6vNzcVh64=; 
	b=TUu0oromxdpffl/F0x8ZZj82vCXqTj9J6kFMdkmItUn+bUFpna4cMy2rx6A0TT2yaMlczX7iHzy3J0oEd5Yc3J1HRo8/IQE2smBht5epevmrx3UE4/Oa9oPB8SEk6lY4RELGM2F8Ndcs97zH6rLTDFrR5Tj1MsR4R2LNreuyU/k=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427510;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1327; bh=0mHsw6iLGo0NkyRnLRHSxdRN11i4pd0RiG6vNzcVh64=;
	b=hjNf+d+zTGb5ajVbWDbEzDvYrSkEneQX4BgFWRMImoPrwsZtwASPD5GOOW8uxDfm
	9JGTARhdi1Bf7/9mTCyz3YCOiDiPqylBIPzwhb7hfNgx3VeFTa8scr9q7iQQgcCmnaK
	ZqIqj6D/WMUjoANjaXppnSTLb4vO8Qi6aIzSKKdY=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 154142750960945.48457660292581; Mon, 5 Nov 2018 15:18:29 +0100 (CET)
Date: Mon, 5 Nov 2018 14:18:28 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 01/14] staging: greybus Align parameters to parentheses
Message-ID: <d4b51344a2d9ebd03506991d2ad2482a02ef0262.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align parameters to the right side of the left parentheses
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index dafa430d176e..d28773e06838 100644
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
@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
 static const struct greybus_bundle_id *
 greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
 {
-	if (id == NULL)
+	if (!id == NULL)
 		return NULL;
 
 	for (; id->vendor || id->product || id->class || id->driver_info;
@@ -266,7 +266,7 @@ static int greybus_remove(struct device *dev)
 }
 
 int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
-		const char *mod_name)
+			    const char *mod_name)
 {
 	int retval;
 
-- 
2.19.1



