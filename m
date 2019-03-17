X-GM-THRID: 6669000631583244288
X-Received: by 2002:ac8:2733:: with SMTP id g48mr7470968qtg.0.1552820175392;
        Sun, 17 Mar 2019 03:56:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls5535953qvc.1.gmail; Sun, 17 Mar
 2019 03:56:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyzC+ApMrQqCWJYuRoGRUU3yreK0hRQkBAt7AkpVwl1I3Hd/hBtAxHxNGyeK3ZXEm+ngz48
X-Received: by 2002:a0c:9de5:: with SMTP id p37mr6780698qvf.50.1552820174900;
        Sun, 17 Mar 2019 03:56:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820174; cv=none;
        d=google.com; s=arc-20160816;
        b=hGEN0l+YNoyZrur1f3//B+Cej7NK5F/MWKY2beTq/0lMCiRT6Us4IIy2/nquz+NXtz
         fhLIyhLjh/IIWwNCfrLm2LHm5rXtHfpWRvnk+5vs+svhRzeC7paUx+M+H5+JFA8Y4+y+
         oXi8VtrA7JAdn3dFhWOplB13oKY/jLHMRdpzdPlU5xTKeW+uKxMaBMWOOAsoOR0Qwf3B
         i7PSwOyKOxdkPjfMBYyYS2rPfxIUhsY78mLRkwwm3oIPff9P60qflnHyIzvsenMwEOR4
         iYVomkHnFFyu0iHAADD6xr9k/AIJcDCBjTWVTCBjn15LIgwqbDVqfWyTVoBmdqsrt/ft
         7nOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=L62K1V69Pt8WxL0/0U/h2KnNCSMbxZ8W3mU1YHA42lMiB8Kq30YaTitWLf24uKhmoY
         lhczD0nklXUP7j0710V3smOpE4r3YmjV7pXNA1QgOHtSzwrodmK/On8smt4bW6zcCGNX
         Vf/cWWRP2hK8Qitli0wSbbTOups/ieSsdNAMgG703VNZPhBJFZPoLuUAKibQjBQRUp4U
         jiHEPBmRvv3eWb3yNQI444NMcpOawPaGErG9N08O+kXnY4b32DEJz1FzbIC8htJLwSBw
         YX9qK9NOWxQwgq0KJqNBPFWqUQIB5ed1xnbcUHZrEg0xdg0ZZaXn6HrhYXiWlzoaBHLx
         Uzlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JOTEV/V+";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e12si250710qtg.5.2019.03.17.03.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:56:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JOTEV/V+";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id n125so9314656pfn.5
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 03:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=JOTEV/V+PHEKFGMEf3vZpJsT77+NGLaGnXGpHRG8vCS21umkVT0c2nKrKD0un+rrC3
         0SmGL3NIBp+8zZ4Em6SFljhf0n94R9au58kfr0wl9nPIhlmZL2VQPFiY1YeAHTNJxEP8
         SCL4FXAW70uMmPBX2Sou3l4vTf9cfK0eP6jE083tXzOONVGDeBAxOkMd+p1YSnQ44i7U
         UDH/iaMnHg46ljE4eyWFPpxTV5MB1WvtswbFUGwzQ/PmrJAES3ntnE/ljIQbgunInW7/
         9O5askokl36CIMQl98xPmhLynVHlZOBHvE2jFLWJFsHgSRRSCjOBQx3W5S56f8p0ljZ7
         Ncxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=EVcidq1DHCF1wMr0AvNkAGCtNFrBFKmPct+JAElsSrNxH910/ipYZ90919Igo5KHBp
         XOlIckmtWYdRt4d2ozVEMXUZ84QGTGTUT0mAyJ6TIoSxZUwlVMiMgoyjwE3g8+Nw6QOi
         bpNMRZHIxEMZUxq56Aybax5aPhxYvde05CiANV3cvP3gtk+KC55XROgFjmRVZ4pS24J2
         2H7pnj4ntAXeVVE3sdqec7zy3S9B1NNEbC8A7byRVRZtf/X1YXQx9lN24M2ngr/AyXY/
         WVIjQ7G9qCN5TvGcMi+2+JYPqS1hbkJwVc3OtDbuW9mno1NYF3fBkLh5Eowizs/t5Kt2
         vixw==
X-Gm-Message-State: APjAAAV82Fqh1krlogyon+nrBYbgkfqmZvmDLZy7m4iyZAJJUzwLMk7A
	9dZJ4NaRz12/bRdG5sAaBMWwseiNdqY=
X-Received: by 2002:aa7:8390:: with SMTP id u16mr13398514pfm.63.1552820173908;
        Sun, 17 Mar 2019 03:56:13 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id e63sm10278924pfa.116.2019.03.17.03.56.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:56:13 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5 1/2] Staging: mt7621-mmc: Fix ret.cooci warnings
Date: Sun, 17 Mar 2019 16:25:54 +0530
Message-Id: <20190317105555.5162-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317105555.5162-1-bhanusreemahesh@gmail.com>
References: <20190317105555.5162-1-bhanusreemahesh@gmail.com>

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


