X-GM-THRID: 6808081754590543872
X-Received: by 2002:aed:3383:: with SMTP id v3mr2036887qtd.177.1585130056145;
        Wed, 25 Mar 2020 02:54:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a603:: with SMTP id p3ls574304qke.6.gmail; Wed, 25 Mar
 2020 02:54:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vssKN4wqG5cJWVR/LH/QdHn54BaZnQbmZpWGIoCK5WxOlLSpc6NBAX6KKRnvLDjMQ7gUMSl
X-Received: by 2002:a37:4dc8:: with SMTP id a191mr2078968qkb.450.1585130055111;
        Wed, 25 Mar 2020 02:54:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585130055; cv=none;
        d=google.com; s=arc-20160816;
        b=CwXh5ihTE2Il5z/FdCXvT9Dq/tOcqkFuqW6XW3lHUgv3JA6Ws8A0m/vmW3Iooe3oqd
         ogu1oLRVSN6pwTuh+OOQDee8ByM3F5X4ERDD5RGeW61Zjp1E7EaV1Qq5CbZgw/R/b+Co
         TTnK1ImRqS1mH06sh4qNn9tC5S8A/167N53QAQED3LBat4tKkd/f2kH0WZiUgslp3Q4Y
         C9AGuoX5ts2Ui2r1A1/2Wmff3UAMfEd8qdbgy2SpOQ2+F+w5LWApl5Qfu+sLCDnjpa4e
         PDFQQc9EJ390fpPRm9P3y3imkn6hCikRio0F0jCBSEOLAavqxhzhjSWxM46jFx4GaSHr
         68TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=/NYrQ5Nb270diTDzFJ+L0kNuyBm+yeaEX8X8C+1Apag=;
        b=dVN2419C9fNn8EyH0CbSTT3ittAaVWH3bNC4/kjwAj1BuGu/+r44IephoLaK4EnZwU
         oHqvdVlsZxL0vTPub/dCPwCkZtqEsaFsC0Jk+ZKCGqgzR0inQ4aTxnMjR6KG2CxkjjGX
         00STPyyc7pOPE6bFKz2gC4pIh/EWR5CkucycazObnxBwsNSWesdu5k3/IhwKingAAwo7
         bRpMl5rvWZlUqmqCIAO0pKPu/vnA+1Ie6C6z0KWvDRUMqqpnGS5Zlm28JLqaPvLH5do3
         JCSKl0jMYc0lHebNCL/ALL39brajHRax7kuuXCBC8eps5cTY2GO7qrwFTwWrfVQ9mVVV
         6cXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aj8sinew;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id t24si1451484qtt.1.2020.03.25.02.54.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 02:54:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aj8sinew;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id h11so601341plr.11
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 02:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/NYrQ5Nb270diTDzFJ+L0kNuyBm+yeaEX8X8C+1Apag=;
        b=aj8sinew6nIdVUkJwgQGDJhQiVwGka6OnfHJ53+z5eW8gMpeRibO9PV0Vwpuqoi780
         RM9vJC1zwcBwvZ99XYh5ohg1vMUBNfu1JVMiDr+jpaHtGir7c2G+YTv6zOCVyDAJV89K
         6PlmMW6C8QDBYO3UvMd5BcD6KkcsTQaE0yyyB6u8fVOv12exxzm+SGkMSuW4tdFRmuPm
         +9D7+XyG5kyWvItfDlEPX5uk47IEA4jvrLOIU8QPSm0iAZzpSoionHk6vePFrZ05e/He
         hCAI41GrhOBJ73VzgQzefwGqTAKiRgvlUDcfwvnr+beer4mk5uN+ncme0Ra0ShJO9owg
         LurA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/NYrQ5Nb270diTDzFJ+L0kNuyBm+yeaEX8X8C+1Apag=;
        b=ThfVXWBYZm5i6oNd8xae5eOWC+3WBiPbNK+hJ0MsEu1QX54HESRZ5H/gS25xcrwa4E
         KIBGOl3lkkBIsBXYU8HSD2twz6+ptpCTyamGVQMDfeD7qRZkI3KZFnrlvCAIwFw8MZ59
         e4NccLO24ZTy8PMbwKgTRzV+Uu/rQ51+5GWTsXzDO9LdOdRr3T7PraoBwwAtPg8GP9S5
         rExvnqpVkpR/QMoBYQ0v1pZGKYfVUI1muzjNRpcSHu2D3M22rFBBcY4smKHRkERJduSK
         aSZ4rA36z50wbm+HgF0BbgaZJRWAotv2uEQhiIr1kpv0iAALOYM+dtZScK9KKA2lTQpN
         znGw==
X-Gm-Message-State: ANhLgQ1xOluUjhCg7nDHSZulFV6LaD7eMVvh6xctgPp/S8xkD6C/r6VK
	bnGgBwsuHwVvdCPVSU7XIBpr+fzmbDg=
X-Received: by 2002:a17:90a:a385:: with SMTP id x5mr2855334pjp.102.1585130053661;
        Wed, 25 Mar 2020 02:54:13 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id k4sm18907553pfh.0.2020.03.25.02.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 02:54:12 -0700 (PDT)
Date: Wed, 25 Mar 2020 15:24:07 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, jeremy@azazel.net,
	driverdevel <devel@driverdev.osuosl.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] staging: kpc2000: Removing a blank line
Message-ID: <20200325095407.GA3788@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patch fixes the checkpatch warning by removing a blank
line.
CHECK: Please don't use multiple blank lines

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
Changes in v2:
  - Make the subject and commit message correct by mentioning that
    this patch specifically removes a blank line.

 drivers/staging/kpc2000/kpc2000/pcie.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index cb815c30faa4..f1fc91b4c704 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -6,7 +6,6 @@
 #include "../kpc.h"
 #include "dma_common_defs.h"
 
-
 /*      System Register Map (BAR 1, Start Addr 0)
  *
  *  BAR Size:
-- 
2.17.1


