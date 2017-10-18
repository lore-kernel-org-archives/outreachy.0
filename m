X-GM-THRID: 6473410411176656896
X-Received: by 10.55.25.100 with SMTP id k97mr12584249qkh.21.1508328915268;
        Wed, 18 Oct 2017 05:15:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.28.9 with SMTP id a9ls1860842qtk.1.gmail; Wed, 18 Oct 2017
 05:15:14 -0700 (PDT)
X-Received: by 10.55.31.166 with SMTP id n38mr13244898qkh.57.1508328914784;
        Wed, 18 Oct 2017 05:15:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328914; cv=none;
        d=google.com; s=arc-20160816;
        b=Ig55/m+67g1LL/KylAtKiop2QaKpKyYHunBtgHHo9tyG/UUy46SArdAD11PmOlabjt
         8/Otwg1yee3sDwR4U9k/2//uXMtZJUlAuGsyFI1QJi55aQk1rc9ldaixxEW6NuaU2uzJ
         YB04M2iOuwRDQRAIbCFYSdx/9J3ICbrFxaYExjk5jJIPLZnqWas5DD5DkE/nr26DckiX
         szX0kOTsmdToWbFPHpmMq8ZBsDZOuRXAv5iccsIUtM31hnETMyvyIl70LB46iS2uxDul
         ea/6+VZwUSFAaYNt2rCxIPsPehn9j2IZHux3gAZb7AtOkVTq4fRpoISnYb1NrPmYlAvv
         Ehvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=dt+mYIjBqPxp03m6tJqs/O2aepzQAvG0B5IzjVyVVt8=;
        b=o//itpPVyt3SeTPGGxWKqN0ki3bxZr4K5JA6dWlHiybgMLPCEwJ9r4cAhUqW5Yl4eu
         tx9/6Pu1dE0W8XwJV+uUF9gGHjaNQUyyCE8eEN4kYqQXcc8HcpRA+gsMw95m9MjYzPpd
         RFepvxB7ZjOfPsJ4q+Nf9Rt/0x5D//GHu2iACHqAumzsNu03Kx5p0SMOZ4Qm7otCvJoO
         79/krEJt3DH1m5sy8Dv3w5BoxtrD6UXEcUiZo3yX5EErbDzYITZbGSurWp4dRz8wbygV
         X+k886dTM/xprTnfPEDeP14YSLbr2cd8gejBVJ31yhwNIcpW6+vmr8pWsrVf8+PmG7Vo
         ZRUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IxyFYaxm;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 5si773153qki.1.2017.10.18.05.15.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:15:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IxyFYaxm;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id s75so4135876pgs.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dt+mYIjBqPxp03m6tJqs/O2aepzQAvG0B5IzjVyVVt8=;
        b=IxyFYaxm+U8+By/EirbY4wriDDjIOuIyQx9QF82GGAqsmRRDCRsF5zMmEs7kvcmqjh
         9seSoh2ahh1sSud4gfDDEMQ66Qw1/Jw5W54QmuhSB0nuN/pLRC+V07114x5FhJRoX8/t
         SZFAj3g3tlIrZMU3EOD9kIfWLa11UqgCWOn0VX8LpjipWYp2pTnQobASwnozvyIlaOb3
         nnGxFQ8tvVpOJuK6bKtC/IVZ43RJp51eM9+V4DYs99lCtdgPsgJYq2S1rswLsr0d0447
         FvoU4JQ23G1bisk76e/hWzrhFZBY6BL64JwqSKQVTRqQeXuMK2yNIAVBHFxTfOXo1Ohq
         D7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=dt+mYIjBqPxp03m6tJqs/O2aepzQAvG0B5IzjVyVVt8=;
        b=hc6wdDlKd6Z6c9eF/h4CamJoquDIOLYLRx9Xzm1FY+4AhmzsNIYtmZmnG9Nfh1veWi
         om7D+oR+FTjNBIs6lPNR5b29CnCd0wXZAa48l7zL+ZMBrzqknlAKw88hWnwSlNjPlIlk
         mHS1Mp2qcwqZKWnZQd8o/ancS98oeGjyolmuZGUKaZTQLSAmviAfVBWkZ14K6oweCTh+
         tGKvu8xkrLn/PNo+bsIOu4PncIHTwc8R4Widd31YGPgNCxlKnEHp7lJE5voklS46O6qO
         K0VI6AZcxqixcgCupZDZVdcB4amV5W1AoiOuWCsiRlL0897WuNVSrakYEJoMcqcPpB9z
         kz+Q==
X-Gm-Message-State: AMCzsaUHopExoQSQLjHtVOAqW9O2T6Sh5kC0che0dVm5NNROimtblDSe
	pv5lamnkNUKPKYmnypUVFbg=
X-Google-Smtp-Source: ABhQp+StCwP/+i6feIt8Qo+K/HfbQvlEBtXaSOZ9I/RU5qCK3ooUD4F+Vdeu+/0dlOKe2jH4nqllwA==
X-Received: by 10.159.218.72 with SMTP id x8mr4141473plv.288.1508328913954;
        Wed, 18 Oct 2017 05:15:13 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id b1sm19255405pgc.67.2017.10.18.05.15.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:15:13 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 09/10] staging: lustre: llite: fix coding style for error messages
Date: Wed, 18 Oct 2017 17:44:29 +0530
Message-Id: <1508328870-9416-10-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

The "DFID" part should be added to the same line as the rest of
the message, to match current coding style.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index 58d832d..ec9b1ba 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -734,10 +734,10 @@ static int ll_ioc_copy_start(struct super_block *sb, struct hsm_copy *copy)
 		rc = ll_data_version(inode, &data_version, LL_DV_RD_FLUSH);
 		iput(inode);
 		if (rc != 0) {
-			CDEBUG(D_HSM, "Could not read file data version of "
-				      DFID " (rc = %d). Archive request (%#llx) could not be done.\n",
-				      PFID(&copy->hc_hai.hai_fid), rc,
-				      copy->hc_hai.hai_cookie);
+			CDEBUG(D_HSM,
+			       "Could not read file data version of " DFID " (rc = %d). Archive request (%#llx) could not be done.\n",
+			       PFID(&copy->hc_hai.hai_fid), rc,
+			       copy->hc_hai.hai_cookie);
 			hpk.hpk_flags |= HP_FLAG_RETRY;
 			/* hpk_errval must be >= 0 */
 			hpk.hpk_errval = -rc;
@@ -835,8 +835,7 @@ static int ll_ioc_copy_end(struct super_block *sb, struct hsm_copy *copy)
 		 */
 		if ((copy->hc_hai.hai_action == HSMA_ARCHIVE) &&
 		    (copy->hc_data_version != data_version)) {
-			CDEBUG(D_HSM, "File data version mismatched. File content was changed during archiving. "
-			       DFID ", start:%#llx current:%#llx\n",
+			CDEBUG(D_HSM, "File data version mismatched. File content was changed during archiving. " DFID ", start:%#llx current:%#llx\n",
 			       PFID(&copy->hc_hai.hai_fid),
 			       copy->hc_data_version, data_version);
 			/* File was changed, send error to cdt. Do not ask for
-- 
2.7.4


