X-GM-THRID: 6537549739579146240
X-Received: by 2002:a25:e708:: with SMTP id e8-v6mr18084178ybh.5.1522163188509;
        Tue, 27 Mar 2018 08:06:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.80.213 with SMTP id e204ls183291ywb.4.gmail; Tue, 27 Mar
 2018 08:06:27 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvPF8t3yiQSIwP/e4b97aggSIQ3Liqs9fft+DS9zLIfDMEF8JegI0gpGB6fzB0shgdudNCa
X-Received: by 10.129.122.196 with SMTP id v187mr18275418ywc.106.1522163187198;
        Tue, 27 Mar 2018 08:06:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522163187; cv=none;
        d=google.com; s=arc-20160816;
        b=cP/AmkMvzS2VlgCDF4RweBOnwNbzSIB6YtHzamS0CekkuP7QF96oFDcVgQlgoG5uxa
         IIiWjkaZalwpXXrcsP+o4HuiAkVAvNxG4iTWGoOaS+RiflF5aRtze0jSMz4FZ0kpOza7
         l8QB9IX1X8AePQUPnDjtyNzZL7m4LGhAVNEPVACb1OfSFpgQ3iRmR2xCqEsWMDaBjFO+
         e3wiBULlsmsgxzvxhOhNlw8V/npnnhAg1kXvbg31MVqemgi+wY1D+rs3A+7ReIlZ2HB7
         dAdpTvNj1V/jz725HQ+FcigpqVY5PVALHtR+xctZsbKQw4GRuWswx/duthOnQNDXI4eL
         yVvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=o8gJmUeAbWbO9nEBpomjpBeAmY63gDwZikydnRtRvoE=;
        b=zGQ4LQNhKmZAEDVUASOaucUPeC8XK9uzUMpt0RbCffp5Ql6V6iJuoViXFRdRj1Z0nf
         ZJDQ2jaWzFoJiKRd7CfQvbsd5lpk3HejY8ztdginXnsDVDCM5uzZ58Kgvwhu7pvXrtsP
         SCkBJfyXsBxTzwmb8va/+3DqYz5PdiTsMEHme5c0QUTPu/apsqjiisWsGTYQhtmig3GY
         YU0ctdm7tDElCPSO+9U+DtLxJQ9Vz4LME8syBdb9oTJ8rKd2GwOOs30HKWKT1N+NzYho
         5fMZ5XmimdPavwwAVc/BN064h8Kb+ejBlqK0sYOl1yfS0iWmy0CwA4hf6gb1KmW/8m8q
         QUtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cpFVcFB8;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id e195-v6si98313yba.3.2018.03.27.08.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Mar 2018 08:06:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cpFVcFB8;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id g14so2437720pfh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Mar 2018 08:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=o8gJmUeAbWbO9nEBpomjpBeAmY63gDwZikydnRtRvoE=;
        b=cpFVcFB8zi/1Fsojmp7e8vahjfvvXW9n4zFTv3nWf422NPHND9QEeHRFtihXyCOQDv
         3/YhrMEt0dAEyuAkjI+QKrjnGDX8a0o7BOgjG4tm13ReCZW0e45IbtfK6V/0ev+jGiai
         t129qo9V8AD0QFLLrqpkSu0hszZy9ZksUlIxWPCTN9KkyUEwiN6vepIlaCA98zs7nCUL
         +9ibN6i9Var9dvoHC9REXtW8kQaEhRZ4yZD/dYQ8h/6/i7Ej6QNnuT274Cbb0/vKuwa7
         wR0B2lG96E+GkgjtnIQBLrbByzh4P3pIkzPEhBKZIaTAGOp44gmuRd9xHrDRLJeBLNh0
         X+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=o8gJmUeAbWbO9nEBpomjpBeAmY63gDwZikydnRtRvoE=;
        b=nnFXnqyP9Emm2ostkmvLXg5caBLbI4tW88KTWJQt8hOJBPWzSfQxEgMIrn+I/gKXu7
         0uir05jzQIdIZdb0z39leehLyEfd7GwWPKrWhxKXHoMIcZW+ALDyQcjktnjfV8klsEtW
         yz7fLRyI+PHvotZvIWFvP7Ads7wekYu/Q03W9CVRX3ZFlg26ZepedxV1a59lttiKVZKB
         0OPmI5too9yA2w7jypTBZ/E5ghIRxOuptnurkOkhHmQT8QVMtVRMdfI5LpZgIS6e3/lu
         nvp+nmu/0TEM7Xv5n3EH8NGUJgecXbISo1xIgPwyfuyiJXJI349wVAnrXDA4SFVraR52
         WEvA==
X-Gm-Message-State: AElRT7GJSXi4+SzTvGRX2ZURyAPVGpAuqw6QiE5LN3+6z+OwJcnnuhbV
	UQqVP0SiMtVI6OIpzr8DPEjV1Q==
X-Received: by 10.101.101.15 with SMTP id x15mr27590781pgv.322.1522163186081;
        Tue, 27 Mar 2018 08:06:26 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f5sm3529499pgn.56.2018.03.27.08.06.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Mar 2018 08:06:24 -0700 (PDT)
Date: Tue, 27 Mar 2018 20:36:40 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: bskeggs@redhat.com
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] gpu: drm: nouveau: Use list_for_each_entry_from_reverse
Message-ID: <20180327150640.GA17832@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

It's better to use "list_for_each_entry_from_reverse" for iterating list
than "for loop" as it makes the code more clear to read.
This patch replace "for loop" with "list_for_each_entry_from_reverse"
and "start" variable with "cstate" which helps in refactoring
the code and also "cstate" variable is more commonly used in the other
functions.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2:
"start" variable is removed, before "cstate" variable was removed
but "cstate" is more common so preferred "cstate" over "start".

 drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
index 81c3567..ba6a868 100644
--- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
+++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
@@ -109,18 +109,17 @@ nvkm_cstate_valid(struct nvkm_clk *clk, struct nvkm_cstate *cstate,
 
 static struct nvkm_cstate *
 nvkm_cstate_find_best(struct nvkm_clk *clk, struct nvkm_pstate *pstate,
-		      struct nvkm_cstate *start)
+		      struct nvkm_cstate *cstate)
 {
 	struct nvkm_device *device = clk->subdev.device;
 	struct nvkm_volt *volt = device->volt;
-	struct nvkm_cstate *cstate;
 	int max_volt;
 
-	if (!pstate || !start)
+	if (!pstate || !cstate)
 		return NULL;
 
 	if (!volt)
-		return start;
+		return cstate;
 
 	max_volt = volt->max_uv;
 	if (volt->max0_id != 0xff)
@@ -133,8 +132,7 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct nvkm_pstate *pstate,
 		max_volt = min(max_volt,
 			       nvkm_volt_map(volt, volt->max2_id, clk->temp));
 
-	for (cstate = start; &cstate->head != &pstate->list;
-	     cstate = list_prev_entry(cstate, head)) {
+	list_for_each_entry_from_reverse(cstate, &pstate->list, head) {
 		if (nvkm_cstate_valid(clk, cstate, max_volt, clk->temp))
 			break;
 	}
-- 
2.7.4


