X-GM-THRID: 6751148365074923520
X-Received: by 2002:a1c:6146:: with SMTP id v67mr2160007wmb.102.1571874347741;
        Wed, 23 Oct 2019 16:45:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9cd7:: with SMTP id f206ls3193249wme.5.gmail; Wed, 23
 Oct 2019 16:45:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyp5QR01FESvJ0i63Hqu4qIGmOdBuFkWpeD2aUBiZ2GY70PTw0AhtD8Uee1EzVXBug/+ILT
X-Received: by 2002:a1c:6854:: with SMTP id d81mr2229911wmc.75.1571874346831;
        Wed, 23 Oct 2019 16:45:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571874346; cv=none;
        d=google.com; s=arc-20160816;
        b=BmhJFfn0JvYc2SHwlCUesC5r4C7/HWYqWeXVCzWbydFb8two3X2lAgC0wQcEUadN/A
         U0wds9YgAedmLvVGcKKR7cSL3E7BXFx6hKIMNkaX3W+YD54VKkAPH6Z8lUCgwflyjnM6
         PGDozQy2GNC0QFqLf0oOIfe/N9N1X1stJjcqDLjEXiNJGYwtg0VGqGC7oAeZKysTAYzU
         5VNFOr6m4IL5g6oi4HGF3upXUxowZcWr4WDRWXoRCHVJviJgej+YDjreNVIEnMxEZN2u
         A69kpdQrAlRw/2TYCulhMF6ZeLUNoye20IYk2OuFeLpeYaJjbu8ItsejlvF2qcjUMBVE
         vgAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=cMK2bDGBEoN+Yw4y912W7+dbvBSb1ue27/TIyGO+pIw=;
        b=CgxyO8nHbOK3KzwxynnnkJBopjlKWA8Ye/W4/beDuq5owBxCcY8eqEjXsgWpizL5v7
         xQj4VjRm3B6yTGaxDeLF73clf1fIKdj44t8GeLY7P3TYUXdtt/aTlFdLFEMV4ssA5k9C
         e8HT2n5mgzDT3ALs7MW4N8jfU9FLNA1mwHAGOj4rukqoBYjSxcElhJV871DLCeuwfhL4
         uGBObkWDeI78NZO6mjGoFPJSAWAlVzd9f5iZZrsK0emJfscxDimbKIhtAgGFPCzmJOAl
         PZtmQ37pCLhP1L5v/1bmIVKJs4WDe+yIn5vpDmWWN2fPwdAt5bZm/ictzerG7ACzuzFA
         g9jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vUf1HlHg;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id a14si861011wrm.1.2019.10.23.16.45.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 16:45:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vUf1HlHg;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id r141so621982wme.4
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 16:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cMK2bDGBEoN+Yw4y912W7+dbvBSb1ue27/TIyGO+pIw=;
        b=vUf1HlHgJNfjaVkkxAn86DIwYvytai34ZEP4aL2ywzqIv2u+ByaRxdgOvbU4Tesv+m
         d58WF6Q1mlV/C5BbzYRpZDCRywqjRdhdcv4UIExrSr90NzDrBE87CjBVv+uT3qk94UW9
         0Cf4DMCDklp9n//vzR3mzynpX+dozmJqYZTtxrVRpKh0h4xY3i431sBBdAw+muzhy93i
         ooJxIjjPngKYFd49/Jr+HOEy7HJIQjHQE40Dv+0eZzn4ewR2x6lAgwvfVQInDpTo0WDo
         daa4qiLZaKRuTO9/D1rGpY470u4lRzAPB+ca9Yrsc991Rbw+5CknyJ7tKW7UlANhY27A
         D6kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cMK2bDGBEoN+Yw4y912W7+dbvBSb1ue27/TIyGO+pIw=;
        b=UtRA7Kiqy3qgqjHXh1o2EYN7J/xwOQH57yVT315hhkifdd7Omb2gc23owT1j1JyQCc
         lqlEL9Iy1V2Zhv279EIzmSUJg56DJw9WYyptvr2HAfXMLNz4C3M8Qs9+ytFQdcYY+0ES
         EnXz/dLDtWqTghqmn+j3WUnQKCTHEhc7yWf/VIBWp9+1wtyfL0FrsJ1vJc76Zh3Q+tEv
         EUK8MYCHKqJ4IJSY6ZBstbijD+RUCmTYMUyCRziK8utZESchG7043Tz81yTLr2R/fwkR
         gH/jDn7ENQ+s263kDmOQK8diOby0arclUsQCVJSRDydlbuXIuENdb55COC3qiCN6sMv2
         B0/Q==
X-Gm-Message-State: APjAAAVPp9QGrYzJgwNXQa1qxbI3s0600ekXNX4y8seZyyOgSOYxxJb5
	Pacvb0oN5qDm4aWNCM5GuRU=
X-Received: by 2002:a7b:c652:: with SMTP id q18mr1924695wmk.148.1571874346657;
        Wed, 23 Oct 2019 16:45:46 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:9161:6c55:984c:2a0])
        by smtp.gmail.com with ESMTPSA id p7sm565728wma.34.2019.10.23.16.45.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 16:45:46 -0700 (PDT)
Date: Thu, 24 Oct 2019 00:45:44 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com, abbotti@mev.co.uk,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 7/7] Staging: comedi: Remove wrapper function definition
Message-ID: <20191023234544.GA4682@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove wrapper function "comedi_buf_read_n_allocated" definition as part of
"remove all wrappers" in drivers/staging/comedi/TODO, and replace reference
of the wrapper function in the file with the wrapped code

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/comedi/comedi_buf.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/comedi_buf.c b/drivers/staging/comedi/comedi_buf.c
index 470eecead7d4..ef908a258ac7 100644
--- a/drivers/staging/comedi/comedi_buf.c
+++ b/drivers/staging/comedi/comedi_buf.c
@@ -502,11 +502,6 @@ unsigned int comedi_buf_read_alloc(struct comedi_subdevice *s,
 }
 EXPORT_SYMBOL_GPL(comedi_buf_read_alloc);
 
-static unsigned int comedi_buf_read_n_allocated(struct comedi_async *async)
-{
-	return async->buf_read_alloc_count - async->buf_read_count;
-}
-
 /**
  * comedi_buf_read_free() - Free buffer space after it has been read
  * @s: COMEDI subdevice.
@@ -532,7 +527,7 @@ unsigned int comedi_buf_read_free(struct comedi_subdevice *s,
 	 */
 	smp_mb();
 
-	allocated = comedi_buf_read_n_allocated(async);
+	allocated = async->buf_read_alloc_count - async->buf_read_count;
 	if (nbytes > allocated)
 		nbytes = allocated;
 
-- 
2.17.1


