Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.54
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792481424;
	b=BJ7hfODYQerEHj3ZdX4tloxvWWJgF9mRqnuc5of39SPC9J9J2GhZFSHIrGh/d6S98W6l
	 I6a1y9EXa1Y2uwI0q0UBpgrZORPbyENyXwJ1hGJEjRHx+2A0IeW/nybJdsZmoRkPNx7Pg
	 K3rQzL3svnVnvsw9z7SQFUNwjj/ck3TE5D0f/vEc4+q7kpenTe6ksTapdiMuZ7wxamxOf
	 BU1hFjDiOanqqpBBVfzYNBpEhJK+S4OrJk9hqnR2uhGdkOWE46EsX8k/tXKg/1IO+GjRm
	 pmSp6xz39ADfbk42h8GP11vb8XijXGCdxmcQoRfZyin9yj89tRgs/fTGUDb0ryJpNAQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792481424;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=5tXRrlu6pVIT1vr+YhxUcVgo6aTbfODu2mQd8Xde0q8=;
	b=xCmZAH2HhkRm3QJDpc9jE52z1Dn9lf7N3OEhgChvwcm1JC8ryQeWjlh6v3B1AB4zD5xR
	 QgBo0HXRafjzYqF3+pCItNIyW76+9nGGN6bgnqaAAJLHpMet8gjclqiyOOuqOpUzQghQs
	 brUxwHzk5VwImClQzeHoEfPy+dkftMuF8S93G2VztpiACK7LKhSlDC22+2OjWNGnJzAlG
	 B2Y77ZsHjrc7DKfFKDZ/3K1rabpzKpQzgP0iFPt/3RLp0wJ7u9apuVCwsnerocnt+9Mv4
	 F9fTLoqNCzb/OvQUjK7CytcWVDN6fvRF0UbBPjCf5gDNJ7VQMYzjutMAIDXQU4z0ZyA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=S7zOiGwo;
	arc=none smtp.remote-ip=209.85.221.54
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B956606A31F
	for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 07:30:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 8B956606A31F
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=S7zOiGwo
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-48e0d1da913so321484f8f.1
        for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 00:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792481422; x=1793086222; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=5tXRrlu6pVIT1vr+YhxUcVgo6aTbfODu2mQd8Xde0q8=;
        b=S7zOiGwoiEjYgFnKS2/GauiS3LZPvZo4Ki8TRQhMASQv8mfWBnDu/ECFN+fqgq4GFx
         kWocQoXBt9C9M3F2sD62ZpYQbGDoR730lNe0Xf+/AMLfqTMs8ogEGSBUmX2CIwrFq/85
         xxiA9VFnvAsWXutw91Oy+8I/JbdNe0bNr2qR1CTaBzjrf8db9ChqQskGZEXzUWoqPgTy
         WqkMguA3gCUiakwYPQWR31Vc4C7MMIPkv6goAjs2PlvKiC1mc0jzqlTyXdWTH53+WIPv
         6dLcr0ewMbj40FCutOomkytvCf0Dgi66uo6zYyY4F4kj56FzRgCSp93adhVKgTLoROLk
         LsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792481422; x=1793086222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5tXRrlu6pVIT1vr+YhxUcVgo6aTbfODu2mQd8Xde0q8=;
        b=byp4G0wV4Z+YIEeB/A5LruvOT9wcovnUNcHo6zkRjIqQ9BcZb88mUtO6sGiW2YXCBT
         LrPmdCis6KlBNrcOLWsa1zFDpTYaPuDVymkrKJNSs6TJqJ5WWSeeUt4Yt0aWNZQQSgXU
         ovhxjw52wMEltny2WAV/81aK/i2suYM5fBDO7yvyna+2C53Loz9NdBdtsXj4TIkOHvPk
         Prw86PZtTs/UFTtmHOKhpJU54rIGejb0G7y860L/ilkB2/fAY8l+ZmVYzH9nYCzwFKKp
         d8Nnc+8cl4dTdS6njx3b1CQxWHvJy41Niv+J3d7qVSeakr9VF8cK+Qt6krDwRoj49Cg9
         pErA==
