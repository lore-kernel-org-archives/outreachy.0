X-GM-THRID: 6669000631583244288
X-Received: by 2002:a24:2287:: with SMTP id o129mr5360322ito.22.1552749631700;
        Sat, 16 Mar 2019 08:20:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7a07:: with SMTP id h7ls4717789iom.5.gmail; Sat, 16 Mar
 2019 08:20:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwRUQF5y+Bm6PAEIX0Fy5p09ZOmZoIDxpjXWV3FZJXqXifNkhoBe5p9m3ya0QNBl/piwniU
X-Received: by 2002:a5d:8141:: with SMTP id f1mr5920241ioo.9.1552749630928;
        Sat, 16 Mar 2019 08:20:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552749630; cv=none;
        d=google.com; s=arc-20160816;
        b=KC/Z4NE4VRUB8bW6b2vbvMJVwzIeYWVp3ZN6BV4heDgl7D66Zuva3EqrHh2enaFiC/
         JwoLkj1SKwNL0DavO+7qGw9C4Xih8eYLIj3gzYz2PsxvJY8fO11HkE4vxxxxB2w/Or0h
         oGDFh+4isQY+JEN6U1F5LEj8+nTLwZanxNL2RsUgWJKxr5GNXaW4pQHUyaoxg+H7B77u
         ZhoaIwPEo9H35bG/2uTE8L0C7lqzgW8Lt/p5OpY5gYOM7d5O9HineQbIPIE4WkgNWkRU
         Gf3cGnInvqh6eVxNrLlbTrnlZYXW3Zyv2GTImftLg3roYk8ZKIZw9Vyc5YqKVli+PRzx
         /N+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=01y2GDvtDCAc0PCPOQRdJsFLCFtHksSOyRJtKDCmC9Y=;
        b=O03ajQJZeLvs/Bv4jgVSijCosMdOZ1woPeKFRlHI3bJlRTehvWvLkTPVH4/FIErlEk
         nH+yQKcG/OLjnUu9Guwn2tB97wWlJSGSTdK4hsPL3xP/URZ855B88DCd7MjNUZqc4/uq
         0llb8RzzEtjtJivbnVqyAH/rzcoX/EHlHnCQ27Vo8vIgzonrSGxyb0Kp/wjR1jHJuIXs
         9cx4DEoO/MWSCi6fZ7PrT0fwWjlQEUfBcNwW5qKNJ8Lrs83bgAukFLIRXABbo1vtXQ3Q
         AQZEotpdrEvDfEETaE2SwNd624ek74NHi5jdRJyjzNraqNtzmR2l706phPSt9f5o6OED
         udAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZ9sl+Mi;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j2si292548iop.0.2019.03.16.08.20.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:20:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZ9sl+Mi;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id p10so1535225pff.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 08:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=01y2GDvtDCAc0PCPOQRdJsFLCFtHksSOyRJtKDCmC9Y=;
        b=gZ9sl+MiaCkcGSkCYT3EW4+YSOBB06SjPNUA8dll1t0aOoFUX02B/0ARcmFDzIQRus
         sMsHsMBrocXcJUptuVuAEAHA1ha8BGE9kbRg+ERO+lWJTjH1Sl7/UpnIQx/Uh96Dp34/
         EC08Bj/TsAsc5eeUvoaegcbiQBLR4SU05TiwuknvRbj3qADeFVCORWtYOcH4D7upgvsh
         jHzTm7hAyiN6X1k4wtmGTW4vmj0M6NKy7PYayoq9GclxgxgsONbCLLnvyS194tSkd4i5
         WhSIgJyWHOC8D1UtMVa6SHKnJ2JCsTzvQrVVklFucCFcdRanJOgYykPoocH/8NZPiO5c
         MjQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=01y2GDvtDCAc0PCPOQRdJsFLCFtHksSOyRJtKDCmC9Y=;
        b=qyoloEa0XI8KlKb+xxMfYAo9O5K8UcFAW9Lfkgz2ysY+bayZkTzTkBP3eJHAnJYJD9
         7321nHHaMDTQy35j6BzfKdFuvVEqO9TckR3EtQxWozyu1Zqilb5sGFxVwDnSQhscjdti
         0w6MggCXuA6vDU1RW2oyu8+L3RBOrbNV+NC4nif6p9tuuMG53lAGw+uM7jUDw/So921G
         OoVOH+ZjGSSZ4cDD1NoK4OyKmaOqUmjKpAnpo3FSw7FfcYxswJipJcVfUePSM0VDR6G1
         6gjByfwxSEBPQmgOxjKeOwt/xTK3Q70/1Kb9ULom4/3Fv2/aeJI1ydQppN9oz4/myyzX
         OUog==
X-Gm-Message-State: APjAAAX1wH2YjgHdwh57hNGbDqj36f/eHus1vGkTIQ1SFBY7NzK5UJOH
	rL+iMuNeY+ebmZrR/Cs0eb+BR9RWfqs=
X-Received: by 2002:aa7:8c13:: with SMTP id c19mr9897589pfd.247.1552749630240;
        Sat, 16 Mar 2019 08:20:30 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id q7sm7848780pfa.119.2019.03.16.08.20.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:20:29 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2] Staging: mt7621-mmc: Fix ret.cooci warnings
Date: Sat, 16 Mar 2019 20:50:15 +0530
Message-Id: <20190316152015.7879-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Return the value directly instead of storing it in local variable err.
Remove the unused local variable err.
The semantic patch that fixes this problem is as follows

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
v2:
 -dropped patch series and did all the changes in same patch as the
first patch introduced the problem.
-Commit log modified.

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


