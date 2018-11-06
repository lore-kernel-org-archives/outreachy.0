X-GM-THRID: 6620566870307110912
X-Received: by 2002:aca:d543:: with SMTP id m64-v6mr18628230oig.43.1541470855974;
        Mon, 05 Nov 2018 18:20:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5085:: with SMTP id e127-v6ls902164oib.11.gmail; Mon, 05
 Nov 2018 18:20:55 -0800 (PST)
X-Google-Smtp-Source: AJdET5eGBKU/PLtHWnjfIJTq/jm8FRGwYubNaUE6yrfYUiXJaE8vtesC8FCt3haRWNmKR8PsGWO3
X-Received: by 2002:aca:689e:: with SMTP id o30-v6mr8392470oik.27.1541470855092;
        Mon, 05 Nov 2018 18:20:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541470855; cv=pass;
        d=google.com; s=arc-20160816;
        b=r59g7EK+KNCUPmbQvGPBvNC2lBNp8FN5cnsssmqN7YhXmykIJMIgQiYGNT6UIGiY1F
         MNbT5/OIfFTC75MeCH7h3bfHRC+Ejld7C94BiDytqRDx7GsHIMo2Wu7wqLfPdI6aZ1oE
         yeX1Di0JzUkME542Ro5XFQw4ZfGwpfDio/QYvU/0mAclC7fwYh+hcV2swHh5zQPsuQKF
         diL8vOJBppwbCZiFSGarDfoPB41U2eR41z9LCigaE7plCIHXFtyPx8LzB+4O+nP9tZU/
         3BJQw4636o8TVOkB5G1bKgUYlRjP1S1ljzDV1nZDEyJoCAPmzZbxk5e+gBLLSBj34VsX
         ud7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kCs0iydGom1cEJCziCTxXfFo/7N4owSdCmBg6Vv/iEA=;
        b=o+hEb9KVXJRlz94QUqO/bvH/W+4AMa1fdQJSBx9nkZ5HRJQCfYVIPeAfFBMFp6/a9z
         HwDyz74dX+01eH6DwJjm8tXpPB74s7RKLkA5jQw/cYob0BSSglDsPmDD83cFaQYIHRaJ
         z9W8moeEakwreTufFELcRG3s5jVQyYOgf3blDdFQmLv4yxwioMwScZn7LiwHCzJWgic2
         Q4pvvValovt2RToB8yoCI0ShyBqbWsnNACL16l/IJ0lODF1X2qb9sW4NREBL2xLCO18X
         SWjA3JT911Maf9Qlt/OX5fCHI12EVqsXqyHdQlki7qtU4baKjY89FASiGPbNWJE8ieJ8
         6Vqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fZ4f2xfi;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id p84-v6si857100oih.1.2018.11.05.18.20.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 18:20:55 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fZ4f2xfi;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541470852; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=BBya5BGgR0l4TRyjp0V/zueqjYtcSjR8zGJOn95L/dpq2ay9MMqP+yAiZRlbcpLYA0a2PZZX1QPBAX1eIUZfThcxbhuu9m6LmVYuKeWxkPVPJlQ1Rj9owccwHqV0n9s8WVl+IFudvS8iJevb7Jylt/MBc00IllJRCYhtAEObQh4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541470852; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=kCs0iydGom1cEJCziCTxXfFo/7N4owSdCmBg6Vv/iEA=; 
	b=QmK/QXkRj9V+aHME2i6X2SsvyVOUwCODyQCRoTKbpe+1ajqDU1fuHztYmQAuQ2L+PawKeQ17U98HEYCSGyTKtec4WLRo1kcfs4QJanGhlQlrR1cTWv3YdA13uLaOJtlxeyI197RvsXgUXhy9cb64Qi5C3nG8NCvX6l4SD2Hfyq0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541470852;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=753; bh=kCs0iydGom1cEJCziCTxXfFo/7N4owSdCmBg6Vv/iEA=;
	b=fZ4f2xfil/N9KMCI43sYK1qwCjDWFzIUnckpqqUyhS1r9EnXZ5TI5xJjGy+bjKgw
	Bjel/hUGeyrk0ro+Lwp/MfFr2cQpHUMTP1QsTL7vq/X6Cz4awBNatYNSA1oUY4MI4fN
	iYbpgzpNeLBsG6YnvuFwv6BBzm7+8JOBkqKM+lTQ=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541470850377693.0239498173096; Tue, 6 Nov 2018 03:20:50 +0100 (CET)
Date: Tue, 6 Nov 2018 02:20:49 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: speakup: add spaces around minus
Message-ID: <fc3492ff589743a2e9b2742724e2c0d935d483ed.1541470798.git.code@wizofe.uk>
References: <cover.1541470798.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541470798.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add spaces around minus operator. Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/speakup/speakup_acntpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_acntpc.c b/drivers/staging/speakup/speakup_acntpc.c
index 28519754b2f0..d44ada9869ae 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -298,7 +298,7 @@ static void accent_release(void)
 {
 	spk_stop_serial_interrupt();
 	if (speakup_info.port_tts)
-		synth_release_region(speakup_info.port_tts-1, SYNTH_IO_EXTENT);
+		synth_release_region(speakup_info.port_tts - 1, SYNTH_IO_EXTENT);
 	speakup_info.port_tts = 0;
 }
 
-- 
2.19.1



