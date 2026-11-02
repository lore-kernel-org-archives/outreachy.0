Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.46
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793621214;
	b=MYJf3wbD47LLHr5IOds9TcchPM43gh0LadLA/NBjhcuU09pilCAxZ8XB3BGhSQUjRoU6
	 5XRDHmwtzFf/QPaelJ5fosl9tRPo3QhO5kS6bWsDzXg1smj3l77XZ8R2IYrmdQVD9/bw5
	 zWw/Ypm+YplCA8BJ+fM7dSzi1NHlZHmQQ1ovHa2/HDK+H7GmqhOzjvVSa3E7/SKat3pkZ
	 Ezr9E9TWRh5t+Yk2inn4bAGx5qfSK13zgBZ+2dsW4rklUQy8e7lrPaoYXsAyf8joFG8Ua
	 natRW+DdQJJfrHCsy+VA4w6BB2ef4ocI8tRqxhWiBuf5jpARRD0X7uuFNrK7TBi7BUQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793621214;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=2iW75D2tc7+B3ipWuNmxmErb7fmmq8W4bpLgK3YkqfU=;
	b=dvVXyRS326DS9BS1YjtBzrkTDF2TXJT4sX5fkcx+Zn11nJ5aKKTFN4rQQ4gwuUJ4DYC0
	 gboypc+O0XHf5faEtSr6HXeM2n8SlPZq2Sjqu8ZCs8z1e2QZHLVs3ANr1ae7XQhg4YHr3
	 HFtTwrQ6K9+E6GLd1K6A6xjWqA1j2m+4zfZi7VLpz9TLSu0xTLAK254UzJefzWLASFc4y
	 VtyR//P0FxucQf+hpuXKRauDM86NSo5Qfy6eGuor/tv2ji3rRScHOCMvnNDuWPcN/1M3C
	 bjLZLNLrqozLptEBwR6eGE5XOTzdY99OBCt98hhQTHvQPp6GOpA5m2gSh1tJ6eJUKXA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jcrGdctP;
	arc=none smtp.remote-ip=209.85.128.46
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD02606A324
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 12:06:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5CD02606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jcrGdctP
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4a549cd7fd2so25750875e9.0
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 04:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793621213; x=1794226013; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2iW75D2tc7+B3ipWuNmxmErb7fmmq8W4bpLgK3YkqfU=;
        b=jcrGdctP1u7Ivd1Ys8IIU08ETw+yAW4Mzyk/gvHwGmK1Se1MPI+nRX3PaJwta/UB40
         zf9GiNR9DWu1lfzTax+r9A2V3LSVL0y5Q0bGPsl727EoVagnqWmyl6McKvzRKnYnPo4/
         buDmAG9vXUzj1PMD1VhxFGIOInsnQBVVpjVBW7b8lYmF9QoXfPDhZ7gGtog7FAHKoa33
         QUnpqCG/vT3TUZkwbLyxSnj9H8dV2D4+NkOo9erQHLX4dyTfMco7pxchx06vjTSAc9ZB
         YOwhk3TJG47z/HpNlzp2rsbF8ADtsuQOCA9uykxYrxjTSID/d3cXx7gSEO/98J5G/rnT
         wckw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793621213; x=1794226013;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2iW75D2tc7+B3ipWuNmxmErb7fmmq8W4bpLgK3YkqfU=;
        b=DKMny2rM9XShAl6hU54RcZCZESETLD/FEGNZI1/HfIL6pO82xUvs6JI+UPvNZ+ypHx
         ylvl/3ApShUX/+5PNFu/bXepPdpRliQA7tXVwpxTEItuBxpaA6Cjvb2HBxt8h0FPcLAK
         s9cZ/GwVCMSDK58yyyzE++YqJZTfXggQbYyH2JH1X2LhIOp/XiS/iUOSoM/u2Nf/InMW
         9F3roZKVsNFoYi4nZN9eB+zc8IJcVDxmixHEkJYTsPn1mjMlvcB1sdyaJKSBsU81pQTJ
         0Uj4DQXHdwm9A/TZQVS9bqlGAQhu8B0ux44N3ADbNM/3/KOzfJoBAki3oD04Rtp8eZbt
         cJdA==