X-Gm-Message-State: AFq9FYJusQK8qQ+EmJzchptBevxgddb6+6htPw3Tt8WsL/b8dSS4ZvN6
	pjvnKtmEi7XPtFDT0MaHON11MP8xIDtYqVgZwjnzEOZQGdSahwc+V5Be1t6YfZtRHHWha68a
X-Gm-Gg: AYBFou2rJfYzETjPaglyDkX08JGTlJhye3QTNzdU9T+FKFcdCEw9vZMs20jGYFpCXld
	wAnvxE0PgeZOu7zWKaBIOasJwgjcFTdxfcmOMtPElo3kuqsUp26zG0cgoKdEEFhlsXiadrqGZDq
	wEGowGjYJpSPyW1gwZhEtzPZzuzqsfigWLYVyeWxwi1r8QA9oq9vWLiuQ3wrtYMKAYLXP/gLswR
	95+wahluhHQHZhf5zHZz733Jm1/LYiDTckVbe1Mb9mEozRiEvPqxE/BTpu4um0ys0aJkKvZ3lKR
	AMx0ppewM4/lx+h0WzuiUrqvwLtnt7opcpQYmPLRD9B2B3Xuy3tqchQwtXcrPmUri7cyvsMIl52
	ubwA07WCl95lRk9WFYxg1IVQyKb4ctpjoC784eXzUjM5gC1TIsFEQ4ZZHQX5rluJ+AtV1lD+6Hp
	i1xvQQBhpgO0K0ib0igLxsuS+0hJuEVylOLX3aSmoy4LCB6X4fQ69mk25QW6qTDZqUGUPCRj/Lc
	R3MULNe77N1M9xG1BK32So=
X-Received: by 2002:a05:6000:617:b0:48d:f160:efad with SMTP id ffacd0b85a97d-48e1e9f12c3mr3046877f8f.30.1792481421580;
        Tue, 20 Oct 2026 00:30:21 -0700 (PDT)
Received: from kali ([102.209.31.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d817d75sm4747712f8f.25.2026.10.20.00.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 00:30:21 -0700 (PDT)
From: Bashirah Lawal <bashirahlawal017@gmail.com>
To: outreachy@lists.linux.dev
Cc: Bashirah Lawal <bashirahlawal017@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-wireless@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] wifi: mt7601u: remove unused ee_read tracepoint
Date: Tue, 20 Oct 2026 03:29:46 -0400
Message-ID: <20261020072947.124586-1-bashirahlawal017@gmail.com>
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

The ee_read trace event was added with the driver in commit
c869f77d6abb ("add mt7601u driver"), but no call to
trace_ee_read() has ever existed in the tree. Building with
UT=1 reports the tracepoint as unused.

Each unused trace event wastes several KB of kernel memory.
Remove it to avoid that waste.

Signed-off-by: Bashirah Lawal <bashirahlawal017@gmail.com>
---
 drivers/net/wireless/mediatek/mt7601u/trace.h | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt7601u/trace.h b/drivers/net/wireless/mediatek/mt7601u/trace.h
index 07696b672161..208ab8b0117a 100644
--- a/drivers/net/wireless/mediatek/mt7601u/trace.h
+++ b/drivers/net/wireless/mediatek/mt7601u/trace.h
@@ -123,21 +123,6 @@ TRACE_EVENT(mt_vend_req,
 		  !!__entry->buf, __entry->buflen)
 );
 
-TRACE_EVENT(ee_read,
-	TP_PROTO(struct mt7601u_dev *dev, int offset, u16 val),
-	TP_ARGS(dev, offset, val),
-	TP_STRUCT__entry(
-		DEV_ENTRY
-		__field(int, o) __field(u16, v)
-	),
-	TP_fast_assign(
-		DEV_ASSIGN;
-		__entry->o = offset;
-		__entry->v = val;
-	),
-	TP_printk(DEV_PR_FMT "%04x=%04x", DEV_PR_ARG, __entry->o, __entry->v)
-);
-
 DECLARE_EVENT_CLASS(dev_rf_reg_evt,
 	TP_PROTO(struct mt7601u_dev *dev, u8 bank, u8 reg, u8 val),
 	TP_ARGS(dev, bank, reg, val),
-- 
2.53.0

