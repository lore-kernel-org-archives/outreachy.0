Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C204B7A50
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 09:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792403358; cv=none; b=AS0UC9X3J3DRgHBRHZ13y7t1NkKJNIQ0jP9DfJ9n6HjtIPG+Y9Vc51oOeXYPe/eBLSoFctUIFQ5/dZ9zo3152Y18ZAMLLMZcf3Zsd2gAmvxYmOp8oHhlVmXCZUJ9Y6IeRzQAe19jldGFHcES9RE3Dz+BgeThURWqyNEF1y6jc4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792403358; c=relaxed/simple;
	bh=Djw+CAa4TdmdhY24d0q7OhDkmwT0mOBOFc45rC3up0k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=V1m5HIPA7rwUqHjnPeL6eLHQjIKU0xzqJ2BWK4xslH0hWW/eWN30NATYorruH3cCkCZAgCSfh3U7vdM1ePFo18AAQFX4XvR54FXUm3DLC+DfjCQkQRjSrHPy/D+il9hUBovk/2M1kySA7Hkiji/IvrYlwBySb0/paA8//K7X/n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hK8z1EHH; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hK8z1EHH"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4a171b677d2so10948475e9.0
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 02:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792403355; x=1793008155; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=wVwmmSqI00v46zZ18N04BUiAXDw2jjv5hFhr+um5J7s=;
        b=hK8z1EHHuujBCmTv3BzxFtL8Kc6v71GrTIpGJDTdI05D5+c04kZ8qPMMlBMdX6jPrz
         lwgtqmV0JubUOtvDl960PAuKVoA1kbAfwc7Al9SixsRCYQjV5BgXQTDKLDNfJ6QOsuiT
         Iaf6KbTiAM/WfgaULCZfl3xXedsu+SLWm6qQN9pqEjU4l0cwmDICgsaaOl8IV5NphEwA
         MzpVVGTCX5iIRxC7zcJEFX74CuknFfEj8fKRpVqUIjA9ypGvh6zYgbuukx3tLHux7gwe
         Ecb0R62JoUCkgUeBXgilTH+TJO4uC/WNAefoL65oAm4Bk7nZSKPtDvLiDI3MX8szuthO
         QFVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792403355; x=1793008155;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wVwmmSqI00v46zZ18N04BUiAXDw2jjv5hFhr+um5J7s=;
        b=2dg4nWD3zPYyceZqi+HwOQFbHeKfYHGiXZjYToJogWzTgTgrFzVCXAbCjJ8o5BkLm2
         DFHRut6I97dqyO60RHxOAugm1FMkNdAnEDC3KinYCsJ5SLttxUKj9+TT4PH26Rvji3kN
         jB9Ih20U4jmmSclL6qDajXDiwfVmFuob84QAUCdhytk2QjquKKPeC+q22Zb5Om3qF78S
         r5YyLBbHj12fxlDlygfV4wA2xczjgAuquP6rCpX9k/0mu8b+ss6jwDZXOJW8lshzE+it
         Gy8s7SC0Q6a3hjkMH1/BBJL2mOgrqWToesBrQS8lepmjHDo6ow7v2VRVz5lu+/MUlBzv
         Q/Fg==
X-Forwarded-Encrypted: i=1; AKwUvBzXx4wohqUnlq4xCZKob0p0fbmRiYqxovS+l2nKwyr5DlaXb567NFmGL9IHiC9NQcqs+f3mRDebvWk=@lists.linux.dev
X-Gm-Message-State: AFq9FYJFcnne5CQ+raD0S4gpvmbMoAp+R7B4mG56oyBcfxzeGxc9I+dv
	bLq/jBjzfudy0jCTAxn3w2xZrbjZTta+AR8iilLihYtvst6jLRvXbGaZ
X-Gm-Gg: AYBFou2c6Z07PAM2zrLcINPIEX2y570tgucQ3Pgs0udSn9bFTeaNANeKB/ljIcaZVc/
	cz4J/GXYBLTz6fMQph0mAuZFQkyFuOo/2M+liDA+VMm80JYriB3kowXrgxUxPOb0Gq2NKbyhFsi
	opNlk51kdE2n1KcgMYs2ovEKEAhlHjkVu8FBpqMoN3p4ZMjVwqfFV8u0ZE4bZxVVcYuLCdccdh3
	4HMrmbEH32Vc9xShijKP+dhXMNfNQOj4j4VKsxsGAEjzVj86q9jGJPd/+omOE3zTL3t74Mu5PsE
	nPp5qa6ciP1EtI+oUCtAQTP2KKa6rDC3BjEqcWlO36R94J5gbHp0uyLHljwGl7iUjZlMbCkwOCi
	0rQwu2cW1XAkJjXGQOgtITTmyjb8FQhaNvXDU/3FvEY8LPz7fsNynv7ke3Z0aGXoHzLd6YKlpnB
	AqrNFC/1MSCcAqveJEt8bSQPN/BxpPfBmJyDpXJjWRAEUhfzftkGyQ+l9O0rgjoLZGbYwxV3+QU
	oz74CFXCKxvNPrwSupSFiAPHCw=
X-Received: by 2002:a05:600c:3b1c:b0:4a1:c646:3edc with SMTP id 5b1f17b1804b1-4a1d75f2aedmr149554645e9.11.1792403354550;
        Mon, 19 Oct 2026 02:49:14 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([156.213.131.39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1ce02d619sm177669655e9.3.2026.10.19.02.49.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 02:49:14 -0700 (PDT)
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
Subject: [PATCH] staging: sm750fb: Remove redundant NULL and zero assignments in probe
Date: Mon, 19 Oct 2026 12:48:35 +0300
Message-ID: <20261019094835.1343-1-obabitemitope765@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The sm750_dev structure is allocated with devm_kzalloc() just above,
so its memory is already zeroed. Remove the explicit NULL assignments
to fbinfo[0] and fbinfo[1] and the zero assignment to mtrr.vram, which
only set fields that are already zero.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
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
Note: Greg replied to my earlier sm750fb patch that keeping the
explicit zero assignments is good because it is clear what is
happening. In that patch the allocation was in a different function.
Here the assignments are in lynxfb_pci_probe(), just after the
devm_kzalloc() call and its NULL check, so I think removing them may
still be useful

