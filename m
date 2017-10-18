X-GM-THRID: 6473410411176656896
X-Received: by 10.129.90.68 with SMTP id o65mr982128ywb.209.1508328919170;
        Wed, 18 Oct 2017 05:15:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.203.70 with SMTP id n67ls302355ywd.40.gmail; Wed, 18 Oct
 2017 05:15:18 -0700 (PDT)
X-Received: by 10.129.153.140 with SMTP id q134mr1069901ywg.193.1508328918715;
        Wed, 18 Oct 2017 05:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328918; cv=none;
        d=google.com; s=arc-20160816;
        b=HCPsQ7QA5MbClpnjyIIpKxdCB1wSwnjdvj5JQTbDtMkXIwVN4z9bhsEduW8k43wKRw
         yGmUPU83jOQlZd+6pgOLdJPMzsTcKnfmR7GDBgchYpj7o8Ij5sARotmf1FXBFHUa1Rw/
         8YugJwB5Tn44J8uNHRz/z1dpzeQpBfWWCQ9hUwP3Rm7rWsCuEfWDyuvc0wYIi5OZXXQx
         wmJAKZt+xqSA6jO2UKolK2Vb7FGuvOkbYFaY0DFd1VcVissNHkoyVz97tWWAPSR8RYKg
         1mDwSTyvw4qaHxFH4w1NtR+C2w9WexheaYcgNzET/OQwIHB14xbyx2cXFo6hIvZZYxkC
         qQBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=qVPsp+5lsCD4WN6SC11WczwTSHiWHh8zqIGhpHA272M=;
        b=Qebu/6kfJRGUxX4xC/lzzq6ReRNEX1quzDXTe2CyIZ93x/sZhmV3EnRRGfTfg6Z8Or
         YQw636BTGh6iSCszo1Qdq50DahpUThUoZjxlWE4mBXy0ML1cXgXzHgKGYsHoP8x5s7mt
         On7Qzq/ZZcO1+lsdre3Iy+q7bd5O4o5ERz+kWLTfXwYVHKBeeRn5WWUjXebJCu2IDhgz
         zELrDiINN5BcivmrdpiNuRL6VxP2rMEd1KzBZOZT9t4T9izSMeMui2ZW6BrmmHuxxtL/
         Yk5+jiMYDe778I9asAjMzWLdGzVzulD3XEvDBDSciAUWbO/8vjX6+Lmrl8XunwI9YIfY
         3Aiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V2cvGIW4;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g2si583224ywa.2.2017.10.18.05.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:15:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V2cvGIW4;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v78so4131462pgb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qVPsp+5lsCD4WN6SC11WczwTSHiWHh8zqIGhpHA272M=;
        b=V2cvGIW4C7RarE5eWx5VMdxYgySPFf4IMc8EuW1zvxRj8cPdJrJ7H6ZiHagcougrRS
         oPDeV6EfoA31N0UqbZJ1O6bW6IWd3WCHydy73CsHMdKLgTdb8ir23B/Lj3h5pKe939PL
         PzJxXUwu0EiVa75lNJvsy6VQTh7GRxCtYGlOvHD0Dj0Bl24WZTX9x1+r3s7CnmAXjMos
         qijOQzsCYGmUFfE5S+ghxQiahuK012r3+yYYaADMJCJvZHHEifH+obyEaKf1kI51ZpWg
         SdsDDsWd3ui19ew7yYXqz0SVoN/5LyADs1ewhU1ik9m90BSeHQDn5NhJ2SWcwehnoyvz
         aTcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qVPsp+5lsCD4WN6SC11WczwTSHiWHh8zqIGhpHA272M=;
        b=EbZg1AEM7WXqm8pJ3afThdlQdT7JQtTZisJ8BT8ciiK3PuMrXcfq5Ljkl1gg6TND5C
         N82Ax5TPGBE/dyEyNM9nVbpZtXZqBh0Ne/DRjMy4IXP8oJmDAVd0JMSb5vgb41Q3Mlt5
         OuvWok19+x9BGfNieRh9iVtbGo68Q/Qfqmn+znCEogOzWCm8tgLWFtsDy8cG1988isy5
         ntA/CTtAZ5pjgChBfrUa6XqooTF8MNTRjk3YJ4bcFKZLFqfdn9bIHhsvkRMnkG+FjJ5D
         jYzhFMVSB2heN73ORwUYaxMkCEcUqUzNuczBTq/xSuYDaweL8BcwogMWx/wtdPlq5ztb
         ZgKg==
X-Gm-Message-State: AMCzsaVz+kbAIFWR+ml8dF0baKzg1Ttl/2oFKChHQ7Lv12fjJXD4OveV
	/xwYiZ6eDK9in5XAcXi7tUE=
X-Google-Smtp-Source: AOwi7QDD+FQIJ3L3BLTghtXdwR8eyaghMmGVqIT/5hR51EIz2aRvHVsfsKJaE598zRTWUL/4OENwJA==
X-Received: by 10.84.237.9 with SMTP id s9mr14798482plk.417.1508328918327;
        Wed, 18 Oct 2017 05:15:18 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id e6sm21530347pfg.42.2017.10.18.05.15.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:15:17 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 10/10] staging: lustre: lllite: fix multi line comments style
Date: Wed, 18 Oct 2017 17:44:30 +0530
Message-Id: <1508328870-9416-11-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

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


