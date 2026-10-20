Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792502582;
	b=k9sjoFN9qv01BDEeqMc13q6XP4mSezfYt7a0K4nUn5wBFGki5Ek78DMwCCKO/VQN1JnG
	 Nj3/QsIxszLrd6SzIAHTNHSDuSTxJRsSDJAh1OK0qwk0qKLfAXB++kdB3+g73opkrgRuS
	 WAY7wRLSOyNlM6lQ8dP6/lBX69b/dgoxSTKK0KoOHEWr79/FbeJjuvgDv6CFA3BCklrL4
	 f1C2qjSxkOMv6aIofp2Ci1Fh0lwqvTKBx0lnAugZrSzlyJ3aonN3I2mhgJSXDB0e4zHJ/
	 2eBKIIS9wXE37REhp8kCgY+3RaL7J6+Uq0+sxB7KnwZQm5NbRGTW3NXwVAtyVfi8dPQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792502582;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Transfer-Encoding;
	bh=jg+L8Blu5EuqH3+tb0kLb6K4c36LfIR58PtQ8yEr2DU=;
	b=LHTD7FWmRD/wSD7pvKp0zxvgY3NpbHCgPTIC6GR9A/mLlGPkN+jiL+ZmEMBz+8KCiCCQ
	 4FfHDTQ8EJJnQT1oOJY4Y1qKJht7fLGqKhXnruLX3U+x/g+zRQdKN60lL3/DLElCnU5zK
	 PpWHYalYjUngBpOQPTzVutY3KmnZUBcmkczlF+kNk37RWVirzAMEuOghEiZfwyJaB117h
	 Gza3oPWfkzeYJZUItXVYsL9FtFY1aQDIlOUz8We4ltNoMzAEWKYqT0zhimqYzwHYaaJ1x
	 cV6OTY4+gJ+M1/Q8dqD0TmW2Ou2NA+vKHcMDhoVGpuySsMU596SOZmhGYcFrgxoFmHw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=ZnEpHCrD;
	arc=none smtp.remote-ip=209.85.221.44
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB60606A320
	for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 13:23:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org EEB60606A320
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=ZnEpHCrD
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-48e20edd106so511238f8f.1
        for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 06:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792502580; x=1793107380; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=jg+L8Blu5EuqH3+tb0kLb6K4c36LfIR58PtQ8yEr2DU=;
        b=ZnEpHCrDk5i7APTany4FvyTcIIdapwzgvh72wP4wePRPyedlq3Wp6v2kppocSkbTLo
         yWMWCZALbxeQSM3DRxN1fHY5jzOhEYdQUpVl8DWI0aCJK75IdBT8VEDNvIsLZtLC4EvS
         yEfVHW0qDrK6RVFOdg2px40uhLHreFHLlaLGEN2RfOA1EQq8tDzzW1M36Mz9iXQmhg7H
         ZMljT7wT8YZbndDT64gNbFiTtSNIxJbhN54Hkv9yrVaSH3t5QEKWurEqUIXu3nRJADIp
         1RbJg7fxFGX8WWWjU/Z9YLoL2YRUOD0LHp+KXSGpC+y19klFFpTPedLi3ynqX+VF8c4N
         iAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792502580; x=1793107380;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jg+L8Blu5EuqH3+tb0kLb6K4c36LfIR58PtQ8yEr2DU=;
        b=i14fuy8U8amX3uzmE6qpmVg1xWWZMRpUb7KzEwQoymR8dpayXI3rHbgRZzhInLz6+0
         NdHUM624rtQ3KIIuGziUGR9u862KfeyWOxJde96p8fV6T4smS4XDwS3YAC2+wXH/Q+cX
         bl8ptQefnWPWZ0/RO+iZEZClAZza7poG8YBbp2HPIk9qq56m8HiR3iboHuEm6maRCojA
         DQP9hltVZupRYbr9Tx+MyIavITzypMdYtANv0PQuxHiy6In5E17fSJZziYpfjCxMImxC
         xHyOLsxvjBua2oApPqTbX/z3rQlK+0p/TZfpTWAzFR6Jr/b99SzKQMuhfXz79lK3Y5Rx
         qKOg==
X-Forwarded-Encrypted: i=1; AKwUvBysid+7HczeSzgqW11DrR988SjTmtVD4p5S4CNs0fWu1q/bSiDtqWkA8mx3je9Ic9EG54EdllqLShs=@lists.linux.dev
X-Gm-Message-State: AFq9FYJM47ZkZn7pAvmDBw+Ewv5IvVZ68AyB811dPaRTwx5+z5KEb9te
	FCrQkDlYjqItp9dmR/3h2dmZVAacbkc5sMi80BVvLIWrnPqi+NROenVgZ68tU2GQ
X-Gm-Gg: AYBFou2HDzoi6V3ekbM72rnBI6dE1KNNDh3rEuKEIWlp5LW/tk3pZKnAUDs2N3GcyuW
	QzK0O9yw8d/juUpCJ8CGvHKdZhXxksMUjRZvpnIUUQcRWbPQKy1r1DHpQwEfCeOYMNR99FmmaFv
	5a3ITxedOaVCRvXTpBC/bnN5N0W+thYE1ldBmzeJJC+Pj0gxKb6914LCioAi5L9BqzGG7OcwPU3
	Eqnai+igKQflQw5gcWXQY84ABYy5GXm9BOBpoirAiAEhZNOSPX2HKioxsdRnsJSTaczKMzoYA2k
	DHZUBLGyKrSyEY4PAhbfgYG3tSSWAHAqZE+2VwhOfuoUpA8nwOFpXqUC7OY/LpfjB42FKrH2rrP
	m5inM6KWWzMsbqO38VI0mG+zN7tsHKbBUJX3Crqrm2+bCIW9xRqKz1x/UwfBOT8asxEpltFRuTh
	XW3QyQAkSM0V7Fu29H1mJ3FchGxa7WZ/hcGPvq2AeuXDPi7ctVctNLINfCYajCFJ3H3TfNejMen
	jChGUwwDXS/KgrCsOxxGrshmSGSsmUWJnk+
X-Received: by 2002:a05:600c:1da1:b0:4a1:6425:be69 with SMTP id 5b1f17b1804b1-4a1d7614e61mr244276965e9.17.1792502579898;
        Tue, 20 Oct 2026 06:22:59 -0700 (PDT)
Received: from Ubuntu-vm ([154.192.10.208])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d80fafdsm6352877f8f.9.2026.10.20.06.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 06:22:59 -0700 (PDT)
From: Haasham Khan <haasham93@gmail.com>
To: pure.logic@nexus-software.ie,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org
Cc: greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Haasham Khan <haasham93@gmail.com>
Subject: [PATCH 1/1] staging: greybus: remove unnecessary goto
Date: Tue, 20 Oct 2026 13:19:13 +0000
Message-ID: <20261020131913.5171-1-haasham93@gmail.com>
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

Signed-off-by: Haasham Khan <haasham93@gmail.com>
---
 drivers/staging/greybus/loopback.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index efc69c10cffe..284935fded12 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -609,10 +609,6 @@ static int gb_loopback_async_transfer(struct gb_loopback *gb, u32 len)
 					     request, len + sizeof(*request),
 					     len + response_len,
 					     gb_loopback_async_transfer_complete);
-	if (retval)
-		goto gb_error;
-
-gb_error:
 	kfree(request);
 	return retval;
 }
-- 
2.53.0

