X-GM-THRID: 6256254448614506496
X-Received: by 10.107.130.28 with SMTP id e28mr14214363iod.34.1456647750796;
        Sun, 28 Feb 2016 00:22:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.229 with SMTP id bb5ls820876obb.54.gmail; Sun, 28 Feb
 2016 00:22:29 -0800 (PST)
X-Received: by 10.182.56.233 with SMTP id d9mr8100092obq.2.1456647749037;
        Sun, 28 Feb 2016 00:22:29 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id ff2si3183640pad.2.2016.02.28.00.22.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 00:22:28 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id x65so76223227pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 00:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Xah1C+WXkOrNpnY09F4RJsb6n6icAi913f19EyJ1Xwo=;
        b=H23CWyw6vCs4O/W2taMFGTe7ANrqRAME+hAr9z37bUtq04sV9qb3t2NtzvQYlQsRD7
         vwzWXwlrYaGNFe1UY9QkBm/4KGPHagbEH4gkSjaGIkH52nkkjtxKiCLodOBuKQMRg4OM
         aNjQOdFiTo5kCU9ilCPWk2HPZpMWEjJmdB4BLoHgYvz1/69FVRzcDr9tEr3TAwriBjdw
         FLoYQqQTAXhRxX4WXeRvPADpq+0d0UC9fBPYoTTXNz7NzuWQn42jm15FVwClhh7k4Qh/
         Xz0mfILU2eylGyLjdBrLaPMh/FG1Ur/xyvLzblaO/AmPl81TAW+zs4XYpwPUvcOFn0FK
         DeCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Xah1C+WXkOrNpnY09F4RJsb6n6icAi913f19EyJ1Xwo=;
        b=FltQiReZzp2IOJYac92OJ3l8jpcDRb1vkf80qcMU21IIkDDoVPdxAqvaAApFCvNMar
         vdy4P1OPFa4cK9kP+hepPVWgOtJFuhbSHDrmXDiISzHY3QM0sMYnBq0xT8uv8ptjfS/q
         I1jRSkFUkpE1Uvne1uESCuBhzwxHMv722TZqlYW6B887fJ3ekEH5YyVRnmh0dv3mrGLe
         F6Vsoshkbj2Ls11X6B2JUpAtTNrNQJfB9tNKShEcOFxJ7U5guVmYOOKHioJexjl/lBY5
         zAikSfUwMLOjYMJ9TyNwsYGdygeIklLfiu0Nzi0f+jSXs+hmcIGcS3jUtopei657ZwD+
         v5Ww==
X-Gm-Message-State: AD7BkJK1nTCs95nvEpU0D5B8PyhCq21hhX5IGhPWLofCr9xbeskqvn/Wd3pMvstft5iK9Q==
X-Received: by 10.98.43.149 with SMTP id r143mr13869533pfr.7.1456647748850;
        Sun, 28 Feb 2016 00:22:28 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.149.200])
        by smtp.gmail.com with ESMTPSA id x13sm30037429pfa.72.2016.02.28.00.22.23
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 00:22:28 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 28 Feb 2016 13:52:17 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: unisys: Remove function visorchannel_debug
Date: Sun, 28 Feb 2016 13:52:15 +0530
Message-Id: <1456647735-15584-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function visorchannel_debug is not used anywhere in the kernel so
remove the function definition, prototype and the export symbol.
Grepped to find the occurences.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/unisys/include/visorbus.h      |  2 -
 drivers/staging/unisys/visorbus/visorchannel.c | 74 --------------------------
 2 files changed, 76 deletions(-)

diff --git a/drivers/staging/unisys/include/visorbus.h b/drivers/staging/unisys/include/visorbus.h
index 2a64a9c..2c3e99c 100644
--- a/drivers/staging/unisys/include/visorbus.h
+++ b/drivers/staging/unisys/include/visorbus.h
@@ -215,8 +215,6 @@ int visorchannel_set_clientpartition(struct visorchannel *channel,
 				     u64 partition_handle);
 uuid_le visorchannel_get_uuid(struct visorchannel *channel);
 char *visorchannel_uuid_id(uuid_le *guid, char *s);
-void visorchannel_debug(struct visorchannel *channel, int num_queues,
-			struct seq_file *seq, u32 off);
 void __iomem *visorchannel_get_header(struct visorchannel *channel);
 
 #define BUS_ROOT_DEVICE		UINT_MAX
