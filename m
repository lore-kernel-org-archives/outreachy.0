X-GM-THRID: 6473410411176656896
X-Received: by 10.99.119.68 with SMTP id s65mr778449pgc.89.1507208357655;
        Thu, 05 Oct 2017 05:59:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.49.84 with SMTP id x81ls1169001pgx.23.gmail; Thu, 05 Oct
 2017 05:59:17 -0700 (PDT)
X-Received: by 10.84.131.65 with SMTP id 59mr623914pld.32.1507208357018;
        Thu, 05 Oct 2017 05:59:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208357; cv=none;
        d=google.com; s=arc-20160816;
        b=W3nURoCrDt08R5nVOP80OPZQokQ4ZkzOL65MZv/TfSSFfu15fxvQPlv9+tcd5tL13n
         EESL7UzdAUL0KXUjbwW+wUDsPLXTX3JDn0nQ7SGhQwWI65Kj2iwGH01lieYHtjeOrDIC
         WfwU1W6a0LM+LeJWcYWXMIt3TmE2OScwEAutfU48X7Op2HCwwFcIxegnXuXIoqdlmLNz
         WH+ni1124Ffm588Y2yZWpKCxKBhid8UGfDkTwQpM1XSIISeFhj2O6MLMuQ0vhjmBKitP
         AD+GkB3ZBd8g6gVcTuSupbJQSoO51vKcIr7aEyFrNRnbHpBQDeIVnrJlzEVSC0kskI8b
         WLOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=84jLPOTx20MszT6LJIp6/O2Zo60MWRAgLglPb4wuPGk=;
        b=pIxTBLDTsqw3F4qUcqvGa6kHmj2a5XLA/xk7U9aZgFy8JzFhGIiWBkzVoEAZimXv4A
         15h/9/GI0Zx2us+Q84/pr2MRKqnYrrgx5orCagF7DUojYoQeMOfL9XR8gOT9IqVYTFZ6
         SO1ZfU7Hbl9Tl3Wm7XkgcXqk5vQLAktjgV18svgpDhL/4GfFLqT/c+lUjgA2ChpxXnNK
         7w5lk/02yiQ2Us2lO4lWgNzrKTZ399dubP/wZNtxLNgZhn7hsoOPBKQIjmXe8jP8zU55
         vJQ85VACX3K0zvkMagO0Jk4cApQzz1ra2lsG39K1Ay2pvy5ZfVzxQqiWqabRMLoxK8rK
         qqvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n79YRKPx;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id p73si1767101pfk.27.2017.10.05.05.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:59:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n79YRKPx;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i195so7287033pgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=84jLPOTx20MszT6LJIp6/O2Zo60MWRAgLglPb4wuPGk=;
        b=n79YRKPxvSBy06m9ZYApd+Kq0YSH6ZQ4lNW2c+xWKAQsPlhnm20xjAcU+WGyn6uElh
         tUZTblAfSGop/XZgoYluyU2vIEFI/angcTSdUX9Ln4lP2Fz4M3YXxCaECQqHdk9QgS8u
         uVOaJ0hf2dmYUM0JKxpiOuGKVlbelmMwoE3t6/GqHnrWnQvV3T33NfXkOl8tgM6CkES1
         HssZ/2PvkqARw8vZzK1XRMaN4XE0PizHiY27wl+pdhsMyX6IZHmtzwKRYkH4YWACjE91
         m1WrPiMb7pMFC/mpa2nhovJyYFTZgTij8GZ+JkUD+OPoUWDsHW4Y6QuN/qy+ne3GtEQG
         cMJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=84jLPOTx20MszT6LJIp6/O2Zo60MWRAgLglPb4wuPGk=;
        b=jLFblGEVdPcZE35Qd0O9WlYemNR8LSJph1zqH0vPIBZIt75Ez2mJ0jQmy/BgVvYIrj
         iwn8gHPPZakFhFjs4a1dYnW2WLYHjkdDz3lu+E4JEPn4RSBjb6jlPkc+/9UBa5vekOXL
         ArIzcBlfQGx3Tr3mGwhH9hkP+eN/4bFZLfBmVBW5c8S6C8htMkCTfpXu7SMLt0u4chXL
         9z2ndBJFvktW+opnoOjH/rBSZpn6qv0g6m9352aTeN29q3OFn3CROCra5oiQDiIURgMu
         Ermy6oPySF3ZN9GV//vUD1DP6t9Q3IKP/mUY5Ol1CfmL/U6nZafSlzbx3tLHU83WZmkr
         aqQQ==
X-Gm-Message-State: AMCzsaXV0dYcSMVOzX1/FKvlJ/JAcpkzy5ShyaGnB6yrmVKCBUpC3/ak
	u6sbSBocOGcwMmOQF4y8EoM=
X-Google-Smtp-Source: AOwi7QCxrrmkb0x3KtvtwCUWoEKJkW2YFSY7QNqq12Fr0tNBCLgpHLxZpOrTUBlbHK/Xewll7WdOqA==
X-Received: by 10.99.164.18 with SMTP id c18mr8374790pgf.167.1507208356735;
        Thu, 05 Oct 2017 05:59:16 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id t87sm8650572pfi.180.2017.10.05.05.59.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:59:16 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 11/11] staging: lustre: llite: fix multi line comments style
Date: Thu,  5 Oct 2017 18:28:23 +0530
Message-Id: <1507208303-17615-12-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

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


