Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.171
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794120473;
	b=bCuwu3jL1LqAhJKca5usbcEDTO1ZwrpQrEKdHgFuUuocCxoRPDPg9zEd6Wl99pRAaDCk
	 fbZDDjfisbFz5mZZnEyPDO3feFnA3Quh7mNZ7RORQDpjoRxr8V0d1SRgI5raiIbVnIPp5
	 LYgjCrOTB9eoEGwAh8LxcrPBrftcXirWKjqgjkiEmVdWlQR2lC+129WgI5NVGlUw3nIRz
	 MvDl6GJlLR9zNQd6RM+4FlWVIgZpvuNucB9exCALJ7Nlfy9y416zyXaya4H+3LVtmuiUy
	 W4PiyrDdmxh4+JGhlIb0G+qDHF+J5+2z2cbvh1n0Bz83l42Fw6yMUFOWzjQrH1rHJpg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794120473;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding;
	bh=cKZVAumh7VUy5yuq+U1sG3RMnUiZQTey/FtdDJ1Gal4=;
	b=sxYv9d5maSaABkUqI0/lI4Ph4/hfYG2JIfzUDWsBRgnlOj0iPaqswW1E6oRKPvtjqNA0
	 W+6JBG7WjvQYfYSvFVPo2T9fiaC/zPFbKDhodRFwsdKgPMcAiqKCpUonhbAUHZg8HLPx1
	 5L4Bbo4vOKvEo9mzLK3Re2eFbP02r1Rejzsim6GHMDI6s32Xv1zAfX0GhMFNytplbbLho
	 JJFf2p5JkMm3V/lv23me1k+62uGX/GJyOd0dE7HImPzHsa9gkTz1t4QFLA5w7dQYUShJf
	 ExiWgdTRXAhyOwiFq5XPT/npztRtOby2zXsC7L00O+qF0Z9vuRvTg1geFTKNNL+htjA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TGKrgrPW;
	arc=none smtp.remote-ip=74.125.82.171
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63388606A31C
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 06:47:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 63388606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TGKrgrPW
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-33fb4680717so600031eec.1
        for <outreachy@lists.linux.dev>; Sat, 07 Nov 2026 22:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794120471; x=1794725271; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cKZVAumh7VUy5yuq+U1sG3RMnUiZQTey/FtdDJ1Gal4=;
        b=TGKrgrPWDmdYWzg/n3QKGgcigurIP4VO9Z1454JGiIOeTWVLggak34bo64NYBdbSr5
         BjiQ/L4Ly/UKhAVZhPepYk6clzdUq26UFDQbXBZ5xtlpBJltx8pbhV2spdPL6K4Si8Kp
         +4snmOKNr8F3U4zMJn/5ahgL9cQuSV33xnph04Z3fgyYhsbRV6l2xamo7wv0M/Cpepu6
         qMvcKdQR6MZAGGeekT4HGZ+vDrz/nfF++zY6dgBp8obftgW76+y2DmKJ3GI1SWkwDZlN
         rU/tpmJLf65HkhUeT2XxHHZ4RnuMBhMzNIL4SRzp62xNxan6FTsY+ZpmV45tok6VDCU1
         xi2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794120471; x=1794725271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=cKZVAumh7VUy5yuq+U1sG3RMnUiZQTey/FtdDJ1Gal4=;
        b=OAF4ZqRhS5lnOUmRH/JgJIjF0xMczBdIr9n+qktV0NprHxSXvWRpJVScNlM2dhDusW
         VU8zWniSL2xrC2WURkAar/d+kXNUzams5b2UUY9VL4uzmk7vNqvdl/ZYtSLvoAt4rkdd
         TVrIXMn/WR7njgkNQue9AhQz46M04e7sUA2WvVQ4hjs8fcrk/NqLG6Sv3FXCLNwdXsbz
         baBWCmBG6EEf3/+5HXGwyOo/AxGbAV600Ff91YJrJEsE8CdZd9I3bZnhtoo9Kr5SmTl2
         vwvVFkh0AOdSEoekpswbo0WsX5ayzYdQ707ltZy6StcOvUqxnwX7j6WGn8KYbET1H3F5
         bMiA==
