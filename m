X-GM-THRID: 6473410411176656896
X-Received: by 10.101.65.70 with SMTP id x6mr2419667pgp.13.1507208337691;
        Thu, 05 Oct 2017 05:58:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.242.17 with SMTP id m17ls5820147pfh.11.gmail; Thu, 05 Oct
 2017 05:58:57 -0700 (PDT)
X-Received: by 10.98.159.149 with SMTP id v21mr649364pfk.57.1507208337049;
        Thu, 05 Oct 2017 05:58:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208337; cv=none;
        d=google.com; s=arc-20160816;
        b=xH99Fr+v4cQg4TYnvNAKb6/nR6zSyuVy/RNg85oCj2wUuzSRkQiOeWQPabn5yGfFQC
         jHwmKOwOYdVwz6X4DKZgzjJYCiJJE8JHg/i7T8FKJFrNWbb5UoJlpM5/+VaSBM+0PmUh
         7o+nENPDvA8AIao/FY5UgvI0ORFZ0AoJTLTTq8acvDFyL3AWdy6b+UFTNg6W32vWQe1i
         IW+dO+mgQ1rApTTEdOOEVEyOCoSl7dQluNGQmiLxRGISUrUQE+bC0asdQOf500yiu+D7
         4hkKIj09XYLq7Bc97uDXAm8CR2zSKEx5Jf+eFEMAatvbBFrreE+C5mQaF0YSctIRSR3m
         WKLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=I06Je2N19tBrELZoNI+U/6ZnSG6V/Tz2NpeLKN1aUtqbiG96/SGV9WVFOIG+JHwbI8
         UHA7qwl/5me4P8iHKTAcoEG88yH+qKFy6tZhe8KXDX9DWhkGAm338pHMt27j2IF072Cp
         6Kfthnp/UTMbgA59HyTBEOSB6WvuXrFrgWowjTDDU2R0vEpT4bKhsScc2iEFOFRtn+JS
         E8yz8sdiE9ByO2VFq/gzRRbZicFDKJWof65Pj66Hc5hgRLdMcowbtmuKze5bvRcC2o0v
         xeZJmjJ0vkMG96gHHAcDIEiD6i8L14bQA2HcUaiBmZGZZOlt1EHNjYuVFK5lV8bWJJ35
         z7nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C8n/7NNd;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id p73si1767101pfk.27.2017.10.05.05.58.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:58:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C8n/7NNd;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i195so7287033pgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=C8n/7NNdimcBxoZ09U7d/wKnc8owNXD1FONeQIkMM+S4/Gj648/Ib+x9MaxJfTSZVZ
         bU7BUuWKH5RI1JTWphnEF/Yf9ZFXdsOajICNzBO/nkLmLpf5ZOCsslvXh/lul81SrytM
         FEEywMF+JTVQnjzefG1xO6qnQaCSuVvWX1/tY8oBQH/qDCOh/av6wtO8Ceztbe6Teckp
         ewtTaXuyiYdyD1HU/p+Wi38VuwDFUT3l2MfHVzxXeA1y4gDiD/mh33dsw/sYOHkjhpw4
         +Zy2dSnOB/Bko1pJAdEgsG6roEKUMMDGSZbYA0nUr0wVZzZeyEQzb37KZsAleqpp8aiB
         MTgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Y6MDgGkgbDbqxhTL7MvUjlkf4BXePZYhUKcxFPJhpus=;
        b=ayhWLd8K3hpuQ+o8DKi0VVvf3M5Ndoxn4Sij0nK0yzrQtmeAWLi9K41qRpB5ggLf9q
         gMHpPpGkhwHS2CMT/XQK/spG1HFCI+OdOTFW4KFhRCKdPQaqrwoOl8zkRTL4M1psLAMT
         pwJnspdfucvtqRhZDQWYK0iMBitnKnG8/rG9S29hpTGJdf18FUiovBe7hi21L3oLcEXN
         ZQdLhoVe9hmvx40dHbfv5EyiNUbo6QXLJLtbKMOaTZyNHk/TagUZRahcx3jCtsdndZTr
         0NdnM0brrRTIua1quC7Q4PR6lR8Ag+G21XsDRuZZnqa7LF+1eWRionXMHswMksO3fMxu
         2ZIQ==
X-Gm-Message-State: AMCzsaW/NjD+Zyvxkj/+qIdoD1jWnYRQe3U1/rklRVoYrUQgTYfEvJcZ
	xfG3BN5iR2eK1iQPL0WtwJGN/mHL
X-Google-Smtp-Source: AOwi7QCvtdRPBmC/LrHvLioSbpqqL8PB8YeXb90Z/MBgs6x/YypeekaGgeRb1qpDEJucXPGpxC0D6A==
X-Received: by 10.99.55.82 with SMTP id g18mr13031411pgn.31.1507208336747;
        Thu, 05 Oct 2017 05:58:56 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id c16sm30572654pfj.123.2017.10.05.05.58.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:58:55 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 06/11] staging: lustre: fid: fix line over 80 characters
Date: Thu,  5 Oct 2017 18:28:18 +0530
Message-Id: <1507208303-17615-7-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/fid/fid_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
index ba73623..6a98225 100644
--- a/drivers/staging/lustre/lustre/fid/fid_request.c
+++ b/drivers/staging/lustre/lustre/fid/fid_request.c
@@ -279,7 +279,8 @@ int seq_client_alloc_fid(const struct lu_env *env,
 	*fid = seq->lcs_fid;
 	mutex_unlock(&seq->lcs_mutex);
 
-	CDEBUG(D_INFO, "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
+	CDEBUG(D_INFO,
+	       "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
 	return rc;
 }
 EXPORT_SYMBOL(seq_client_alloc_fid);
-- 
2.7.4