X-Gm-Message-State: AFq9FYLGc5auaGrLJwGJoLDvaaUlOn0LFuQVhr/KjkZvUNBkwL/34U+t
	vmAtTLh+Va4O/bxWhlr13MywX5tQQOmouuLEj+CgbWsXxjnpsf11i9rS+F5yTwnc
X-Gm-Gg: AYBFou36NZBSk6BBFcpDvuOT3msfzyUDyz1CNnhhe+loTsyHBwuz4f2/uRVS+O9whyC
	CUHBjiK1SnbGnZwiodDjKyXocNb90K5EIKBTt10z6cN0hKq9Qf04Ik7xuKGlxMvmCTmfZk9FN79
	KAODVQQhOqKTxG48elvBQ4qXinANEBP2Xy3uQNos+1bLBuaHLLwWQDhjfP4FjUAa4OGegKLNe7k
	QeOnpl/as1kaQkMuL49sE2VOKl+tXcspmcTPshi/wNJyPcSSKVivnGzP/Jy8cYMFOg/71w8WzQO
	biA+stJk/hz2Vz0j19N/+XEak1nbX1n82efRlcc5YU1plTpxjDkbkTYkMYOluQV5V94JcW7vRiu
	xyeG/nOH1PJOT9RFvchU7m5yHFBMH3e1a718mvxTlyJvdgFBmWhIWXaYs5+ba0oLf7MjMm4Vi5w
	xU+KT7z3AjQf/VD+pF91gxe5IFhpYX8bIby4EdM+oncQWSLZMZSIErV6mD/7J4Uxtb0f9K3cKiU
	2sJwGJHjpoASYAmfcRK/nny8EW0y2pjZvaO4PJJNhdd0ou5DkVw2SHPgnicambSs0b17X3taLM7
	kwZ9s2aLObLztIupnvivB2TluRWLyQSpWvW5zgRK+fv35U7aiIhEjz+w2zvGC2F+dfVIx56C4Bv
	SF52D5gNvO7zrrwlg4v4Zoyey7Jh5LJxfjziw
X-Received: by 2002:a05:600c:c87:b0:4a1:efbe:529c with SMTP id 5b1f17b1804b1-4ac17567fe1mr234995175e9.12.1793621212553;
        Mon, 02 Nov 2026 04:06:52 -0800 (PST)
Received: from x1e ([196.189.89.249])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4abeb77c132sm192259875e9.1.2026.11.02.04.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 04:06:51 -0800 (PST)
From: Maritu Hone <marehone12@gmail.com>
To: outreachy@lists.linux.dev
Cc: Maritu Hone <marehone12@gmail.com>
Subject: [PATCH] staging: axis-fifo: fix integer underflow in TX size check
Date: Mon,  2 Nov 2026 15:06:26 +0300
Message-ID: <20261102120626.57995-1-marehone12@gmail.com>
X-Mailer: git-send-email 2.43.0
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

fifo->tx_fifo_depth is an unsigned int parsed from the devicetree
property "xlnx,tx-fifo-depth" with no lower-bound validation. The
write() packet-size check subtracts 4 from it:

	words_to_write > (fifo->tx_fifo_depth - 4)

If tx_fifo_depth is less than 4, this subtraction underflows and
wraps around to a value near UINT_MAX, so the check that is supposed
to reject oversized writes never triggers, regardless of how large
words_to_write actually is.

Reject the write up front when tx_fifo_depth is below the minimum
required by the hardware, before the subtraction can underflow.

Fixes: 52ff2b840bc7 ("staging: axis-fifo: fix maximum TX packet length check")
Signed-off-by: Maritu Hone <marehone12@gmail.com>
---
 drivers/staging/axis-fifo/axis-fifo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index 7bb35e11d1dd..aa76be5d78e4 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -228,6 +228,7 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
 	 * raised, which requires a reset of the TX circuit to recover.
 	 */
 	if (!words_to_write || (len % sizeof(u32)) ||
+	    fifo->tx_fifo_depth < 4 ||
 	    (words_to_write > (fifo->tx_fifo_depth - 4)))
 		return -EINVAL;
 
-- 
2.43.0

