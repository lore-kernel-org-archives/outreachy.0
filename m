X-GM-THRID: 6463409376999768064
X-Received: by 10.13.229.133 with SMTP id o127mr1852486ywe.15.1504879765519;
        Fri, 08 Sep 2017 07:09:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.6.207 with SMTP id 198ls1537967itv.8.canary-gmail; Fri, 08
 Sep 2017 07:09:24 -0700 (PDT)
X-Received: by 10.129.189.16 with SMTP id b16mr1946303ywi.74.1504879764695;
        Fri, 08 Sep 2017 07:09:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504879764; cv=none;
        d=google.com; s=arc-20160816;
        b=qIXkpnrnRUe3E0by/Jv8UJyw+p/n4HrJ1hxfhDri24MUFdyLgt3ElsnkIIKGRgcGD0
         vP9clU0AxmuSvboD0ezNm0v7u6j6dSdPkGayD2Wa0Fk1IH2srAPDy4au3i/+up2Abyw7
         QvTlG586bMd5Q28gIBbbexynm4NyWW0HrRIVAPtpUVbz9KdOtoJ7w6Ub6hGBsQPQP6SJ
         Uu6kWJflA2FhUpRDQPTXltwSHsjlLkLyNWT9oVAo7c70RUi1V69CIVlbLEUVVERMWFf/
         oN6Ctu0SHqK9Q2yBVyW9y5RH3385XXl/7RojsW9xsAz7WSQvLRut8z8Xrw3MVDtJndac
         CCBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=U8JQKQXSZRX87ZXIR8a9CqKaaqxh06zfvTNQ5xmfJ0g=;
        b=hY9WPqS/4duDu9JlWqi8xFBMer9SBv/T8Og5K5hrM3S74q056MGi/PnoHb0T3OZEz3
         Z2XbklcAXVqZVjnZYdxDjSZVi7IL0C39aqNTsQHdDNRh9y6blU0jajtP1F34ihN+pPGB
         ilXq8DoQNIhjOsHZSdas+N9c9EBBYZ9m2r2BGeJnZKXSP8QHX+JzXqu7jrX6BH/sMuCM
         DSnqA3/0c8ikv3WReqaCumMYsIS+vCtQPovX3w0w0smgvN6T351gHVm+T5lMAveRXlUo
         SzQ+0oe3hpPWaEp/Nk8tGcC/vp7cKMsprLelh3nl0U6/rX+XEeJ2LoNsbM9LYS1hHltf
         Mdow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s1YrHXvw;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id j20si253514pfa.18.2017.09.08.07.09.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 07:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s1YrHXvw;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id h4so1485783pfk.0
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 07:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=U8JQKQXSZRX87ZXIR8a9CqKaaqxh06zfvTNQ5xmfJ0g=;
        b=s1YrHXvwGZ8/oVB1ot74ZXedA+RjSIb5o3xlYbRb7x3P63Q3asOpTTuEgDu4d8D0rd
         0MoJaazilS2ZarjxD8iY447XQvFOVlWhVGxXoFQCDDJCVGhu9u4M9zybIqea68eNNq/f
         3PpN7uzIDkttPdufctG+lJenleQj5j0y9ez5jnhBbGrkmE5duuUoT4dx/Eo5BxgVn6r6
         mr4op8HwgwF7BbRK1FK03zzV6m7k0QhS3NjEoJwewmiZ5KzeAsOChcRkEZHqlnTz3Ddi
         Ylw/q612V+hNJTmEOJ+Vl41W5XS5z67wQ98ECTH3hC5Zcse582ww0eg7xWzpfsN3R5Td
         G2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=U8JQKQXSZRX87ZXIR8a9CqKaaqxh06zfvTNQ5xmfJ0g=;
        b=P9sHvk7Fi9Cl1C642DsSzfv0MDOMLMS5/tekEZzgO0sU/qqlUfYRFwEd6uHOYBrhK8
         41fjQkJVe33Oys6ukEVF22flCvHW8zxnCs1KajsFXfkW4oEcm0DhFLZiS/3SrdOJckuH
         LsBgl2PdEFKNbc9jkJb0Km+ejRJMh6hL1fVOk0vitipPgv96M1uDsPDNYASOHb4TLir7
         Y5W2psE3H4WZZfj8uhCkfsauYSj72w+LvrQ5JybZ71GXb2Q7Fb+vwN4BxvcBF1gUjY7r
         wXjKITKs6DyQejc4s5y+PhE64hoO7Q72jJHnTzkxFF+ey2fvT2GXZPR/x+V9KSFMo0oQ
         tZEA==
X-Gm-Message-State: AHPjjUj1q6AsU2pDrV481hpA7da4/inH9i10yuRIXZRfMyXy1M8rxOPH
	yjUcq0qAZadFtQ==
X-Google-Smtp-Source: ADKCNb5OncmRUvSkUd61xawACcNymHJj//BaFfRTlsOLo1PJ3CHyIzjH0aL+F9Mz1JjadduIj9/Zgg==
X-Received: by 10.99.115.92 with SMTP id d28mr3306628pgn.280.1504879764366;
        Fri, 08 Sep 2017 07:09:24 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.9.172])
        by smtp.gmail.com with ESMTPSA id w134sm5054497pfd.186.2017.09.08.07.09.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 07:09:23 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: media: omap4iss: Use WARN_ON() instead of BUG_ON().
Date: Fri,  8 Sep 2017 19:38:18 +0530
Message-Id: <1504879698-5855-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use WARN_ON() instead of BUG_ON() to avoid crashing the kernel.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index c26c99fd..b1036ba 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -893,7 +893,7 @@ void omap4iss_put(struct iss_device *iss)
 		return;

 	mutex_lock(&iss->iss_mutex);
-	BUG_ON(iss->ref_count == 0);
+	WARN_ON(iss->ref_count == 0);
 	if (--iss->ref_count == 0) {
 		iss_disable_interrupts(iss);
 		/* Reset the ISS if an entity has failed to stop. This is the
--
2.7.4


