X-GM-THRID: 6529093465723109376
X-Received: by 10.107.131.234 with SMTP id n103mr8644191ioi.86.1520173045783;
        Sun, 04 Mar 2018 06:17:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.139.18 with SMTP id n18ls2007348iod.4.gmail; Sun, 04 Mar
 2018 06:17:24 -0800 (PST)
X-Google-Smtp-Source: AG47ELvrL2lDFv8hPTHFN/g0CzvQvicPZ67jkcbkd4SM69c2j/I2UY9Ogyp2cySfqMAcNKJ0VXPs
X-Received: by 10.107.13.82 with SMTP id 79mr8608995ion.61.1520173044716;
        Sun, 04 Mar 2018 06:17:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520173044; cv=none;
        d=google.com; s=arc-20160816;
        b=qafqTpfncVurZeSMDuuyP5w24usot/G0s9rzM3btOx8rVGhLA6nvlvsp79HZCv/lnr
         Epn7KeilLbDS7I37qPXGbgpQXnp133LXBnjQ9aGbei4zv9LakEkiAGjZB7cKlVYyImG/
         uauELd0L6cSqC0o/fDwhXMBfP989GKPWjkP6E3prAmhao9zX60ncUdc9zkUAboVsg9v8
         0a05mQyU8/OH/6tjX3k5U7W0Flo3IdrYSuUuNmxZBbkEdurKwp5VT/FRqAqvKoqF8t9P
         MexYp18EzobY/REJ7K9Lp8qN4/UhCyUaa2QgwQ8RBfPKSV4JaS10WKMIXF0C/n47U1If
         NAyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=xec/e6Nk854v/4DbXEmyw9W4w3mkt9AYUKooLJBn/5M=;
        b=rGymbsw3fdFZQwNcq6yAOdGahrcWqh/gRmP5TtNs7gYbPGphpdfaLjip9SD0TyqAcD
         aXLuAWa+HKgrGJ2WUt1XqoZA4nQv7Rc/yjl0EEWU9DInyO0dK2D+0n05TP/LJK6SQ3l8
         ib3KIf1pQYevn3FjQVw0IpnzOYZVrT0qjLpFGle8Jwk73ddvNIZPNHZ0cP43h64CuwcI
         om6YOs/mrwFElQ3fNGrKTD3NBvSi9Ba91MhEMJcfafv5XWjdm+bqOm7tZpYGO0wBx36j
         cEY3F9KGBx4MxVlKZ2A51KjSduGnOwpmq9orFUynGVV2oUA7ioTRKbQLXIazBehGGsrJ
         uM9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k6AC5izH;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id n5si452133ioc.2.2018.03.04.06.17.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 06:17:24 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k6AC5izH;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q13so6109382pff.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 06:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xec/e6Nk854v/4DbXEmyw9W4w3mkt9AYUKooLJBn/5M=;
        b=k6AC5izHaEW/UnlIXYkRyzuT2FjsquM76ZVFjEkGqwQNdBHmnV24LmoEUrlONJrbkB
         JDUde95ulg3vrlgZJtIDx/lCwT619KIdnU5Yec8O4cuDNCS+t5zrDfLLqVV2Zu+8WjS/
         9wBx+8raAEHKsL+/bK73L61oEjiDlaGLUGy5mjVL6gPnNI2IrXwlPtiIX8+xWrOEvdrT
         KkPzkE6KkAEdU/gtKjZ+/dUzY+Wnr9FQjTMvMInpy82uZfJ0doq2YlEMro2ZaNYb7pQr
         TbV1XSQPLfE0YusYp03N3SHGTXfuyag0BDuqvd/O4XWnXjZJ1Ew9lPf9Ik+yBz5XbMt1
         NzSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xec/e6Nk854v/4DbXEmyw9W4w3mkt9AYUKooLJBn/5M=;
        b=fUMJ1L5GEpfX5WiLY3DHZuJgf2uBqxZLJYvLDricFI+jLBPgFtUpKYlMHRqPTS3dBB
         iOOReDjVE8p6Y7F0/jBeQTvKLKrBAdtbEgQk3zoNAbqR8YLy4Rb8HaVWXLIFVnBk1+4o
         Jau7wMVYCvgUMBENDba5xoTjHdaYZwtH7Ptdd84Rg6a8bf0o42EsiFAQyy4yLOTncHwd
         bFXHKPa7WZR7KeP4VmEr6rOUUbKTps/X5HElyoure4XzCAUgDKNwcAHKL97V4/nnkQC/
         BJG4EAL5JnAHEL5wg63+r0j3e9Zmitw5vbGmZyWvs79eobwqA45+ynI/yVcIBPQwNIwc
         jtow==
X-Gm-Message-State: APf1xPAMvfRUbGUfZDnZqh73yvgRAQy9UKlAfahOBzHoy5jA7CN7Eulp
	pV+uFR+JFNwKRwl24PFz5bs=
X-Received: by 10.99.121.131 with SMTP id u125mr9814145pgc.263.1520173044006;
        Sun, 04 Mar 2018 06:17:24 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m3sm16041826pgd.3.2018.03.04.06.17.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 06:17:21 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/3] staging: lustre: Replace "be be" with "be"
Date: Sun,  4 Mar 2018 19:46:06 +0530
Message-Id: <1520172968-17448-2-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520172968-17448-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520172968-17448-1-git-send-email-arushisinghal19971997@gmail.com>

This patch replace "be be" with "be".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/lustre/lnet/libcfs/debug.c             | 2 +-
 drivers/staging/lustre/lustre/include/lprocfs_status.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/libcfs/debug.c b/drivers/staging/lustre/lnet/libcfs/debug.c
index c70d2ae..1371224 100644
--- a/drivers/staging/lustre/lnet/libcfs/debug.c
+++ b/drivers/staging/lustre/lnet/libcfs/debug.c
@@ -440,7 +440,7 @@ int libcfs_debug_clear_buffer(void)
 	return 0;
 }
 
-/* Debug markers, although printed by S_LNET should not be be marked as such. */
+/* Debug markers, although printed by S_LNET should not be marked as such. */
 #undef DEBUG_SUBSYSTEM
 #define DEBUG_SUBSYSTEM S_UNDEFINED
 int libcfs_debug_mark_buffer(const char *text)
diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
index 835a729..426e8f3 100644
--- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
+++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
@@ -114,7 +114,7 @@ struct rename_stats {
  * LPROCFS_CNTR_AVGMINMAX indicates a multi-valued counter samples,
  * (i.e. counter can be incremented by more than "1"). When specified,
  * the counter maintains min, max and sum in addition to a simple
- * invocation count. This allows averages to be be computed.
+ * invocation count. This allows averages to be computed.
  * If not specified, the counter is an increment-by-1 counter.
  * min, max, sum, etc. are not maintained.
  *
-- 
2.7.4


