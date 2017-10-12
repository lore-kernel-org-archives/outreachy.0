X-GM-THRID: 6473410411176656896
X-Received: by 10.99.186.79 with SMTP id l15mr285122pgu.177.1507782737337;
        Wed, 11 Oct 2017 21:32:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.233.14 with SMTP id j14ls840828pfh.0.gmail; Wed, 11 Oct
 2017 21:32:16 -0700 (PDT)
X-Received: by 10.101.85.143 with SMTP id j15mr313179pgs.65.1507782736806;
        Wed, 11 Oct 2017 21:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782736; cv=none;
        d=google.com; s=arc-20160816;
        b=fx+H86/mi2L06UWVRVu/EoEGsj18XgljGACd4iTBVM0edxFJX1GjnQYUcR/esmm95S
         nBhS7ueq2aFEXbxgMYAx2NteYXk8LL0d29QNJQRuVK+NtLRULaM2RGZXYx6xW5/QiPjV
         Ihxll0NTefxTNPX6sqtahVk2rznuRoJxNJg7vu3pPC2rnz8BlOZF76KtfkW0D3ueprdX
         dr7NYFKCeD/8u5o9yazzy0rHSyoYHaetGP9oWv/WjhglOHcvlGtvkVv7ZldnhOmWLwsG
         eAQ/A19XqCC7l8zX7O3htH7a35Z4zChB4WMVFp/fubXy8J8MDUQpwmr8XOifal2tEjbM
         HB6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=qVPsp+5lsCD4WN6SC11WczwTSHiWHh8zqIGhpHA272M=;
        b=VKgtzYHt9j8iUASboJDULSAEy6rnYPrJUckoJs3Zb/oOnWKp5s2lA4vp0io3En4Gx6
         Yyo/wop+JY9r3EwiXVVGoLtBMa4igd4XnZl7f0sv5Ip1wuv6TwF52SIQITNTr0K5lAbE
         w9kqu2tDQftkxqFD18BYT+AbGMDSk5N2wx1hSqhWTUVkTmhRlyIyGsb8m1eh0jhdHB42
         gbKlui6CLkFJaG1up82UQb1ko8SW2uRN7RWL8HlEd/eQQ3bRVPDAUbfCeTzdwXyPo3LY
         UuJK7HVHXTTMDoKijHDOQ/r5WAxkOd9mKMO4bwCPsG+2w4areT/QUx3PXg0Q7/kDkCX9
         ZwHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rxEov57v;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id e80si1674600pfb.8.2017.10.11.21.32.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rxEov57v;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so4447479pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qVPsp+5lsCD4WN6SC11WczwTSHiWHh8zqIGhpHA272M=;
        b=rxEov57vfK4yTCUdEF39VS3CfISO/b2WcujThydrsU9ssijZkYgG5y1P+TGlmRwuEL
         bC/QCYxu8rAGV5g1iTrKl6uQF3rePjfOW+oAtaUzPoNq5XfoXJp8QCdE3mZduGLB6A2l
         vVagmKZqlVad4IvvW51JTHhkerYBEBOz8J/mGmQqKZQCJaPEXKGLMW+bosyDiMXV9Dtr
         UML5pKKm0ELKzntLM66cmlIcQHL0eaHo6vJ/CTGypfl8Ke9LLav5H43rBKOsZWLwcd69
         QUJr5v6X3dErdXHlMgiygUgCoEuuX9/HznKGG4QMIvIuZeRjcoaX0jfzUXL0e6SW+hV/
         XWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qVPsp+5lsCD4WN6SC11WczwTSHiWHh8zqIGhpHA272M=;
        b=fa5XxdJ/RKF2rEv5q0zE7u3oompL187LhnFfvFj9ceOrDIMI0bzHfPFYAwmp/0oOUq
         vSMZgqqggR+zFi8vazLBPFlcy+AppmZ5IAXGXREVjMAC6Q5ze4wvZoKt3ESCmb4Uqq0q
         o6aWG3LDZZ+9pkILelNt0PoZ67rPaa4Gs02AF/OGduKL3ATSN23CyA4sP8H5V5YLxVdq
         U2OVEBM70zBGaUocw2PsZnFYIGWXzv1J55+tasBZQJVdfmSURG2M6FYKhXedUOUHiwV2
         ffK5x+9paS/tWyaWJFblGIZxJ0KW6kmrkdwVFM4dB6Pvm8W0ndaBVerPlSrZWNEMvalt
         NaFg==
X-Gm-Message-State: AMCzsaUMbIrQpVzw8mW0zEPz0mLU5mRirS6qibiQAWP6SLvewiUZLuct
	w3aYIIMYDBn5LLqoPLOpNowKCk5i
X-Google-Smtp-Source: AOwi7QDw3jI006wBOdVxQOLMcI1AIxG2WC63gdK62KJ9qVqErWTNCKXRx0FFutAKYg9jO9F0IIkOFw==
X-Received: by 10.159.216.151 with SMTP id s23mr1090791plp.176.1507782736545;
        Wed, 11 Oct 2017 21:32:16 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id v126sm26124739pfv.43.2017.10.11.21.32.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:32:16 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 10/10] staging: lustre: lllite: fix multi line comments style
Date: Thu, 12 Oct 2017 10:01:23 +0530
Message-Id: <1507782683-12754-11-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warnings:

WARNING: Block comments should align the * on each line

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c           | 4 ++--
 drivers/staging/lustre/lustre/llite/llite_internal.h | 5 +++--
 drivers/staging/lustre/lustre/llite/rw.c             | 3 ++-
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index eee9bed..bbfc675 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -386,8 +386,8 @@ static int ll_intent_file_open(struct dentry *de, void *lmm, int lmmsize,
 	ll_finish_md_op_data(op_data);
 	if (rc == -ESTALE) {
 		/* reason for keep own exit path - don`t flood log
-		* with messages with -ESTALE errors.
-		*/
+		 * with messages with -ESTALE errors.
+		 */
 		if (!it_disposition(itp, DISP_OPEN_OPEN) ||
 		    it_open_error(DISP_OPEN_OPEN, itp))
 			goto out;
diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drivers/staging/lustre/lustre/llite/llite_internal.h
index fc1d3f5..b553f9a 100644
--- a/drivers/staging/lustre/lustre/llite/llite_internal.h
+++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
@@ -392,7 +392,8 @@ enum stats_track_type {
 #define LL_SBI_XATTR_CACHE    0x80000 /* support for xattr cache */
 #define LL_SBI_NOROOTSQUASH	0x100000 /* do not apply root squash */
 #define LL_SBI_ALWAYS_PING	0x200000 /* always ping even if server
-					  * suppress_pings */
+					  * suppress_pings
+					  */
 
 #define LL_SBI_FLAGS {	\
 	"nolck",	\
@@ -1199,7 +1200,7 @@ typedef enum llioc_iter (*llioc_callback_t)(struct inode *inode,
  * Return value:
  *      A magic pointer will be returned if success;
  *      otherwise, NULL will be returned.
- * */
+ */
 void *ll_iocontrol_register(llioc_callback_t cb, int count, unsigned int *cmd);
 void ll_iocontrol_unregister(void *magic);
 
diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
index b6371c4..4fa9f9b 100644
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