X-Forwarded-Encrypted: i=1; AL+hErEz0J7YeNz4CtJxT28a0N5PK/MkKRzadRPwqHon/VddkBHomPRWnZr4Fk34hezJvLelIAlSk2SIgrQ=@lists.linux.dev
X-Gm-Message-State: APuU4Z+rwHl2cMdwM9lAzFMczSYxsrzM8WadM9ZnRtpUYMV/3CNpOA6h
	hHT1CTbqmZ/CrcwvyIQPD7qq54pqLO3Szq/q9/Ff5mAgLVAZXuiySsW4
X-Gm-Gg: AYBFou3TVlYrb9CdyhrGFucqsXsG/zAl7Q4jTaJZDnMx6iTH01bY/NzG5vNR0YV1m1b
	4h197RwpevIUU/5mF9CVLO+/YtxP57p2q8ap03rJpHYJwwhoH+1YMqRlR8Cm5MCmkWQmQqCGZWt
	vIwpDJQ79KvaEEWCL5Uf4zJM18t60QCA+v0nezAxkm5olUSWkSm3WMGCtbYZLUgaZ3JfLcQ0Br/
	oI62GUKIzV4TvLfiE7QPYkHKPgDvpMnwI8smpqvHI3x/xIApwT8+x6DA80Iy8UYF42c2I4j1vd7
	ykt9etz8x/ZP4Q+G7K5kZnpXZAPsq3LJJUGLyojj0pab3vTYluRhSBVA6vrPXJsKLZx1Q2syuSc
	TFCil2pfiC6mbtQg6M10iLJtA5NdP4VU/95achjQPXLRiEO8NFrv/na6B29X9Hhb3J9x8Zo7PG9
	DAJOjexow87F9iACAyxbNS3jsK4cLnJPZ3u9QT6aFGpPkrlfnNOhJUf+udxs+Hd3L3zW2Q5PdSG
	VbDLOM1k+9tMe/fyiO4GMm5fRoJzprjjXzzgM1ugCnjMW4TgtbA8Axv66LE7riObMuyaJzLF7oD
	FvuLVT575Zylwb54Nr0kutT5u6IURf0GPp034CyZC8Zv7MD2qFnmOAOAKo0PSNMy7yXFC/wmr+z
	X6hm9MnQNMXpXax8Fc8PP2JxB/A==
X-Received: by 2002:a05:7301:7305:b0:369:d779:bcb8 with SMTP id 5a478bee46e88-3724fd69ac0mr1973804eec.0.1794120471293;
        Sat, 07 Nov 2026 22:47:51 -0800 (PST)
Received: from localhost.localdomain ([2406:b400:d4:acc8:a024:59b8:c312:eefd])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3726039c635sm3190224eec.0.2026.11.07.22.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Nov 2026 22:47:50 -0800 (PST)
From: Torra Sowmya <sowmyatorra@gmail.com>
To: James.Bottomley@HansenPartnership.com,
	mkp@kernel.org
Cc: johannes.thumshirn@wdc.com,
	axboe@kernel.dk,
	dlemoal@kernel.org,
	bvanassche@acm.org,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	rostedt@goodmis.org,
	julianbraha@gmail.com,
	julia.lawall@inria.fr
Subject: [PATCH] scsi: sd: Remove unused zone append tracepoints
Date: Sun,  8 Nov 2026 12:16:26 +0530
Message-ID: <20261108064626.5539-1-sowmyatorra@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261025151702.13434-1-sowmyatorra@gmail.com>
References: <20261025151702.13434-1-sowmyatorra@gmail.com>
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

