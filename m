X-GM-THRID: 6619601914535346176
X-Received: by 2002:a0c:c701:: with SMTP id w1mr11271565qvi.46.1541246195653;
        Sat, 03 Nov 2018 04:56:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2279:: with SMTP id o54-v6ls2024076qtc.6.gmail; Sat, 03
 Nov 2018 04:56:34 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fRSIWKbHBFLQ1FCAYY+rAJ7H200k37IJMbadLFm5JaZTGyypEs6Lhj5XdEZmRnRO3vQdYa
X-Received: by 2002:ac8:7252:: with SMTP id l18-v6mr11210666qtp.6.1541246194829;
        Sat, 03 Nov 2018 04:56:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541246194; cv=pass;
        d=google.com; s=arc-20160816;
        b=WXfXtTZiqZlqtXxI9hKpI0pdYetXNnOWGl/Hc4xIgpdeP9Y9rf7hdW2ItYZFTkG95W
         H1Elgs+THuzCYZoiO1fpRJ0/N2Lsy+P6JygKg2Km3I0PLCmeHo/XYufac5cav+RuoUvU
         E77kcckiTnR3HruNXtCuj0RlY1qbM1Dc3Hrgx7R2P7KXbw4q/Ps6rT6ebblwq6TBXaX3
         oiclbmN7sRvvsNtSwPZnnovuCD6b0yvy5/uJuF+6QSUiumE4l+i683ACtSNPrtJr5/l+
         bGPLfLRlDBBv09F1c8GqtPoElYVpzRom/CcO/l1z3b0t0n4Oj7PZ9HOkOKnmWf/yHMom
         dVYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZCRnKN1TjyX67WK68XoY1KPda2RkxVSUgR/hAyjX/gM=;
        b=Cw940D5l4/dRYn5typj7YbFDccL0qr8glOog2NPVnSleBTiK+7XqGoCRYD9O/mCp5b
         BflQf1exzLQN6FIygtLqKQ7YILcomI9xKOEr1ajaDT8htvgVvo343FgUq9accOkdLpJT
         s7wYo/s0oJ1Jzq0ATYpD2n0WHMOnwjaWmdDSVVZ3ruMGnzo87gUaoIQmU3nIcG87K6Rv
         XOklITuLHI9r/Wkju8u9d8uSuzymdzN+Zq/Qw8TH6ExWD5fDZ9yHl2OXNBhO+c4t3eKI
         7csKCeXpHnkO44PZ0uMz3Nw03WEpn6pZyibQqpBJenfn54YqhAMAuAfF5pZDShBTaa3S
         oXxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=hMCcn48l;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id a195-v6si1771490qkb.1.2018.11.03.04.56.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 04:56:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=hMCcn48l;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541246190; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=CRMXDak6Tly9NID0ckKwt9E44KdrwIkeA/P/4zBX35PalXWs+xyWKqPqZtUu6JdKtk7UJM3oCiIMq6RXxs2MFlW2YXHwbOFH/hG/wPB3DmpXlHZQvUe3KYGfnbuJy5R7PVhkKLLCwb7xiOGVkQoR2DXtEeDw0yLKEKonlLPg1Fo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541246190; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=ZCRnKN1TjyX67WK68XoY1KPda2RkxVSUgR/hAyjX/gM=; 
	b=S6CqiwEQOgx8yXWbe24qjphL+eEe/AVeZaXn0Ivt7Qxix35xcDMYO/gNBTveu58Cz73N2MGfdOazLKoH7WlWD3/aQlVR08lusGfCRgcFZFayDk++Vhyd4/xPwHamJauzEjvJIzHW9tahPYZtnEujvBvom3NXS8TtlA0uy14MdNM=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541246190;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=771; bh=ZCRnKN1TjyX67WK68XoY1KPda2RkxVSUgR/hAyjX/gM=;
	b=hMCcn48lHWy2TmYfGkWK+q+zRtYg+pPtby6t7ubvinQhPWHjB80/ztBZj8CYjuS2
	1B6VTVSxR2cNfhLARycKIaL1m+1EMR8W5oeBKcnWsQb+Npj2RmnuJkcSm9anjAmNL2l
	/NMNI1dBfEOKfIinVuCuXmnZnbDGfDDdWh1PuQP4=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 154124619029843.16102939304392; Sat, 3 Nov 2018 12:56:30 +0100 (CET)
Date: Sat, 3 Nov 2018 11:56:29 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v4 2/5] staging: greybus: shorten comparison to NULL
Message-ID: <f4c8e02349e53545f542f02e453bf18f340ed897.1541246060.git.code@wizofe.uk>
References: <cover.1541246060.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541246060.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Shorten pointer NULL check by simple truth test
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index 6b1f3a27fa9d..d6b0d49130c0 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
 static const struct greybus_bundle_id *
 greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
 {
-	if (id == NULL)
+	if (!id)
 		return NULL;
 
 	for (; id->vendor || id->product || id->class || id->driver_info;
-- 
2.19.1


-- 
ta
ioannis


