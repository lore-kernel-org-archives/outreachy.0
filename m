X-GM-THRID: 6950266309427855360
X-Received: by 2002:a17:902:e8cf:b029:e7:1db1:e7e4 with SMTP id v15-20020a170902e8cfb02900e71db1e7e4mr26214681plg.81.1618234978420;
        Mon, 12 Apr 2021 06:42:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:530e:: with SMTP id h14ls7245266pgb.11.gmail; Mon, 12
 Apr 2021 06:42:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwn847WyyxDj6gjvJx7uMr2oMAzibVkeTKHUrwIoYMe58qeSrs5wMDHSj7UyXK5nhBHXtZc
X-Received: by 2002:a65:644f:: with SMTP id s15mr10661136pgv.323.1618234977268;
        Mon, 12 Apr 2021 06:42:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618234977; cv=none;
        d=google.com; s=arc-20160816;
        b=UFVCEJfoCscvdlx0I5l+aEAo6isUqALJDeV2NQzW76VD7i3BT3DagynBHp8KEPMruK
         YgYU+xe4UcOU+MZmYPznxRPecSMflShtQTMRUpSn0/KabrtnnU4rPxxwdaEgOQR7//AS
         2nVlRO4ri3cIrKv4brpGNKCfavDUxOzN0G6kpYEc5RLUre4TNXYp6Rq8JiVGpKn13X5w
         zsQbltS1Gi4bx2Bvhh2NMV/YBZP5H4MC+7sy0I9yDU4asV8C0st1+12ixdJF0wWxd7i6
         5JU6GEYWPFiCXQHlXhOYcTsM1Mhh/gy2xJPVxaL86yKgFqpREZ21a1he+JGEM01IQGlf
         HLAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=MrWSz6wX/egEaHbz/XuvavKQPKrV7Jk/VW2Pb1PAdG4=;
        b=ytyBix3Tkiatl3EUIOOpOeZuZ4XsP4oyp18DcMWxW4F9LTHMTEZL2AEFGdB4PFcDH8
         FsncZJz26KY4FZhGCMtVndgW5Zs28c5hCEN0vm74VxKmxEphiXfxWeWsOjnf3aW4AM8s
         1BLM3LQjKVcwE6hII9PC6XMsa0Jr1MifI71sKfOTKj81K1FI1+6GBPnu7P3tFxefRBE8
         cpvTCTnwAhJkHmqbrFzJZrE4ROWvULIfVGaOEqQProVd3ys9AiTRIiH559iZKW5QBjfS
         OzNqshIPWp2kiVXCL/35mhk4/9278Mj8PLq061XEF078kqjc7cZeJtbRFJVReqWng8AG
         GkVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g9jMdSGt;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com. [2607:f8b0:4864:20::f2f])
        by gmr-mx.google.com with ESMTPS id p2si633235pli.3.2021.04.12.06.42.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 06:42:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) client-ip=2607:f8b0:4864:20::f2f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g9jMdSGt;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf2f.google.com with SMTP id dp18so1595142qvb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 06:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MrWSz6wX/egEaHbz/XuvavKQPKrV7Jk/VW2Pb1PAdG4=;
        b=g9jMdSGtgnXKHYE1xnBY+GxDo7ngyK+6HpalUopCkEtoC5Tg+WMPO+ByeHvSzoTjoU
         2kRcw2b4H9hyJcU3HZqhgJR3ZynWKsWstzb/luDMR4Y6eI4wW1LY5iXUcUg8ZgxFYSVq
         2p6frvh+gbaCGwZpq/zpfw1qmkbW8AgJn3mRTO4Bz3fTK1Pn6yk2oR9hixnwF2bom3QP
         SglD3szmjp3mhopV+S6GV+6sI2S4BHjDa234tDQmmSQL/AeSF8JS/FTBGb6siJI1v5sd
         8Qqp2LEGAAGB3idiUMwsm05czEy2StlrAd3vi44z7lpqncFx4oPfMHV+Y4eEEMal5n5T
         t7pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MrWSz6wX/egEaHbz/XuvavKQPKrV7Jk/VW2Pb1PAdG4=;
        b=nBGjHO5aj93Q2fDNTrUGlF6ncvdAIcPxsDK/efWbxcIFk8kmb1kvlgOgtCmEIqO5UR
         2UpyoOCjMfMIb2tYeph0dNTErr7l3iideQ26gdqCf2mFrthsvBY5v8ogF2g4iFih2cs7
         0e7g7Du/tpri4VhaaMnUXZlLkyEvtuMVN/+0y/xrCPpvUpGBNgQ4Wg3xPV4xSZA2/lx3
         oa5Jh6gk5BfoFHKVGVlx84sGqgInKXQ5rNwqNslnqhtzsIKyeAVAvmUoCoh+mfEJ4T/1
         c4Bp5C4+oKgXpicNVwhQBE8iRfH2nasN7BQzfZVjJrL7DfrhZMFza1hDFHHyLXgdmFyn
         zSUQ==
X-Gm-Message-State: AOAM532w53bsbPTHch2K8hvkVPYRxmnPxLAN9o9GxtZJUxDvENXuZ2n3
	As1tVO67MPBTsL8z0VPazWybdfaXTfwkPg3U
X-Received: by 2002:a0c:eacb:: with SMTP id y11mr12388363qvp.57.1618234976435;
        Mon, 12 Apr 2021 06:42:56 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:476a:dfcd:f18f:9ad5])
        by smtp.gmail.com with ESMTPSA id n6sm7346339qtx.22.2021.04.12.06.42.55
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 12 Apr 2021 06:42:56 -0700 (PDT)
Date: Mon, 12 Apr 2021 10:42:53 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: omap4iss: Remove unused macro functions
Message-ID: <20210412134253.GA19402@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unused macro functions "to_iss_device()", "to_device()",
and "v4l2_dev_to_iss_device(dev)".

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/omap4iss/iss.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.h b/drivers/staging/media/omap4iss/iss.h
index b88f952..a354d5f 100644
--- a/drivers/staging/media/omap4iss/iss.h
+++ b/drivers/staging/media/omap4iss/iss.h
@@ -29,11 +29,6 @@
 
 struct regmap;
 
-#define to_iss_device(ptr_module)				\
-	container_of(ptr_module, struct iss_device, ptr_module)
-#define to_device(ptr_module)						\
-	(to_iss_device(ptr_module)->dev)
-
 enum iss_mem_resources {
 	OMAP4_ISS_MEM_TOP,
 	OMAP4_ISS_MEM_CSI2_A_REGS1,
@@ -119,9 +114,6 @@ struct iss_device {
 	unsigned int isp_subclk_resources;
 };
 
-#define v4l2_dev_to_iss_device(dev) \
-	container_of(dev, struct iss_device, v4l2_dev)
-
 int omap4iss_get_external_info(struct iss_pipeline *pipe,
 			       struct media_link *link);
 
-- 
2.7.4


