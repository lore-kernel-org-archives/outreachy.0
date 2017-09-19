X-GM-THRID: 6467514574021066752
X-Received: by 10.36.76.66 with SMTP id a63mr762915itb.38.1505835653348;
        Tue, 19 Sep 2017 08:40:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.70 with SMTP id i67ls13322062ioe.9.gmail; Tue, 19 Sep
 2017 08:40:52 -0700 (PDT)
X-Received: by 10.129.155.69 with SMTP id s66mr836560ywg.98.1505835652858;
        Tue, 19 Sep 2017 08:40:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835652; cv=none;
        d=google.com; s=arc-20160816;
        b=C4o1e4pVmeqrfT7CLm9RPAKXkXG21hzGAKcEMCesiUSkAIFEIw1haZ24uDlmO6INI3
         1FDBmyGGeHmEhbejxLzLPVeb1ndi0qS9uGEtN703kj5n8vJQ78O3cm1QkCx50NtE4EhR
         PJKEfL1fTqiSU5R3Kt0A4U7aLPOZnd0aqWLwOxy7kf5AZrZA2iFfoYUnek5dQuPsLkYu
         7A52raOUUegNvOqrza985i09Krd1TJOU5V48Ks5bZT/7PV0cKsretFSiLjKMDhiHrth6
         pDAVZ3rgv7rr2GIdJ9f3cF9jdC7Isb7VICfydWRNm1zJt/bW7OsOG4cyqqQxnewUu4Ll
         uYhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=84jLPOTx20MszT6LJIp6/O2Zo60MWRAgLglPb4wuPGk=;
        b=EtUbDHh5pLcyXVGEBtQxP7B078j4cF9KuU07CkJq2iFA21PnbiZTq+f3i9f0BZ/RaW
         CEn7KgXATW0gAC3ch31kxFSpuLunUMK/1Y1uzUDteiDGyko7CPZX4wNqNiEysbHMOqSs
         0vtSPtynff7Au6bVSCCqT/BC0pUSiEwfLrdXCvoz4I1Y8yeVmrlOYKa9rPtgQMVyM6in
         /VCfPce8f+i5jAEt6N07uiWjhp06UIte0NkkVaMUxhzlBEekD4/+1dcc09K99eRd7YBM
         rPI8rozKznn5K1tcmEHg1PErzUXfJf4rj4qVjL/WLenhNEmT3kjDdvgygcKpMqOQt2+M
         AjQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r0wq+GNE;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id q15si280071pfi.7.2017.09.19.08.40.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:40:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r0wq+GNE;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id d8so5025pgt.3
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=84jLPOTx20MszT6LJIp6/O2Zo60MWRAgLglPb4wuPGk=;
        b=r0wq+GNEZ+twCA04FzkScFtA7fsogWbitUPbm9XcO1jdLPFoxGgYaJioW2QOMktp2r
         9Wg8UkUSTPuJY2BPG71A6daw3LT5knHdUPU0gk/Te7OfyVfXT+wESFtikPmE/X2R9d4j
         M/d0Gj50w609dlcEFMQ111inIGU72Ri+iddNMwpjsRqB44/bj3t5K/A9gSgCPrXb8FdC
         vJ2bEgSRBFHD32Kd17N+BitymtYnRqDQu4BbFoZdwOB9q/II+HqlxY5nO5nqiYFUjIXS
         mwWgATqKGOfQN9V/6if1fNaGz/fdsFpvWatzRLNhbnQPRjGaBg2LU8N0ze5cyRBREKRb
         ZLsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=84jLPOTx20MszT6LJIp6/O2Zo60MWRAgLglPb4wuPGk=;
        b=oRmjaTFpNOvvuZKovRiL+05pvfYNG39IKc2nPV/hKt/YDvdO/vVpWr4p6z/L2l5DOH
         GBt6zP+bqomCgbQuyqBUrfCB5Le22hubyrcAAXawKJ4MPr2if2UOBWryrefPCmnDMc0F
         Ik5HJn0nosdNgRn+dXmG0o/40L16kYAZvLlvGclmX9SzDyiF78jfMaZO/DLAWO3hQXIE
         uhpGtg6aM2ucaby7AwmpdTA8Y+xbGfa8DZU0hemEBv50mE0hzjVBa+DKAsLiMKcTl8cv
         fqNSPSuh2Ft7KeEvmZkYDYS+OZiYuIA/e3ev/Ldx3jvoXN0pN8p9MUrMhimnmA3ZT4EK
         0UXA==
X-Gm-Message-State: AHPjjUjCp2uAArLdsWl5K66T8QrXiN4GBz02J+PZevLYGDFP+FC0nGe/
	JeTgV1qjK93KYDJe2jM2qTw=
X-Google-Smtp-Source: AOwi7QDrOjFaiZfL9Oqt5OwJDYlLRTbmv5hrDwMBhRVb75n30j371gpBFdRAqScqnF5XhAJ/mkQlUw==
X-Received: by 10.84.129.193 with SMTP id b59mr1710505plb.43.1505835652536;
        Tue, 19 Sep 2017 08:40:52 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id g16sm5001634pfd.6.2017.09.19.08.40.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:40:52 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 12/12] staging: lustre: llite: fix multi line comments style
Date: Tue, 19 Sep 2017 21:09:24 +0530
Message-Id: <f8841a52677bb03aa77fe86ad66e6765dc521166.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_internal.h | 5 +++--
 drivers/staging/lustre/lustre/llite/rw.c             | 3 ++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drivers/staging/lustre/lustre/llite/llite_internal.h
index c31d98d..8a5b064 100644
--- a/drivers/staging/lustre/lustre/llite/llite_internal.h
+++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
@@ -394,7 +394,8 @@ enum stats_track_type {
 #define LL_SBI_XATTR_CACHE    0x80000 /* support for xattr cache */
 #define LL_SBI_NOROOTSQUASH	0x100000 /* do not apply root squash */
 #define LL_SBI_ALWAYS_PING	0x200000 /* always ping even if server
-					  * suppress_pings */
+					  * suppress_pings
+					  */
 
 #define LL_SBI_FLAGS {	\
 	"nolck",	\
@@ -1203,7 +1204,7 @@ typedef enum llioc_iter (*llioc_callback_t)(struct inode *inode,
  * Return value:
  *      A magic pointer will be returned if success;
  *      otherwise, NULL will be returned.
- * */
+ */
 void *ll_iocontrol_register(llioc_callback_t cb, int count, unsigned int *cmd);
 void ll_iocontrol_unregister(void *magic);
 
diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
index 9fdd104..f05e97d 100644
--- a/drivers/staging/lustre/lustre/llite/rw.c
+++ b/drivers/staging/lustre/lustre/llite/rw.c
@@ -888,7 +888,8 @@ static void ras_update(struct ll_sb_info *sbi, struct inode *inode,
 
 	/* The initial ras_window_len is set to the request size.  To avoid
 	 * uselessly reading and discarding pages for random IO the window is
-	 * only increased once per consecutive request received. */
+	 * only increased once per consecutive request received.
+	 */
 	if ((ras->ras_consecutive_requests > 1 || stride_detect) &&
 	    !ras->ras_request_index)
 		ras_increase_window(inode, ras, ra);
-- 
2.7.4


