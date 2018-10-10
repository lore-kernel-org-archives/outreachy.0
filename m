X-GM-THRID: 6610740007472726016
X-Received: by 2002:a2e:5b89:: with SMTP id m9-v6mr954440lje.23.1539182850501;
        Wed, 10 Oct 2018 07:47:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:2a1b:: with SMTP id f27-v6ls196411lfl.17.gmail; Wed, 10
 Oct 2018 07:47:29 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61wY9tr5H0z9KRHvcEj7vL9VRCOyTyjMrosr9bxTlHh+eJKMnjYWCY1qB8eg2B08SjH+TUZ
X-Received: by 2002:a19:c206:: with SMTP id l6-v6mr926116lfc.16.1539182849376;
        Wed, 10 Oct 2018 07:47:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1539182849; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ya3VX9GoBiT8WG+Uq2XMehijULLfoRuCxXMvWvt2Fmtzj9qIcyPtAA2LDX+B/oO/k5
         31b1MNh4WEtyqyg6cM0ZGvBykfwOJsc6EHH+W7Dp1GJLwA8XMHoupb2gsJT5GDjqooA0
         u0iqfVkgMDCYhLtEJUkZ+g3t3tu/U3f+kAvra0qehbh3FFKd3Nkh/yHO2W7Fi6Fgs8XM
         Fuy0c/kB2xORdYuXXf/kFPDzeP6J9NRdCvD8og4r54hdzfiqGx4nxyKMwTCIcAD524cm
         aLddei/ffOGqWeHFcgc+p1Uk+Ke/WopyXzAbLwqRMhlIOqrWFCU+YgdcfZeWm87o73Hg
         v/gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TdtrGqYzHbJ6h717UFw/S9PqHfPGzN2HAk7FiiHhJE0=;
        b=pp5UIX3PNSSKX1xIztDSvU7QYfKYhX/OZJ2zdPj/btG+mVRIZsgPT+Kv0bIvQNw/fj
         tqWK4TZfUYpZG9vRtS/Laume37b80iFE/IPIpLZNoZOCmb210ZgoIr2Gwmj6BKFYq6GJ
         EvnGcQyNvjnTAvwCLAA+wVdtLRL3Bom8sd6LpBBQMkRIUyyomSYCOkjEsCoLEb2dp80c
         LBGzTrE5OOnOM0gpcjjcpfQ8GeaPZGjfrILMSDp+xsFKqiUTjuJs66iUhULjMQY3IuK3
         FFbEjt46fVH5UJgu65LBq/at2+SAJ3bWh9PuoCoH8FnWIzgNpesn9Tglf0A1XfudcHpm
         /Ktw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=dEdkpidS;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id n81-v6si735070lfi.0.2018.10.10.07.47.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 07:47:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=dEdkpidS;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1539182843; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=c+AewVuTO5hTqCDfs6nPr01zpa7BdpC1BhQKteOfArbXQ6awjUYcIm+nmMWHr1nKnplMhvmb0dQr/1ta7JLTe24q2G56c/tkXb3PQO4fyBQavjl82zXOHrceTsOHFlWF0IcCk+qgrkAeZXuIbDO7K5B4QagCTdd2MkPU/cy8/QE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1539182843; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=TdtrGqYzHbJ6h717UFw/S9PqHfPGzN2HAk7FiiHhJE0=; 
	b=QjsvYxtK79gF4huZ//WIIL8VFVK5WX+kgf4pgiCA7ulE7vqfkiIkw0HqlslQ3ltzNAGct8ontJ6vOg/MhzsoHpDT64orJQUhDcj6oxvgEoBitNo+ZJ/J5/emO7gh/AQSA7EZPpXb9Hky5QiDstVwUgi4TTKk5r5NXsWvC6OrQ/o=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1539182843;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=949; bh=TdtrGqYzHbJ6h717UFw/S9PqHfPGzN2HAk7FiiHhJE0=;
	b=dEdkpidSllTfFQljxr+/HaJmu986Pv2E/UOGQR8SBO6L2z2L2ivMYc1I6ZUvbIZ5
	APDu0U6UlWO2rbe8ZgSOyU/cc+ryhC4v8aFqHQcvVi5/INqL9NRfyO0PEeLnOBV35cz
	CUpJBtNAAj3zhdVqevPWZ9BMz5I02foabBF8H73s=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1539182842232190.40545843211908; Wed, 10 Oct 2018 16:47:22 +0200 (CEST)
Date: Wed, 10 Oct 2018 15:47:20 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: [PATCH 1/3] staging: wilc1000: replace udelay with usleep_range
Message-ID: <6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code@wizofe.uk>
References: <cover.1539182155.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1539182155.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix warning and replace a udelay inside a non-atomic context and
it can be safely replace by a usleep_range(t, t + delta), where delta is
20% of t, as that is between 10 and 20 microseconds.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/wilc1000/wilc_wlan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 8b184aa30d25..661c594b0a3c 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -436,7 +436,7 @@ void chip_wakeup(struct wilc *wilc)
 		} while (wilc_get_chipid(wilc, true) == 0);
 	} else if ((wilc->io_type & 0x1) == HIF_SDIO) {
 		wilc->hif_func->hif_write_reg(wilc, 0xfa, 1);
-		udelay(200);
+		usleep_range(200, 210);
 		wilc->hif_func->hif_read_reg(wilc, 0xf0, &reg);
 		do {
 			wilc->hif_func->hif_write_reg(wilc, 0xf0,
-- 
2.19.1



