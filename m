X-GM-THRID: 6621495393645494272
X-Received: by 2002:a2e:8199:: with SMTP id e25-v6mr905583ljg.15.1541771619137;
        Fri, 09 Nov 2018 05:53:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8910:: with SMTP id d16-v6ls151398lji.14.gmail; Fri, 09
 Nov 2018 05:53:38 -0800 (PST)
X-Google-Smtp-Source: AJdET5e2P3dDN2JLASVjycuOynoDxr0oN/IAvh/yzHUxpHgxfDWJuZXZB74OLeXZv3C0KcGgzh/N
X-Received: by 2002:a2e:350e:: with SMTP id z14-v6mr928822ljz.14.1541771618147;
        Fri, 09 Nov 2018 05:53:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771618; cv=pass;
        d=google.com; s=arc-20160816;
        b=Id7wrM50Tc8t1ziyk4iwQgSFeU4ikbpvRciaLiAayANNlBi+PCsy0HvGh2JJqhWpKo
         ph3LIBZywXA3Sp0L/8uZwbuDY6t5UMnuvICBfaJTIC1MOxgKtIM5e31FVY+I9vhbIMaB
         4SkK92ZDxhgkdOKkTn++xmilu8e2DU+uVtdsq/OGnXC4xSOaNxBvjEEEaSaoNHWqblfM
         jwXLYNDTm1+uA2BctY1ng3z8ocCRxwuw9M2gQ1EGRjKYDzV21odMjRQGDaZQEktjVI9f
         TeoegOLqCofTjjnoIzXvfAXDQ35OpAYwehesKbPGCv4z/Gg8FWVSCqltz6VSednKxSCl
         lXKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ivuak6gNdatxyxi++D5ZObuTF8XVg7OX1MX/dZrC8ms=;
        b=Y21O2ZUOnOiGfnOh7r5lcy4sqDZGweqmuMwJ6mLVUzMfitNCULNJo3rTDWdXeS4JRa
         NK9OqjKi4Ao9VJ610Tk49dIanOjml6cwKaOL6Umpks5wTyhSX9nCaD29sgbd5jxAqrJs
         SD5mW4t3zVkZN7vNllno74DgAlI7dFBCc9cf/U9uIJIqHS1VA1V+aV4jRRnYMPwZz3Cu
         APe6zr5yupVsi1ylIRBTapzewzIgpljXHYd/33YucfpxO1zTqAG7vNfz8s/lwtpy2YI1
         FJnFfrQiKVmbNT4+AeS/jjZyZfLvVDvKGoPxinvJ203f3yZaynAFMWHlq7joQjsyMyl7
         6EWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=A9cxU9IO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id w10si271987lfc.5.2018.11.09.05.53.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:53:37 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=A9cxU9IO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771613; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=JJ4iC3HN9ZtMlYVI26s4DNIRgQtpjatoRl7+ZVkkGl/yYoWMX4gquyKrqLf22IuxE6PY86AqLzBWwOINcTmcCSG2L+4FL4D2v6bSF8EUcZdV47BLIDhdSp1foPW+VghZXU66s/lA9evh3FsNaV2BTxupchX/E2XXx/hYv/xBGYU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771613; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=ivuak6gNdatxyxi++D5ZObuTF8XVg7OX1MX/dZrC8ms=; 
	b=fsgKKCBmMARW21el4jNFuDV9o8DTCqQP4g+PVKGCVmKPjbylRuxGFfKM0R0ucBb1Bf9LnaYkRLMwtGcGnqlxaIBlGlxkv2HlckufQlx7IeR21PormC36vTzLSAEBI1tCUY7QhPU8ji/n2rSfw7//4q/1nXfp77IVt425W39x6XA=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771613;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=766; bh=ivuak6gNdatxyxi++D5ZObuTF8XVg7OX1MX/dZrC8ms=;
	b=A9cxU9IOgkRvinmxGebEK+h687kiS8vA2ZvJuEDfUKX3M7oniw2vkBfFMO7/wpAp
	S9+lhcemm9Vb+1pK8dR7LI64BukVBA4k0SoOlYRK4sl//1ppvxt7Kdda3fGRafvKzo2
	+vLal1gDOfeD3BW7M179EnAc+fZ5rePHEYld8Tn4=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771612934641.6173659600031; Fri, 9 Nov 2018 14:53:32 +0100 (CET)
Date: Fri, 9 Nov 2018 13:53:31 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 02/15] staging: greybus: align parameters to parentheses
Message-ID: <ccfe9475999ca0c387c267c5fc9c664bced8a7d6.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align parameters to the right side of the left parentheses
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index 5d14a4e8dada..412337daf45c 100644
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
-- 
2.19.1



