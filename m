X-GM-THRID: 6619244143382102016
X-Received: by 2002:a1c:b5c9:: with SMTP id e192-v6mr84208wmf.22.1541162913042;
        Fri, 02 Nov 2018 05:48:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9152:: with SMTP id t79-v6ls426332wmd.7.gmail; Fri, 02
 Nov 2018 05:48:31 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dVWyV14g6Zvv7Gn5WxXcT1fa8nEdBwN+3ZOKT74A1ypEw86IU1CjHzFVgLcJYGWct5QFSJ
X-Received: by 2002:a1c:f40a:: with SMTP id z10-v6mr82972wma.14.1541162911916;
        Fri, 02 Nov 2018 05:48:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541162911; cv=pass;
        d=google.com; s=arc-20160816;
        b=q7RTGQBZ5eGR78XOiSpkFtlpHdMJ3pW1DCaOUW/Un9eQPqutM+V1ty3uWH/v6I5dAt
         tn1tqBs9LDmd6YLliQ0ovCUKVQn/jLv6iIBrrcJdSKvML7wm/erOfTCWeNVkChhHx3wc
         rSU3DFLGGlASHqRH6mTSUgORCm2AjCdY7oN0o2AdXgD8FI4POVgY+lVxePWeGowdr+vD
         1oNGzDeio7sdoYTNV2pJDc9Frax/qJ6utg+Qh1LooL2ZG18MRPl3hRNCw8pmnTSNCqbz
         ePScOeIb36wuIcHUccoL4FF5Z9apDlv+jDEWnr5Tdl/fjWnOocNhFT/KSnAyg+2ABdKn
         6jIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WCJSPJ/DxQJSKaVK8s4p7mgaXOH5rxd3XRDYAk1nBck=;
        b=mxjn4S6OQg1WGHt+ywcSwtkLZ30/3zCuKOVoypwdX44y1nhQPRaxYZRhd+Bfw54MwV
         WwXabD6bz3SWAjf4QGku/vrtchaC/spM4J/H+I2jzNTeCD293piI/LpEk9XZooLB742+
         NVuM2zUC8bzkpSoS9kGaVXWGQyZQgoA9a65dOiD0SgcwJC+X4Wh1Anr0+vAgIBJShVeI
         46PXZmJZ3F/55wR9stuhodGYa0vvsJiwiBbco71wTERGvV0AmKrW4Y70U/8SDOesjue6
         DKKH/3TNVwd5MbDTOvYUu1R9qqOShJy5SYSENBY4yBB/2YLpyudKc7IzJcQHesKcqOxZ
         ebVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fAQduA4H;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id l15-v6si21496wmc.4.2018.11.02.05.48.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 05:48:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fAQduA4H;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541162909; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=RFFdfO55fjWFgmRereoov2XTPV2se+lhCYWvblaKpAydoBjFxgDGLNCwZ6WViEOrQiGO8ZTEsVLGx7ZiFTJAGNu+EdblyZWpcjhsVA3XWOJv5mWXAqaqupn/nJmpnv3kQlxVUgKvvk2W5RRM/QxoviiIBrL/SlMUhA7QENAJF/s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541162909; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=WCJSPJ/DxQJSKaVK8s4p7mgaXOH5rxd3XRDYAk1nBck=; 
	b=A2fUJABdYL0mXQe/9SHEs2GuzhUf7jXToV5IcvF1gr50UiuXe8zLh+C3YvmnSHP6hCsdSmG/+I+KQX8V04ApnpbX/YswzMux8Ep+b9ePStTdiLdXoPpe0m20M5v97SzBsUyA/feHwxpP3dRfsICISN86Jea4HU9NstRtHCa3/6U=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541162909;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=656; bh=WCJSPJ/DxQJSKaVK8s4p7mgaXOH5rxd3XRDYAk1nBck=;
	b=fAQduA4HUkH46OxhRS/QheKZrg+dNSqPRAsAREIdpv0ri74Z/erOuywUvAfqLWpJ
	W2T4ogT2SsT2Wx5Q8H4ra9lnZe654+T30fJBu/XHIwy05WJ1Bnmn/QrMxwG48LSkp03
	Qzv+sUZ80UqNlKksDoNVLdry/hhStmq0mqKKbUIg=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541162907283491.26344435708074; Fri, 2 Nov 2018 13:48:27 +0100 (CET)
Date: Fri, 2 Nov 2018 12:48:26 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/5] staging: greybus Add a blank line after declaration
Message-ID: <1e6f86d5ed5bc4e9b9eec040502d2dc56597e4a1.1541162672.git.code@wizofe.uk>
References: <cover.1541162672.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541162672.git.code@wizofe.uk>
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



