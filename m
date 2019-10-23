X-GM-THRID: 6751148501863759872
X-Received: by 2002:a2e:808f:: with SMTP id i15mr3708094ljg.24.1571874251370;
        Wed, 23 Oct 2019 16:44:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7417:: with SMTP id v23ls376008lfe.14.gmail; Wed, 23 Oct
 2019 16:44:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzXK/g7h4wUHtO/xSN+e5NPphEjuHOt5uDh7e0K8V3+1xkC1HdwGAybBIjSg/rdRFud8bdy
X-Received: by 2002:a19:6d19:: with SMTP id i25mr20312983lfc.178.1571874250396;
        Wed, 23 Oct 2019 16:44:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571874250; cv=none;
        d=google.com; s=arc-20160816;
        b=aqNabxJHdJ0Bypsko+S+DHsaRsNQaPNQAsUZtUeI5epAdMO1RJWGRvSEfnJ5rXT2dZ
         iaCzoOy5SDPhTdUw1hV86Zf/ypz+jFMaINt0MzD7uHAJGP4Ly01VlF8QOXjRpeJdjIRd
         xQbcQ6vcZIGzQwJNYEuqoBDXPxhVn5BgXTX5DfIGruI2unJwoV3hucPbfMpH3xaPL6bu
         3zafrEiXQEj4ft5xLmPvGcZD4nuIamtqwd3L6ZEXhm9Xqw383WI+bLzYWy8Hf7yxgWfa
         GnU/9lcVT2JAZB0NMt/Z9AOgTOj5ttyDpmawHuQDFbdOww1l0ZhkGMEVYeUccxVlNwqa
         IWNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=WQdHODICOGe49IjJ188zhAmJyxEHIdU9A20AqZdtK+U=;
        b=kkKyrJJG1SVSyKFaB0QH/ErkCMaCW4G55u8ZNePFT1UfzzBNrdYQUJO13UxlOk1u7I
         UA7E6wCLWmo0f1ejNmee6b9NYb3kmqne6jG/leHuhDvC4wWxNlbnO+H0q19fGOoWe0h8
         YIpDfhKc62cgwpXTX8Wrz/v5tC8MnynslMcAfzEdr9/y5gMotuLs+W/8mI3z5mC9P6uq
         uscEE9urBCkZZXe4p/Av4IJJWaEx2GiLy2vbHtIoGHbvdiA21Ik67PSVCssMqQK1fS1R
         oUI7dswbdmkNdl7dnVYr3AM4+5DRIsbNJBskgq1yZJx2HQzuHikq15rIywid2LjbS00/
         I5Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pMV4NTPp;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h9si1050036lfp.5.2019.10.23.16.44.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 16:44:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pMV4NTPp;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id l10so23474328wrb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 16:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WQdHODICOGe49IjJ188zhAmJyxEHIdU9A20AqZdtK+U=;
        b=pMV4NTPpb5BHxqFRj+ttgiFEhTElRPBRf+5AyMSXTWjnyBOw73UpReEGJqr6FpkY/1
         3Wmr5Qvolc8ZQfztnb9yocUWeMG8vPUryCrrVGu8d3R/8CXo4URxSowqS7kGHsMvr2RL
         Kx6eB3IINuHzYIhpe1Gh9TnOKKv98cElMntcjob6UeLwF6BCOHGiuC1DnYsg/72ZS5bi
         haIsIK4KdvnlwjlRWwIdUekYVPNQQxd2WasMPpBjh450/s5trJF7gfvGteCf8L1Z3ewj
         FSnNqcE9EexhgYlue6SfrCOxCGvD9P/VPU1cE74sMiByMVNvMjy8oqU/wptQwkFuhVZ8
         28rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WQdHODICOGe49IjJ188zhAmJyxEHIdU9A20AqZdtK+U=;
        b=j7XQwKaN/JAV/mtUnstG+zZhSlkpsuwYshEGYHeIj2oIFTSa9yqcCrIshjz94RHR84
         XcwcVk7ApzRz8B6Laf5ZjyZ1qXj0eHk+SZZMV+T9bCXehNQ/wHczTwjmTOty2s2iV6so
         xOy/8WXvOSsTgikoY7+JWd7ClnRwacwceDJFrHCbs4wn8nyGCM0JLa7A7QLz2spunm3C
         Kxwlzy0qHNbNXHtfsfZXlaJQVz5KZIX0WDh83HgBquuamG2kgBETe59OemcQOVN+DMDZ
         A1bBdhBUap9trh3mEiDJfKX+CZXZiud5vFQaVvy0JjVYEqWkoGIwVkEggm+s7T5d5Npd
         pI+Q==
X-Gm-Message-State: APjAAAU9YlfkO0A7ARUiUuzR9DyYKjQ7Bn97YvMao1dkTIPeMeUi8BQT
	1ZetJX6AuRusI0DEFvzTYFg=
X-Received: by 2002:adf:a4ce:: with SMTP id h14mr1088933wrb.263.1571874249925;
        Wed, 23 Oct 2019 16:44:09 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:9161:6c55:984c:2a0])
        by smtp.gmail.com with ESMTPSA id i18sm21402598wrx.14.2019.10.23.16.44.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 16:44:09 -0700 (PDT)
Date: Thu, 24 Oct 2019 00:44:07 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com, abbotti@mev.co.uk,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] Staging: comedi: Replace wrapper function
Message-ID: <20191023234407.GA4585@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Replace wrapper function "comedi_buf_map_get" reference as part of remove
all wrappers in drivers/staging/comedi/TODO, with the wrapped code

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index 08d1bbbebf2d..96756d8f2459 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2263,7 +2263,8 @@ static void comedi_vm_open(struct vm_area_struct *area)
 	struct comedi_buf_map *bm;
 
 	bm = area->vm_private_data;
-	comedi_buf_map_get(bm);
+	if (bm)
+		kref_get(&bm->refcount);
 }
 
 static void comedi_vm_close(struct vm_area_struct *area)
-- 
2.17.1


