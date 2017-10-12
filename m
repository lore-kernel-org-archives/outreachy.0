X-GM-THRID: 6473410411176656896
X-Received: by 10.101.69.1 with SMTP id n1mr319092pgq.94.1507782722083;
        Wed, 11 Oct 2017 21:32:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.74.196 with SMTP id c4ls769755pgu.28.gmail; Wed, 11 Oct
 2017 21:32:01 -0700 (PDT)
X-Received: by 10.98.138.29 with SMTP id y29mr294298pfd.39.1507782721465;
        Wed, 11 Oct 2017 21:32:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782721; cv=none;
        d=google.com; s=arc-20160816;
        b=uO7TR1eqTjQR5xPo4iJzYBWa9gGykUCATad2lKP/mxqwC9OKp8H1c89ydEd3Dv6DuU
         AZoLB/iUtV3YwtrLMHsPXkEvR3V5D+vGLisKi0Cb1kOBr1dXJ+gzH8Yd5WhaLsJRg9H8
         aRK4CAv8zz42cILIENCo2y/uvrqE0ZYfjukoeelW6NisjRxhuVYEmjttLmbwkpGeQxi+
         Hy0USN715r+BHA2QzcDs+eU6GcmLH2CxSXT1N4qCKCeEgik0Xv1aDQb0rZ7bCcG7KLJJ
         /3wBj0CJYrTTgP372Gl48fZD1elC1qvReAD4b+w+xqeAVx2PUOu2BMvt76+W2mymG/Os
         +nvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=RvWsGWhuo7ztu+vKc3cAYXuFm/B0WlVK7OvoUjdQ/ayf7+wKU5SYPitE255HWVW7Dm
         7Ptopwm60RY/bx20smG1WuNdDH8ITqqGxgQpLent6p0b2cSSO2RqLi2xtDMpr9LFAzTB
         V9/uldHSa1bIhCEJ/5CZ+0ScuGyDIa5l+tSAMmZiedfkteSLfoqQJAWRXE2YpVaN45Vz
         BANO3fmIpuA9wshwh8FoNqgODaw/JfjqV56oiLli/jQBndus2KsI94JQn3wpl8arJCcX
         7AzUepUwxO7t8EwJnZSyTLz5warQ2eRHNKkfma+ZcqAn9EgCh1wW2DPjpFh2pVPz9zgy
         /0nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o/J02YCT;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 82si1614695pfz.6.2017.10.11.21.32.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:32:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o/J02YCT;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id m28so4462331pfi.0
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=o/J02YCTz/u7oohVAEBlQ65IlaoUj8a7w6TUbW0thEWEVCYSMUQwS3bgThbcWuWdRX
         jCxpFkH6SM25RGpionlVAyNgPzH8XsboMzzzekaqmnd7jIeM8vr63nrAFSJEQAU6BL6S
         kMPeVNUK4BqL1fxC9NVA8kI3j6ClJ8oDFD0T5jyl4lefymrBtBFTtvJx7NGibDoe/UCj
         WS6SXLf7nUHxC5Sfl4w4Wk1NodMygjDXbFuY6mUbRMNy3hJx4aHOb9QYEaczDRGswTBi
         XknLm8Y4gtIHYpwwokNryMr9TUg0/edq8mq4WJyLyBU9dMp3U95vcZJytx0hY3znsHJb
         neiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=sDeqY6sGfUcpE9pRZU60zTexx/VHLrD76i2VqL4yb3B7YdQ3dt0VM4nRVQfdiEC8hU
         nLBY3IbXPHXmPS89XW37tgS0C3L0BWxkBE/L81VYb0mM74SaWq3VFeub0bkGg3q6hX2P
         ZlqE895LhhzwWBCLVcF0/CpDdfgqMMAaqOEq5P92PL/D9W7te5TIA64AaOehwyQAdqiW
         zFQ60YFGZNEUSWbPTFov0hqmZZwhloRp71TlwhUquHG3Z4/TX+110INXlJd/CihReAyD
         PCn6WsrZOEruUsXVAci3AgCty2XJAajv9m7BMZr5acXjbKroXbc+EmdJ4kHe0TofCHdC
         7tgQ==
X-Gm-Message-State: AMCzsaUoYj1CxxvySG6FLIRBXn0RjpfUXCMF8pYzf8QSIKDUoO9T5t/r
	vwzt4f6Q36S1EGg8mEIOpv0=
X-Google-Smtp-Source: AOwi7QAvWVakvaU/VQK5DV0sKOZnsenpu3O4I2g2zedldNok/Wkv+mJhNYHHUQlTvnBG0TPV3ngzWA==
X-Received: by 10.84.128.103 with SMTP id 94mr1063907pla.96.1507782720988;
        Wed, 11 Oct 2017 21:32:00 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id q13sm22183951pgt.87.2017.10.11.21.32.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:32:00 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 06/10] staging: lustre: fld: fix line over 80 characters
Date: Thu, 12 Oct 2017 10:01:19 +0530
Message-Id: <1507782683-12754-7-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/fld/fld_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/fld/fld_request.c b/drivers/staging/lustre/lustre/fld/fld_request.c
index 5b18083..081e137 100644
--- a/drivers/staging/lustre/lustre/fld/fld_request.c
+++ b/drivers/staging/lustre/lustre/fld/fld_request.c
@@ -425,7 +425,8 @@ int fld_client_lookup(struct lu_client_fld *fld, u64 seq, u32 *mds,
 	target = fld_client_get_target(fld, seq);
 	LASSERT(target);
 
-	CDEBUG(D_INFO, "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
+	CDEBUG(D_INFO,
+	       "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
 	       fld->lcf_name, seq, fld_target_name(target), target->ft_idx);
 
 	res.lsr_start = seq;
-- 
2.7.4


