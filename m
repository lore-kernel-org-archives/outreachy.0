Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.49
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792941566;
	b=u9L78t/vK78PHHFpKcM/reO4mLenGN01Vg341XDIE8NfAb6HhE5vekuK4mrG2JChDqOF
	 VqOTvKokTdEgItq2I9qn1bM0kG+VnJlaptQoY7Yz+f5shObCdTe2e9gDQM91hjalYIL76
	 uWXP+VAXP2ICyDhDHu1hc8WZv64yD0xAn9l1imwx9itrSEv3A1QkDonQr7MVl4o6e30MA
	 zWexrl5cenrHgDtedfjGJNezLJmf9tqxXQ4X0ci3WWpmjL4hyx6gKFVGm4SankNxx8Yva
	 Uwvf/2AMhlz5Lhk/LrF90TyUXu3gAooLHpKHiXHFM17q1P/9i5fG/Iu7r3AEZBVGeAw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792941566;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=cKZVAumh7VUy5yuq+U1sG3RMnUiZQTey/FtdDJ1Gal4=;
	b=sEwpEiV3MAupgsOLnvfljG9zL9jIA/k27aIt+uaTZYF4Ax0rN/aCMf0oT6W4kPSaSFRH
	 hu7IdiFizek04b6F1CJqJ7M9cu/aIaK/20/EVeDUEPDshbXUr5AOUgyZOmzezrlY9oP+V
	 Sz18AgvdXiMiEz9BX0vg7CAIIJaGKiUUbEnVeHB6qPmrWe6zKLvI4HAwvB107bOSLmJgJ
	 XxRS79WSQzbqKBE3cewKmivZ1n23PADsb1fpOWFkiYKKdWb3PuDxQQQXKGglxQLu6w1Tq
	 rl1ORsqfs+3iwBuSQ64Q7Vbd01POhl71Eqbr1W/WAyhhaHUEtKoiQtOFm+VgyCGbF9Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=KEBU9Wwu;
	arc=none smtp.remote-ip=74.125.82.49
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97593606A31A
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 15:19:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 97593606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=KEBU9Wwu
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-1931ff67a29so4971596c88.1
        for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 08:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792941565; x=1793546365; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=cKZVAumh7VUy5yuq+U1sG3RMnUiZQTey/FtdDJ1Gal4=;
        b=KEBU9WwuEUsImISZ+P44OryosCYiuRkLqKX+webqfnuoq9gS8ZwPEMI3OJ/fcksmnG
         1YgokskTM778qGOsVwNUwcBCCcr3qwbydSdPgAsLrHlTBh9AsCG4fkRa4O7HFDTrTETx
         4lyCI06SzOCvM1sMntLdy6UoIGEaQF25FVxHh30PqgtEfdy+5kqzXMcc7CFoG+I6/8sC
         BObU4kOsIDIT6fVN0KtWWi3jq3/BrJEsAuq7Ph6t9XAyOio4FIn66QMoU9Oij7fzjMDd
         CQeRi5A1OxecHeMxc7Mc4JEeKoe59BYbX1en99jOdlbvCEA0wVOD7j9Gb3VqkGU+x2u8
         59WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792941565; x=1793546365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cKZVAumh7VUy5yuq+U1sG3RMnUiZQTey/FtdDJ1Gal4=;
        b=pNrlMqxQHHBV/+ECoql5w1WcWjsqiuHjP9aaIRrXjnvDdPmRNyABVyJcbvwzex8jEd
         yk4DSfsjcZQkYhZkiQbPB66Ch6kcPYWNr2X4S9Nc1oUcI7XU5vwBA0RmmK5Psg6uSQ2f
         N7jnllUW3O2llcb7BJJyaCkB8/TY+kuHlHMJ9kQ6KmlmNImVHRtCk2rM2TnylbKU/Wti
         Lr0XOGwUwBJEsEvQ2gZtKMkTP080WcmuKvTDpynA6HmSoK9BM6iNnw/Mc638nmvK9Doe
         3XWPXTPqlJYCmw1yi3+H4Hevd7GFTbsb+oxWwy3a7uFi1DnCHGi3QetUF+j8RhzNqMhY
         afOQ==
X-Gm-Message-State: AFq9FYKKOsJysEwbAVxBvBojC7p1Cby03l/PgISRYY8U625ScCXm5uMn
	vdKpX4w0FlcFd4TVXXYLwKkmQGEfjyw2QJUwWcMTDK5OJ37BgMr/WyeUJjKVp+fdcHo=
X-Gm-Gg: AYBFou1Rtdh2lEZ6SCoW7KlxnXB5QCPWUNA2Mo1htc+AN2nMD6LARyPLCuE88uDP/aN
	bzbAN0Tp9hal9yfY9oTVfcT5HNhsgYUXzdNE7xXzYGLfZQuW4o4zXEBKbxSLukrMOjgiIeq+szZ
	wfVMsJuOw4AyCPUt6+wcxYFeTX5hmBY0MQJ2gwCCtgW7MkBWN5wXPa1fH2QbuJgZGDVmr/14hU/
	hMjYfHyAgxRk1S0XDWWrRlPeUeOa64MdUuoK/O3956lB+xUH5nj8YjdEQlKgJI5yUOUWxSiMfb3
	BIoDo/9EjxM3YgE+vEsCxsk/gQfYpFIwMOUMnNbVEIee8tWrhJaEOLrj2HGzsJGB+NiBnc1+YVq
	Ng5LBmRkS1iSXjts1p8oRnwc06mp716EpoQ2Ty3RSY6qpvKOu2aKH9ERS5HKun/u6i5UeHLd/m6
	0D/BMCoszVdjGM4IzOFTAFGCnDNvhceG7HxZ60ZnbHU/072rhEuDPaYlIbS6jlTda1O716kCj4X
	RYHHpvnLff6WaMu8/ZAkHSjnWteeLB2mNbCB4P8BL7dxxuLaNHXzt4dz9YH1406mm1AYpdW/V+r
	+B5t5RbjbPABzM3/Ra3eL8rn7lvz4PacZ20ePW8BV9UjZQjStFrT0xXvV8olhHcd+IsuRsVSNwU
	atA==
X-Received: by 2002:a05:7022:3f01:b0:19d:255d:1767 with SMTP id a92af1059eb24-19d255d1787mr4387105c88.20.1792941564597;
        Sun, 25 Oct 2026 08:19:24 -0700 (PDT)
Received: from localhost.localdomain ([2409:40f0:114b:bab8:9a7c:1f32:7d8c:bb8f])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-19a3736d16fsm15932453c88.12.2026.10.25.08.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2026 08:19:24 -0700 (PDT)
From: Torra Sowmya <sowmyatorra@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	julia.lawall@inria.fr
Subject: [PATCH] scsi: sd: Remove unused zone append tracepoints
Date: Sun, 25 Oct 2026 20:47:02 +0530
Message-ID: <20261025151702.13434-1-sowmyatorra@gmail.com>
X-Mailer: git-send-email 2.47.3
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