diff --git a/drivers/staging/unisys/visorbus/visorchannel.c b/drivers/staging/unisys/visorbus/visorchannel.c
index a80d72c..8ce9cd9 100644
--- a/drivers/staging/unisys/visorbus/visorchannel.c
+++ b/drivers/staging/unisys/visorbus/visorchannel.c
@@ -562,77 +562,3 @@ sigqueue_debug(struct signal_queue_header *q, int which, struct seq_file *seq)
 	seq_printf(seq, "   Tail               = %lu\n", (ulong)q->tail);
 }
 
-void
-visorchannel_debug(struct visorchannel *channel, int num_queues,
-		   struct seq_file *seq, u32 off)
-{
-	u64 addr = 0;
-	ulong nbytes = 0, nbytes_region = 0;
-	struct channel_header hdr;
-	struct channel_header *phdr = &hdr;
-	int i = 0;
-	int errcode = 0;
-
-	if (!channel)
-		return;
-
-	addr = visorchannel_get_physaddr(channel);
-	nbytes_region = visorchannel_get_nbytes(channel);
-	errcode = visorchannel_read(channel, off,
-				    phdr, sizeof(struct channel_header));
-	if (errcode < 0) {
-		seq_printf(seq,
-			   "Read of channel header failed with errcode=%d)\n",
-			   errcode);
-		if (off == 0) {
-			phdr = &channel->chan_hdr;
-			seq_puts(seq, "(following data may be stale)\n");
-		} else {
-			return;
-		}
-	}
-	nbytes = (ulong)(phdr->size);
-	seq_printf(seq, "--- Begin channel @0x%-16.16Lx for 0x%lx bytes (region=0x%lx bytes) ---\n",
-		   addr + off, nbytes, nbytes_region);
-	seq_printf(seq, "Type            = %pUL\n", &phdr->chtype);
-	seq_printf(seq, "ZoneGuid        = %pUL\n", &phdr->zone_uuid);
-	seq_printf(seq, "Signature       = 0x%-16.16Lx\n",
-		   (long long)phdr->signature);
-	seq_printf(seq, "LegacyState     = %lu\n", (ulong)phdr->legacy_state);
-	seq_printf(seq, "SrvState        = %lu\n", (ulong)phdr->srv_state);
-	seq_printf(seq, "CliStateBoot    = %lu\n", (ulong)phdr->cli_state_boot);
-	seq_printf(seq, "CliStateOS      = %lu\n", (ulong)phdr->cli_state_os);
-	seq_printf(seq, "HeaderSize      = %lu\n", (ulong)phdr->header_size);
-	seq_printf(seq, "Size            = %llu\n", (long long)phdr->size);
-	seq_printf(seq, "Features        = 0x%-16.16llx\n",
-		   (long long)phdr->features);
-	seq_printf(seq, "PartitionHandle = 0x%-16.16llx\n",
-		   (long long)phdr->partition_handle);
-	seq_printf(seq, "Handle          = 0x%-16.16llx\n",
-		   (long long)phdr->handle);
-	seq_printf(seq, "VersionId       = %lu\n", (ulong)phdr->version_id);
-	seq_printf(seq, "oChannelSpace   = %llu\n",
-		   (long long)phdr->ch_space_offset);
-	if ((phdr->ch_space_offset == 0) || (errcode < 0))
-		;
-	else
-		for (i = 0; i < num_queues; i++) {
-			struct signal_queue_header q;
-
-			errcode = visorchannel_read(channel,
-						    off +
-						    phdr->ch_space_offset +
-						    (i * sizeof(q)),
-						    &q, sizeof(q));
-			if (errcode < 0) {
-				seq_printf(seq,
-					   "failed to read signal queue #%d from channel @0x%-16.16Lx errcode=%d\n",
-					   i, addr, errcode);
-				continue;
-			}
-			sigqueue_debug(&q, i, seq);
-		}
-	seq_printf(seq, "--- End   channel @0x%-16.16Lx for 0x%lx bytes ---\n",
-		   addr + off, nbytes);
-}
-EXPORT_SYMBOL_GPL(visorchannel_debug);
-- 
1.9.1


