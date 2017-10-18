X-GM-THRID: 6473410411176656896
X-Received: by 10.200.6.196 with SMTP id j4mr1996500qth.60.1508352624253;
        Wed, 18 Oct 2017 11:50:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.16.22 with SMTP id z22ls2294312qti.3.gmail; Wed, 18 Oct
 2017 11:50:23 -0700 (PDT)
X-Received: by 10.55.159.5 with SMTP id i5mr14515326qke.47.1508352623784;
        Wed, 18 Oct 2017 11:50:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352623; cv=none;
        d=google.com; s=arc-20160816;
        b=ARq63cSKL4AqVLe2rUbmyfLtipyHr6WclpB6hxJ8lsddIwvbL7lzu8sjpVz4/W8I4p
         OOBvYs2nV2j0OcVNiVvqSjKQmYJOiD1vUtPU60SdHRjGDJm6qSKQZkwZpi/UQTF42pL/
         1gehMlMcfidsqBGeeJbuZlVM6o5V+6OULTrcB8lgJFyri5X8pSRS7iaYm3T389s8Jm/N
         8LfK2FIyB0TMAsJkiEEkcVYMIk/AoXjpB0ka28Fs1UasP/8jJtt+FBnLCY4pZHaFTXhw
         b+3kEaM1SsX/VCtRjA+tsN3W6PncCM+L04vS9t5W6gj/n61/UoRszcNURsn1ZGyeQOUc
         Tbsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=qVPsp+5lsCD4WN6SC11WczwTSHiWHh8zqIGhpHA272M=;
        b=Xg+1mr/RIYj0j4vVaek2sv3WmPHiTl0a2n4Sg3wXq/fepVPX5WpAdsrpk9mzCsoumz
         XGhzfQjAkxzoaN5in96fH1SAzTMQSblKf1ymNKaas5hhBRVW9wMTThe2yJb12f9k+1Ql
         z3TOj5fpZaO/mHxtyV7SHWQBbZ0bPXOBDWCG6sUZV4A2ukp52Dv3SgU91MMwe/8wsmIH
         vj7iH7stngrqB+RfQUYUCFz9qdowwdV5hKMj7fLj8v2F70JwgPun9CcFLaROOZAr/6c0
         AFO0zX7bAa4hrA6aLmbAZUtgWdh1ZdNryQOUcrm6kjesRKNiAEr7B+Fepir2Y8vuDOin
         9nUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fE90I07x;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id w140si631249qkb.4.2017.10.18.11.50.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:50:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fE90I07x;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id d28so4618960pfe.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qVPsp+5lsCD4WN6SC11WczwTSHiWHh8zqIGhpHA272M=;
        b=fE90I07xONRLql2kgDVu09zgyC2yQXISMC796tA9jiA98gtr45pruENFPkwplo23SI
         LCisgR14/MPm2Qrn2/UKxtK3YpsvJfhY0kOx02FMQRt1kOSDji6+34P3mxFUrxAR50Ab
         TqKfwu3CEPC7JGD7C9gQW9mu3NPJZ1LpsXSCFTAC7b64+5kGhE2biW8vOxQpo9y2XgHx
         PapP6famznQg2qfYsV1sPHxx5t0PKvrsqjEZ7kQNm/lLyVrKPWT+vmNi+98PNm5PBm81
         w/f8zgLq7PVoFUaYNYCfL74MyNcn9D9q7dDKL3ajArCIxLT+fL65v/NZC07Uie5YnDpv
         AaYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qVPsp+5lsCD4WN6SC11WczwTSHiWHh8zqIGhpHA272M=;
        b=jz32ajTqVumyUZXEl2bIyoeg+FKESJln5joXqiqXt8a83B3TP/mYR+arMRTAFd3lI2
         jDUvE/tk/+m2Z758t/9SLX5ocRetHGbW+K+6Qslo7SMujEVO6DDqnq6REpYZeHfpsprv
         xMp8xOXBiNyPSkPbVcgmKsMBumRejjTsjICZzayvKF5WWEAQTkGQgzuCVPvDjcaWtLoI
         V+4TLjdfv1Wv4pce7t5EY8iUjn/Wgb30j5MLUp1mM+G4lEAzH9PeXvrB+/Ia+qHQsbi9
         8oDji2ONBjeoGWBcFqZnSgZQbbaXos9c/ba5SnUWstnI92sfHclFnXxzPWb7k+5qBGmu
         NtXA==
X-Gm-Message-State: AMCzsaVWP+yvob6+YFWTXoZeNGSOc7Oef2S2Gh7MVEQ07JTawAdksnjr
	mivdi2pvmgoheizaaVMCC5Q=
X-Google-Smtp-Source: AOwi7QAlKVYW2F3rDI41DE0LmscXSPc//cEJMRfiFPK+6coTk8I+4ZxQZO0y+MJ/+WUBZY0RIQINkg==
X-Received: by 10.98.34.22 with SMTP id i22mr15576751pfi.340.1508352622931;
        Wed, 18 Oct 2017 11:50:22 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id r78sm27414672pfb.29.2017.10.18.11.50.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:50:21 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v4 7/7] staging: lustre: lllite: fix multi line comments style
Date: Thu, 19 Oct 2017 00:19:46 +0530
Message-Id: <1508352586-25475-8-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508352586-25475-1-git-send-email-aastha.gupta4104@gmail.com>

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