Commit 1846f308d66f ("scsi: sd: Use the block layer zone append
emulation") removed the calls to scsi_prepare_zone_append and
scsi_zone_wp_update, but left their definitions in sd_trace.h.
Consequently, sd_zbc.c still generates code and data for events
that have no remaining callers.

Remove sd_trace.h, which contains only these two events, and
remove its include and CREATE_TRACE_POINTS definition from
sd_zbc.c.

Fixes: 1846f308d66f ("scsi: sd: Use the block layer zone append emulation")
Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
---
 drivers/scsi/sd_trace.h | 84 -----------------------------------------
 drivers/scsi/sd_zbc.c   |  3 --
 2 files changed, 87 deletions(-)
 delete mode 100644 drivers/scsi/sd_trace.h

diff --git a/drivers/scsi/sd_trace.h b/drivers/scsi/sd_trace.h
deleted file mode 100644
index cba3c0b825ba..000000000000
--- a/drivers/scsi/sd_trace.h
+++ /dev/null
@@ -1,84 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (C) 2022 Western Digital Corporation or its affiliates.
- */
-#undef TRACE_SYSTEM
-#define TRACE_SYSTEM sd
-
-#undef TRACE_INCLUDE_FILE
-#define TRACE_INCLUDE_FILE sd_trace
-
-#if !defined(_SD_TRACE_H) || defined(TRACE_HEADER_MULTI_READ)
-#include <scsi/scsi_cmnd.h>
-#include <scsi/scsi_host.h>
-#include <linux/tracepoint.h>
-
-TRACE_EVENT(scsi_prepare_zone_append,
-
-	    TP_PROTO(struct scsi_cmnd *cmnd, sector_t lba,
-		     unsigned int wp_offset),
-
-	    TP_ARGS(cmnd, lba, wp_offset),
-
-	    TP_STRUCT__entry(
-		     __field( unsigned int, host_no )
-		     __field( unsigned int, channel )
-		     __field( unsigned int, id )
-		     __field( unsigned int, lun )
-		     __field( sector_t,     lba )
-		     __field( unsigned int, wp_offset )
-	    ),
-
-	    TP_fast_assign(
-		__entry->host_no	= cmnd->device->host->host_no;
-		__entry->channel	= cmnd->device->channel;
-		__entry->id		= cmnd->device->id;
-		__entry->lun		= cmnd->device->lun;
-		__entry->lba		= lba;
-		__entry->wp_offset	= wp_offset;
-	    ),
-
-	    TP_printk("host_no=%u, channel=%u id=%u lun=%u lba=%llu wp_offset=%u",
-		      __entry->host_no, __entry->channel, __entry->id,
-		      __entry->lun, __entry->lba, __entry->wp_offset)
-);
-
-TRACE_EVENT(scsi_zone_wp_update,
-
-	    TP_PROTO(struct scsi_cmnd *cmnd, sector_t rq_sector,
-		     unsigned int wp_offset, unsigned int good_bytes),
-
-	    TP_ARGS(cmnd, rq_sector, wp_offset, good_bytes),
-
-	    TP_STRUCT__entry(
-		     __field( unsigned int, host_no )
-		     __field( unsigned int, channel )
-		     __field( unsigned int, id )
-		     __field( unsigned int, lun )
-		     __field( sector_t,     rq_sector )
-		     __field( unsigned int, wp_offset )
-		     __field( unsigned int, good_bytes )
-	    ),
-
-	    TP_fast_assign(
-		__entry->host_no	= cmnd->device->host->host_no;
-		__entry->channel	= cmnd->device->channel;
-		__entry->id		= cmnd->device->id;
-		__entry->lun		= cmnd->device->lun;
-		__entry->rq_sector	= rq_sector;
-		__entry->wp_offset	= wp_offset;
-		__entry->good_bytes	= good_bytes;
-	    ),
-
-	    TP_printk("host_no=%u, channel=%u id=%u lun=%u rq_sector=%llu" \
-		      " wp_offset=%u good_bytes=%u",
-		      __entry->host_no, __entry->channel, __entry->id,
-		      __entry->lun, __entry->rq_sector, __entry->wp_offset,
-		      __entry->good_bytes)
-);
-#endif /* _SD_TRACE_H */
-
-/* This part must be outside protection */
-#undef TRACE_INCLUDE_PATH
-#define TRACE_INCLUDE_PATH ../../drivers/scsi
-#include <trace/define_trace.h>
diff --git a/drivers/scsi/sd_zbc.c b/drivers/scsi/sd_zbc.c
index 56e455fb5add..a7bdf089e142 100644
--- a/drivers/scsi/sd_zbc.c
+++ b/drivers/scsi/sd_zbc.c
@@ -20,9 +20,6 @@
 
 #include "sd.h"
 
-#define CREATE_TRACE_POINTS
-#include "sd_trace.h"
-
 /* Whether or not a SCSI zone descriptor describes a gap zone. */
 static bool sd_zbc_is_gap_zone(const u8 buf[64])
 {
-- 
2.47.3

