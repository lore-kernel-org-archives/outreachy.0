X-GM-THRID: 6619380955766325248
X-Received: by 2002:a2e:700d:: with SMTP id l13-v6mr322042ljc.8.1541194742597;
        Fri, 02 Nov 2018 14:39:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b42:: with SMTP id o2-v6ls205234ljj.6.gmail; Fri, 02
 Nov 2018 14:39:01 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fvqRaqwg3EisPFnZ4QxPMaor8WX0fjXmRcgeI3a6/yH+K7XErN39AjpJ9k+PqQhjD+0lmm
X-Received: by 2002:a2e:6813:: with SMTP id c19-v6mr1271769lja.1.1541194741646;
        Fri, 02 Nov 2018 14:39:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541194741; cv=pass;
        d=google.com; s=arc-20160816;
        b=wwJgbkRyO2V5A4rdeb2pa5dq3Ts7v+gJVlNls2wLsg6Sm77yA3RjneLTadJzoIlJ8k
         KraZIT1sK9HsxU9gf5JB/Mv3XihPvNVRELmGT15sLJdR1KR/uAHWFP9VySq+GEbNPLDT
         GyPJAKUCfkAHr15lDAPh5dvq/kuE5eHMo9J2NIYMPGJQIex0GG7twXbGIivH4HOR94Hk
         HvOOsa+68Jp1i0QpQy3GOeU+NwS4V/EGKo38sAdqYyTRYBwDFBXok4/LrravD22WUm7u
         6X6lkEb7ve8J+iGMIcIqQfcnOIneAPq4u31kzWod0WVS8/tQoH4LZYioxWge9OQrVETZ
         LWFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Kc9U7x/EJwo0wLXSh0YjDdK6CsT+U5npDyMJ/IeGNbM=;
        b=veRNL9ukQDrn2c/t63nYiBCCsAuKlBU6css7xeUO+U6Il/8O3wkLaLZrTPimMun2Df
         H+NXm/102ps4XdIIRgULUQKIx7PpYZkAwh3tWvjnyZAGgmcMINN06vfKuVoh00UR2hFk
         13fSOtk7R3qAIvA6z0OqVL9y7E8e+QjQEBOErAnJz1JC40JFu94nNLpBxY16SrXuW+fR
         l/5sqM62OwhItBDG2monjEUfnFctWD8BxzPIs8p5yesQK+hav4V6IDRT0QUES27kGSF0
         4SlW0xTpfSl35MngU0Q0yUyHW5NcgywINwun4gii8wSBlV0y/HTRKKkpso+U7yV3PEXH
         oHpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bOrgmmWM;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id n5-v6si273234ljh.2.2018.11.02.14.39.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 14:39:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=bOrgmmWM;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541194737; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=VSnOwJHg6xY6Bto4TnKXgs+ZZjL3Lq6/jNb7wofTYHQtyiodcz1jFnc5XWhSRvMkDQfGsTf6LFLbkaOk6yf0LlfAeWBTA72C+iALO7dTx9HK40WjJsSd7HSCa5+2wnPGu6UcNHo0R63mR9r6wpRKRqGYd3yrstlAsUOX/ZjvrqI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541194737; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=Kc9U7x/EJwo0wLXSh0YjDdK6CsT+U5npDyMJ/IeGNbM=; 
	b=F93f9rVWQfHcWHPjShDD8T9y/BXpzntYWXu57EDGvKJdHWHCghlcqiJi5amWjFiHlXIq+camdTMHNsDXrTl//n4bQPSvVfSXhTl6KS8XTC+9fXyemwlh/jDfHs4pBmWo3BJLxKeH0fO/0AynEB6zmBe5qjU5nsBrfWY2Iee5el8=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541194737;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1348; bh=Kc9U7x/EJwo0wLXSh0YjDdK6CsT+U5npDyMJ/IeGNbM=;
	b=bOrgmmWM/pP2C/d01pRTnmcvhoeMRByWja6nSik5OMos1M3tERF2Unq6ntop1eMl
	u6RyKpVdT7zAgYWTjptLCJHcIh+zGq+d5HdboL7DAPYnOYmW1E0ECCy+FuunMpdEKoS
	qNyGqBQenr6t0XFTD11okQlGIctWWSgsge85XdOY=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541194736814237.9452744249154; Fri, 2 Nov 2018 22:38:56 +0100 (CET)
Date: Fri, 2 Nov 2018 21:38:55 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 1/5] staging: greybus Align parameters to parentheses
Message-ID: <537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541194567.git.code@wizofe.uk>
References: <cover.1541194567.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541194567.git.code@wizofe.uk>
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


-- 
ta
ioannis


