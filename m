X-GM-THRID: 6620547167797903360
X-Received: by 2002:aca:498f:: with SMTP id w137-v6mr18496047oia.40.1541466263991;
        Mon, 05 Nov 2018 17:04:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:c49:: with SMTP id 67ls3178206otr.4.gmail; Mon, 05 Nov
 2018 17:04:22 -0800 (PST)
X-Google-Smtp-Source: AJdET5fwBum+o7apv2Duyd6O/zwKXn3jPKxW6A16VNiRgOAdDS1fHIOjgnPk6xDay6k+OGiTTWRu
X-Received: by 2002:a9d:7691:: with SMTP id j17mr18293481otl.73.1541466262944;
        Mon, 05 Nov 2018 17:04:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466262; cv=pass;
        d=google.com; s=arc-20160816;
        b=aQf6iQ7IvwhcQj+M73cJybd5F98TuLA0S7lDaM8tEiaNrbFIAH/D0vjjYBqrsOz6Zg
         +hNe0MvL1+5yQl33LQt5pi4VKKb+Sw3zmQj2gtz8oU+zwi+y4nja7qdMXaWZ4Vzrv/xa
         CRaActGGDwbivZpzghH+a19m6CnO3FmWd+NeUDfjo1fn18cebm2mZcjXsmhAuoThnXeO
         agE/cD8uoWFE/ra483fQ9Rw6+jQNku4Zwg0fouGXDAYymZ3JePQL2gJZ3QuMJ+Fsqgj9
         jrVPKQUAgwKwSqTD8rT2pceFKlNtrZmQ3qWlaSk2N9btNo9e7GZJdzJtXeLcJNDKCQMk
         Hsbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZZ8dnVAXhUB7bGC1mQSAyft/JnpsiPez/ozCQl81obo=;
        b=F4dQP52cM8xzuxilAq5yqNaQXeYNQ5H/xIWzYBv77yF+O/DHSYe5HH9ruU4fBbE7za
         BK/0wPtEDOhF8uSL9CxHykZe6h7ZilOCmhhiVqFv5nfBvoo1wZm8eIsFXMNpa38NASNs
         FNjM2Y/Vx7AFV1llTal5muIwXtxnQ6COSqNHXVB26VMBXqxiQHl+CFL0190hVOqAjv0J
         lQOYDJEjdBCbQ04SLc2Uu0oWVerA2CaY8nRnuK/UcyehsBFNO1NbBzmdIT+oCon6qjgK
         FXFDfdbJWytnVkqpqbiNpSjRClXk2fQ7f/De+dolpoJoIZiEnoQaO2F8k4+0HxBJ8efW
         IyCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=XYvflyUo;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z84-v6si744055oiz.3.2018.11.05.17.04.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:04:22 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=XYvflyUo;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466258; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=K2XOeG/D8VmmtnYwdRATC5N00W+RlKGEtCBj/t0Y55ynuPTgIpuTR1dBxIi3UlurweaKQJ1bkrg/thMyD+O+FtReCTDz+D8lPL2yua9N8PWNAP2YTnx4xILd45FzPLOMl2ccrTCxRyVGUdsOscq5s+eM/kXE8IFoI03Xo60OKc0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466258; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=ZZ8dnVAXhUB7bGC1mQSAyft/JnpsiPez/ozCQl81obo=; 
	b=ZDtOw2kBn5aO093qivXxqUUBCY4FRY4n0cLjFJLpq/vgNqP7++wQ7dWD7VRggi0RaLTUf2eyqldjeoQgWWUP89/wnIYAI55d0N9ZLj/bROizDy8OD/ONBsvq9PdcTj/diW8tTndQjRLI8pRlpIDqmpDDXlIG9Lr5NfrSuRCRM1A=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466258;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=751; bh=ZZ8dnVAXhUB7bGC1mQSAyft/JnpsiPez/ozCQl81obo=;
	b=XYvflyUonpANNvsZZ5dxpQzktlQYl/aRPk2twPgJqU3oV/RH8mnuQbd8gUIyg07Z
	gDFJ93bduuOj6WW9b30Ns+R4p7dJfOER3rO26jsfnYqvHqKADt+kZsRNqZb3wHvtnM3
	2HBg2TFKi+xSU7YC18tIEjjGFFgU2p94xmNbVlPQ=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466257919737.0995888845009; Tue, 6 Nov 2018 02:04:17 +0100 (CET)
Date: Tue, 6 Nov 2018 01:04:16 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 01/15] staging: greybus: shorten comparison to NULL
Message-ID: <f4fada1fea82778ede6d95b1b99f4a3e714037be.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
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



