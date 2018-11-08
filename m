X-GM-THRID: 6621495393645494272
X-Received: by 2002:a02:9c4:: with SMTP id 65-v6mr1886923jam.2.1541687119835;
        Thu, 08 Nov 2018 06:25:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:8917:: with SMTP id k23-v6ls673444ioj.4.gmail; Thu, 08
 Nov 2018 06:25:18 -0800 (PST)
X-Google-Smtp-Source: AJdET5et39obrHMVONGUTZDe0UwGatk7Qi1Lnw5GYrVa8Ebu/nydsbWHMCGGEukW9Yqgw1x4UiJn
X-Received: by 2002:a6b:3c04:: with SMTP id k4-v6mr3759202iob.37.1541687118739;
        Thu, 08 Nov 2018 06:25:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687118; cv=pass;
        d=google.com; s=arc-20160816;
        b=wia3r2irsbbuIJf5+TGwvkiUN5Rq6yGRiS+690Yquz0Vleov6VLGtKY0V4bhpLDQ6S
         W6dZwJ964VoA8UmLEbl1drMvvZREH2X0DdXnupf89zSj4aBlH4/PSnF9mvX0xNQgEfyq
         wEmTU7OqHptz8FVLZlybmsIeUWkkjcgkRRfLjFD8yImwhfVhImIFkWQk6RltEpuxXPOo
         OpYelf6lX3BdJVB8CthxJeyXZZ2mIXZApj1V/YgtVGnrO0BzT8OWaPjVCnC8k32C2nZy
         VvhYJow3xxyBuevVIcY/av7wovop0nkcxCOQ5KMLXEX1nNzLYwCSNYowaJGBf3a+aK6R
         5Y8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JXsMvhJzDmX+VyFmTUChrCGK+8F2jIAFlBOvE2KhLwo=;
        b=eL1kojJ03P7a7dq7gqddQlFj9ttt4kcT3vGVlZVlQqIGGUoKyFwxosSSpcGwAHsWZa
         CIO3PoHkIFPlzayJxIjI8OIZvPPDyZpxkL7ENcK2SdJTfCWUmErR8BnVDHvd6mgGSKRk
         5Y9fEnCgC+sRokPT63FZsyjOhpAFDYF8uiNljinrAMT1LIvhagrk9ath1nhU3w3XFCbv
         afdDpijIDg6K9TtWFnQ3+qoFct+anv4RsXDbOO/WnN1TPjZSxwSDNxz4iCeCL530d9FS
         jNBH5cxZowW0Zj6TT6INYAXrwGUHs24zT0zosK+KGCRxY6XUO7EfRgMceACTpxh02hce
         2ByQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=TMc0+JGj;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id m138-v6si236506itb.2.2018.11.08.06.25.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:25:18 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=TMc0+JGj;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687114; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=BIx4cE3ksq3X4USGPB3QHU4fTKd5PsYcdgvx/xcaGNVYpiJ3MH9ETo6kiGXYRamfXnuN4bJGbecmYnW+3Of+MQf85Im4NiXiWX631xk5JxYI2DQsdCDHj4Fy/no/f+Vx0A2gH/ANtFfEIi7TcsPhhFO7JRtWd0u947/XbHbJayo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687114; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=JXsMvhJzDmX+VyFmTUChrCGK+8F2jIAFlBOvE2KhLwo=; 
	b=ZUA/Lu4HZFNuAMaSgH59bhHELZ3Hq4kBkHdzv1DmTLksUs15cc1LRnhBRNlfFmErMkP5Pn3+BVba+ZzFgsIh2tuTzquw12bKIeb/X1dQMd2BkgoKmOPVDw3wJKPHxSK21kdamt59Cw3rbXmsK+kp25QEnX3V63tKY/EsoSju1tY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687114;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=623; bh=JXsMvhJzDmX+VyFmTUChrCGK+8F2jIAFlBOvE2KhLwo=;
	b=TMc0+JGjSMEtRtkFkfxkPAWMIoSUVMBP18Osa2QVNwZQWpn4AMiwy7lumiC3FAkc
	+weEFVHXgflv4J22cmMWgtBYgqrtbxLsf/51ji6mHxpPup9wxgNaiCcxHF4FTroXCfY
	ElPfsm0w58JWREw5Uxu7v68F5VPJtfuGdzaBbvpI=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 154168711299883.95294439281702; Thu, 8 Nov 2018 15:25:12 +0100 (CET)
Date: Thu, 8 Nov 2018 14:25:10 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 08/15] staging: greybus: insert empty line after struct
Message-ID: <b6bb679f3cff13366999414150c7ac0d0cf8dc71.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Insert empty line after struct definition.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/bundle.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
index 8734d2055657..4aaf7a0880fd 100644
--- a/drivers/staging/greybus/bundle.h
+++ b/drivers/staging/greybus/bundle.h
@@ -31,6 +31,7 @@ struct gb_bundle {
 
 	struct list_head	links;	/* interface->bundles */
 };
+
 #define to_gb_bundle(d) container_of(d, struct gb_bundle, dev)
 
 /* Greybus "private" definitions" */
-- 
2.19.1



