Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.43
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792441286;
	b=GC+IqRd0F4/nAA1nNGal+gTgpVeRNSqLdXr/OcorGx2XqCdyM9c4oFUOxLBmdZPgCjWC
	 +vZf9KiNCXlzmPJGbtsvozqJK9Ab+71dIVHUnRE1vFsSJ67vVWyjMOYMv9nFYgr0WHT9q
	 5mHxjoq+n/i332SpbKAvKbLfdIkIl89F/xWMsMzLIysZtQCH+GbhI6EX4a8CnqfRmRg7P
	 lA6BXtit7RzUp+Cpk/Z0PTb6OFli2nDezJ69LuSYj1xgZeJ9sGLkS8e1nUJekcq14vnro
	 JrpSs9ddWJBnetNRWavBWVDS7poY55eH+zASP6/AeAoP1Cuh1XuiB9F3UFzm11HAsKw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792441286;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding;
	bh=5SGe5k/sxuefMjqMn88o6FMTCheBSXX/pG7tZNOtng0=;
	b=ABlnwIYBVCYgsCG5x7KZg10sVTJ+R+1lenxyUQM08BWS2jMRkoFDQ6SkRvBo8r5ck7d0
	 WmC6pqN1J0s6LAfRuRGeRY+lyBlDc22pAilgLMPqU/rmloLM0cX2EVqJXqobxiDNaOhKG
	 64rxJM1Gb5icNKCqwui9ws3K6eh/+MqpAxu1KDcFt7rXV9/5ZEfV922qjvFVYfKBQqowT
	 NnTnGV8yBmOjraybw8Ly65/6d+KvjZq2utyTAUA0nNxug9WrSNrcIde6U3cgsKzK6Hm64
	 lN5ZyZSrzriivCyut/WYlKsPJljZ4D8LkTkg3yaZ5vvDPdzcjfiB8xx/x1ssr49Y51w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Lv6vZ0VU;
	arc=none smtp.remote-ip=209.85.128.43
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D207F606A322
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 20:21:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org D207F606A322
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Lv6vZ0VU
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4a021c809e3so22214295e9.0
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 13:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792441284; x=1793046084; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=5SGe5k/sxuefMjqMn88o6FMTCheBSXX/pG7tZNOtng0=;
        b=Lv6vZ0VUNnB6umXYcQbgtEwYfSeWCSDPuh3wTha9ONuU3sOxG7ebves6+PuexYLeJe
         qfSByl/P4Dne/ao+RuPkq2+wTWzW2F983iEy9sxw5hqb9Wn6auWIsFMZaASpa6joy9ey
         WdwuN428CwqmaNekjJuh1FV1zEs4ZcQcBmNumZ/Phk/tMulTzBP/+NLysht6JlvAvqZu
         pHkZMjIe+vwyHR9OJzK2+VSsnaaDyZttaSw9nzG8iISI4UOWOYtPN9MQCYzmcMMRODAx
         z1eGZE6pfl/NbaSZU0C6U8WoxEFjVXGEstvMnsoxVnx9iKwz5FVh5mvisOdp42awrSI7
         8zIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792441284; x=1793046084;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5SGe5k/sxuefMjqMn88o6FMTCheBSXX/pG7tZNOtng0=;
        b=C5rbdQLvD7MiFT84F8fNFlzoXnVNhYe6keDAihGbfkpJQVjecFkrtjxjPqfiRr5VRR
         rVeeAL8GKP05YWSGcYa153xYM1JEwhbFrxMrTiWLcVMRcubPBCFZKrHo1z//MLjipRhm
         Vgq1S+sRikJNdyXvupiNhhry0jFcQxkGPi6AEb8AQO+/DGMou2wFKmXjktMX+otwMEU8
         vlZ40P6cUzAj6OTR3qAfiuXBj5Ck30JusGruxXYqEn8uUEhsHl0xD/XdMwHCZZE1LBaM
         xS6iqEA+I5gwtq5ZiLnbJiXfO7YkQeZRafTO9stP1HULSpc5jV889TJ9fORw1VO11bBb
         xPgA==
