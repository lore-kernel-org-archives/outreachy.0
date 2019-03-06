X-GM-THRID: 6664981263437266944
X-Received: by 2002:a62:b283:: with SMTP id z3mr2059412pfl.25.1551849953694;
        Tue, 05 Mar 2019 21:25:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2052:: with SMTP id r18ls194193pgm.10.gmail; Tue, 05 Mar
 2019 21:25:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqyVLKQXERRd56OvCa17vx79BiLKTrj92bNmdkYHRd3ChrYXW8I2PrqAyN/wGymEZ3sMyEeg
X-Received: by 2002:a62:39d2:: with SMTP id u79mr2071706pfj.46.1551849952978;
        Tue, 05 Mar 2019 21:25:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551849952; cv=none;
        d=google.com; s=arc-20160816;
        b=GoOYfKlfXy6ejWld7cuuuoQyA4snTAdGs8u4qsoxItMxD/4+wECWBalSzDXmw6x9OW
         sqU5AVTaiBUKKmMfgdFlA72ciyA5PVPx1QeHsh1M+Llh8fGF++ZDV7xk8Ao0G64ah+nv
         40Ep/5NU7rm1ukolwQSUTiFMphD9WvWrh8fN3m6atmasA2x4m0Rvt+aJuQhSAG5JAbyf
         /oaB8Jav32+dOk9s/VB9hQ2Ovzise3d2hc+sUjEwTfAcUxHtXvDCVAuKGyTDo5O6qHgW
         RUWQ4r+RtFtF95M/WgiTex6YHNRhd2+NIJfwSq1f13OTTLsgoICVD7hlK5XQHUm63OpP
         QF0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6qK+o6FVtdDomzy2itKjRQseNWBhfsZIEjRtiWbjumo=;
        b=sz1mK4OjhVqzk1vwbb1KfFGPoHwSb3McxtgJkwWihujn0hJ00CLiTdB5j5ME6MrFM4
         I1YUC2W3h/IOwC3S/J4tuF3wP4esVE06AxRTePfbaAm045rPAykcv05CHy3y6Z3xgCbH
         e5Ge47/mFApsRpivE8wPhvtollzWQoVk4LKZnNIKmv7T9w7SDqFqT9SJcv4Bij+SpAxO
         DzCPUuBnR4YPDA8+rf4otOMApES8Gk/9TU9pI61zrDtRMnFPnFHR5igJqwzInIOIN+i0
         hc8n6APZFUuyfjWWo78powOeVR0rgq8BPCoV2FUA36AEQc8E4D+ETRyFO8RnmK+zF1D+
         uyPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WD0kjVRj;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 197si46607pgc.1.2019.03.05.21.25.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 21:25:52 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WD0kjVRj;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id j3so7384130pgm.11
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 21:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6qK+o6FVtdDomzy2itKjRQseNWBhfsZIEjRtiWbjumo=;
        b=WD0kjVRjIzlAGmnCAgGEgxs/AqIhE3k3dBsreK1Ug3YzXpL9r/+eFa5tfwHxBVGKGe
         jf0bSLEPq6Z4AbSLJIv+R4CFo1tuPlCJIAR09Wd2MwWv83eT0/BlPlCxnQgtfE5Kas9a
         ckF4RXR1CxaaE18GVSk6jzoJybSe9YEtTeT3MmLVajrWme2iUEOuleBgnTI13zroPYos
         L24WH/2D6WfUMOVUHoRNL8jp6eLktzFhhpcbuXk21F1FK5mbVmBiL0+3UMwgjV9lc+0d
         8eWsTsmqBuExxPyPW7k1nS6OXEMkbQdBMXVKPZuj5UqN5jmM7knw5yDi7/rRuKTgGzJW
         cpbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6qK+o6FVtdDomzy2itKjRQseNWBhfsZIEjRtiWbjumo=;
        b=f+J5WZrYQyMqlhPVnkyWJTs9TFFvEttFoqVdQ+UcISP0TtsE0ijU8VXdLg/pZpT2Kc
         K7I0+7WbgPO1UFDxn036MN+yYZ7QcXDKYKQg3eSw+uP6a0ekEk1tM7jzWmxZPfAbCHAq
         BJYExoSveRpn/JMEs8OoGW8j93yuvwkef/hjtC+R6gJH8Av5EaQqjA2R7xBuWpMVPmHt
         gETqfl7Blt83nXZMVeZHjAkema974n3mVCWIAVa5liSizDzv2pXegPDt4m4myh72Zyp2
         eWxkyfDRMAodpMTW2KqGbMs6Ks3DiCk2hjBfwLYcrQ1257+e1vZs9/K813b0COLuQZQG
         dmTA==
X-Gm-Message-State: APjAAAWla0nVZSu/4a+/zI/7/pAw0Bnc84NbXRxuT2STZFUqNM6P+8fw
	C0tJJf71iXdkfu4lBDRLYvk7EhydPdXmSg==
X-Received: by 2002:a17:902:76c7:: with SMTP id j7mr4991471plt.121.1551849952208;
        Tue, 05 Mar 2019 21:25:52 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e93:b9ba:c1b4:4aa8:71c5:d127])
        by smtp.gmail.com with ESMTPSA id c127sm1436044pfg.133.2019.03.05.21.25.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 21:25:51 -0800 (PST)
Date: Wed, 6 Mar 2019 10:55:40 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 2/2] staging: fbtft: convert a macro to a function.
Message-ID: <20190306052540.GA4055@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Convert a macro to an inline function to improve type safety and make
the code simpler.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v3:
  -- Change the subject line according to log messages.
  -- Remove extra spaces.

Changes in v2:
  -- Make the converion from macro to inline function.
 
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


