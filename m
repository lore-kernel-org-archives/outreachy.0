X-GM-THRID: 6669000631583244288
X-Received: by 2002:aca:190c:: with SMTP id l12mr5365095oii.48.1552747711815;
        Sat, 16 Mar 2019 07:48:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:764b:: with SMTP id o11ls1223518otl.4.gmail; Sat, 16 Mar
 2019 07:48:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyiUjdbtenVaMnFcb/s6MDtK4yrINoRuqY6gzqX0AO+VaDQZ3AmOWG9XsecmcDqpBs06Bk4
X-Received: by 2002:a9d:7543:: with SMTP id b3mr4758905otl.12.1552747711018;
        Sat, 16 Mar 2019 07:48:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552747711; cv=none;
        d=google.com; s=arc-20160816;
        b=pv8tjAOAAAaW70RlPLQ2AufUonFVu2j5iC2YL1kgLuhv9LXU99c4lJpAy9DogRQpEN
         9cnybteptOoWDLiyc4f0bbk4+o6bL7qnblKouRRVkiDSSsERf6xaxmSE8fb1RA7KJLYC
         zWkKiHBTng0D5P1bkUTKcNbtrp6icg1Fw/D9irvlyez/pgATc4pr+ljDSe+NMBqWuKWu
         uON9RIAmzFY4Sb338k7YFDy63cGRPbHZtDXypwVXtwNrKsneEqRotODE/SfhXnY3H3Gu
         YdkfCzhWSAs97as4fCU3xClqRtByvXzpfiP8PLtbOaPeHrI/mZkShAYCxewSx4AVgQqu
         KdTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6Va2FtG1qSlw/NpictBLwgnQ3qub+WhAf1lp1LnYky4=;
        b=HJU84qQgkp5pbrdQLWrTzmIbmXVgoXR04HomEiPfCBseI86mLmU9SvKA627w4NI/Mt
         YMlTQzpXTFmPUVP8xBcD/z2zNjrXh6TjBPcdPz//rfH6PKX31s4VBDRvDFlvDQFWTOLl
         MFnc1TGhnvvTuYBYF6AFBlxw/bES02AKqiPtvmaRyehnIk+itSeH/zpPZpP8Ma2IPLWU
         8f9k3zk/mnYbK+qPTGk1VoQBTpNLq4vJYhdPO9U6KauaSPEivVqpy8lZ57eCQQd+TUFC
         4Arf0yD7wWJkaSu33TXCbOVdHublqeeFHbF1s43GgGe8Das7Rpm0tK55BbCIGX4J34mI
         AhyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ih+2vz+y;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l26si242027otf.0.2019.03.16.07.48.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 07:48:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ih+2vz+y;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id l11so8404974pgq.10
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 07:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6Va2FtG1qSlw/NpictBLwgnQ3qub+WhAf1lp1LnYky4=;
        b=Ih+2vz+y1fgmQcaEkmaRsbqxNmdZAM7keHKm7CaU4V01DmZRGTa4YhXKJ3hkFBtUJ+
         RFoBbn+0LMQEG8ped1EucvIa7wXJ/pxx77CV+2GMPE2lNJ2ZYfonsj6z4YG9R2PGt0ae
         t2bXPXY1toha5z0hs4+eD8b/plQwSIl7qH01PuqydxccvGTXQgrU9cv4VEvDLm4D2qTz
         7y72Q4a0Yv6ZuPhWI64yDpHP15xYbK8To7uasP+PWsJh1Tx3on0kq7ffgKGbE+LdxZSn
         Jro+jaWgZMNoEmfFGjnwoO689LBPcjZVH4qqyVpSkZrNaeYW61RrjGEDOEgY66ahAb9a
         NjSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6Va2FtG1qSlw/NpictBLwgnQ3qub+WhAf1lp1LnYky4=;
        b=SuK282SCRVnbjX+FnbjqNE4Whwy59+W8hHI4q6pUWM5pohbvD5pNvL/JMb30mJK0P5
         DGJyFc16i5+K0iv0y4CVulASCa23YGLhxPchVZKgLR6oAkWDze4hitXiv5iNo7X7OkvN
         7U2NCe08DurFLAyhHm9U5AdbTsTR58hEoipBImROnKAQI/jUnM3HlsWF/Bbp9xA22sCH
         e+IeVdkNJ/aHecz5/MjwlGhSEbXg5ncWhu2CeLzQkdfsLfLlfyQb6Tq1lXk6p298I5BK
         uNny+SXccFeU1k5MP5uoBjOw8sLWJf/npheZ+Nso8XdYDugMj29mB8eLFvGEQuImYlZl
         ixxw==
X-Gm-Message-State: APjAAAVFf0rxlrpEGw10Zgylr8JnuXn1XzB9RNKB0V/C19cU4Mk2CvfL
	tKkKoa3CeItpdxVFF+21CoGxC/9iNqQ=
X-Received: by 2002:a63:f310:: with SMTP id l16mr8735216pgh.72.1552747710211;
        Sat, 16 Mar 2019 07:48:30 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id t10sm7997761pfa.151.2019.03.16.07.48.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 07:48:29 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/2] Staging: mt7621-mmc: Fix ret.cooci warnings
Date: Sat, 16 Mar 2019 20:18:11 +0530
Message-Id: <20190316144812.7427-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316144812.7427-1-bhanusreemahesh@gmail.com>
References: <20190316144812.7427-1-bhanusreemahesh@gmail.com>

Return the value directly instead of storing it in local variable err.
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
 drivers/staging/mt7621-mmc/sd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index 4b26ec896a96..5943e95ed1c3 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -763,8 +763,7 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
 	mrq.cmd = &cmd; cmd.mrq = &mrq;
 	cmd.data = NULL;
 
-	err = msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
-	return err;
+	return msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
 }
 
 static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd)
-- 
2.17.1


