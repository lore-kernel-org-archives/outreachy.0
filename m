X-GM-THRID: 6621495393645494272
X-Received: by 2002:a25:6705:: with SMTP id b5-v6mr4783942ybc.87.1541771669930;
        Fri, 09 Nov 2018 05:54:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:4744:: with SMTP id u65-v6ls882368ywa.9.gmail; Fri, 09
 Nov 2018 05:54:29 -0800 (PST)
X-Google-Smtp-Source: AJdET5fsBVgoLRruFTHGCuu1g35I3WVw/9bqdQN6yxdGbbpVuYE4Sn8RBszU7X6c3OrMAzZZJB8G
X-Received: by 2002:a0d:c841:: with SMTP id k62-v6mr4401324ywd.6.1541771669326;
        Fri, 09 Nov 2018 05:54:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771669; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z2sB2OhZevH0P1kMjnVou2E9r2fnYL1L5ai88mzjD8Td3xZpChvRlbLej7YEFcAyZe
         /lXrHeboSJuepoQ7etmVC9TSUEgV0DlVJ9B0AsnYUs6jtdEHES7LlJSK7UZL39mNTlLX
         ELuDQ4KfbCpegWJxreQ0gNKybVeCSdeQ5Fv37pF+CqOkjjeV5U+RyKgoOIh88esie7AH
         k14gNSCAN7pUK9TZVlNSDd2fKI+zYm6/vp0Jh7ENQ0lINoMUdsADOrhUHkgA5lzlflb6
         I2HC7Q0ZGQdCsGEoWVqA+f4H4kvKfjtuqncK1id4RyD1Ywd20hPcraoD9dcNJftHu3gz
         J03w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6P3rPGPwlzdFmZTHW7HBblekhpsiSGKobefwAKIJIWw=;
        b=jHOMruL6RtAeMmKe1P2YcsaXLRLWeqIx8WR3OGon4HVcf3FpCQIz+uNIHXajWg3+9M
         m+6a4cAIg0ZcEaQ7VOOzRM0hJm0kTTTXcqX9K+c8mopFto9bp1Szl5h/qlXRPteiAFa2
         iG7CshJ9SEcgdltnT4xNYtmxAoCcuiWLVy2vSMYeHTpUH+Gviuk2tdbUbtPbDqk6CV7W
         JtS+dWryzrlFlGrFbERQZDj0PKu1vVB2zs3jTcrAg1/cusoPbk2GxkIVKlEGaRJvDfke
         YNektm2I6lqTlzHDJTrwlDK/v+4O2UYJCR7peKyehQuqLpzWYIwuTdGP3X8fEWWLDuBq
         56vA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FK8xl6Bt;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id k19-v6si263214ywa.5.2018.11.09.05.54.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:54:29 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FK8xl6Bt;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771665; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=gTZ6gELE6+rM3WmMMms8Mtb0BYUUW5emmUWHkYnOzQXlE2hu+S6kFGYtC/YXlTqZUHd5kifzrfDhytHA/VAIWEgpcns+RXRI7mjU9Yn7hW5n7ZwRdMxtfBpB903vLYaFBoibU8tTjtsfLnAHJBJsB6cIf1jgqp6Yz6iFDaMI/2U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771665; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=6P3rPGPwlzdFmZTHW7HBblekhpsiSGKobefwAKIJIWw=; 
	b=CSPu6qFKtE64Q9yJ53Ku63y39EZLpuuDDmRH/SHSvZgQQ4kKmOiG8dYKVu87u8ZKOAK24oafthoYf1h6jrJ24SCFf5/l/LlOzTCSQqxY2jMsmhjfyxA+qkbYC2FicpA3SHxXLUez9H+eSaVBb3UeIk6/GdO3ZFxudfKZuJuZibE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771665;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=793; bh=6P3rPGPwlzdFmZTHW7HBblekhpsiSGKobefwAKIJIWw=;
	b=FK8xl6Bt/ObGCVa84ggNREo/bHpL+rktsPdE1gp1wMBd93fLDR2iYLncKyvYW+YD
	cunreUELu5We4bh5mOOb6i1fTqiUy+QFiT1y1qNvlUEhFxKXZcXAQYHzI+d0oNOoi0q
	hdpW2IfLHzzAvHYHLABc6p7ppBK1LHwKitCHzKTc=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771664923149.05514777308338; Fri, 9 Nov 2018 14:54:24 +0100 (CET)
Date: Fri, 9 Nov 2018 13:54:23 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 09/15] staging: greybus: remove space before tab
Message-ID: <a826a14a62050ea705bb5b8cc8059a31d45add1f.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra space before a tab character.
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



