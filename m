X-GM-THRID: 6620547167797903360
X-Received: by 2002:a2e:350e:: with SMTP id z14-v6mr2186160ljz.14.1541466368158;
        Mon, 05 Nov 2018 17:06:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6317:: with SMTP id x23-v6ls553518ljb.21.gmail; Mon, 05
 Nov 2018 17:06:07 -0800 (PST)
X-Google-Smtp-Source: AJdET5dXjSu1oc/jd4qiJfQ6poehOzmsQif/6L53E9MlzKUB9IX8vd1LLDQ4FYTqeFaESuID9gm2
X-Received: by 2002:a2e:6c0c:: with SMTP id h12-v6mr587952ljc.9.1541466367503;
        Mon, 05 Nov 2018 17:06:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466367; cv=pass;
        d=google.com; s=arc-20160816;
        b=LEUH08sDVEZPtgm5nQ2zPsr8diHwDUSbogF5JbldxWGVAXtxmGYlNUSoEQtjLkTjde
         L4S7Zq4f5HjI2hpHsXUFkLZiZnHjwdI0iYK4SHvRhJxFbXeZXYrxB/Dyih6MgnDRpadK
         37PmlUFQ1yDU78oiw6/M+agbYIHyqeZtxXFvcc0rLUS4eAtwzYLOWPvoUq07LHJaSLH5
         /vt+JYYQeb7MRbYOoNErppq5+5G+qOys0eI1uXE8ZwaWG+2QHcQR7JUyI/0vPoXRIF9U
         2STlqc3fRVK6hY2CM0CQH2q/Vv1vDSrgbzCftsKBxo7yESodmRPgiNTxwm5Dd/c/mFkx
         MqLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2upHcN5xslBz+xuZ5VlC3tL8qIFV5c98ufDNwjVHfcA=;
        b=UbTMVXKxYm6yWL//saqurtDdO08p2+483oL4NJAwntmIWZcVmvK7Yh+GNiaUI4sNpN
         ZjgtpHa3eAx7nKkqCOeJW8o09fMrByj+lGQpstTt9mzUQE7/2seCpf32LUsRHW1eVw+A
         UQPW1AlqfhdSHNvC7aL26/9nwbNYDEaMuhCZF3zqPapGw6dQj5G+EXvBpLcyxhNa18P1
         XFLcWNjpF4l47ETgpHkJaRpB4hC5spjduJfSjxq6v5dwQA7HUqjUoe/yZ35cZkRxG/xW
         TDPB/UT8tPAHK0sivvfRLWUiNWu5STWmi38lffgOKht/A8ojjsyxlz8wsU8SKfYW4Uw8
         /1HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=UliT57o0;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 205si989459lfb.2.2018.11.05.17.06.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:06:07 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=UliT57o0;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466365; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=M4xaiIlRyUtMGeNKW0Cpuz0zC1iiqKaMXmX+/LOtdQaRTFkrHxBJs9nM+GpzKIWPW+J+99w4lT6zNjG03jeAFxy1AbBbABcXpbspnPRDqy44jGdKTK+z2U8w2wNcekOdmnLWUxkLRvmZDBEAAqWIWhs5FXAGrTIpvyolLnGpGiM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466365; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=2upHcN5xslBz+xuZ5VlC3tL8qIFV5c98ufDNwjVHfcA=; 
	b=cgrKRt0UXX2oAMuxLDzDupHoRAw68TciqvQpLJy5KV0kpssMAYvdo2QkloUbT2PZMS68vgcHuqQt9Fx7TWudj1Vg3YnYO9tnhCl9pdUbsmuSWQ1LwZH6yvx/meQHgjV98kvWBUlR/BKJuty7+71hQJUAeruJcmsWQphslrPJM+Y=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466365;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=612; bh=2upHcN5xslBz+xuZ5VlC3tL8qIFV5c98ufDNwjVHfcA=;
	b=UliT57o0r3hLweWnwm151ytFOjnagBVkpL2G/f4XdKpqOaao4YymHc5k82MM7VTu
	reZ0+dxbP3R1M/1CaH6Hz7ZT/hGm0QYmQOTA5ykz/SsIOqhD9qwZc+5L8+hVbgZTNGR
	51BuOIFEW+4R73dwmTXE9n7VdRRbx0yzJRkGy4Pk=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466363981491.3063176993152; Tue, 6 Nov 2018 02:06:03 +0100 (CET)
Date: Tue, 6 Nov 2018 01:06:02 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 15/15] staging: greybus: remove unmatched right bracket
Message-ID: <3d15d1080853ba4355bbcfb4d1751fb41b341315.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
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



