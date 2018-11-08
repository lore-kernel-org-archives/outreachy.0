X-GM-THRID: 6621495393645494272
X-Received: by 2002:a2e:834f:: with SMTP id l15-v6mr522869ljh.19.1541687203675;
        Thu, 08 Nov 2018 06:26:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4a09:: with SMTP id x9-v6ls222903lja.18.gmail; Thu, 08
 Nov 2018 06:26:42 -0800 (PST)
X-Google-Smtp-Source: AJdET5fdRzCdE1smaowyr+c5w3VAOSJ/i1/YmV2U3ntMx2aIzaT9U/vYtc6gpa/Z6N+HJW8cv40d
X-Received: by 2002:a2e:6c0c:: with SMTP id h12-v6mr546365ljc.9.1541687202349;
        Thu, 08 Nov 2018 06:26:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687202; cv=pass;
        d=google.com; s=arc-20160816;
        b=M2Noay73dQXbwSHKwl39wMr0BUhT32s2/hB7vXzFHIZ5Tsh5Yp2rYtGDDJp4V0PPqL
         IpyOkT3FK2WXJz5FWZXfa3j0V8hOycXEt1yew8GLQE/ifpTKn75NZra+G9pm9ADoqgX/
         x5omaNBfKnqiLkDHJ5wxx1T1HYwiOflasErd8DaXXdaozcsWDRj/lAr+qxGNa9QRvwEs
         xqUNCwqbckCV/6oDGpexTomzgKtfZW7bFcQXeg0muQHfXcyM5LKB4PuI8B2gVpJCDAdv
         e6IL+buIetKf4TeGMnnXdqeHoyDuvaSkzLclakZwXtfsGL7RyqrLhpuVu4sjr1mXETqX
         qTyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2upHcN5xslBz+xuZ5VlC3tL8qIFV5c98ufDNwjVHfcA=;
        b=pcUD5/EuD2GwUYTv9rfzNlo21n05GXHGnRp66sX/ESoKhVqKX6XI+R7R9s6XAsUx9v
         988emdl3vXVBEQm/c6JxTN4TKZIsscfVTw0D/84/jl4pj5U4L3xiXeVPWB2ugokzrhFS
         aqEVQHGn59m5z4EnsQB/JWyK5s1ZJM6TkLd8p1DuW7FSR90VLGds2DiLB7j5QORXZepW
         wYupbn/TfwH0dEXAWs99avRdKT1/bG7GmYPc0CSU2/SIyVjLiHpm6SQiYEYWjDatQVQ/
         x5EF/346zjIbluEj1arSatQHSkXJB3HWcSdcQr9X5m5BNV0/ZpdIqQDPmZuDtmmhDLyg
         1u+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=OxtE9r3C;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id a79-v6si141593ljf.1.2018.11.08.06.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:26:42 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=OxtE9r3C;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687198; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Q0+1WNaMbRdcyK6VSidDSh+d3Y0xtrOivy8JX5ThAqLY3wgrBbnTRZZXBMVScRCCFOhg4RHcbX8iLmJPoW94DF8708Hk9pKmhmZQq85dkAINVIzDAgORMIfOg0DVa3l59OlBrJGd2aPzXIsuF7DQ46gxaaPQ+dkbbqHPRZVNmQA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687198; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=2upHcN5xslBz+xuZ5VlC3tL8qIFV5c98ufDNwjVHfcA=; 
	b=LveY9p/YbghBSIK1wzrr3oNU7x/m9k67m16zZPWwaMzuSU1j8XVe1ZU653aHjgGhVYsP+nm4RLlpgqaUtwahUMFx2z5kpVxbo8JVnKIjhViwtPmze+cp114E8BhuOT7CEszKxOs3G9ekY/clIkc+jD0H0gHDwjv8Wad8nvk+kSU=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687198;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=612; bh=2upHcN5xslBz+xuZ5VlC3tL8qIFV5c98ufDNwjVHfcA=;
	b=OxtE9r3Co+zurpy2k0C/94cnCSxSvvMoPM05ieJGJs7WW3f9NDTOe5NFGwNt9GuK
	wnuzMtDFMKZqsaVhPxwKDeyW5MaDwWRhRGLu4/YMqjNE3dAVRjzawPEhTHsVxT2ldKc
	GA61Ulm17dbhWUuPawlP4dSW0qNDR4MyjT2oL9kY=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687196489264.66910917376606; Thu, 8 Nov 2018 15:26:36 +0100 (CET)
Date: Thu, 8 Nov 2018 14:26:33 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 15/15] staging: greybus: remove unmatched right bracket
Message-ID: <3d15d1080853ba4355bbcfb4d1751fb41b341315.1541686943.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove unmatched right bracket. Reported by uncrustify.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/camera.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index 6dded10f4155..c6d65430ea4c 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -1190,7 +1190,6 @@ static int gb_camera_debugfs_init(struct gb_camera *gcam)
 		debugfs_create_file(entry->name, entry->mask,
 				    gcam->debugfs.root, gcam,
 				    &gb_camera_debugfs_ops);
-		}
 	}
 
 	return 0;
-- 
2.19.1



