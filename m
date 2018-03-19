X-GM-THRID: 6534517780926955520
X-Received: by 10.55.149.132 with SMTP id x126mr7471785qkd.47.1521435980039;
        Sun, 18 Mar 2018 22:06:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.30.20 with SMTP id n20ls7254159qtl.13.gmail; Sun, 18 Mar
 2018 22:06:19 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsx9C3XHoVvuta1o518LDaQa5jf4IVAXX8D6qmAXKD3ugDi2K07KLwxBEPkcwE4qgiXlQ0K
X-Received: by 10.200.81.149 with SMTP id c21mr1184501qtn.54.1521435979251;
        Sun, 18 Mar 2018 22:06:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521435979; cv=none;
        d=google.com; s=arc-20160816;
        b=N4SYFvhvNXkY5131GksgOIb3dR4ZPma2d/sy1P8bOjvSuhyEUTNV5qDz9oIXMSWANZ
         kM8/RMxqvazMLW+QwYdmEzBgXA6acl3R8n5Giv08ytA5M0WFVt6ekUDAcNDVvSrAzGvc
         Fg9cY6c608GvG1zr788hTxBoINK1Yzpy97/PSAQuHRc4ZANOi5D21/nHiYl7vIGQsC9W
         Ht0lepmOvLDK8mezM4b218PJ5iLXKYAZgq77AWZCaPrWK2QCAaul9NIJeBpcyA6ZMwvJ
         mYmd713MLQiG95BuCDCfqIbZUKwOznuHZg29g7jVH6VEAXn/YPRPTyZfw6uUTUO75/g+
         X5SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=bogjxT5foVjfJNH1lZulBwMPXHpUymaL0kO6YYtCXQc=;
        b=kKNTPrh+0G5WwOvf0jd0U/P5RBr+o0qjgvAQ+hq2eEBM/W+yvd+wJ3xnURfg0BfX/B
         bAd7EBxJjvIyi8CrVkLRD9shF9Qnx0/IAfodDR+DG9fLg2WyWh6slJY60r1aVKOZXyMc
         dbaU+pJx+Ka56Dq0UreYzzSUQsJyc7xn9qj7ejlAuJDAB/0ANGfL65Ei3C4Ov5kRHpsW
         a6qCm90EFUY6c+g4ZNxZJbpIs/uo4E3CSf5Fssm1j4lA9jCk3nRPdIb+XF/anoERvgOM
         i4nQaiNe3HroZE0+SsM9HimFBRjb+V+iO9KBM6Y7IOgliTFJpoFkzWiAWF0rtxHb4lLf
         L10w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mq3MGNFH;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id z15si510021qti.3.2018.03.18.22.06.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Mar 2018 22:06:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mq3MGNFH;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id x1so6607114pfh.7
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Mar 2018 22:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bogjxT5foVjfJNH1lZulBwMPXHpUymaL0kO6YYtCXQc=;
        b=mq3MGNFHRtwEjLQ5RtJJ1hp2bgWcY/SO6g0bJwpnge2SSckOArIFIbCN8NNyoSEcCH
         KnYXefa7vaenW653bPB9a7ir+iWEwoaJOjgYRjhPT09kWo5D/ZWdtZ2Yx9e7Ze9whF0C
         8Fkn/H0yWt7nB84LtPKD4/Wm+GPDg9Vler8SugMThCy2ev2ND9kPjyxqAZzSkhBYUP3s
         mpBvO/MrYd+X6G9XjAVTudf4EY400Bsnnawi3WOo1YT3H2wWW2Wehtrgmp1fvRwDLFnD
         fVtmmYm7GbDwzsWxeJ5OAc50QmbryhLGMsT9gbSmasb1pNR21XrRJuvpnCyMSE70B/Pi
         /f+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bogjxT5foVjfJNH1lZulBwMPXHpUymaL0kO6YYtCXQc=;
        b=esOqjkdYCOeAEMxDcKH8FZQDdgThtYgX2OJ1xg5aGzrW4nN3fKSIWaZlpkyMxuXNG/
         91FMYzRHQLS/aPORzApQfZjqjFpNsu4IyjnZE0AH3mt8dxUkhsOLfQsLbjUpMXYMwo5e
         /CT+6MyQbR3hXR9IUliaXewO0vu2FXowxxdGmInNOTF8jAFk9vIMHymqhxygskFChLKQ
         +wPB1w2yJNQ2ROlr0jPniJOCKO0BcHx3w8AyVqNxt6w56ZZQKSTlAcvrV9xPZBsVmdZw
         EdJNkJILmjsblFYz/SUyf9vSl7IfU3/pON7REPw+MNfBBedMdlwdZYvishFaRL29gwyI
         X+FQ==
X-Gm-Message-State: AElRT7HZGoAAN5XG+d+hprI3NEJGldjG5TGZEGjIrsZG5AGrJxQk7Usc
	3S7vTvppOZ5YcbFpavqHVDUSUA==
X-Received: by 10.98.242.65 with SMTP id y1mr8989731pfl.232.1521435978128;
        Sun, 18 Mar 2018 22:06:18 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r1sm21010443pgq.41.2018.03.18.22.06.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Mar 2018 22:06:16 -0700 (PDT)
Date: Mon, 19 Mar 2018 10:35:30 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: daniel.vetter@intel.com
Cc: Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	Ben Skeggs <bskeggs@redhat.com>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] gpu: drm: Use list_{next/prev}_entry instead of list_entry
Message-ID: <20180319050530.GA25589@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace list_entry with list_{next/prev}_entry as it makes
the code more clear to read.
Done using coccinelle:

@@
expression e1;
identifier e3;
type t;
@@
(
- list_entry(e1->e3.next,t,e3)
+ list_next_entry(e1,e3)
|
- list_entry(e1->e3.prev,t,e3)
+ list_prev_entry(e1,e3)
)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/gpu/drm/drm_lease.c                    | 2 +-
 drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
index 1402c0e..4dcfb5f 100644
--- a/drivers/gpu/drm/drm_lease.c
+++ b/drivers/gpu/drm/drm_lease.c
@@ -340,7 +340,7 @@ static void _drm_lease_revoke(struct drm_master *top)
 				break;
 
 			/* Over */
-			master = list_entry(master->lessee_list.next, struct drm_master, lessee_list);
+			master = list_next_entry(master, lessee_list);
 		}
 	}
 }
diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
index e4c8d31..81c3567 100644
--- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
+++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
@@ -134,7 +134,7 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct nvkm_pstate *pstate,
 			       nvkm_volt_map(volt, volt->max2_id, clk->temp));
 
 	for (cstate = start; &cstate->head != &pstate->list;
-	     cstate = list_entry(cstate->head.prev, typeof(*cstate), head)) {
+	     cstate = list_prev_entry(cstate, head)) {
 		if (nvkm_cstate_valid(clk, cstate, max_volt, clk->temp))
 			break;
 	}
-- 
2.7.4


