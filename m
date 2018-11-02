X-GM-THRID: 6619413531629453312
X-Received: by 2002:adf:81a1:: with SMTP id 30-v6mr1368943wra.13.1541202313187;
        Fri, 02 Nov 2018 16:45:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5287:: with SMTP id c7-v6ls4463062wrv.14.gmail; Fri, 02
 Nov 2018 16:45:12 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dTWXz7c2kO6I3wA47WZDvTHrjEpAMC0TmZtARqha1JIlmS9ZvDiCpWC8vPQjocykdUwQJ9
X-Received: by 2002:adf:fb0c:: with SMTP id c12-v6mr1398193wrr.22.1541202312386;
        Fri, 02 Nov 2018 16:45:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541202312; cv=pass;
        d=google.com; s=arc-20160816;
        b=JW8OoTVLmufvl31aJTp8pl84uq338DD2bq9QuGQX3uObPswz3s82Fuur26MdHb/vNQ
         8bNoyZiOc0hcbJuyGhQRjESoWHMIdT+1LgtBch4k1M4kAABtlf1ArIgXfBayRaT8rHKq
         cEyW6QakraKR/7s5mwGxrH8r5f/riqU9MLwuxW3p0qDVFfWXm4zyufUa9oGDuNfRv+GM
         2HE82jB4K5kSrdDXK3OEOLi+miBL58/WA/y32keIFn/FvCB9ni7lv7dDElZOVUf1LXhI
         ImUQ3mXGXz3XPO6Q2FYOavCZhi1M+A6vKLbj90d9H1QEMoUSXyMramPgCnYT0wi1PXNh
         Kr/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=u+iL9dsimGzsuxWxrxWZXxUkfscn+p8u+AFlgtZm1Jk=;
        b=UWV3VJ70Hir2fyFsCRFwpO3KslyU4B7c1ps/vpKZl0z2f2btx7NNqgQ4pjQg66adnk
         WGZZNSA7bj0AGin03jKEcG//LyoMb+rDNqZUYKKEAVO1Q2oRZjwVMJ5N84L2EyWSCP5Y
         VaeHeCvdq83cTcVoQciYdQVh7AsCac/repmJoayIRI1R35o1WNpDarLsKTLvWV7yZEJJ
         V0+aTC4/MoDkpHiWoVZpQOyK2QM/nmWNyiEwkDsHzjmqnpgrTkMu2lm31qQSBcGMVOOT
         GM7w6S+IEDOFt98aXRBu9X2meeZtZnHqFyUAiWUsoYLyWMn/Ozt2kWiEEeU0IcgJ8mDy
         Qh6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=OQTrLDGb;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id p19-v6si96016wmc.1.2018.11.02.16.45.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 16:45:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=OQTrLDGb;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541202310; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=SQdQxXuA1+/OYdIYG1ak6gxY/iTtDvsgTw7VI1yBuq3TRggRyQClnW++rGp7CHQQCOFiUO/+zn1EBLE3yZQUhwdC1beASnGZ3lifkOQ5M2bgEqMdU4DfFF6YnPlelz3eIyTbuqpf7Q/PCVL32O4x662ezbvU6n62XDgWGo6nGO4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541202310; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=u+iL9dsimGzsuxWxrxWZXxUkfscn+p8u+AFlgtZm1Jk=; 
	b=T28XFDbQu8TFlrVhy+1iWpEja919Q2qtaP5be3jVWtFuGhcar7Mwt2FJ1dV1MuydQlv2XbqP+uovgQF638mTPp8juOnV6MZeUnKRjOkbylpdT+ONvCz3Ovj9EwC3LnL/LZrxVfZzAfTnHFgLMlWHTAGWbs9bBFiXRp8NXuqXIKU=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541202310;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1193; bh=u+iL9dsimGzsuxWxrxWZXxUkfscn+p8u+AFlgtZm1Jk=;
	b=OQTrLDGb5aYigp1ZHbRWvAvcp6OYH+DiZCVSAtRYY+Rck6Sg00yE7mW/khDXINL2
	wCSDUsiPMucBq9tTd6haRMd6YPlPWkss3PJqjZNIBXV56Lu1RdldI85RrHdWct6VcT8
	npIkXwtmME4rwcZg/JFu/1dMHbzmx+ZGDeLRHSUE=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541202309688623.7363008411559; Sat, 3 Nov 2018 00:45:09 +0100 (CET)
Date: Fri, 2 Nov 2018 23:45:08 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: remove extra space before tab
Message-ID: <20181102234508.GA27353@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra spaces before the tab character inside a comment section.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/greybus_protocols.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index 5783f715bdc2..429a952c5200 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -918,8 +918,8 @@ struct gb_spi_device_config_response {
  *	0 the default (from @spi_device) is used.
  * @len: size of rx and tx buffers (in bytes)
  * @delay_usecs: microseconds to delay after this transfer before (optionally)
- * 	changing the chipselect status, then starting the next transfer or
- * 	completing this spi_message.
+ *	changing the chipselect status, then starting the next transfer or
+ *	completing this spi_message.
  * @cs_change: affects chipselect after this transfer completes
  * @bits_per_word: select a bits_per_word other than the device default for this
  *	transfer. If 0 the default (from @spi_device) is used.
-- 
2.19.1


-- 
ta
ioannis


