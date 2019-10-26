X-GM-THRID: 6752254611928645632
X-Received: by 2002:a92:8498:: with SMTP id y24mr12296616ilk.89.1572131787218;
        Sat, 26 Oct 2019 16:16:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:4781:: with SMTP id e1ls2348885ilk.10.gmail; Sat, 26 Oct
 2019 16:16:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx75+DxaRnmGWgB+9yzfWYHK3LDqwY04gI91QHXVe5fgGHBdXbwkIeOx/dLvaCrkP1d8VAj
X-Received: by 2002:a92:dccf:: with SMTP id b15mr13057643ilr.250.1572131786048;
        Sat, 26 Oct 2019 16:16:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572131786; cv=none;
        d=google.com; s=arc-20160816;
        b=odknnI5mZIxu1VugxICBnn5jGdelsCvxZKNsKmb/oekvyvvHfyTKqSK4+3CPuCIcNQ
         Rqw1V8bOU2AMgQlL+gjW0elJdNi24aSbj68QcpkPdVboYVBJ8EhmBejE90EXgSHsrUlZ
         zM4J8L7K43rbFiom2lED0PBNxeWMqmWLcniDPki3vOHe/gL8UP5+wNjf3Z1l1xFXE1nv
         hqBAY3+iHDM3ZbSzmgq3fjd5yj56ZK4YwpmMoyJWIicgXE49r8yR3BktK3FQxY4EUCHF
         PEEhgmaMydPt10UCvsBIOn2jzPFbw2zwhPZpaSFANFOD1GiYRdhywWGBjhRHeYWUTS3j
         VFew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=WembGSFsbExOh6C9xfy35r52QdLc1q9Nu1Ae4G7IdBI=;
        b=d6p/+0E/X7eU2OYcMT0/PGG1774ei2JH8xuoUGiZiyKhDC3TINU+z/FjU2XrT5//yo
         HVs6ROcxeIHLPGu0fXtFrmAR4caONwucWG8FD7Cpwf11zXNvvm3KgKwucApV+37cg8vn
         luw+2MyKkDBW1KLG9v4ogJ3zubPdAERdoNE5/X9YqkrMczy2pH46zPPs1Y8r4gMC4FsT
         71MFDjD96HNXGp4AXE+niwoUACeURLrsskeV+fL2H8wv3UhFnFXQOog7QkFrfzep5HbW
         xbiYUR9pFDz8z/CUQlR7wrOxmwy3HoQV13BxHoP8LUFesxRDkBovMxNS/LZhHxf6aXaS
         Zj8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pWkyQ1NG;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id h14si383701ilc.0.2019.10.26.16.16.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 16:16:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pWkyQ1NG;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id z22so8965050qtq.11
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 16:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WembGSFsbExOh6C9xfy35r52QdLc1q9Nu1Ae4G7IdBI=;
        b=pWkyQ1NGQb6iIZ8q127AjyQtavlLiCaXvTaXTDBO605b0pyxYH/oqDhLauXmQy1r6d
         VzLdCYj3DxDE6D1V3JbJF2UC/geCDPQnkm+xCwH5Ddh0S4Bn2iHlFrXH2SkAVRYo+7N8
         5Qg8AJJjFZzJJLotYEeOqLmfjvTJd6Sfx+9WABWk/eq2uRTR/w7HsohxUPcNAmopzbFx
         VLY2hDEc1rkIXyrd94xHlmVyYWMKbVU+LsRdJ+lojihb9lV4nbEdMDShmQKc8G/J1+H6
         jywm2KLrcgVXe+hENXm7oNZUwxzpYerV5u1zrurD9flBrdnhcHmWqXIXXWzwLrFxrGxG
         UJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WembGSFsbExOh6C9xfy35r52QdLc1q9Nu1Ae4G7IdBI=;
        b=MBUB/mHPMcG3jCUQ6FU/0J7uV7c1itHSw6OVSDygMzxxuXjLPk5vAY2591XE88yJPp
         y8lDaUrafZN4Dhtm7JAdsOitnevSWzQLcARxfZB5Nzz+HFKstPedXBYE/hsKm/tE9IOj
         TARJDKwu/6GnoV/fy8aDVUaCcpFaX7KeiTcGyOxoJ9bCZf+8wllTR5Sg4HvVTgKEDKDL
         Ct34ytfQMopFYq/+lLtiE4Br0R8/ZU9twLWbuRqtvr+FmcqS30ugHir8ycUc267AUNlp
         UDgh0E4VC6cMJ+PO04+xmq1YUlSBi7cYrRmzY2pGQbDV3aZCyzJwDmhhxLAWfhLUqlWX
         fk6w==
X-Gm-Message-State: APjAAAXowyU/c4IkJhs2tiWcxXVLjTNfemOoB4ETAtfJ0R7wKX9CSuhE
	Q9RN6oPs+yzTBmS/q8n0tFQg0dXR5jdKWw==
X-Received: by 2002:a0c:a947:: with SMTP id z7mr10744288qva.103.1572131785586;
        Sat, 26 Oct 2019 16:16:25 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id t58sm3999075qta.78.2019.10.26.16.16.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 16:16:25 -0700 (PDT)
Date: Sat, 26 Oct 2019 20:16:19 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Michael Tretter <m.tretter@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: media: allegro-dvt: remove bool comparison
Message-ID: <20191026231619.GA14093@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Bool tests don't need comparisons. Issue found by coccicheck.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/media/allegro-dvt/nal-h264.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/allegro-dvt/nal-h264.c b/drivers/staging/media/allegro-dvt/nal-h264.c
index 4e14b77..bd48b88 100644
--- a/drivers/staging/media/allegro-dvt/nal-h264.c
+++ b/drivers/staging/media/allegro-dvt/nal-h264.c
@@ -235,7 +235,7 @@ static inline int rbsp_write_bit(struct rbsp *rbsp, bool value)
 
 	rbsp->pos++;
 
-	if (value == 1 ||
+	if (value ||
 	    (rbsp->num_consecutive_zeros < 7 && (rbsp->pos % 8 == 0))) {
 		rbsp->num_consecutive_zeros = 0;
 	} else {
-- 
2.7.4


