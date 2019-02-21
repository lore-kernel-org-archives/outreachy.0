X-GM-THRID: 6660411535314124800
X-Received: by 2002:a24:55c7:: with SMTP id e190mr8797620itb.30.1550747904977;
        Thu, 21 Feb 2019 03:18:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls749290jaf.3.gmail; Thu, 21 Feb
 2019 03:18:24 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ia1qx9eni199YxLVt379tpg50U2CwzuXHQT7aO2Pjo4xJtMO1HphSJv+7ny8uCSDweT7Cov
X-Received: by 2002:a02:4357:: with SMTP id s84mr12790316jab.16.1550747904166;
        Thu, 21 Feb 2019 03:18:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550747904; cv=none;
        d=google.com; s=arc-20160816;
        b=fZO5lQCD+AJR391nJB1WAX8YaVCF/OlgY4viYjFg8fWk7hRaAXYSv7PmcLbk1Yk5aG
         4tmYGx+WvHpe6fRKoCdDRY4UXKumnsdQcW0uC+3xCsblgwNIW8rD+Zr9MTyc4ZPmQLo3
         GoJQACGjr4nIfrvdO9bnjf05tTEsPAJjHDioG6eep9BRWjM0KzRffG9GTyyOxkHpgn26
         wiFSrC2w28DQQ2APwP0t3/p/rWEkrAqckBiWFYpajiddTkTDf8OmRA7fjNl5RqUYPmoV
         GykXWX3+c678BMlkU1legRWYB0jJcCa1fbyZhBI6wic6c6k6k0zpQY3TrKGR7Pz20j27
         kdng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FdX0t8Z000WOethONr2jep0Cgj2H4Gnhp4OtbdCHRXM=;
        b=tbGJV7YB+yf6W3u61viDpcE+52d+PbA4IgkOv/f1fDTfuZf3H+7MyVnSIT0V/NHPjO
         qSy1zybfgg7YT7EgGdyaGhXdW7Jsz4+HEGsHU0LlXJ6jKlp39Gy0YHk6yvrqWCSK75tE
         dPT8d1mSFRX6LK+FGkYyktJYeyvGH7SCi3YC0mJTgDXVsIKviEeBA6rfnlIQyc2nq+Yo
         k0WWoNueNMpNXhJevljdqDk7/67gm/jOJuAfWDbNYwdBrALJ8TpMkAJdCOu1naTv6teg
         1suIyfRVQCIDbWIemcu46zUbijYe2voMujEtGEYt4apfTLpvDtulaCxYTM30GK8GzWD5
         Mdkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eb3UvMHf;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id v63si1099273iof.0.2019.02.21.03.18.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:18:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eb3UvMHf;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id d25so5252052pfn.8
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 03:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FdX0t8Z000WOethONr2jep0Cgj2H4Gnhp4OtbdCHRXM=;
        b=eb3UvMHfhkQ8HSwwkbbCIY8QTVNT78b4Xk2MrHBdhlkdXTf+ClIHpSDVXnkBlBZG1P
         NUm++BRcMNraffR2NiEBV+FdbIVxsn9L2Jfqt8agKK0KEp5k+2kw2SFLIwLZQopq6R4d
         FKMmGzpIzzoCBU4o0/Eox5SzzBV8W2DeG09d57EG5rTn2/Ez0Vc/cfWADSHfPhE3DwkM
         bQWRpNtRaUAcXsv9WpOQ3eF3SzuqGIBCc1Hyxzv+rY9iEqDeHpxEDx462awASR4snZCc
         iE8FdX3qMMNiLH2P74mFrf/uzDOcHhYKF0Lman0iNEZHbYiQt//6duW4/mb72G2iKWzn
         I9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FdX0t8Z000WOethONr2jep0Cgj2H4Gnhp4OtbdCHRXM=;
        b=hiQ+zEtqz95t+iX2FNomtbuFpQLnTxIYtWAx6ROiJuyUkrBiXxMwIiEfbGwY8QE5wb
         aLCmJcJW+HT5U1rtcyU7uCko8Rzpd8+KJwNl1UnDfG0MYWj/mrSyRqISpL+HVzmOE7/g
         uRQCnYzIa7xBX25z9zjrsfBdFG0UXjigjzfLQ/UgS+FaaxMGZZfnahasgjtdwgbTg5Pt
         0ir39BShmqrYI6NELlEZSypjHROrB/EdrG9ONW/CAJd+l2vd0crhFHd2TrFFnvmvG9cd
         EeeH+DitZF7yXZcha/imT2U87VgLzmda/2v8x5IK0EfqBWz+p6y3Sv+zZRW4geUlpB5w
         g5fg==
X-Gm-Message-State: AHQUAuaCZQguGDIMHkbefiKPw7n/sp1ptrM51AosLLvgj5rw62U1VJW2
	dDaTNIi7Om8Vk6Qnfau5ylU=
X-Received: by 2002:a63:c310:: with SMTP id c16mr14853971pgd.233.1550747903819;
        Thu, 21 Feb 2019 03:18:23 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id h63sm19184335pfd.148.2019.02.21.03.18.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 03:18:23 -0800 (PST)
Date: Thu, 21 Feb 2019 16:48:20 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/4] Staging: netlogic: Add SPDX License Identifier
Message-ID: <20190221111820.GA29081@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
Issue found with checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 4e6611e4c59b..fb8146cf3c1f 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
-- 
2.17.1


