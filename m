X-GM-THRID: 6751148501863759872
X-Received: by 2002:a1c:650b:: with SMTP id z11mr2072405wmb.149.1571874321913;
        Wed, 23 Oct 2019 16:45:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fa0f:: with SMTP id m15ls2349114wrr.13.gmail; Wed, 23
 Oct 2019 16:45:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxAvLIa70UBqVL41rPVVudLiJadG0BVlGPHRSziL4i4uJnAbjv5y0NsKWjpAZWTaQmQMrMA
X-Received: by 2002:adf:f4cb:: with SMTP id h11mr1154532wrp.260.1571874321008;
        Wed, 23 Oct 2019 16:45:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571874321; cv=none;
        d=google.com; s=arc-20160816;
        b=Oosz7eGCGVl9jN7SEYInO7TBLwDjrbfKmgIwT4qQD8khVm6Wdcl78JaMDE9hEblv0c
         bvUtxuU6LbXr7TEevFBBHUZGPjIcePwfhxIkPf1FUjCWYOCvpRLssZt+cuDSn7ioiGJ2
         j7yRO4XSyKhqicOEcrXcL8FhTNNHWetmPABQ0gZRO7LFTyf1PTT/Of/zujn3khEw25X+
         IBcyIaygQmOEFWGrTvDWrG6TjtWMbySFVAZVZX9yQduRJFS6Ejd+hieWhSstXxnrNCdP
         DNcW/IE1UnMpbmia1USVYKXJIUXxlBKeqZoIDmstoMqQ+hGwnmfsZIzjDtuHHSDG+3cN
         X9Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hlHpx1VMMsEKptR/p3xLWivsmEvtMAVfU//Idl1sRRc=;
        b=MBx9IV9s2CXi+iK7QInLntrI3BIwNCh/V2o1/7FfXxYEjZ8XQ1r5WizLR1FJOS/lCd
         BTe2JrG/JEUcVDnrRTCNE/2fy/98sffnnmBSx92daQPYWsHaZUbAomelVqqYPudxuTGr
         wPt3S4pjjQm3nPkcXYVE7IAiMuYR0igFfo+ypYUJFqFw8ZDGIP7r1ZG2H38h6Yy4sN9k
         vIjkywgA7B0Nxcv7lHYihdiCGTF1Y7vr5SU/kShYRv+oiOI3i02YUkrgHnkqgFDLJqJT
         KFqEHBxTJliwKN+W3BIrROfSFlX3+L+gIsUEG2MIjKd/C/ODsyjc6nNBSguQW6fEBlOi
         F91Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LH+0G2sq;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l3si58874wmg.0.2019.10.23.16.45.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 16:45:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LH+0G2sq;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id n15so13106201wrw.13
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 16:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hlHpx1VMMsEKptR/p3xLWivsmEvtMAVfU//Idl1sRRc=;
        b=LH+0G2sqjY7HSUrUAhL8pqW4cdZyKODCyIcCbMMqncTmPi8o7OrReQ96CLdCYfaqbI
         eKiAL41LyHIoyq6dejRHSg0bUDni3ZZGLnDk2KTcj0ex+nPlIN9KfCbF4xKiS/0voMdX
         9yCP1yBGaMhxyskmwyxTj/04eXmLbN8Tdo2NwgJAKyzQT9slaMvyFBtJG9ZDgVK3SFiy
         celgag1sy+VfVOlQR06QoIUTTNxVoNk57MQHE9XWHopjtHR/VJDqOOopPH0EEG1miI9m
         bJYKyUKth+F/FnO0CEtT/izriDlBlofb8tdOyUKZqr/aRKWokan/2+tzozC+iwzMy/l3
         NUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hlHpx1VMMsEKptR/p3xLWivsmEvtMAVfU//Idl1sRRc=;
        b=GaY6R8Nvn9Iw1Yjr/nq1Rpr+pjp5uSyI9QXn9T/zWRks87lyIOSH/yXKzMFC7cTNSb
         21mp7JiuejR+HmcomMOvI8T8IlDar1dH+er7OG/jW8ixXSUeZl3pHsvlw2kO2AyJr3C4
         qWlBdhwTNyIQIrFJO+eybXMcfqm7a97MnCIVa8GfbB5UMaH28pQ92dJTktURnLkG8EEV
         +bAOt/B0pPlGLeNHhyp0sjluNa8DX8PqqlQTsEjPrTTYqLbJBUU9vEtpCfUK/j4JBqVn
         spjG1RsCd8DlLPBmCB1awvR/1IFIswY0wH4ZRBtO8mcp/zH/yCCoWoRzsZihy6frbq+K
         hZow==
X-Gm-Message-State: APjAAAX5FgLzE/K1/TN6ZXH1x2iVHPhfFHYoaHilsj1lq5QBwYEUHo1r
	k2V+JYeWQzbT6chehhO/CiQ=
X-Received: by 2002:a05:6000:108:: with SMTP id o8mr999663wrx.369.1571874320745;
        Wed, 23 Oct 2019 16:45:20 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:9161:6c55:984c:2a0])
        by smtp.gmail.com with ESMTPSA id f20sm684663wmj.39.2019.10.23.16.45.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 16:45:20 -0700 (PDT)
Date: Thu, 24 Oct 2019 00:45:18 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com, abbotti@mev.co.uk,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] Staging: comedi: Replace wrapper function
Message-ID: <20191023234518.GA4659@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Replace wrapper function "comedi_buf_map_put" reference as part of remove
all wrappers in drivers/staging/comedi/TODO, with the wrapped code

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index 96756d8f2459..fff5b6d7955e 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2272,7 +2272,8 @@ static void comedi_vm_close(struct vm_area_struct *area)
 	struct comedi_buf_map *bm;
 
 	bm = area->vm_private_data;
-	comedi_buf_map_put(bm);
+	if (bm)
+		kref_put(&bm->refcount, comedi_buf_map_kref_release);
 }
 
 static int comedi_vm_access(struct vm_area_struct *vma, unsigned long addr,
@@ -2395,7 +2396,9 @@ static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
 
 done:
 	up_read(&dev->attach_lock);
-	comedi_buf_map_put(bm);	/* put reference to buf map - okay if NULL */
+	if (bm) /* put reference to buf map - okay if NULL */
+		kref_put(&bm->refcount,
+			 comedi_buf_map_kref_release);
 	return retval;
 }
 
-- 
2.17.1


