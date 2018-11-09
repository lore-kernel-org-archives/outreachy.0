X-GM-THRID: 6621495393645494272
X-Received: by 2002:adf:9d1e:: with SMTP id k30-v6mr1758257wre.3.1541771688729;
        Fri, 09 Nov 2018 05:54:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:32c4:: with SMTP id y187-v6ls398723wmy.11.gmail; Fri, 09
 Nov 2018 05:54:48 -0800 (PST)
X-Google-Smtp-Source: AJdET5dV/MAuMq7aiRutzjxtMl27RGKda3mY9G4f/7VhiUVlVmo2t3iL/o1e74JM9CP6yUBQvLxi
X-Received: by 2002:a1c:d750:: with SMTP id o77-v6mr380025wmg.20.1541771688061;
        Fri, 09 Nov 2018 05:54:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771688; cv=pass;
        d=google.com; s=arc-20160816;
        b=tjKjCzK9hLpbOiyx1vqSpwKwmax1kRSA6kpAKqi2GIKWuaMiRf4tejspKEdcgLMjao
         Pq7cdKnmakGwaAQPj4ztbmxPhtUfWH57a4fvXOS3pP3j55Lx86sQQ5HAG4PrZPvu4ztK
         /Hs03jGYiUI0hMDt2piBzGbySpTwc4qdZlold7r5KSm3afsm4z1mWtt/qSUK+BmkFqEb
         mp6cz6H9O4SI+ZNxay86G9hkAHmA/QxZtdPuiBfGJ8YWuILkbpu8me6BEdtTyOL/RVaE
         IVv4ydN9FM5TLEt8203O8OUlu3r5PJcT222njZNgCfdBhtcrsb+AZHxcIcEYrMW5UBfA
         333w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cfGf0qV7Kbqhmzy/141iJLC4Sj4gzOstEXk66bPHVFM=;
        b=HVUqkv2kTZsknWkh4EtRcJwTNI/Cb9Tk+N2RTonzAFGux0eK3wnT32hJqvuZJIXDtF
         Sh+owSEpNb7ZGCX75RKkCMy94ksgzqg5KrE1cveIYC1szNlUOjGXhmbQIvzAOJwCotGp
         em8g1rzmw8dORnd7RO+jyPL/CIX2sCWAkq58F37JW7fNCEh+oJjL+AdXenvVhkJH2zmY
         FN6DR3votRXRozNUxy/vQeFtP7wCt6SYdNIu068pr6mpGCiHOvTJUbpnX57JdWU6qLXs
         5dYF0rgwOFzXuCjZEAZgMHOxuaYwU3Ey8yIDuGvyD9klB4jY/VAr6gcpB5/kjBhigUUf
         xLrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CxzHGyu1;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id n9-v6si62145wmh.2.2018.11.09.05.54.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:54:48 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CxzHGyu1;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771685; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=L16cXZaVHUnMWgC8EkWoq8SK/ddgXn4zEES+36LV7p/feC9s2uhwBrsV1o5BuGGZkP0S+9dIihDbeNBAiVKoqFMPzDtXVGnrDJUwza7j4CNMQDGPB2HjO7ZSAoc0UMnD78nEaoWsULGbWg/kPiuB8KXdrHe3RNjLfPlKRLuO1jE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771685; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=cfGf0qV7Kbqhmzy/141iJLC4Sj4gzOstEXk66bPHVFM=; 
	b=E6DH0JUtBob/FT5rnjykFFf6l0NuwZFrfOK42SWj21f3T+gNTHCNBON0pTWFk+9aeD4eEmbwQ3v60cpqbtQfSYKb20UNtVZs/5GsVL/h41s/AIY0c2NqNEkpn4Of4xO5UOQyMmKBXoo5Jl/Ny8JQ1cBllAcEQGOQphjPbbe6Ezk=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771685;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1101; bh=cfGf0qV7Kbqhmzy/141iJLC4Sj4gzOstEXk66bPHVFM=;
	b=CxzHGyu1PC0r/o2Jq+WbtnEcgnWAhRUruG3wmOvxTjrhSSYjkzDXZN5YE8h1Iief
	rDuDq1gdpTPz2XQyryRHGYRoiVwRgPXfi7nlN4cJypJ2RD6Q3kq0TQEhUOlTq6Tt3AS
	/uqxZXUwE4gNRgl6tMh6maaLhnk5UAEUzS13Zlyc=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771684160640.7796983041825; Fri, 9 Nov 2018 14:54:44 +0100 (CET)
Date: Fri, 9 Nov 2018 13:54:42 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 12/15] staging: greybus: remove extra space before tab
Message-ID: <6530e3c19081eac3b38616f6f7350e629b74c19b.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra spaces before the tab character inside a comment section.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/greybus_protocols.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index 5783f715bdc2..a0eb72cb225b 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -914,8 +914,8 @@ struct gb_spi_device_config_response {
 
 /**
  * struct gb_spi_transfer - a read/write buffer pair
- * @speed_hz: Select a speed other than the device default for this transfer. If
- *	0 the default (from @spi_device) is used.
+ * @speed_hz: Select a speed other than the device default for this transfer.
+ * If 0 the default (from @spi_device) is used.
  * @len: size of rx and tx buffers (in bytes)
  * @delay_usecs: microseconds to delay after this transfer before (optionally)
  * 	changing the chipselect status, then starting the next transfer or
-- 
2.19.1



