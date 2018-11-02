X-GM-THRID: 6619244143382102016
X-Received: by 2002:a62:13dc:: with SMTP id 89-v6mr3934732pft.106.1541162904834;
        Fri, 02 Nov 2018 05:48:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:258:: with SMTP id 85-v6ls6234152pgc.0.gmail; Fri, 02
 Nov 2018 05:48:23 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dZJual4uGiuvC84zU+a1nKF2hbwY0rXvzNKNRZY3Cv71sdNPysaBdlPCPlyoBvJZWC5obF
X-Received: by 2002:a62:fd05:: with SMTP id p5-v6mr1463926pfh.25.1541162903858;
        Fri, 02 Nov 2018 05:48:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541162903; cv=pass;
        d=google.com; s=arc-20160816;
        b=n1NNPCP63KbjWD1wnwZY/pfsScCG6M54l/FwPGFuJTiWUhaImqsCGHXtGZkrQ4AVel
         e1cwOzTD++lV7Tk0IoKR6z38fjdL0YPQqg3y49Cu1KPe+AKWzwb40wqs2ALvWgS0Va0o
         NNocFj7yMUJ6oyFSInb8VX1h1sB3Lvkis9OXVM/0POdaLYrIiW5odH0mKjsLNCGlsWhW
         f5qR8XftgBubuktwZRv6iQ2FK6F1oJQnS8mPU78AsEfRJsgCYbLK4sfY3TXE84KoO7t9
         KTmUqVJldiqqq9+CzXOCjA4MXbVV42P92lhq+Twfcrw9ZUNDK8IImCvXxp8zzkg8WET0
         Q1sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jFSbPoAsdhZqD36T25nk5hCIW6OuWtiAdQpNdq3o5a4=;
        b=0S18K+XlsGMz/ZS50FBQL4aYaUYiF4XV2x8muB+7ly8IUn/+vQ4/cmP86Op3AIjE5G
         H0EbfNxAKU8XL/F5zi5S7I0cRwsFTDoIRIv95GOi7JlGUuxakP+R5n+IBVuObeNCYLlS
         rZvWrladJEX7aDyGbSz+J6Ub52i0pIZiDCyIGR1aTQDzI2drBxSOdta3B5scWA5MM8So
         r4njULjwHMdvYpuaT2D6SrG82sgULgAE+DlOqAAInBJQKDhK28Rk08el8bE3D1d4srhd
         Mq7wGXg1MzIcEiOTWAdgw0XuEhUHfZuyYlHpXIIa65IRg9Hp/a353E6/yNR+CugfyInI
         J4oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fmTcF+Eb;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 81-v6si790419pfq.1.2018.11.02.05.48.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 05:48:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fmTcF+Eb;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541162899; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=jAqyjYLToMCvS/drMjUfSsB7nb/pEfBlysqlHQCVz1TxIfpnfJZoxe1/dc9AmHGHlkDgJpwKi1f8v/ddyUrwN7cW6xWLtMdUYKKxwB0Yi5Mgzk6YTSeNnbkxNh8QtfCcRnk2Ruq+mNLlffAkQAY3zWmZIlj0I4mFMOq69fPuB8o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541162899; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=jFSbPoAsdhZqD36T25nk5hCIW6OuWtiAdQpNdq3o5a4=; 
	b=Qmro44uSL/fKoe3GMyj6m7h3VZ0RAQ8ThdYfFPpwDrcSrBMdZFKwNWqgUH2YRz8VeW69TfMOL+ZGz9NIN5rwMftw9YZiJeo4JYiZj7Pxo2gtQAm/NUWUctbYTaPMpcjz0ohIN4AlImNeyL51iAAx1kD8ppYBbvPvnQoNxP5+Pnw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541162899;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=765; bh=jFSbPoAsdhZqD36T25nk5hCIW6OuWtiAdQpNdq3o5a4=;
	b=fmTcF+EbcLiW2ov6Ol5FP91aezcB17VqEHoyiwpaRluEj9dUpzTAA1r4scpxXHye
	BPm36uRkB0mvs7igE1x7YKZkIOpIjbw5vLSnGjab/Q1j9SjuCuEB2hpdkrzBYE5QGUM
	fJ4cLprahifzgH5k0bPncbDcC9jzUVtk8+ZUcqWY=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541162897725334.36344871623555; Fri, 2 Nov 2018 13:48:17 +0100 (CET)
Date: Fri, 2 Nov 2018 12:48:16 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/5] staging: greybus Shorten comparison to NULL
Message-ID: <060de85b43307d81791b1742338811b44d64a3b6.1541162672.git.code@wizofe.uk>
References: <cover.1541162672.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541162672.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Shorten the comparison to NULL by using ! to make a NULL test
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index d28773e06838..d6b0d49130c0 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
 static const struct greybus_bundle_id *
 greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
 {
-	if (!id == NULL)
+	if (!id)
 		return NULL;
 
 	for (; id->vendor || id->product || id->class || id->driver_info;
-- 
2.19.1



