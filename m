X-GM-THRID: 6664981263437266944
X-Received: by 2002:a9d:6c02:: with SMTP id f2mr3526026otq.73.1551870920002;
        Wed, 06 Mar 2019 03:15:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3bb6:: with SMTP id k51ls285529otc.9.gmail; Wed, 06 Mar
 2019 03:15:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqxP0TMhLAJQ/VLbQ4Hh4+C8m2Pl1UA5px95YG73sSPGcZz2TFrExqOERpNUEkPvT5EJaDYF
X-Received: by 2002:a9d:590f:: with SMTP id t15mr3532089oth.7.1551870919363;
        Wed, 06 Mar 2019 03:15:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551870919; cv=none;
        d=google.com; s=arc-20160816;
        b=JWFFEqreZF8QYPYn+pCpCOPnHKN8z0Q/yQ2MKxz1VFIjSsUKTO4mjrY2lOjPys09Bd
         dvQiOhlUhKw0zAhluqfe8Rn+oqnHobOlwh5kVmnqMKVtotFiJpmC0sVuYjtbUlTnXnHy
         pQvBnTEzi4E4pvVDoBwDAaLeqoEZGvwuzYgWR82YCI49KOD6+oJQpRk2NokgbQOlZ+1d
         LZdV2/cVdxU30Km9JEcj2ShET5v3rslMNC7zwAL5BgtrNuWt4pUlaBE4IBWmHOoBMViT
         03mIbZ2t2Yp1wdpJvyQpj9ntJGgKwEkuPfLg1DtxRmGUfMYx8ldso23yNkh6JBhSr6IH
         Js+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6yFPcegENAtpuNfp1PcZ4Ft3x+hN/o9hsEwEc086kHk=;
        b=JqjRTzFp+rc9OkigI+wErHS9UTkFSaOTRSgvnMbFlWS39cG15IPz3jTsj5U2QPetIA
         FnmcO7Cmg4gL4In3EFq1jeVDo81udiCxldqtHykEW+2UHFZLn/IoU7tYY7eKpMICYH1U
         yZUZBe9cWm+SzJiYZ4jNNO3ouxRjxaU/78UZQJdtM0P0Y+nuAwIoqAUGXcmQZUkw1A2/
         8J69/tuKQJ2Ci2wHxcTYTDaEKermH+HOfuFMETnefZ9+wdwcKToK3TAdYVzddjP4lg/h
         9XUog+ndZp0KwtjXeg3IbZEl2SpRJepn1eD1Th/kYkCtK6x4nxszWFBPakFjl5t2l6eR
         o7DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YZFK9wws;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 135si88213oia.1.2019.03.06.03.15.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 03:15:19 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YZFK9wws;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id v21so8336022pfm.12
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 03:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6yFPcegENAtpuNfp1PcZ4Ft3x+hN/o9hsEwEc086kHk=;
        b=YZFK9wws6dXhulJtQ5WX+LHFaEaRTvfU1+mDsCs7gpu9+ZUysbsVE1EqViHI9q3/j/
         +ROHQqwUo/vhwwRi6gzz3sxwULfDnIsfcMCxO9SSuTW9fqtMfCICKwuDM/0SYmcovm6A
         Yov6GPqImzNCvQKFPA3i8IySM5EtnySEvomPl0zacTExxx2ufdBro+JLPIxEkS3ZbgPg
         nxAthNRFkM1M4H1YXbTi5jgNuaa0adBEKfSca43iWV4c1cTtcIbS5fWhytODxvGEf7f9
         8pfuYy59REiuau4lUxTmVPlAlnLe69HMdqMywpMCp9+xZzxGsE3QVJeVXpdGqq1UmuOx
         l90Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6yFPcegENAtpuNfp1PcZ4Ft3x+hN/o9hsEwEc086kHk=;
        b=KEKVk9Xyf5psyxZGQlV9M4tvHZiu3wUWkz/v5+KXg2Tp6NUik++UPGzqlyISJFVT0P
         1bqYA5XqeVmkM+nnKd0x60CYLr42tDA19xodw4Q/AElkDglMMw4/dseTBhNCrjC8FDep
         sEZBom2Pl2ASz46OCTjjYtdmERtCJAUG9ZpMUUjuacY8QA3fuHmGos3OsPLERa35Hi9H
         jeuPupFde3s9FHTwcX1/SYGQ7Be8jeffrEUNe4gUP9tZqNw49YkInLwLlXrW78yZsekN
         gBBvofJS2nmhAl6+hYg9FQDWjdkl5tN9/VqrDxhRqBtcBCtuuWI9zUaV6xniX5PaSGal
         ec/A==
X-Gm-Message-State: APjAAAXRhL8SuyWyYmkp+COwdIg0VRh7BgtH+eFIPMUyuVdy9HfNv/uY
	bg89UvPzun1BJJBrw7M+5XCk1uYo3aV78A==
X-Received: by 2002:a62:1c43:: with SMTP id c64mr6669974pfc.259.1551870918734;
        Wed, 06 Mar 2019 03:15:18 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e93:b9ba:2d23:4503:1edf:a0e9])
        by smtp.gmail.com with ESMTPSA id 4sm5233512pft.96.2019.03.06.03.15.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 03:15:18 -0800 (PST)
Date: Wed, 6 Mar 2019 16:45:12 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 2/2] staging: fbtft: convert a macro to a function.
Message-ID: <20190306111512.GA11718@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Convert a macro to an inline function to improve type safety and make
the code simpler.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v4:
  -- Modify log messages.

Changes in v3:
  -- Change the subject line according to log messages.
  -- Remove extra spaces.

Changes in v2:
  -- Make the converion from macro to inline function

 drivers/staging/fbtft/fb_watterott.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 502d67f..40e5427 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	return 0;
 }
 
-#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
-			   (((c) & 000700) >> 6) |\
-			   (((c) & 0x0018) >> 3))
+inline int rgb565_to_rgb332(u16 c)
+{
+	return ((c & 0xE000) >> 8)| ((c & 000700) >> 6)| ((c & 0x0018) >> 3);
+}
 
 static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 {
@@ -116,7 +117,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 	for (i = start_line; i <= end_line; i++) {
 		pos[1] = cpu_to_be16(i);
 		for (j = 0; j < par->info->var.xres; j++) {
-			buf8[j] = RGB565toRGB332(*vmem16);
+			buf8[j] = rgb565_to_rgb332(*vmem16);
 			vmem16++;
 		}
 		ret = par->fbtftops.write(par,
-- 
2.7.4


