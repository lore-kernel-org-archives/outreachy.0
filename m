Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.42
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793180505;
	b=R1TOI+qZ1vlvnixZ58RnAMrUP134aygCNq8wVOPB63xOo5PG3VsgyS56936XksqKFffb
	 LlXSPZBHNjzMnkGIiopnacTZB22xMBPEMUunLUhtSXpvfbCzQ6flHEVP7ZV0uuZIfm0KB
	 MPB4bZiZjM0FvQeYuAsDL6oq9YrklASy6siVgTeDHyPNTENgpOIDOF8pYWUi2VzGsMMln
	 zwIzAWNwk+H5MVmCUzoE67I8ZMUQ/nui6fW0eVu98bT1Qvsqc6vj3u+IERst2Afmw/Gu0
	 s4BnQNQpFGKvux89KmuXU81iGnfvMtNj8imlHgGR71bs8N4mnCcgW6z9amh/j6OR8/A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793180505;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=HaYSNMZTHkK9pdHJW6htY+PePEbC9a7BqboANO6NUA4=;
	b=WR68yYHFQfdOz/2o1z372rHmvpMVeQvJAAbYAgZ3iwwKYuTaSMVu9/xYs5n0FY1jY7Xo
	 OlexAKAfOX7z7atG2n1F6fW669QuQdHa64HMnl5QesuTeFYtFMnOv+oTyHLo16PX9pzo9
	 fsPmv9Pup+p1RksbZnPC7/VAT7HZzv/tV0uruPMXVAmnjjr63GUt6zg8Ixs6eDWxnnD3b
	 XHWkU5d9jiO0Q2pPEAR580B4Gey4HX0k+v/59Ueq36bu8VCtHmHH46btQ088YJKSpE4Jt
	 4E9IoFnNe7KpvqLS0Dhs2+XXnHKGc+9b5HhZwZ0IvKRLS6kKnBI6bUtieAQi4j/7MiA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=x8N1SqTk;
	arc=none smtp.remote-ip=209.85.128.42
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2470606A329
	for <outreachy@lists.linux.dev>; Wed, 28 Oct 2026 09:41:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B2470606A329
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=x8N1SqTk
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4a35d5d4a20so7896645e9.2
        for <outreachy@lists.linux.dev>; Wed, 28 Oct 2026 02:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793180503; x=1793785303; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=HaYSNMZTHkK9pdHJW6htY+PePEbC9a7BqboANO6NUA4=;
        b=x8N1SqTkJoa/Hl7uAlacjFtlcBo+wZyibdvBeVKKEr4Kwliae+opZCxtMNA3ioZcyg
         uxWNMCK+zNKkdBRxXNBc9tgNkK1gKwt1ew+fdmW/05W0pqiU5LryXP4cAbo7P73cR9OG
         kDr6TpOsTmtX4MAheubQWkzOBTfN6d/setacKhdSuciBz2dLP9NK7bQNNfS8KbaliEgr
         71+WfkfTtSfSKyitVmzdhf/VVruK8aaJ8cPb3cBt6P301VZ48HGQOXjWFiauNywbMo+l
         KQYBFjPNQ9VBaDrQW89My3Zj8lNaNP91N6lv66ZFMYJyTM9kDWUJZ+Kw32dN9wpf7Oh5
         hH1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793180503; x=1793785303;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HaYSNMZTHkK9pdHJW6htY+PePEbC9a7BqboANO6NUA4=;
        b=KhMWvPt9R/635TFzdn8jNMnjfhMaEBM1FWwnUD/sr4vHy2sGejgNCYq2FpHuKvofSp
         LaZ3vsXuZ35stLUKs9bzj7Rf97raoRCEmR9oXOUL/b1auW3ccAwc283mYFVSxcTvskuk
         ai1HUtz8WfiSpwOVaOJwtko61LDq0Ua1NjTipqTPcZ/MyM2XxO3FGz4+SH0toetAqa7r
         JP04TqySYiXjpXEyMsLvkyFNTd3JgFPWXYcocRSQg2zwIBpg9EBpVbhuJo4gscyyyN18
         dDrk5pa/OM8lJ/i1KAkiHoKwE2bXn1ggcw9OywZtTiM3K0rIx68/REiYLUdRMT3TXJwE
         qD2A==
