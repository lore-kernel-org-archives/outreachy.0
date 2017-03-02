X-GM-THRID: 6392835608825298944
X-Received: by 10.99.110.1 with SMTP id j1mr4521299pgc.52.1488448040456;
        Thu, 02 Mar 2017 01:47:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.140 with SMTP id s12ls1926901ioi.15.gmail; Thu, 02 Mar
 2017 01:47:19 -0800 (PST)
X-Received: by 10.99.136.194 with SMTP id l185mr4511996pgd.82.1488448039963;
        Thu, 02 Mar 2017 01:47:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si614802pfz.1.2017.03.02.01.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 01:47:19 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 16so339475pga.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 01:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=80SBEgyGIQKNKmEMUN2wLNyoY85ilLVvyaYIigQ7e8s=;
        b=azHnSSLizM4tYXi/e5u+SuvkjJPVTIjrj0kM534LXoi94t2jOEHhwTDaWSz1P+YOdV
         0Ebjj+qfafIWwtGCXrMEWA1+RX02IqHrJx2oFeOansSUulxMKozyeu6vpbzp+wC6OU4n
         dkAdTpWW5oAD3D5Wkk69BSjlhmZbov5XA8GkK6JoVpJH3bmTSmL6t+4B8tgeEmlgYGrS
         1DNpLvQ7tj6UnD3CQNE26+F9q27XEhLq2ihf3l+zQbiTo8m/275U/9ruXTADu3ysJCU5
         eDtTCFd2j/y51CFG3jH/ZF0PuK+xP9mN3gXP9HubdyIYcZWvdFdMfI0G5bBZ4oj7EXbm
         6dlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=80SBEgyGIQKNKmEMUN2wLNyoY85ilLVvyaYIigQ7e8s=;
        b=gMPjvLWgqbzNpV3r9yv5RRJ5BmJqkeOTkM4XccX66Iz7oZC7e7pPJAODTDJuZLDxR8
         s4w1gJmzsTt7QNhN7xBlA1d3Byck0oNi7VolvjfBvbf0XdWmik52oLtztOfF7vOjbsu4
         oywu9guw4dnL9zugnZGcSHz+C4uXLGSL1kRiK/xBnqLK679NGwB1EcYmrYkbe+vMyTbA
         4gZKTv+oMKSE69z1v1MkI3UwCLAxLwR0N/gT7kUPiS7SACqanBodcuc6ZrV3CFtgRUdK
         HezjrBHU5tOgF7yusIQs/ItGZEJ+UenGbrhrfqtto7NS7R7O9q9H8MlvoBPTDDmczM0k
         6Pxw==
X-Gm-Message-State: AMke39ncgAomstKqkvIOF/4j/EwQsWhYUL1qKvBu/Cp3BPR8jdBN+Hi+lysX+Z+YRPndZA==
X-Received: by 10.98.72.199 with SMTP id q68mr4757803pfi.152.1488448039759;
        Thu, 02 Mar 2017 01:47:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o125sm15769741pfb.109.2017.03.02.01.47.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 01:47:18 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	sergio.paracuellos@gmail.com,
	juliana.orod@gmail.com,
	thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: fbtft: Fix sparse warnings of incorrect type in assignment
Date: Thu,  2 Mar 2017 15:19:04 +0530
Message-Id: <1488448146-29452-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
References: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>

drivers/staging/fbtft/fbtft-bus.c:166:36: warning: incorrect type in assignment (different base types)
drivers/staging/fbtft/fbtft-bus.c:166:36:    expected unsigned short [unsigned] [short] [usertype] <noident>
drivers/staging/fbtft/fbtft-bus.c:166:36:    got restricted __be16 [usertype] <noident>

drivers/staging/fbtft/fbtft-io.c:74:29: warning: incorrect type in assignment (different base types)
drivers/staging/fbtft/fbtft-io.c:74:29:    expected unsigned long long [unsigned] [long] [long long] [usertype] <noident>
drivers/staging/fbtft/fbtft-io.c:74:29:    got restricted __be64 [usertype] <noident>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/fbtft/fbtft-bus.c | 2 +-
 drivers/staging/fbtft/fbtft-io.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
index ec45043..df2223e 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -163,7 +163,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
 						to_copy, remain - to_copy);
 
 		for (i = 0; i < to_copy; i++)
-			txbuf16[i] = cpu_to_be16(vmem16[i]);
+			txbuf16[i] = vmem16[i];
 
 		vmem16 = vmem16 + to_copy;
 		ret = par->fbtftops.write(par, par->txbuf.buf,
diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
index d868405..ffb9a3b 100644
--- a/drivers/staging/fbtft/fbtft-io.c
+++ b/drivers/staging/fbtft/fbtft-io.c
@@ -71,7 +71,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
 			src++;
 		}
 		tmp |= ((*src & 0x0100) ? 1 : 0);
-		*(u64 *)dst = cpu_to_be64(tmp);
+		*(__be64 *)dst = cpu_to_be64(tmp);
 		dst += 8;
 		*dst++ = (u8)(*src++ & 0x00FF);
 		added++;
-- 
2.7.4


