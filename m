X-GM-THRID: 6621495393645494272
X-Received: by 2002:a2e:8842:: with SMTP id z2-v6mr516023ljj.29.1541687048978;
        Thu, 08 Nov 2018 06:24:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5914:: with SMTP id n20-v6ls157207lfb.25.gmail; Thu, 08
 Nov 2018 06:24:07 -0800 (PST)
X-Google-Smtp-Source: AJdET5fH9gDNythEFFwNEEXBTawOVYAyYsG+Vt/brZbMfYV0C+p809IGZi3YGhDnjCEIM/7FZ0kj
X-Received: by 2002:a19:7510:: with SMTP id y16mr474494lfe.9.1541687047113;
        Thu, 08 Nov 2018 06:24:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687047; cv=pass;
        d=google.com; s=arc-20160816;
        b=mLfpD/J4vhv40pmoEXgflVTLFk5I9K3ipX44y/T3KZvYR71nQEcSoKrSz76ZJXEBXR
         U5fkJ1mG/xsTyjXiHxNDTab0RmqRK48TMxcGPjiNrrZMzuzs2NhINf5eaWCPk/0X+s2F
         uHyIbiKI0mt3ek1hf/QxqSxDOv6m+dTYtBmBf59eL8Ae0uz7rTrUsr+4bY59BxKGE1xP
         kQCArfgf09zUhfx953VnvQRsH97LZoh0ndqkFDpA+d6et6Q1VgkzCdGc+pqgGWaUFl2n
         faOBN4egK9e4TzTgmblH1kBFp7zliLRsdq7rcGg9PB7UuxE0L2nZ+THFcCkVEW4AvkIN
         eRSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZZ8dnVAXhUB7bGC1mQSAyft/JnpsiPez/ozCQl81obo=;
        b=gc0wng4/anUhFHDAoe7xLuav58/bqKqtffu6HbiXbqQYSxkGYWuDVZnPTo63K+ztM1
         5euP0NVv7CQnHitlleI4uEDmPFAaH7jOb016qipoLNFLb8igaH2iszLxGSNV54xFxyHM
         RTFd3WtsrWUW+XCdEaS5DTaI1kZOti4ceKI6H3oafsXsKpr1CA+jvNuJkMZuJIStdKA/
         /d+3vb4EOwTBPV7FAdiGEJmWsUDYyPC1gfa+NA+0ReDyDRHxdq0HuhB5OyxdEnTxpY8J
         /NM3wiRdrbuPGhAuBkys4izM+5hJCGg2+ZnBmo8sNw0YzhnUnkW+H7De0iDG6m5q1jbS
         asdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FcC6wcIa;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id w13-v6si168525lfe.3.2018.11.08.06.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:24:06 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FcC6wcIa;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687044; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=UqLriWjyQptNguZQfnGKHsbdu9tMTcjOVRayhhBDhuMn42Vd+KTgNFw5H6zCSMdRfkZt72pOnpZoLaq/4rVlKwP79jGg3yU8IlKCrbFe4BOJlfzF4Z27Z18UhiBTcDn+vUzlgcdNu8p0y973aXTgz4Rx7/CpTveN4XQB+SXT5ik=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687044; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=ZZ8dnVAXhUB7bGC1mQSAyft/JnpsiPez/ozCQl81obo=; 
	b=YbiF7Wq34+ny0hupvoUIYTbBtqGRVJrQyt6DZdPBIk1M3+8A7/exYeDZVjat4/sF+0drakzopN0uXsqOSTptPYmFFJt51V1Pm6EfmNa1P6hO+BCl09xNeu+AZT20x0TEyfQdk6OPgtNq9w8sJQL7vCJeb6m1iVCu5LtiuvC4gEo=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687044;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=751; bh=ZZ8dnVAXhUB7bGC1mQSAyft/JnpsiPez/ozCQl81obo=;
	b=FcC6wcIaD0U1Hr8OFeJe6NrTPtfoYDhJjNHt47JMnJERX/zTIGhKtPRLC50mQbyK
	so3IJbDnpmKAj3cGC7IUqNFQBXT/dD/rnwC7bb+Y1H6VGFvBDwRFI1G0/TCp6a4giCX
	V00z/HCMUxmPIMC/Xi+2AJ4+wXyXMElel8eHcRf8=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687042060621.1845053299447; Thu, 8 Nov 2018 15:24:02 +0100 (CET)
Date: Thu, 8 Nov 2018 14:23:59 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 01/15] staging: greybus: shorten comparison to NULL
Message-ID: <f4fada1fea82778ede6d95b1b99f4a3e714037be.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
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