X-Forwarded-Encrypted: i=1; AKwUvBy8bxnp0t7EAB/lKkOHpSG2BZ63n97LwZXGFEBUtawt/7wvkfN86yVQTU537rXGSPnADe70HR1zDmc=@lists.linux.dev
X-Gm-Message-State: AFq9FYLStD4iwKrQngflLzQzdi7+qosIYUnFPwS5v6q7GQG5mRmB1k+x
	/Atmki3AULtlFQ/u4Eg6kCE1q+FE1CT5H70lkXqZ/sOKe6GPb3kbeR3s
X-Gm-Gg: AYBFou3pSqS1buARSRICN46iZyl3R+OF9u7R8Y0CW4EK3GyhJoMtTbS1tx2Bwto1vXO
	iNfjCRAta1nVixnGXJ3nkKYXIP0baN5ML2hNzRrN2xhgpNPtVbWnAA1ZCaF3rBggpX/2/go3qiD
	CKTuSae1avJwA29hF1u/FvmYLB5DynrdBB4sZ+wuiNTT+b5BZPvvD5oWjr6AoJfvibOxkhz4U+S
	ZlmY+TzeN1wOe54oxmhQ6G8gNAsAetPFdtCruiYivXjlj6bk2Sg0t0P77I9SqzzCxXTh6WUl8f6
	GYrX1YkvZBsGo1YO6+Qb26s+nF5STPKkJl12bMU+lPBln9rkJgiwaV770uRlrLEenZMmfpFD58p
	uK4NQihZvaTBOZNRtt5u19ctycQf2VSvcQymQBD51Y0IRk0Kaab0iE0ehaeHm0HCKqiLhsnie2R
	UpDZLd9y+58RhqbyihTkHsM763BlHYcfXaNR00ufYS8wuQmL+GMAFlpNfBq9MN7GJBzCfaNTzdl
	OVn2jcyyirIiZF6YQ25VJzEY5g=
X-Received: by 2002:a05:600c:4f06:b0:4a1:e69d:90e8 with SMTP id 5b1f17b1804b1-4a1e69d931cmr119638455e9.22.1792441284070;
        Mon, 19 Oct 2026 13:21:24 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([156.213.131.39])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d817d8bsm943142f8f.24.2026.10.19.13.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 13:21:23 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	julia.lawall@inria.fr,
	Temitope obabi <obabitemitope765@gmail.com>
Subject: [PATCH v2] staging: sm750fb: Remove redundant NULL and zero assignments in probe
Date: Mon, 19 Oct 2026 23:20:15 +0300
Message-ID: <20261019202015.1724-1-obabitemitope765@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The sm750_dev structure is allocated with devm_kzalloc() just above,
so its memory is already zeroed. Remove the explicit NULL assignments
to fbinfo[0] and fbinfo[1] and the zero assignment to mtrr.vram, which
only set fields that are already zero.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>

---
Changes in v2:
- Remove an accidental duplicate of the note at the end of the patch.
  No code changes.

Note: Greg replied to my earlier sm750fb patch that keeping the
explicit zero assignments is good because it is clear what is
happening. In that patch the allocation was in a different function.
Here the assignments are in lynxfb_pci_probe(), just after the
devm_kzalloc() call and its NULL check, so I think removing them may
still be useful.


 drivers/staging/sm750fb/sm750.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 8b93bfeb217b..8702f6313f78 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -969,13 +969,10 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	if (!sm750_dev)
 		return err;
 
-	sm750_dev->fbinfo[0] = NULL;
-	sm750_dev->fbinfo[1] = NULL;
 	sm750_dev->devid = pdev->device;
 	sm750_dev->revid = pdev->revision;
 	sm750_dev->pdev = pdev;
 	sm750_dev->mtrr_off = g_nomtrr;
-	sm750_dev->mtrr.vram = 0;
 	sm750_dev->accel_off = g_noaccel;
 	spin_lock_init(&sm750_dev->slock);
 
-- 
2.53.0

