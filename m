X-GM-THRID: 6751148085003419648
X-Received: by 2002:a05:651c:237:: with SMTP id z23mr2353009ljn.8.1571874154024;
        Wed, 23 Oct 2019 16:42:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7d02:: with SMTP id y2ls520459ljc.8.gmail; Wed, 23 Oct
 2019 16:42:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSwW+trv0Os82tSxxojhK8DvPcjP7hjvTsZ6yxJjk6hjxKpgqtBKvCyAHH6zHsuWFzOh3z
X-Received: by 2002:a2e:2943:: with SMTP id u64mr24440296lje.241.1571874152901;
        Wed, 23 Oct 2019 16:42:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571874152; cv=none;
        d=google.com; s=arc-20160816;
        b=OBJXqYyEB+4fVQ+49RB1vTz818nbHqxHk1lJrnLzI+8LwhuONH1+rh9EGvUKDONCKJ
         khelUYNnp7Hv75AFe7dP8t59lzRawOAlwnJcy89dH3jipArR0iQ/TJZQV1bzCqGCOyUH
         hharoHDR4mN4a9k54E6AyhzvneC4nuNt3LsgsqGsmJzYFUJRBycvtbtYFyAZAfOFOq3l
         1VJEbgJlEQmBG3ZzUetiUfQmlH2gOqdIphrfAEidmsKkcTKQdxkaYwxPD36x1NmI74kl
         YXJs3y9UMB8fVLeDnY4n1aijwSpB0ZG//VLJBtw+6rpSe0RlF8RrOrbq1LUyvHfnUHNS
         sKfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zzXM0qJTrVCdXuHLJStpMH/MibOPN+nO3qhDm15yvoo=;
        b=yANtCGDsaqegRnev+DXfG+jBZvlRwtiJu8LEe68T5b9SNETRwaXsWX95dcils7Mfdg
         Q7wBoFeEx55BMIJulja3kvFkHJRVM23Z6U0skP3rvTc1+N79xTkAVSCaL8DduucsF1Ww
         gY+3AdFp7ErD/MuPYUyvCWikkJMk2RIcLbiJUBo2EBl9b/HMKJlxr3FI7//KeiyVvkqK
         kezYbXZV6e1bXdVolrTo2BjlmaK30Tkgvm/3pe7BiVhBmnc89SXbOI+WHoOVECf3Wbjt
         PxwBKoihWz+c+iGJeGMtahUNZH+l+HvVHunrLiLhUkFe2BnR1pz28mTxQcSONbQ4dTMG
         3ExQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/5mWAGa";
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k2si924850ljj.1.2019.10.23.16.42.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 16:42:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/5mWAGa";
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id e11so15187775wrv.4
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 16:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zzXM0qJTrVCdXuHLJStpMH/MibOPN+nO3qhDm15yvoo=;
        b=F/5mWAGa4mKpOhAyKBcbk8ZLOCOwbfXOtvJf9//yPtXVXvz3LB1K+THIezMuyE+G/r
         J1gXUZNIbPBT6HBLoWVfjt1LEzc53Ruv0g0pR4WXv8OLHzJ3i14GDyZTvTgevk3wxt7+
         MYJAmn5p9VNgaJMMxE79PXWkE51sDxOKV6h0K2S/qLlSjq/ML5zE3bxf7VvkzZ2YGu8C
         hMZK8w+oYG5JKJj1397G4Tu5zBxJQewtHrHBPK0SX/MiBCHSQ0HhaDOldptyUs2h22jw
         UmafFXHXbr5XklLkh2ph9kDs8e2t6hBHwdyPeKq2sonlqLTVHf0RIkCrZBCSCQLZU5zs
         Uhgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zzXM0qJTrVCdXuHLJStpMH/MibOPN+nO3qhDm15yvoo=;
        b=Mahg7FE+NejkOUDAf2uk5gF/TFlSuwIKWw/6SeMO90zGG+/c3NIuJSN+fxR56SieU5
         rQN9HkekFkMTlpr2ZxULqeIEN+6Ms0A/vvbOhdr+75yJQnlTwaA36ONFRHOQNxqe80Eb
         2Jdkb5lnRUOOdCp+H4LWJlUggChQOAecwycsH3poDdXoOIT7B/csyquTvoKcrkB22tiZ
         af0/s1qvu85odC1vlI2EsO+cSG2+1jM5bbpSBtG7E8XTtUPYAZTv4zoz2nlnPdmF29+D
         5sh5rqA6vG5VY9kLen9CO9KsCMH2DVbqOlqykpFSEOqeUj1lE+FWXet0J6EHiRhee3rc
         B9Ow==
X-Gm-Message-State: APjAAAUTzQfuH7/yu0801t2+rBQtT4eOLUN6b93laeVJR/LX6wBvv7U2
	nWC1jXhtdQyeRqA2aZuAD5H1eziVkv8=
X-Received: by 2002:a5d:6892:: with SMTP id h18mr981014wru.370.1571874152710;
        Wed, 23 Oct 2019 16:42:32 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:9161:6c55:984c:2a0])
        by smtp.gmail.com with ESMTPSA id w22sm615333wmc.16.2019.10.23.16.42.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 16:42:31 -0700 (PDT)
Date: Thu, 24 Oct 2019 00:42:30 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com, abbotti@mev.co.uk,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] Staging: comedi: Remove wrapper function declarartion
Message-ID: <20191023234230.GA4485@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove wrapper function "comedi_buf_map_get" declaration
as part of remove all wrappers in drivers/staging/comedi/TODO

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/comedi/comedi_internal.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_internal.h b/drivers/staging/comedi/comedi_internal.h
index 515f293a5d26..df3b1af109f7 100644
--- a/drivers/staging/comedi/comedi_internal.h
+++ b/drivers/staging/comedi/comedi_internal.h
@@ -28,7 +28,6 @@ int comedi_buf_alloc(struct comedi_device *dev, struct comedi_subdevice *s,
 		     unsigned long new_size);
 void comedi_buf_reset(struct comedi_subdevice *s);
 bool comedi_buf_is_mmapped(struct comedi_subdevice *s);
-void comedi_buf_map_get(struct comedi_buf_map *bm);
 int comedi_buf_map_put(struct comedi_buf_map *bm);
 int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned long offset,
 			  void *buf, int len, int write);
-- 
2.17.1


