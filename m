X-GM-THRID: 6747948827110539264
X-Received: by 2002:a37:f90e:: with SMTP id l14mr35289344qkj.40.1571129268198;
        Tue, 15 Oct 2019 01:47:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4852:: with SMTP id v79ls5220229qka.2.gmail; Tue, 15 Oct
 2019 01:47:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw6DZQH4NTDTbkbFVhKiENxdHXKeQa3iZK7v2c3o/T4isHXrWHYxkFsj0XLIbOdyqARd7pf
X-Received: by 2002:a05:620a:4e4:: with SMTP id b4mr34795290qkh.454.1571129267321;
        Tue, 15 Oct 2019 01:47:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571129267; cv=none;
        d=google.com; s=arc-20160816;
        b=IckeYre+fuuhAOQZusJNqdLE5bkiiQ/Q/uHIUatoYuoD3pzqqDik1qe8Y1qIdIglOb
         YLkvGPkfNCBxrFoHbxO3bS25H4q0zXBrt7Vm6DJwSGE1CL642TnF0HTdB4Zuxrb24z3i
         SMhLbLuFpRAnUJ+/sQ7O92b5VYqSqklrRyL6m9yjnj/ojXZ3xq1djeemU6rmGF/KzEIL
         6qsJHP+TI2qfwnwOxLSBCuJRyw4P5jiajnw9JV+Tc05VxhH7fCjkqwtjBZzZSBCijeFK
         Lve1Twv1iFpzd0tZf0cpgn+0eNNwtBeJ8AmbBsj68wma0sxLXVynBOeRpSv1hF5KMrmK
         0fDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=foXBwHD68GqDpUhv12UgOg8h2hieUZu0Au1qNClUQfg=;
        b=ne+thvmk8wHlwt+eib6ySuLy2ZuMoys/NwdUhBWS3LFKnaoX625WAIh4ogqVO1Gsdb
         Zak+mFnVDKkD3dncKDrOZXgxeF30D/f3RPRJM1gahL2KhsVLhhMKg82BX3H5Wmejzag1
         mvruwJPuwhD8al0iw6BbRaaGZpoSNBY8/hrK+1c+CUTSgAafE4sASdjmOYlXLXIbmEe/
         vEBe/fkt+ur+aqDmfD57JV48zi7OlUazMNbDFVQ/bpaZElo1516hnP/Zy4iMf7oLaajm
         b/aZTg6DDCN8pYCVhPfQq2Mqs9SgDWF7tF4Uk0/lKbgnwqQFiPmWDi2LzafpM1p8BkMS
         s6UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=itYb0Pr5;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c78si1718249qkb.7.2019.10.15.01.47.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 01:47:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=itYb0Pr5;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 205so12036078pfw.2
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Oct 2019 01:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=foXBwHD68GqDpUhv12UgOg8h2hieUZu0Au1qNClUQfg=;
        b=itYb0Pr55NgMcqQx6PCxeFCUijsujjxt4Xa9C+B6w/WQu/k70+T2xEw6xvOrC77P6c
         cJSKaWJB7Bbh9MLylt84yJrtMZZttJpAp/oWTMLhILPTTNSuJLP046BDtp+bPUMObFSx
         B849ISYsz31Ka2/bvu2IBiMmcfKpIoRE3BGz/dL7Mw4Hmd8siEg28dlMjQ6RLolrNk/Q
         qbX5lI8eBrfWQG+6tXr4jNKZYdVINbF/hAtMiZmwdGQcLUmPeent50/Pr9NSyThz0kSG
         ny95g9M3SfyDLkoOSnVJACzPCqjK+CU2A95XN3DPF2QipNGU3sDjcqlLZDEb/llCBxKg
         WUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=foXBwHD68GqDpUhv12UgOg8h2hieUZu0Au1qNClUQfg=;
        b=W+4BzLqw4Iij+MPxQQjuZBgBE761r/Ab2t7pNFY2rq4sYEf/CS5t73XXm3yvCfYZdy
         JgYeFvK3QXAOj6fn/sCOtHuLAL5lWsE0LUx0O5eh3ZKOHANadoNvc914PWa+q46Szszm
         5ZG7PM91OunVBADJxDsS/xaPOn742Pmw+t9hKTYcOmFpdeT2860g6HhJGqsLJ+d+9nJb
         yRE+A6zXz+dXim3a/q5ViIaoqy6DRQR1MIQpG20VkuDoJ2bRMNsppNoiWAKK7ghi6LDb
         PGsPCUnTHSYJPkXHgnKsO+EzpAtdgGaDorFCV59Vh4cOWnxI9bf46B4PRIobv0lEA5mq
         0X4w==
X-Gm-Message-State: APjAAAXK+G74tllv9VWT7Mtl5/OmG4ZaV/KThDmLfyA+FsVLmBWcmEeT
	cufGtODWtUa7Ge0vNE9JqySaEHyY7oY=
X-Received: by 2002:a63:1242:: with SMTP id 2mr14383081pgs.288.1571129266064;
        Tue, 15 Oct 2019 01:47:46 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.158])
        by smtp.googlemail.com with ESMTPSA id h68sm25239210pfb.149.2019.10.15.01.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 01:47:45 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon: fix restricted __be16 degrades to integer
Date: Tue, 15 Oct 2019 11:47:31 +0300
Message-Id: <20191015084731.8514-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add cast to fix the following sparse warning:
warning: restricted __be16 degrades to integer

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 5114273826ec..b334cf89794e 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -598,7 +598,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 #endif
 		work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
 					  (ip_hdr(skb)->frag_off ==
-					      1 << 14));
+					      cpu_to_be16(1 << 14)));
 #if 0
 		/* Assume Linux is sending a good packet */
 		work->word2.s.IP_exc = 0;
-- 
2.23.0


