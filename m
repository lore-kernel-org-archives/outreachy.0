X-GM-THRID: 6529093465723109376
X-Received: by 10.157.0.153 with SMTP id w25mr4279235oti.54.1520173057431;
        Sun, 04 Mar 2018 06:17:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.145 with SMTP id h17ls6758709otc.11.gmail; Sun, 04 Mar
 2018 06:17:36 -0800 (PST)
X-Google-Smtp-Source: AG47ELsaQGpn+IXYS10z5gi/c/+YvH3YFpPif2mRuI0O93ZgUAp5GV8CZ+FMDu9RIJPrv8sYGJMN
X-Received: by 10.157.0.153 with SMTP id w25mr4279229oti.54.1520173056867;
        Sun, 04 Mar 2018 06:17:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520173056; cv=none;
        d=google.com; s=arc-20160816;
        b=KVnnLijcZLiB80xLD0PkXlN9WwDRuZmzSlbd639FKIdHzO6LRYil1N3B3Jb8lkTRJj
         chZsHv5KKM5wJSPUWSYpvPYOBLld1NLW033hddFzhURraLKn97Rg7wRiEQMCbeQ0RR3X
         ovqIdQsSPOhD2Kg5hJM9g8RXFdQIqp5nlEDaFBZ3TdbIbWJYpY3KtUUhgAEY/dz6rm/D
         QnFfBC0uU/6KYuDgEIhg5mrXJ6SB1l39Pfm9WFB/BIFnhvM33/9NzFY7O32OECUrwldd
         M/y63bEHEmMPxAnYqm+2wcRhwrwZxsbik+El/zjF/XcZqU9RAlYl9YKYr8nPFEkCqBFf
         v4rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=ornDACZ33wAhlldqu5M7FBfKKFfjJiwnbb52o/1tE08=;
        b=KcKQRV/vqrer0shohvmdTi/7V18NuyLSIkJpiySUzSnu5b8t4a5EQQzTcV397BhLSi
         PgXxclRahOmvtNZjWyundOhhvtGI8Z46IlUvxd2A7BGc1Gq6wqzAq19xb8sQIw7LvknD
         86HhfCDudDdDIQmrd+dOs08Nfj2uowLblAtNJAnYit1y9FQnUvhIA+wEyZyYlJm+LlKD
         85m+qLTVZW9ugAkVT6KlIGs0hOSHLhkGxzaAy7kujQJkOnp4UrSdlDk2GlTkN4tITWwN
         +oJclkFN2+u/ij7CfJSFhGBLQFobcAvaOcTCb9EKCaMmhUBG25Bs4sBcTla1RWBfKu3K
         QaZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sPWoNwfm;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id l10si725778oth.1.2018.03.04.06.17.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 06:17:36 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sPWoNwfm;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id i6-v6so8241000plt.7
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 06:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ornDACZ33wAhlldqu5M7FBfKKFfjJiwnbb52o/1tE08=;
        b=sPWoNwfmtH0i2PQq5xWzky5WRRUS3NUoOVFB1uCCbcf/Wn4m4pgRQdtHC+bbah3b6J
         rfoyQwlngyqWEhxOAnx0V9uDTOGndu0RnRSq1124kxYJ2FebA+0M1tJ3xQocYNUE9ljr
         U0Pj9Fd2mIIA1a1c89IR5ovz+T6cMG6+GrMVUipUzY1va7fnpfFF/HuzIp08QMfEyx6A
         9Vof6nAhT2X5qA95ulX0mgAeX3J2gG+krQcrpXIX1s/ysvCh3ABiqjc/m2LqbYiwHvCL
         2IIoFyu6O+QjQwnge98UsAHPX6RhCoWzRJpyarIzEzkeQ5e0QfgMHrPZqL8T5LT0LH3x
         9RyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ornDACZ33wAhlldqu5M7FBfKKFfjJiwnbb52o/1tE08=;
        b=f6pUhQgKyKzUVqHvMQAdt64PvrVnx49rBxvXVYAgSbOelbGPO78NYDg3/Gmc34h0cb
         l+lEBmQm2GbV2Iuq5kVmNU1zpiALsHe/mGsyaYw+eVt2pAqg6Ui53i6Oe+ox/NuP82TX
         h9YS37tCD4O2BjOF/WyjfSRtw0C2eCKLvhzbjNjuDiOqXWq0Q4QVlJD4yX+OnZHrnVHg
         IMQhDDWN1QIBFYBrmheA4XFFcULlgwQKMLT880b5dGN31KaZGjL2gYITnLJciGQ/DqaL
         8juNP09pXs0yFeFVWS9aHFrpTvSkIs0NzH9xUztTsg8lfr/qdrwuAz7swX4M/1I42z/1
         3P/w==
X-Gm-Message-State: APf1xPDjfpXEUUZgNgJHIKv0+xGPiM8+jKDJc0p2USiB1vzH6Nxz4WIs
	Ef4bawp+vyt85qtCDLPF2Wk=
X-Received: by 2002:a17:902:42e:: with SMTP id 43-v6mr10636173ple.186.1520173056186;
        Sun, 04 Mar 2018 06:17:36 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m3sm16041826pgd.3.2018.03.04.06.17.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 06:17:34 -0800 (PST)
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
Subject: [PATCH 3/3] staging: lustre:  Replace "dont" with "don't"
Date: Sun,  4 Mar 2018 19:46:08 +0530
Message-Id: <1520172968-17448-4-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520172968-17448-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520172968-17448-1-git-send-email-arushisinghal19971997@gmail.com>

Replace "dont" with "don't".
"Dont" is not same as "Do not" or "Don't".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/lustre/lustre/fld/fld_cache.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/fld/fld_cache.c b/drivers/staging/lustre/lustre/fld/fld_cache.c
index ecf8b9e..2d61ca4 100644
--- a/drivers/staging/lustre/lustre/fld/fld_cache.c
+++ b/drivers/staging/lustre/lustre/fld/fld_cache.c
@@ -263,7 +263,7 @@ static void fld_cache_punch_hole(struct fld_cache *cache,
 	fldt = kzalloc(sizeof(*fldt), GFP_ATOMIC);
 	if (!fldt) {
 		kfree(f_new);
-		/* overlap is not allowed, so dont mess up list. */
+		/* overlap is not allowed, so don't mess up list. */
 		return;
 	}
 	/*  break f_curr RANGE into three RANGES:
-- 
2.7.4


