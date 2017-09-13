X-GM-THRID: 6465297049909723136
X-Received: by 10.84.169.65 with SMTP id g59mr10021563plb.30.1505319273062;
        Wed, 13 Sep 2017 09:14:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.246.135 with SMTP id u129ls3446472ith.13.gmail; Wed, 13 Sep
 2017 09:14:32 -0700 (PDT)
X-Received: by 10.36.107.78 with SMTP id v75mr1155195itc.29.1505319272442;
        Wed, 13 Sep 2017 09:14:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505319272; cv=none;
        d=google.com; s=arc-20160816;
        b=SFZy/OPmyi/6ZA75QcZKQSN4jad6KKo/cHzy/Ik3dEZN+WNCAfZ06xX7hsrN5zfg1n
         H+UdQahh5W6bWxwSRV9l6aBtVqhx+4EYNV5Zkk8TaHSWIREUjm0G1kZzv3ueKMkg+Lli
         nctcT3frIW0PRXP0ZcW6FtQQmi3LeQnamhXqU6bGGysC30R7RxYRFX43uw4Cfee+W63H
         JSVAU3ClPrCRqpjs0L9wexDZhaRX56jfET0ArHX6PnSs84Zvn95VRYAxlmpcloOqA+PS
         CnPBJxkDG+QvyYV2km/BKG9oBABFlbsSDpw6HinhWbJ6/NisHjEd9/11P7+bgyQM/0Jc
         IbNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=KqKyRRUBuCxJjVanWj0rz58/nx+vBqjU1z5Co2shRFg=;
        b=wFEkQ6Gd/VJMGzGrqqzJ8CQUbadFjFq9Ik0T82xf0Qu72ilX2Fs7cjLx9y2kIjltua
         Km8vqvt9b/KSz2g7K6PU+5/rM7QQn9eksJCK6vQqfMu1mApfJhZ2UB6k4O9WP77+V+lp
         yIkdpW/0B6rv1h3qnsny/OQVcd3nHVnUlvJlmtMxL1RgA8qG2CwZ/hTzCJCE7+sCn4nG
         1bVxecLCrgsElpVzyM8DcNgNZ8KD3EhnFcAOXd/7z/AQVCNalGCzGfgIgniksIgVEa0r
         eOjKrua+C2TOhyu3bclgpYsqkmBY8fBS8MH6ecJZGQ6FTFxEXcnCjb4N28GU3c6mElt3
         mKeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l3f4CJkx;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id k76si1465943pfa.10.2017.09.13.09.14.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 09:14:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l3f4CJkx;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q76so266179pfq.5
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 09:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KqKyRRUBuCxJjVanWj0rz58/nx+vBqjU1z5Co2shRFg=;
        b=l3f4CJkxXOA9oBT06phJ4MLMPhWywGm0UOHUFeWG0LSecImU1lH+pPGN5XNZkdJ/AO
         Md4FJ1IQurGDmNFA4LdqhV3iqAgn9mucV/g5JsBSE930Hx0wmerfWGUY3vqHWL2mNMdi
         XHL64yuHebItSDgTJcjMqhJNIXeGjDTrf05TRacHarrVC+P9OV3ZNEy7VLS3PZwCuIb1
         f0U4pCVq0Lr50m8e7FVWReHAzgL324gJ6U4S9XKSnArRezKJEDz8q8Oofsdjty2h/cmy
         4YQrMsqNHy+JSmaEM7caj47j+19BWurlLphH5LHB0c5CneuYwfGO7/WphDlH21bnCSwG
         t8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KqKyRRUBuCxJjVanWj0rz58/nx+vBqjU1z5Co2shRFg=;
        b=Rey8P4Rfq6r4XMZB81muklU0d7FAhEJzxkoLzxY7COP95dF0aJfT4IOmII6bOTguio
         daYL81/M+GSddJsPMOVKvBFDHoZRgpp4C/i7SvwqX7IrEgvTmGYVjY1i36R+tWZ+F5bY
         VOe/fAguFaxmvbGjJyZYbOMz+1s26cC8vB6W77NrMFFyfhGPrrFaKcAFBLWFzzUEn04q
         p9Zdfgv57aNnFQ14xcv8uzZc08E0lRdSv9aeyjYvZhQ1xadH3iRe/uPLxBDpHZCB9IPQ
         4d7ceAI5U6RN6HeHM7R2dLInzfReQNHwAe0Soextt631JJNLlmxb/I+NSLVRlXdBxwcJ
         u8UA==
X-Gm-Message-State: AHPjjUjjRTPbBkABPhUcI6668ah2IogbfloDSxZbrsT/TlMS7AFsG1EQ
	0Ty0NoqEXjqnLFVFXQc=
X-Google-Smtp-Source: ADKCNb5lKOqbJkqwJdr8FyBk3a9UsPA+hMSN4uVvUHOkz4FP6HVgirFJImbct0rR9T6O804+WIbRug==
X-Received: by 10.99.126.84 with SMTP id o20mr18695201pgn.137.1505319271847;
        Wed, 13 Sep 2017 09:14:31 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id 80sm24785966pfq.38.2017.09.13.09.14.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 09:14:30 -0700 (PDT)
Date: Wed, 13 Sep 2017 21:44:25 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/3] drm: Replace "foo * bar" with "foo *bar"
Message-ID: <20170913161420.GA3221@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This replaces all instances of foo * bar with foo *bar
in drm_agpsupport.c. This is so that it adheres to
standard C syntax for pointers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/gpu/drm/drm_agpsupport.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index 928248e..993e486 100644
--- a/drivers/gpu/drm/drm_agpsupport.c
+++ b/drivers/gpu/drm/drm_agpsupport.c
@@ -94,7 +94,7 @@ int drm_agp_info_ioctl(struct drm_device *dev, void *data,
  * Verifies the AGP device hasn't been acquired before and calls
  * \c agp_backend_acquire.
  */
-int drm_agp_acquire(struct drm_device * dev)
+int drm_agp_acquire(struct drm_device *dev)
 {
 	if (!dev->agp)
 		return -ENODEV;
@@ -133,7 +133,7 @@ int drm_agp_acquire_ioctl(struct drm_device *dev, void *data,
  *
  * Verifies the AGP device has been acquired and calls \c agp_backend_release.
  */
-int drm_agp_release(struct drm_device * dev)
+int drm_agp_release(struct drm_device *dev)
 {
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
@@ -159,7 +159,7 @@ int drm_agp_release_ioctl(struct drm_device *dev, void *data,
  * Verifies the AGP device has been acquired but not enabled, and calls
  * \c agp_enable.
  */
-int drm_agp_enable(struct drm_device * dev, struct drm_agp_mode mode)
+int drm_agp_enable(struct drm_device *dev, struct drm_agp_mode mode)
 {
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
@@ -241,8 +241,8 @@ int drm_agp_alloc_ioctl(struct drm_device *dev, void *data,
  *
  * Walks through drm_agp_head::memory until finding a matching handle.
  */
-static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device * dev,
-					   unsigned long handle)
+static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device *dev,
+						unsigned long handle)
 {
 	struct drm_agp_mem *entry;
 
-- 
2.7.4


