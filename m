X-GM-THRID: 6669000631583244288
X-Received: by 2002:a9d:6a08:: with SMTP id g8mr5260779otn.26.1552757063871;
        Sat, 16 Mar 2019 10:24:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3de5:: with SMTP id l92ls1246722otc.0.gmail; Sat, 16 Mar
 2019 10:24:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRvOmMFsRQ29A0MNdPQPrjuXV+6iqVic+881EXfEbk//jK6k1yYXs71mVd0WJuTY+3SFqX
X-Received: by 2002:a9d:6b8c:: with SMTP id b12mr5413557otq.0.1552757063020;
        Sat, 16 Mar 2019 10:24:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552757063; cv=none;
        d=google.com; s=arc-20160816;
        b=eIpUXQBrQq1CRVfyClqj0Rad7doSJf/AyuLVEP0z0rGdvebTQ6jhcSgEcECnt14VEs
         PHqnX2Lr1KpBSYy9AXf6OFz0xVO9zAWMJirzaofPkPVA6YgiyM708pI+mP7kXEvsIILp
         z8bNu6PC9QvKNv411aqIRwbwCE8LgoGT9R+zWegG9APOL/naZL0qOgEMS/iKTT0Qs0Lq
         lPX9I04s6meSNXjKfKhQF9buYZtPVpbbmENdkjvwC+IDxsHKs0G5nrKUGqWNhyLmD9dK
         R0PDuLruHKMA1VQPWcMiJQd0Sc25luUWmAsKd7gegwOcMRAS4FQ+ZMCdqBW26fYvyPw9
         AcFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=YfGWfGsYtg4M0zheIVp7n04YwqMg7nMDpOeDzHOl4W99hSIa7XXm4cYMdPwAAN/6q4
         yH6CJL8U4PuZraTsiHOxZu9GSgu2IEpFcKo6MMZ8Ce1mJjR64kCNQZRmZNQu1d9ITwwu
         ktlSv+GIaetI7rXmtJQeBkn/d2o+tSMXvmkajKOoXFel5FUfcLrlaIolzI65/86Tv7lp
         8GOx+B2ePHvAc6BtOCGs1KkyYKb8+XJd0fonEBXr3vS1TW9i9/toYSoi7RJ03rpA3JtD
         s1cn+lD+gtm55klL2AxJQV5ZP2RtjktpGN9PlCAPG3LRpnuwV/TofYN0tygz+omflN02
         Pnag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=coQx107E;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id p8si190348oig.5.2019.03.16.10.24.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 10:24:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=coQx107E;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id r15so5708148pfn.9
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 10:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=coQx107EY6K9c9wHNOZURM4R8RFrJAjwE6h95NUER2TU36QdxrKMj3HMczozIjjJe4
         +LpW+kdQYfw+8ORINXLPFxB5VAUCLBvMDHw6mvegwandWvKSpt3rggZH6TfgEQiA2gnS
         G6vxSLwJ1mOHn5S4C3vvaOoB7QYuJRDF8RBqVtR66AZHwvLizS4ReqrKlhw/rCaBB8nn
         rkM7eL2Jt6zoUr807SPGzc4LK0oOivwxLpVkQDX5NNUJnPU7BvT6DHK8vPuFpGMlTEaz
         FzyCC5pWeWM3qsZSVc15aLjpYCDQZ806v56dfKYrbo30PT/CWh+D4Lu/PGPxw1foVdWd
         9O0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=VhH6HuHm6ZTQlqDtfdNv9jiqv7hWNdb+2mwWJlplClJ5z5KhVwsspKvZjFvJnlhW5e
         oebNb4IriUjwSeNinA/Y4Hh4t1PF5q7AI+nFW5eiu6PpDy9RNLwxyw3EYMDshEbDwgju
         NtxiH0pS6ZHjXkSLJzkjV8Q3i17PgNupQSQk8N/T/HqwlZITXcXy8u3PwBjlOoXxlzpo
         3dOM0VsZeGW6zHniqYYVdWZMN7202R6HCrrSxCqjoWtGPUXh/LpOrsBjyGX19sLrwyFW
         2+fQLZR5VCGrEXUlVtj6LhelEhU+J3oBpeRwkjvbjUblQWtx/AxKuLP8XTOmrkr+Qi1w
         kBDA==
X-Gm-Message-State: APjAAAXjA6uYyREVRJzC5tW1+whkXeXlN8FvNdLUJ8fqwlUklxTe+bJ3
	OKEGNS0u8HfEvQrnp13a9eI6x7RSwkI=
X-Received: by 2002:a63:d542:: with SMTP id v2mr9481683pgi.52.1552757061956;
        Sat, 16 Mar 2019 10:24:21 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id k27sm14387712pgb.70.2019.03.16.10.24.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 10:24:21 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 1/2] Staging: mt7621-mmc: Fix ret.cooci warnings
Date: Sat, 16 Mar 2019 22:54:03 +0530
Message-Id: <20190316172404.10694-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316172404.10694-1-bhanusreemahesh@gmail.com>
References: <20190316172404.10694-1-bhanusreemahesh@gmail.com>

Return the value directly instead of storing it in local variable err.
Remove the unused local variable err.
The semantic patch that fixes the first part of the problem is as follows

// <smpl>
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;
// </smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index 4b26ec896a96..8857cdb9dafd 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -752,7 +752,6 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
 {
 	struct mmc_command cmd;
 	struct mmc_request mrq;
-	u32 err;
 
 	memset(&cmd, 0, sizeof(struct mmc_command));
 	cmd.opcode = MMC_APP_CMD;
@@ -763,8 +762,7 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
 	mrq.cmd = &cmd; cmd.mrq = &mrq;
 	cmd.data = NULL;
 
-	err = msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
-	return err;
+	return msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
 }
 
 static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd)
-- 
2.17.1


