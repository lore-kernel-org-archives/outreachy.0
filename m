X-GM-THRID: 6621495393645494272
X-Received: by 2002:a1c:9645:: with SMTP id y66-v6mr459769wmd.6.1541771714775;
        Fri, 09 Nov 2018 05:55:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f0d0:: with SMTP id x16-v6ls444379wro.22.gmail; Fri, 09
 Nov 2018 05:55:14 -0800 (PST)
X-Google-Smtp-Source: AJdET5f6xrPGIreskubedQAg6zE5h3Hzf5i876sgQb4zrLBKAqcqxwB0uNoh6PSbUvC6EyiysOJ3
X-Received: by 2002:adf:e50f:: with SMTP id j15-v6mr1732223wrm.5.1541771714084;
        Fri, 09 Nov 2018 05:55:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771714; cv=pass;
        d=google.com; s=arc-20160816;
        b=p6jjNp2atmalaj3qKn4bnVPdnOTvZoa/fiBTv+0fbW4H35V9W7mOmrJIM2OuXoASgc
         VSho5nh5bh+2AG5F8cF+kOfKQoNcPiCXdKYxUvsU/W5CywfNnX8a5o25dBGsKiEEQLle
         Q/Qtnexa7vgTDAs3G8CuyKvdBkjPPd5LcKExQea98mJHPSMVGn4TbJRojPZU9gnUmTHj
         GUzWxaDoXi8UE0neRgwIBLaBGabEL8ZXHZG3mvVvtWklpPaJVlcpoVGrWiCRI1Py8XzQ
         f4OuK/a4F8UAYrLD81GkJWM5xk9tpVbHZ8pAWSBm2hF900DkK0by9N5LWfOoi9Jmb08R
         aInw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2upHcN5xslBz+xuZ5VlC3tL8qIFV5c98ufDNwjVHfcA=;
        b=PDYuFIuuJFVul6Pb2agufZZhfWKm25PyL05kzIUkLtD3324WerkKp3yjQB1+1M1sve
         NnqiuvenlFiRvltoCPCIVMiRvGH6qkDQDD47E86q76GJQyeZUOvtBlv525fYVhQ4PZRz
         GYclB4gWKjiMmHBLDMfAHadt83z0OuArz3u5eQapm+L1Nz/48lAWrlEQSdlhEpdP8of5
         RRtS/1E5sh6CMrAJm3hBqziGzF0XwzAa0E8NCYtm7B2gMAoemjGX10Meh/KGXlSLoNjJ
         TzxbMjNQJ6PVZMbPXkq/QX2seBycnzgTKM0fCzMKaDncqvCCzGPoS/vWPf53c/6AJ0QD
         bGjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BaHog50B;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o8-v6si55427wmd.2.2018.11.09.05.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:55:14 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BaHog50B;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771711; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=DKjYbm+Zf/yUsDFLdGZ5VTmm94cOirIUwvgZe18DclBaAxIrmRH9fQFnG5kvrGQNTQtA3vaQymH5eGVx4Ii7BhDpkaq6NdlQt4DwbdGPaWxStmPwHGVtN8Hmecew5mhkAHNvEi3Fa33FrDwtVho/Y8xkvtNkna+T2Zhes2CbV7Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771711; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=2upHcN5xslBz+xuZ5VlC3tL8qIFV5c98ufDNwjVHfcA=; 
	b=MvWl1FB5VnQU2hgHL8T7D4EF+crVguYnxRrVNgm4akeuj9Lc3WRzUjva3BB4xNpInbWKSMsNlnHzvXNo4c9y+9oTYgVR6WEG/5NfKl/L5KOe4st2IeBBduqnJkXg5Go8bnksBb1EwAurE244LluLSujbQ5khrcINhXbVbs+iix0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771711;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=612; bh=2upHcN5xslBz+xuZ5VlC3tL8qIFV5c98ufDNwjVHfcA=;
	b=BaHog50Blr6Wudgw61JNJaKVYhNPR8beWW49UjhZwHytM/ZdyP3ncQkT4HoihE87
	2JbcDGA4VV5KlKn5igMhydiPU1ywt2ZpM5Lpl48I5czUBOsOkY06ZX322UWNFVUDahi
	lXf621aWN8RUWEY+Fy8Ht5rVEbRwxAw91F6LadRM=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771711205277.255801586531; Fri, 9 Nov 2018 14:55:11 +0100 (CET)
Date: Fri, 9 Nov 2018 13:55:09 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 15/15] staging: greybus: remove unmatched right bracket
Message-ID: <91ac701620e557495b058bb58aafbdab2d97837e.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
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



