X-GM-THRID: 6620120308618625024
X-Received: by 2002:a1c:c914:: with SMTP id f20-v6mr557166wmb.25.1541366893353;
        Sun, 04 Nov 2018 13:28:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fa89:: with SMTP id h9-v6ls795033wrr.11.gmail; Sun, 04
 Nov 2018 13:28:12 -0800 (PST)
X-Google-Smtp-Source: AJdET5cUbieL5eQR//0fQpA+2/+3C/uP39BIHkigyEUnk56VznuwZ6mPLFnvpAiO4ZKBRFhesJF3
X-Received: by 2002:adf:afdd:: with SMTP id y29-v6mr1460683wrd.20.1541366892786;
        Sun, 04 Nov 2018 13:28:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541366892; cv=pass;
        d=google.com; s=arc-20160816;
        b=E7uBDji+qUQpN2ZvBD1dDUP3Qby//9RsBWi8wk8yqq2p8MVGBXUU6DfNT4jW8vcwxV
         o5SV7/gZWwqC4CITNS42IBr6NETX5s9gbK3SA2z7Y/T5iZMflzDzQ+HaIyGdHBamHkcU
         /WcMcAXiA5kRbHpEYFPkxoXszEgroDRUYYyBl+iOtrEtzKtdnIiNF8QeuBhUmRiiNvQh
         GimoKnF75asW0JF1+syojB6Ux0cObTuPD11jba/P8dOxnAXqnnpzxpi9nfLs7IRFHfSE
         AKYivsWRYsPLYxqL3OSmtBWfiXnsX9kjAiddFsSenlpkxRAdRcwvyH9dpxZ5gwrM2Dhp
         taBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GpeZ8iwyWO3Vrb1ERhxVkx+Y8gyjYLwjC6co4u3QVmE=;
        b=Gke4jbToHI9NOVH4MUZy3v6wvMEZvkeMp+YH310qkmQYvcDsM9LwfRkOm5gHoGu1DH
         0KaDAm/M07WvFWrfSqr3TxLlzsgNfWXhodAOZZtbtXVsD23m7SYC0NaTjuRTd3XbyKSo
         KOY+B1BdBbefsHQYpbs2jhc17ZJN7HNK9BnedvTqwwwEdsJXaK53KeIf2oh/FW8SCwKk
         BNAlWrTgZwiOwoePUB4xFNAWG8DpHfbvrQV9U90mSqADJIIE+ba4uLWmWr5oM8Kd9X8m
         8Y7foJ1U8YLVnsd9DAVB5aKIDyulBYk2f9IT2Y6yx/kmDtzqkiH0mFsfMZESTmoUETCC
         wDbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="L5o//kX7";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id l15-v6si214334wmc.4.2018.11.04.13.28.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 13:28:12 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="L5o//kX7";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541366888; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=gLSJFDSIZCdvxM63sVdPGypG0EBopO72shtl83NtltX00Xpv5W48xvYWXVujGOWtCErjFf0b1+vAqSR9RDXOn4R2wLAaXBpIxf5dynQ6aFK/6A0twyEIHQL+zyYKtjurARt2pEN+NRHJOD9MnFrykQIHTlyCe/FuO8l0NrJnw+g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541366888; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=GpeZ8iwyWO3Vrb1ERhxVkx+Y8gyjYLwjC6co4u3QVmE=; 
	b=ZD6SsZYGbQ1eXjVaKwwbr/lHJ+ZaCyaiV+KaxjRTaJn13UJX+IZslaKYr3h0QkfFK5P/5UFGf35h/kfY4a6m8YT0+JGuKbQmuLpSC/vgNU0c6jMNDTqbicChhESg4KzlIwsvt0vC8DNfe6KC8ysAS8wOYjqnual0kSyMv9NwUSM=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541366888;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=817; bh=GpeZ8iwyWO3Vrb1ERhxVkx+Y8gyjYLwjC6co4u3QVmE=;
	b=L5o//kX7YmhLXtkDxQznuV937Qa9jgRXRtfgukOl0jYkkn82yGHmBJnyMjKsrphG
	VEb3oWa8gm6Fi2O3Mlo3bTsufQ2omDM2WMbj1nQWwVPNiUc+5PxnPTYd7KpxA3Pc5Pq
	0paHtyl2A+E9lBsUbPibQCWGiAqtbnn2cD1XXr5g=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541366887984920.5173757078466; Sun, 4 Nov 2018 22:28:07 +0100 (CET)
Date: Sun, 4 Nov 2018 21:28:06 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: graybus: match open parentheses
Message-ID: <03e7603e693aaf17879365814b2be3e5b9765eba.1541366816.git.code@wizofe.uk>
References: <cover.1541366816.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541366816.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Match open parentheses by indenting.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/es2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
index afaa6d15c23b..b4e3d6a3d523 100644
--- a/drivers/staging/greybus/es2.c
+++ b/drivers/staging/greybus/es2.c
@@ -317,7 +317,7 @@ static struct urb *next_free_urb(struct es2_ap_dev *es2, gfp_t gfp_mask)
 	/* Look in our pool of allocated urbs first, as that's the "fastest" */
 	for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
 		if (!es2->cport_out_urb_busy[i] &&
-				!es2->cport_out_urb_cancelled[i]) {
+		    !es2->cport_out_urb_cancelled[i]) {
 			es2->cport_out_urb_busy[i] = true;
 			urb = es2->cport_out_urb[i];
 			break;
-- 
2.19.1



