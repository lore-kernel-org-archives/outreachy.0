X-GM-THRID: 6620547167797903360
X-Received: by 2002:a25:7d04:: with SMTP id y4-v6mr2393365ybc.16.1541466274422;
        Mon, 05 Nov 2018 17:04:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:1d05:: with SMTP id d5-v6ls16095598ywd.5.gmail; Mon, 05
 Nov 2018 17:04:33 -0800 (PST)
X-Google-Smtp-Source: AJdET5fSIwu5F5dBD+2+EJdaxWlxnCB1oZ3yKBGPteL+HSJqYPjZiEC4rRtTAb4inE1msbEhp7j/
X-Received: by 2002:a81:9885:: with SMTP id p127-v6mr14145661ywg.19.1541466273565;
        Mon, 05 Nov 2018 17:04:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466273; cv=pass;
        d=google.com; s=arc-20160816;
        b=kk61X09f47SXRIZb41my9JRVev9MWblMx97lLl6EQRowuyyNOe4HFjCAtMKIzRL3MX
         JEoK+o1M3bT4KvEXsG0+2vgZITUS0Jk/mKr01MitD8OPne04XByiqKasfBbMaFJZ1zTo
         Amm8EzU7auinY8uuzjsD2hf0mcKqoEY7HVShmAaV6UeuH4D2Cn1puqf2znGwIo2ZSBHX
         q86Zbiczdzav9Op9geb10Mr855fBnPCi5ei5NsdzZZCTBuSwKiMSVxbdGqj0ESveP3wF
         IIqRU9nVIyEvMlS7kRoxd1eucQAlysmUeewfZkiRVv2pjP5Ee+EqUwLjVvR5tdbZ9fBj
         zYyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ivuak6gNdatxyxi++D5ZObuTF8XVg7OX1MX/dZrC8ms=;
        b=c9jPJ9ou0to+sxdPxe5NkuMm0qjisbZg23gfptbCS8cKrMsiDRMa0zRKIYmyTTJuUJ
         PbBIBFZlT3sJRGQq1QVAEt2VTHUFDZkpQum7AM6y5kW6s6lEJAaQ3xuggqUPZraiPtEI
         Jq2LzLaBBmWtFDYr744JJqANumVpA+hHFWqoZYeHKfbiQoMrvqoheSCtE9Ew/YnzuS4c
         goutnReHD5nOR5x5ZePdyx2NP3ZY9NvInDvgFQGBYxqagj7upyciV1Y0wfxpE75tm3Iu
         /1Y7LXVLtqUzRhtvmjnsL+v83EI0FEp8/lNynBPepEj7P0bEA7JJjnBS425Aq47O+Bno
         TzwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=H1137yxj;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id l125-v6si1627249ybc.1.2018.11.05.17.04.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:04:33 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=H1137yxj;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466268; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=ePYRueIrJD8I83yRKU7gtxnrIvvtpiPj3rjBETpUknlGCYFys7i4cglvfEvljwWncT7gSFpnlbZZlh5SB/Gl5m1xigUBY/HjVin7iPOerxChruyW2svK8hhbpzmlK6Ef97TyZHY6wIGUpdfhunYoJfwlsad4IPqaYGmAxzaCfDY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466268; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=ivuak6gNdatxyxi++D5ZObuTF8XVg7OX1MX/dZrC8ms=; 
	b=UIwV1us0ZPStKUbpAf+8EdrZ8cbSOj8fER31eEcU6cKtJCQtFJjJsmhStvOcCZastktsQEYvN3Cd9DroNDfLYggTAxKL6AidQV0DAojUJ3QtQq37eJhQ6WAjBoCLoN3CXLQsgLOe0XwaqgLjX1Vs6lIIkZV5aCZI9pjFIo3Pbbw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466268;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=766; bh=ivuak6gNdatxyxi++D5ZObuTF8XVg7OX1MX/dZrC8ms=;
	b=H1137yxjDLlVZX880yObz/dJA59hTb4sBxOFEjWaaBUC0ckR7pXo3x+yhg71N7Lf
	YLhYJNaiFstcudlD7SaLMoZ2m05+JQdcbJBzy7ukSTm/XGKUkNJU1kWWL5AK/ok8MY6
	msWIgF+r/Z64dW35Y339ZMglw7jKfwNZJGPaZQ8g=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 154146626730043.65538448420955; Tue, 6 Nov 2018 02:04:27 +0100 (CET)
Date: Tue, 6 Nov 2018 01:04:26 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 02/15] staging: greybus: align parameters to parentheses
Message-ID: <ccfe9475999ca0c387c267c5fc9c664bced8a7d6.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
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



