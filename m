X-GM-THRID: 6619819947345313792
X-Received: by 2002:a1f:980b:: with SMTP id a11mr15595441vke.15.1541296939102;
        Sat, 03 Nov 2018 19:02:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8c85:: with SMTP id o127ls3670606vsd.0.gmail; Sat, 03
 Nov 2018 19:02:18 -0700 (PDT)
X-Google-Smtp-Source: AJdET5e5D2p1LD3xkDkOrjFf/MMKvzYVtkKZc1B4UYlvHTUGD78BRPghWyYzu46wnYHdZmgf1bXw
X-Received: by 2002:a67:1b04:: with SMTP id b4mr15953382vsb.37.1541296938034;
        Sat, 03 Nov 2018 19:02:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541296938; cv=pass;
        d=google.com; s=arc-20160816;
        b=pRBteSD9bEqZv9/zDQzYj2q3e9uf6j/QXjlVszYWqSxRN28RcqWZVwT51RbsLRVUEj
         vwjU5Nkl7L8Oe3BhItAd35LPkQVtergk7+g1uzmHbQ+sWw7884OFXQfpqjhca+9bm57i
         nJOLonDNcb4CIhU9Ir+TDrv11de9umUNZiFHDP51xYjT4L8o0LUiu1TItARsd1SWerfM
         S77mCzKgBFyPcfAaHpRLhCerWvak5oS4N1/H8p0Oj+1cE8U0c9/RFJs5xrtFPbNfzuQK
         f04cgTypCvJp3NM+T4P/scpJeOe6dIJdx5PnSDJIpuOi+wAy/hQtyx7g/4dzj7VSV2EV
         jO/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=AiDKe8pwMOVqKEBdMn8N/wevIHNk0iIdKKt0s8wpDHY=;
        b=rA10epXY9C8mb94ACuXq5RjvkYCokxZBx1AUxOs+lChIytcKUaPCzf1WTsx4J1FEIy
         sque+fe8k49DFqy7eJbVI2CO+1+peym8CxjtWIWRga1zICtPMjW7DuVKJI6ryGN0zHRf
         D3+xnAeV2HHNcyP8jlotr4Rc+M1TuwOMZg7bFBncUoQvRLr5lDALWFat/7Fi8qeuEJqu
         hqfwNjAYg/jgvgY83OopQGWOB1s77IeWFhDPz2V0019Bvd1fMfm1oT6ZoVWrriOjn0UL
         /XDuVp2zasxIxNmqyZFopRW2d0TRi9ZcJ4b/B6xTnqcl9XWV3zxYKOfnywxs8iD3TcR8
         duUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="WA+wlfE/";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y5si490364vsc.1.2018.11.03.19.02.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 19:02:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="WA+wlfE/";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541296934; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=GnErn1JiL0l9Lj/+J9m2MF4qYTXJalGDXPDoK+KSdNlp6fSD4XoVgXpy0AZJqrYgfURBIEzBE01tllT614Z+IFjO86A0Yft5IhG0w4eT7UxBg8zDM7DMGlyzak4KEZB3URLg5v5MsUsLkjTadJttF79z7UDgPdeJNvGIN0R2Ygc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541296934; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=AiDKe8pwMOVqKEBdMn8N/wevIHNk0iIdKKt0s8wpDHY=; 
	b=DJKIxJ0GTj3hzJaxvJUQcQjJ+LzhVl4Cq9VEAMZx0jRu3Z1fi0fDksWcJWWNkLUEAJA9C3grFiwPeWWHpCNz7edstPKmLDbWvJKciHPIUrYBOwjGQyBLn3DjOFAgbSjBv6Lr6VbwB3l6UsE7hHDfpzQqeOQoI/3cYPKcnxaF7I8=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541296934;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=613; bh=AiDKe8pwMOVqKEBdMn8N/wevIHNk0iIdKKt0s8wpDHY=;
	b=WA+wlfE/btcMRD7Cxj3Sjeno7fHYDPrOjy8p0vNvyWAlvB84+jcyJR5mPqBVHYb7
	UJdHKza1MfAppencwHtP7uqvDuWqHBuexx51RpIsXOFZTbPrhBDAn5uZLnjnr5pLjWb
	njCaIrU0OexSRq+swq8+2Sd+dbdbtJOpgM1dpGaE=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541296933620196.08880328876432; Sun, 4 Nov 2018 03:02:13 +0100 (CET)
Date: Sun, 4 Nov 2018 02:02:12 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: remove unmatched right bracket
Message-ID: <20181104020212.GA18914@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove unmatched right bracket.
Reported by uncrustify.

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



