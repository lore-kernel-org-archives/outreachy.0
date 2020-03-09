X-GM-THRID: 6802140913724293120
X-Received: by 2002:a17:902:9a98:: with SMTP id w24mr11106718plp.40.1583746847771;
        Mon, 09 Mar 2020 02:40:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ab86:: with SMTP id f6ls4047858plr.10.gmail; Mon, 09
 Mar 2020 02:40:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vseEcGI/sKjbPaQntJ1KqAmOFXz54noAYjL7bdSTNlKmm4cajSUbDQT+PRGAbKfkWXq5jLZ
X-Received: by 2002:a17:90a:8806:: with SMTP id s6mr18024551pjn.141.1583746846213;
        Mon, 09 Mar 2020 02:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583746846; cv=none;
        d=google.com; s=arc-20160816;
        b=cKmsopj23n8HPXLF7V9VcRst+Ddacych3CBCiN7WIQ+pffXY6XAslE9r5UD5vEr58n
         W/nshOZcmd9uusQogO+IyQzP7Si2+RKmXHZwCzYkg5mGY/3IxKNp3GFngRGxx6bTBhNv
         /CRW0Pwez5uJYcEjGoc8AnibExw35n/+dyoYA4xNUBcG+IH6Tf8cb3OzBqvJ6bRlpIuz
         Al/gfTOgLmJkxnGCcXckhUvfOHsDo47IGP/8UbtEdV9VmRLFAarAo8Four5WTUaCNPz8
         jqnhWeDUly61Hb/pZXmmikLUsT2+LIMe0rVsOySROKFHjgCJEy6K6+qcWYkSbj9/d8xM
         55vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=S1hxxcd9oMz7/lQZYwrN4vH6q88tpqrxpbckIuiULVE=;
        b=RY0e7S3dVpw67QsempGVvXz4rw8FUhp2pK9GH6eOurbk7Zsd4Spbsl4E8zvvb6/JSN
         JORZbEeVZHQwRgiU1ZkjWc66WKeuzoNJlp14IVuvmhPy67dUgg3bzhrfFTiofHCAcfBz
         kbEHuWaQNDk1OEIpTPtug3vMwhY+GgvHs/zkn+JaQiGNKmhbFE6L+YNHZEP/mb0SS3J8
         QRczj4LxqjAMDjP97tdEW5QO+lOUJrEYRzz85I0bkv+yR9SQS98lZe71LL31KYgNRdNf
         8crc1dm2UQWLu9jKTzg/7uQFtZYYiTXer04+xSlZ15V3CLGT5ss/VkyH+xGGQv6Gsw5o
         Tyuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bYRLYyAH;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id z7si107021pgz.5.2020.03.09.02.40.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 02:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bYRLYyAH;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id j20so3760985pll.6
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 02:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=S1hxxcd9oMz7/lQZYwrN4vH6q88tpqrxpbckIuiULVE=;
        b=bYRLYyAHdrXRn7Z92QyFwVm6pOO1gbeOhNxxTI97cw2f+0l0lFzlxIwcCC8JGcvbNI
         u4N59cVnsTGydGEgXSY6Ut6NW3+f+PDFkVjRKU6z6gkt7pZPJE1sOKTSAs3iudS+QzVW
         wn30A9AoAdHqpy2X12snfmj42WGtVwcgPv8fWzVpvlZcmY3XOx8Msf7UtY7OrkHiU2pB
         4ueJKiVVH0TwX8zxqCEr6WHMr/+Z+F5EY6i26OXmiaknsEs2UPaSh5BoTjXO86pKRICa
         E15CtvcL0swMSLlRAYR+DdCwsmT7O6AJK0SSV/fxEbwV8LYHrSYQelwwABLSVSP85b3s
         2O+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=S1hxxcd9oMz7/lQZYwrN4vH6q88tpqrxpbckIuiULVE=;
        b=uZLsxgD7RcMhK0kt0W0KVrJWfaMjjPpOi0YM6LiN9x0VzINAX9gAEYhvVeVIVYxRj9
         iha5V19lceF2Ny8WtPf46rme4tPs2B1tUBLpJqylu+DUi6zO1V9i7+e2YEuufgJPPpCB
         S660yVLLCBa0RBq8uN9F9h9Ld7V1efExw6vgtd3/PNIVS6xqvHZs6IjrnkWPppUFVNkD
         HGMFF/X0jBDYsJihl/dLxqOvyvcG39FfG13RjCB0QyCGXAV2QTX8yLwBFMiDbP/D0p29
         s3k9skXfqqgIOgKP9QFJZVD9ew826AGOt/C1uvAkvw43D+G93yvRlNxhagvrpSdAaScG
         fz/w==
X-Gm-Message-State: ANhLgQ2BhQ0o7t9y7OQMvT7iuYncQdVxnZY1cAWbn1+dEpIkzWO2e5de
	ABJKG742bjke8zDqsFJx7jbyT6LBoqk=
X-Received: by 2002:a17:90a:7f95:: with SMTP id m21mr1564196pjl.168.1583746845731;
        Mon, 09 Mar 2020 02:40:45 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.156.41])
        by smtp.gmail.com with ESMTPSA id d11sm1713886pfo.39.2020.03.09.02.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 02:40:45 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: qlge: remove blank line
Date: Mon,  9 Mar 2020 15:10:36 +0530
Message-Id: <20200309094036.3957-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary multiple blank lines.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 44fb3a317b8d..670361873d1d 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -552,7 +552,6 @@ static int ql_get_probe_dump(struct ql_adapter *qdev, unsigned int *buf)
 	buf = ql_get_probe(qdev, PRB_MX_ADDR_FC_CLOCK,
 			   PRB_MX_ADDR_VALID_FC_MOD, buf);
 	return 0;
-
 }
 
 /* Read out the routing index registers */
@@ -610,7 +609,6 @@ static void ql_get_mac_protocol_registers(struct ql_adapter *qdev, u32 *buf)
 
 	for (type = 0; type < MAC_ADDR_TYPE_COUNT; type++) {
 		switch (type) {
-
 		case 0: /* CAM */
 			initial_val |= MAC_ADDR_ADR;
 			max_index = MAC_ADDR_MAX_CAM_ENTRIES;
@@ -1204,7 +1202,6 @@ int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump)
 err:
 	ql_sem_unlock(qdev, SEM_PROC_REG_MASK); /* does flush too */
 	return status;
-
 }
 
 static void ql_get_core_dump(struct ql_adapter *qdev)
@@ -1838,7 +1835,6 @@ void ql_dump_tx_desc(struct tx_buf_desc *tbd)
 	pr_err("tbd->flags = %s %s\n",
 	       tbd->len & TX_DESC_C ? "C" : ".",
 	       tbd->len & TX_DESC_E ? "E" : ".");
-
 }
 
 void ql_dump_ob_mac_iocb(struct ob_mac_iocb_req *ob_mac_iocb)
-- 
2.17.1


