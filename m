X-GM-THRID: 6751691743619448832
X-Received: by 2002:a17:906:a459:: with SMTP id cb25mr2741484ejb.63.1572000734113;
        Fri, 25 Oct 2019 03:52:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4ccb:: with SMTP id q11ls2018774ejt.4.gmail; Fri, 25
 Oct 2019 03:52:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzG7OlM3JrZv+g+roxT6g9/RN4CcLp+YWsl+ZrBK5hJMUOoVNexvEQmw3A+4xndREaKJ3uG
X-Received: by 2002:a17:906:19d9:: with SMTP id h25mr2853149ejd.60.1572000733154;
        Fri, 25 Oct 2019 03:52:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572000733; cv=none;
        d=google.com; s=arc-20160816;
        b=gARDw+D+NmLTbRBH/FdPr/pubV2ZImAbMYB3j+OzGOtVWg8Vszz0JA6ndSiVlA8nf0
         xdjHHKatH5Ef0ts8WSWAF/AeRgM5ucGWQ/7WXma8/z87Ru+8gN5I9F0gvEX3I0qlpVxh
         y6M34cOGPSWd3keIkGAJca+bmkAT+JVYfnGl+4rZgUppCzzP7/Yq8NVlvQ6XBqy/YdCO
         M4fVwUSqM07k3f5MeI9KUAtPjdkIZqKGsyEqlUYvZaNpdTHYupxW0nqUdJmt5YBE8XpD
         uE4owE+yNdlorWKZ4XnEsCZo0jrrWIQ3rAhEgqrR/xtRt82VthPTPAaH5UhRDY44+nnC
         iVtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=enOoxHkriPj3TyhVYKsz1M8SXdoiI9IYWYvI5xXR5WY=;
        b=XEDGuIIr8exC8f2sDjZFYqU4R6u0Diu0R9bB01IoFdPzi1cM+9rEBn2VHUlswKdGA8
         RuFOl4llmz5yXpb+v1EZxmSZ41iithnE3vBZunrn5Jh8QXh/c9hYvPmcKP/SaECPgA/o
         4EKcmD3NuVsIJzuQs0hoYD1yV+NwlW1AMxca1GGhPAPVKCNlHByyMlJuStRVEtJB1T7m
         eisTqGIw5WW3eU9hkjGy+z7Vq+ZgYk9J/MuIwJm1bw1C6hRMFzuxCEuS2lCVSmOMRMeT
         9AwdjubLsUnhJccfLDsPl8vCOkwJJ4eHwDYHa9X+nDZUGu/hrTo5rDmbCqouITgPIkUH
         EnjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KyO7r+Hw;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a15si77043ejj.0.2019.10.25.03.52.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 03:52:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KyO7r+Hw;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id e11so1802934wrv.4
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 03:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=enOoxHkriPj3TyhVYKsz1M8SXdoiI9IYWYvI5xXR5WY=;
        b=KyO7r+Hw1zaXHpXq7/sTkz1Tgtb54aiBTjF2tzBcBWaF21rq1PC3K6uliR+O5cO5yT
         5i58IeUdjhmSZJAjgdsJxe1ouMYh1yCgcMSksdp5ETlJty+8QqkRKUJJqy7kzieXaCW4
         viFr/U3y2jMJi42UM7BRjb3dLJIVtUax8k2cNeaYUYKdJnED0LY3zF3tk3czUtz4vWZh
         oZViXE4cdzrLqZvxA/L8B659pk7UiId4Jf39qGuA+kFjlvT99vN4TU10zfucp2GWFFzq
         Zkvuyzxa6CR3Fu8biwNjDQFN1LZw+y9MxV+O4AYty2LJh9IKj0dIXs6KQRbSuBZP05yU
         AZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=enOoxHkriPj3TyhVYKsz1M8SXdoiI9IYWYvI5xXR5WY=;
        b=YVj50we0svoYGPb6eHmaFSqBCITW22bQZBKldOL/Yp6XqUf2G0LtEM15JQp6djIC32
         Nd4ANDI5/tPxiF+605hMSZ6XxOPsGoKTsxMLCC5Uv1A0hGsCd6lFqkj82vO2YP4Iws4A
         snI3f5E+MQr1t4V2tJs8DRVf6+/ThjR0X7GEV05wbvEyKoIFraQT0BcEcwn6eDTBl9mm
         Wd/5orUTrksR7L8L1gePV4wd0d5G5mCvqq6DqXCAP1tSE8PjwEvY9t0bCpTyOu2ThqKt
         4EPJtznWEDXXjvaqaE0I+MIf1/K1ODzNKXQRHOVLavPArziCgT/KXuhgQB/4B7Bp3CWH
         th6g==
X-Gm-Message-State: APjAAAXQ7q/ynFJ0fBcGoB9IalKDrED0K6OzayDFHpRFY6VFfVXIegg7
	+Ql3JLehn4qWZQ97hx09GnkTmXMxFZA=
X-Received: by 2002:adf:d84c:: with SMTP id k12mr2528765wrl.235.1572000732940;
        Fri, 25 Oct 2019 03:52:12 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:8d21:e4df:588a:d177])
        by smtp.gmail.com with ESMTPSA id n3sm2173732wrr.50.2019.10.25.03.52.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 25 Oct 2019 03:52:12 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:52:10 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: clocking-wizard: Remove extra asteriks at beginning
 of multi-line comment
Message-ID: <20191025105210.GA20197@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove extra asteriks in the beginning of multi-line comment for structure
"clk_wzrd". Should be "/*" not "/**", consistent with the kernel coding
style

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index e52a64be93f3..566075f2972c 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -37,7 +37,7 @@ enum clk_wzrd_int_clks {
 	wzrd_clk_int_max
 };
 
-/**
+/*
  * struct clk_wzrd:
  * @clk_data:		Clock data
  * @nb:			Notifier block
-- 
2.17.1


