X-GM-THRID: 6621495393645494272
X-Received: by 2002:a63:4e5b:: with SMTP id o27mr678609pgl.101.1541771612344;
        Fri, 09 Nov 2018 05:53:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:8adb:: with SMTP id o88-v6ls707760pfk.6.gmail; Fri, 09
 Nov 2018 05:53:31 -0800 (PST)
X-Google-Smtp-Source: AJdET5e1qDnz3HS1eXYaCryLSW0vxhs8u7DanYUdvj1eij2dXsbDf6XEUQeUNuLUUHfujywnVJ38
X-Received: by 2002:a62:67dd:: with SMTP id t90-v6mr3654898pfj.111.1541771611611;
        Fri, 09 Nov 2018 05:53:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771611; cv=pass;
        d=google.com; s=arc-20160816;
        b=JUe3LBlXK8KH0vNPLTbEBBrdxFeqD7xHLkbrbmnP4LWSa638l+++9vZtBRhr1fp2bo
         VmeKXkgQmEWfuWMpkMaJ8FY1hBUm0SYepgvELCLlz81Z/6MYXTgH4UTObz4AJk5lk1Iy
         O42WPY9hU8bBb9Nf5QJaEq7LVtCcl1sGuFe63rO19vQunEaK3UpLj52c7yXeeEKNdbIu
         oPP73RzfhoAxrVW1UXnLc/G+yI0OoZjl3NJU1JdOf9WNou5d2m81RvudAy61ao/vS/K6
         dm/otsGtELWdIs0ykJko9C5VrsbE7t5NqdbvgGaTxV4GRVe4GCuSx1NQAd04sq7K5gNL
         YrxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZZ8dnVAXhUB7bGC1mQSAyft/JnpsiPez/ozCQl81obo=;
        b=KJamhZc3OnoWu7kMsb2ogk9dzIXuH7kPmWxy/H0j3iy3QqsnXZEPogAsbqxmw51MUr
         r8No1c0Cg6iF6fvckMtfMUUDORnxurXXmhbW46QF5TCYh8lbVmBrgm6uZCzbxJBDJHaU
         sLujdOsb7k2VVX/rQrANyYdu6J5/e0AVlKbpAuw0bghhldLO08kVn5NT8gVjJzB4VrCA
         mmJjnSvkdwJ71YGb7oc4uDmTF7zLvZeMJ/LEgvkJ6TaIB15K6MrqepQoJtx7k3+X6Jeo
         aapn39je2mnenYGCHqjpFz5yAhdtAkwcBiTfYfvTSqFzMJIqoJi6mQwMRGuRVkG/0Ab1
         Qxmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=g5HfjGM0;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 74-v6si397067pfr.0.2018.11.09.05.53.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:53:31 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=g5HfjGM0;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771606; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=XRLqMCipDh8XxPcGr+pI9xFgYh+edJRzCIvwbC1dyqG5w/LZRWt7QMOLu96KR3A+8E5u7WDPPCPKl7z4Fu0TG4Dra//dTA/6V28SSF+deulm1IfwKSOelwl/5qz6bJxzr16w/gxdlUrYOQgNhYeNfeh2rhMO3mfJVzxlWgkEVuU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771606; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=ZZ8dnVAXhUB7bGC1mQSAyft/JnpsiPez/ozCQl81obo=; 
	b=Hmie69/ykU4A3EJM2th6mC8ACDcIvA/NXohDUUYnQcQWS1lg+70dBKXc6fwDAr6KPEWO1SPU9Y6WHfqCHfKyieyeTe+cpvlg6DDsirvgJQCNDRJb6DhhBhg22Xv4LxnwqgCWLdOFlKI0Rhd3FDNVaTxMbiO9KKJhX6Scn7NK1DM=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771606;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=751; bh=ZZ8dnVAXhUB7bGC1mQSAyft/JnpsiPez/ozCQl81obo=;
	b=g5HfjGM0XDmIWT5tHlTdAVkvoW/cj1IDnKMkTLGGeit2Ih0g7dncdBGPWEEarEVH
	BLz6VFm2IalJ2LcuAQpXCNIx4lNzCkQrU0bhDuOOQpwkpmfdrmvRFqp0NGgg+B8QgcD
	sZU5dHjKj1VXecyQyH335tf85o6zVJL4PZ0FhB6s=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771605564665.4348020427731; Fri, 9 Nov 2018 14:53:25 +0100 (CET)
Date: Fri, 9 Nov 2018 13:53:24 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 01/15] staging: greybus: shorten comparison to NULL
Message-ID: <f4fada1fea82778ede6d95b1b99f4a3e714037be.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Shorten pointer NULL check by simple truth test.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index dafa430d176e..5d14a4e8dada 100644
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



