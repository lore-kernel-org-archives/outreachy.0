X-GM-THRID: 6620380698493583360
X-Received: by 2002:a62:2f47:: with SMTP id v68-v6mr2189067pfv.94.1541427599621;
        Mon, 05 Nov 2018 06:19:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2a89:: with SMTP id q131ls3751785pgq.5.gmail; Mon, 05
 Nov 2018 06:19:58 -0800 (PST)
X-Google-Smtp-Source: AJdET5ck0DL+nw2BUtcnuMyGkhsyH8Ed/Y3hEwwGovZaTjk757rMaFijp988U+5w8ETVUOXSrV+b
X-Received: by 2002:a62:13dc:: with SMTP id 89-v6mr7573962pft.106.1541427598886;
        Mon, 05 Nov 2018 06:19:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427598; cv=pass;
        d=google.com; s=arc-20160816;
        b=WI5WN/flQIws89zqReWCB2Bs9lUybxQoRxGE0/NHrvZyQYlsQcY60H35BVx2ATJyu4
         QesZuwDJrLms0MDq/j7nZ3VXT9Z0YY2OyljiKiYJXJeg3yy1exZ3h4GvKTpNepfDE1G6
         eucrTns7cwO7Iu3tqOKDWN0fGHMJE98WmAfrMebZjQUrpTfup2p9hoUB0eeSJ5lITfaN
         4ITztYjebzySW02nC4vv/ZTohgduhZ/i0XyNVVvPVfDq2iuxztqEQVwiCxLW+3uBKni7
         C796XwNz7oxORA0wY3m706bJULdM1fNMHgv0CEgLiVXUp4vu7YgeSvfitaVtw6EqTqen
         MpiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8TYd7LRV8H0T2t6Lij+3ybDJomn4FqRLw741R6q0XN8=;
        b=FGM2JIYWnmcyyRaudGfim0x6XP8eeA21CO2NZVJwYlmXIQp7VNNPpkGeDvYjhBJ/+q
         dC+buT3eCpcKfmOK3HSYwJ1s/eNgnr/PvokUvnlkBJOGjMWyj/ejRZfYzFHSvDFbhrJH
         uSlzGUjTrqO1JMiyWFge0XA3OUMoZ2rPQXXtIsu4P13JSaz+aQOkYNLNoiqduGPGFGH5
         snGNer9qR49pomNgyVMaX4QdWLnzMvxsBu/htHpb7NxlVddXWUeGDt+jVTWxfihMMffs
         wrp2He+84rNkcm7pYtPB44aXpr+VbYULjm0f9qYRmwsSk9HTvjz+/eP3E8UF116eCaaV
         pP+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=E7UzjN3n;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o9-v6si116813pfi.5.2018.11.05.06.19.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:19:58 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=E7UzjN3n;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427595; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Zx0g7WzmH37+z5P+xpCSZYx5uwxL/ABfWiMT5HgvKZPW3NEE3qe9yfQ99DY7Qi2WdUd1Mjt98e1t/CY7va3wWNQFSA0zTkyrm+vQAMRZTh9qEeAnIH9w2MA+WeolcX9lvCq2zPZwMeHECj8LShaOs6WFuOrdD+7QMywL941PeLM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427595; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=8TYd7LRV8H0T2t6Lij+3ybDJomn4FqRLw741R6q0XN8=; 
	b=DCdBMIHkB4KQTGKY5TQlJRmVDJ+yydSgFPAZTVtq8dePj3F85owZUXSiC4eVI7jrcZayvmf4HZWcY+YRVxDjLdm3oBm5ZPwMQuSWFrWEY5e5lcnc3olqSPe3tP7CAbrrLb03X2fBvMz3FkIK9EJftqDihgbICDInpo4badkyrac=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427595;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=792; bh=8TYd7LRV8H0T2t6Lij+3ybDJomn4FqRLw741R6q0XN8=;
	b=E7UzjN3nN5B2aTT7XbIgGgcGmWasCG7j6CL9OGU6To0ra3riovr5hEvpuV7+azmm
	hE4PO/vkXq7zYsC0eBI24U4TLna/2rsZTp0MEu6JvmbOVSiWidurWj0KNE+ReXVZWzA
	535qBnbAx1dyu6KGB2aHeTEkTy+rlKxNvz+zRyI4=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427594613570.1974179686042; Mon, 5 Nov 2018 15:19:54 +0100 (CET)
Date: Mon, 5 Nov 2018 14:19:53 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 09/14] staging: greybus Remove space before tab
Message-ID: <4c7c0d218600ffa899780d8874c0b2e88884f934.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra space before a tab character
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/uart.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index 3313cb0b60af..b3bffe91ae99 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -805,8 +805,8 @@ static const struct tty_operations gb_ops = {
 	.tiocmget =		gb_tty_tiocmget,
 	.tiocmset =		gb_tty_tiocmset,
 	.get_icount =		gb_tty_get_icount,
-	.set_serial = 		set_serial_info,
-	.get_serial = 		get_serial_info,
+	.set_serial =		set_serial_info,
+	.get_serial =		get_serial_info,
 };
 
 static const struct tty_port_operations gb_port_ops = {
-- 
2.19.1



