X-GM-THRID: 6465937630940889088
X-Received: by 10.99.165.83 with SMTP id r19mr14675647pgu.172.1505468438453;
        Fri, 15 Sep 2017 02:40:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.151 with SMTP id 23ls6652472ios.1.gmail; Fri, 15 Sep
 2017 02:40:37 -0700 (PDT)
X-Received: by 10.101.65.70 with SMTP id x6mr9111228pgp.13.1505468437883;
        Fri, 15 Sep 2017 02:40:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505468437; cv=none;
        d=google.com; s=arc-20160816;
        b=MjZHgAjTA1MzEtIFiSV8WiGlkjS4NtaLByAAK8duIPjuz2PJIID7CG0Fqm7pFzerH0
         Bud/9Q9yJXEMCCYTz68BmLWeF6igtmgOf0C9lQLa7bn2LD45XcSs6qthmu1pC/gW9BtF
         jsQ43eZloeZY8XSpx6Z8QWnwtefP0oVcCXIc6lwaU5xYH+w+bWPrIgSeavFa3U5AeiGQ
         x3MedoJCCBXCmzIDVFNn4i1cd5YAvgq4Hoqu9qUtNbBxcxiBW9KtEieeV5xoE7ACbhFe
         uJWKSzK1ZpzOuG16y2Gxmz3anFmfy0yC52Ts2yza5rAZnGVWEHRzkvVvxjwCUm4RRpH+
         hCMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=84jLPOTx20MszT6LJIp6/O2Zo60MWRAgLglPb4wuPGk=;
        b=LlaCJMucymTDSEWHW0dmiVQlIzWOwtvdh6yRTo9Kn8B/R/OT4eHSqSepfQGXNtLfJW
         mWLg55DIe4IzsPi69UUwD8YBbKKuo6LP5FI3lonlN5JXcQvtxXQtlKJM3zh96/1O2W61
         T/DOlA7q+GonEndBOSlvGRHmN3Lf4W4n5wwCqqbJpCwCCHuA1yJqSK+BXz/iW/m+CLEX
         lrgYnKQcHNiOzvRSkMj14GOUG1vn9BuWgPgFO/BFI2SnMuiafpbZV3YkkUO10g16kNzf
         NCwyKtGGCdJ6Fn3Lnkd9t0ZRWYakQht11IfoOeBuxEQ67MURCER5e9gSZwbNm5lTO4d9
         akKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eoAF4hFp;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id g27si45809pfa.2.2017.09.15.02.40.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 02:40:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eoAF4hFp;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id h4so1001713pfk.0
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 02:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=84jLPOTx20MszT6LJIp6/O2Zo60MWRAgLglPb4wuPGk=;
        b=eoAF4hFpMsN9Rl3ODJyNPYL0TMqmqMViKnFJEIF6HaZRzEZXBjhQfz+pNDf+yrkI27
         8s1I4WJYpb0m3PgX0zOw8dYmW025E/84MamnVekhQKyKnev5S3JtDdybnNNFPZm7kXg4
         mBLVM6vl1qqE3IiHmAvTMLyloZnHxb2mGhBiL73QcqKnfwBxl0Gj0xo9ZDw/4HSsdepP
         E6jAcJlZUgeTLSbvwNe3dmpLrya8oXaGHW9Dp5Ap1eiRyiuhxACKvW0UyharhBFeo3g0
         OUXH/qMGOnSZDgNrPU+eqLq4Mluq9ALnYsjGVSFs58p2eYMx5l/pIoMm9SZO46GyiQwd
         YxMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=84jLPOTx20MszT6LJIp6/O2Zo60MWRAgLglPb4wuPGk=;
        b=T5ntarLGv2wxeH/DBJ65wynu03jzwiMTCR7XYEW7FHxFAjLNiZA2sVuzCxmN6Zfkr5
         nFCAnS4c3j28hGZGPaCYEUaTifZlG6x15fQs2kvXqo5RDnu0WYbKbK3CfzUPSvhdsZXp
         wNV4lUwb/tg23aDcBsHCFuG1QaitqIpK1t3fGZz7K+8fR8Bsm/Rb56k8DffM0GSjqc0K
         700HsVDYI2emlcMFgfu6AHkRdTG9nu4BR2XZfGXLYbE0TvmzSCMfJ7Fh7uS3DPPZLFnT
         0g9YS74IQTjnHxs4FYs4nU4Qi2rqPNR5o0pujnkPaoVXo6TmupY/c08AHcUuhQEOI5En
         gHGQ==
X-Gm-Message-State: AHPjjUiVpUc8WQaNtypIGFl7DrdKvrH3OHl9uDYem6lkCAOOXdQzgr28
	SpvxK12Wv+MVfw==
X-Google-Smtp-Source: ADKCNb5um2vn/v1elcnWJdJYprwTD/9iTGeSj9KxhpT962EhdYsZ0X9sBv6RbMOeL4KSt5+q/phGYQ==
X-Received: by 10.98.202.220 with SMTP id y89mr24004270pfk.57.1505468437562;
        Fri, 15 Sep 2017 02:40:37 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id b66sm1395676pfe.165.2017.09.15.02.40.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 02:40:37 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 4/4] staging: lustre: llite: fix multi line comments style
Date: Fri, 15 Sep 2017 15:10:12 +0530
Message-Id: <2606fcdd79e310d25162444d2be834843b004832.1505468281.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505468281.git.aastha.gupta4104@gmail.com>
References: <cover.1505468281.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505468281.git.aastha.gupta4104@gmail.com>
References: <cover.1505468281.git.aastha.gupta4104@gmail.com>

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


