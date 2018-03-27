X-GM-THRID: 6537549739579146240
X-Received: by 2002:a24:688b:: with SMTP id v133-v6mr11133546itb.0.1522141913537;
        Tue, 27 Mar 2018 02:11:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.15 with SMTP id t15ls138040iof.16.gmail; Tue, 27 Mar
 2018 02:11:52 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuasJ1D7sMNX7lU8jSTAsniuLKgmtAXiEnv9ZBeD6RIC8LrvCAgQ5YJWv52pvlC4EB5mBw5
X-Received: by 10.107.133.101 with SMTP id h98mr19624180iod.51.1522141912628;
        Tue, 27 Mar 2018 02:11:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522141912; cv=none;
        d=google.com; s=arc-20160816;
        b=rFOWq3IxVsL5EY/UlavdQcFIUmLsfPRwtXkOojokzF0I8QqjFPDd7JbKYzJM+kdOt5
         /GSVL6FP8fw+7Y5rb3q+hY1F9zrsk2saXTcYd7wa/rCEVD+N0dSDA7sQoy20muCPrh4F
         nOuqUDDbA6nw+6UnHwhQmaLA7YvnUclapxaqMDQjFHYfPma0MSlcu8VhPwa0rhoq/FS7
         gTvlaqVrgmW7stSRP8SUZgyGtZrDpGI0FFvkArnFjgWassYkRWCqAosxoOk4no7aXzFM
         HfwtXJOZ2zP/WVngRukYZlItI5hlk2WZMJufQxs04f8ShA48ooceIIv135H4/2Trkn9d
         ItgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=B51rQGyYPVX1wUlufoKzjPSNN+MCDrsu+sbHwRO9DfM=;
        b=NfxtbwHQ4YQ8AhA53NJAXpOu8NNpydQ88A3kwdgWq+5TrRwMMe29wBIZRaa/vYOtCK
         VUfBCRNVmoeTOiMJHJoLoDE5KOKPHdeqhyGP6ReljAJ64zrcyVJ3MGh61dN8Ch90kGSL
         5P9Tra8myCpaEwz0L91s4BJaM615+i/Jp2WZIAhCku6IHgowBggZ//zNpevw4lFjwkMS
         s+myhuy9b44frOen9ninZ/V5Bc4FYY55+6xnWsopOuH2zqYsq/9etwD4GLCTQF0wqiQU
         TMxgbAqE7nsgTjaon3DSp7+gXkxBiEzipISELN12jV8TyriCTkC+yvNlGJ7C/rDOp01p
         Sx3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eaCgENgH;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h63-v6si91656ith.0.2018.03.27.02.11.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Mar 2018 02:11:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eaCgENgH;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v26so5818184pge.11
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Mar 2018 02:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=B51rQGyYPVX1wUlufoKzjPSNN+MCDrsu+sbHwRO9DfM=;
        b=eaCgENgHZj+fsKQe532jUN1zH6qvM4bR+vZjd4iMt2E1nIX5mSRr+FHIR7MJlxfXxA
         9YzyIIkYVE+L5OCLuiRpnaVOgDvenjRxDISotGJrSu37Zf34eG+4EOHX3qP2rcbGyjhp
         4q9bC6HJJOgXcqRxPQkh3oStaZiOm5XxPccrmol9oHT1fxwBEziyhAei4kY1Qi/FJDJ2
         s0bwYazjZPN2Y6oJq6gbH6b2cup68uqv5Wu/nrrBf6OslErZMsQn9Vf8Pn4VJTUIGKZh
         t7//sqWdcUoGV67DHBiPwZ/XpYx/m6MYNSXALjIDaA3CaXWSgJt1EVSYpvm011GOAVoI
         KQBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=B51rQGyYPVX1wUlufoKzjPSNN+MCDrsu+sbHwRO9DfM=;
        b=EiQcxU4+hm1u/80BspaKN8EKwuLrfhLstUP6tK+Jdpx3OVe8edjvGAlCGEITL0BSfD
         GXofoQRhTVp05+gq7A4GjSZHEsyVoS0AOO2w5lGfZROaDHYGLdOShXbsvO9CvbURzUJS
         OZmB/KZ27MbqkM5btP+gvezj5mSAmpCmGhwk3Vg7xGwUM0aLi8+byhRMWbYhLfbcfeVR
         UoH0UKhTFMDFH6QyCBk6H9Y627Xhs+dtzYFGJk1Ucaz8EVf7SioFf4658sezSowGprhj
         DG3B/u9svHNfdSDcUwh6ZprPz8Cq6w9KzS/isuQouEhN4+x5BrEa7LCnI0JiPuEnmpAN
         an6g==
X-Gm-Message-State: AElRT7GCwZIt6jMM+G8p8MLT8Us072AQodzi3m/2Q8xLB13I3srDROag
	TAb+SEIhS9Q+d++XmKaZmbarXA==
X-Received: by 10.101.83.199 with SMTP id z7mr31451320pgr.105.1522141911498;
        Tue, 27 Mar 2018 02:11:51 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e8sm2216233pfd.116.2018.03.27.02.11.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Mar 2018 02:11:50 -0700 (PDT)
Date: Tue, 27 Mar 2018 14:41:56 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: bskeggs@redhat.com
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] gpu: drm: nouveau: Use list_for_each_entry_from_reverse
Message-ID: <20180327091156.GA23787@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

It's better to use "list_for_each_entry_from_reverse" for iterating list
than "for loop" as it makes the code more clear to read.
This patch replace "for loop" with "list_for_each_entry_from_reverse"
and remove "cstate" variable as it is redundant in the code.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
index 81c3567..5e56f74 100644
--- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
+++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
@@ -113,7 +113,6 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct nvkm_pstate *pstate,
 {
 	struct nvkm_device *device = clk->subdev.device;
 	struct nvkm_volt *volt = device->volt;
-	struct nvkm_cstate *cstate;
 	int max_volt;
 
 	if (!pstate || !start)
@@ -133,13 +132,12 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct nvkm_pstate *pstate,
 		max_volt = min(max_volt,
 			       nvkm_volt_map(volt, volt->max2_id, clk->temp));
 
-	for (cstate = start; &cstate->head != &pstate->list;
-	     cstate = list_prev_entry(cstate, head)) {
-		if (nvkm_cstate_valid(clk, cstate, max_volt, clk->temp))
+	list_for_each_entry_from_reverse(start, &pstate->list, head) {
+		if (nvkm_cstate_valid(clk, start, max_volt, clk->temp))
 			break;
 	}
 
-	return cstate;
+	return start;
 }
 
 static struct nvkm_cstate *
-- 
2.7.4