X-Gm-Message-State: AFq9FYJHQaZLLsRhKr1G5hj3etGhTrI2Dn1e+TywRzy55/qMWDSLXq4s
	jx8Whm+pRjaCiRJMUyrUTDFmLoNwbatd22NWZkkpYzdN7MCdYxIyGcDLpjLgQosQ
X-Gm-Gg: AYBFou3OmJ0C8rzr+2lulHmXdGzKCURVdGSH2DK1XmpfLIrjdYI7IOJYdiDQrBdGFYZ
	iwmK5sXDchASV+AFUYg7v8wba7SHZ91D3WrAfNNNxJgq0ypekCS9cGqo4aOkoDt5iTnHyCLd19U
	gwbkuRqvUnozPiV6R4X6pQyMCwiHCPOfAiQOSHQXUrj/bs+AXk1kiehGfYtT5UPnKDKc/WKfBd1
	7BAKHGbD+J2VgCEAFbSU/q7S8NWxOf/fnUD9kJ6t7eYtUZujeROAqnUB0l1bNP8FZy9tS0nx+Jd
	3Wg/Sz9svkNH8OzXTzezeOSoPD9+H3f0pKDgEnQaiodpzeFnzB1PSgIatwjPbDArcUx0uhIXIGL
	NZRxNBElAL/uEq0S5IjV20LKvzzIVnBCAOnkvL8p+OyqkkMjeli+voRgxz576cBahBYnU4qj7rv
	9259mGCnrs4w+HIs3L7zjOqxV4NQCDho7xi3pJZrNsBRCURNmlQTFptxUgVFbR19eAesaDbwkNx
	g6eYqVKtDo4CNTgcaCGzRdx7oniCBURy9/PN/ZBdtnNzHdp0w3dhY0nAR8BQAC0C5XUTOqChd9y
	ZCxzP3pWKTk9b1jF6qZbl/4TFtypcGO23PiC1cho30VhS46dF/eh3IzeOt0=
X-Received: by 2002:a05:600c:6989:b0:4a0:23f:8b0d with SMTP id 5b1f17b1804b1-4a9647aabc3mr34775575e9.2.1793180502942;
        Wed, 28 Oct 2026 02:41:42 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([156.213.216.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3eb8f387sm27290353f8f.4.2026.10.28.02.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 02:41:42 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Temitope obabi <obabitemitope765@gmail.com>
Subject: [PATCH] gpu: host1x: Remove unused host1x_channel_submit_complete tracepoint
Date: Wed, 28 Oct 2026 12:39:40 +0300
Message-ID: <20261028093941.16471-1-obabitemitope765@gmail.com>
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

The call to trace_host1x_channel_submit_complete() was removed in
commit 625d4ffb438c ("gpu: host1x: Rewrite syncpoint interrupt
handling"), leaving the tracepoint definition unused. Remove it.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
 include/trace/events/host1x.h | 21 ---------------------
 1 file changed, 21 deletions(-)

diff --git a/include/trace/events/host1x.h b/include/trace/events/host1x.h
index 1b6aeb7b177b..143a16e37703 100644
--- a/include/trace/events/host1x.h
+++ b/include/trace/events/host1x.h
@@ -178,27 +178,6 @@ TRACE_EVENT(host1x_channel_submitted,
 		__get_str(name), __entry->syncpt_base, __entry->syncpt_max)
 );
 
-TRACE_EVENT(host1x_channel_submit_complete,
-	TP_PROTO(const char *name, int count, u32 thresh),
-
-	TP_ARGS(name, count, thresh),
-
-	TP_STRUCT__entry(
-		__string(name, name)
-		__field(int, count)
-		__field(u32, thresh)
-	),
-
-	TP_fast_assign(
-		__assign_str(name);
-		__entry->count = count;
-		__entry->thresh = thresh;
-	),
-
-	TP_printk("name=%s, count=%d, thresh=%d",
-		__get_str(name), __entry->count, __entry->thresh)
-);
-
 TRACE_EVENT(host1x_wait_cdma,
 	TP_PROTO(const char *name, u32 eventid),
 
-- 
2.53.0

