X-GM-THRID: 6669000631583244288
X-Received: by 2002:aa7:8b58:: with SMTP id i24mr4725814pfd.119.1552820511868;
        Sun, 17 Mar 2019 04:01:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls7189740plb.2.gmail; Sun,
 17 Mar 2019 04:01:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyYFz19z4jbVkr7ku1LXV5xNU+HCGunjt78zukjN8Lf0cAMyiWXkqYSVL6aGMcdWcWggCEV
X-Received: by 2002:a17:902:2aca:: with SMTP id j68mr3786224plb.66.1552820511188;
        Sun, 17 Mar 2019 04:01:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820511; cv=none;
        d=google.com; s=arc-20160816;
        b=aj04YE05iFGGGI/o9LMuKwB1C9rWwYBrhaVetdKwBsnLs3dJhdnqSBewj52b5thp0B
         uYNEYa7zLSMUaJ/9SR3xH2X2YiujrEHnvWjlDCJdz5/JKLk8wAcdOLKUX9OAjcjzudsJ
         BnFvNAEGFxhqHcqb2uHBicYgi78eBgqs0SLOHe2ZMcp1BFOt2lnzvzC9upPB9S5T2ENa
         gVxsyxqnqZ1KyJaHWx5D+xrV8t6xInPiCT0BMAuSIl+Tzjzn5HzByNDBI0LLK/PF43tU
         t5hV3G4y6HHT8BycOxnWP72434wBp9zRdjjzTQk3T5DVeXPwo8h2a2HrG4kPWRiWeHfc
         DGdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=t+LjkRjgpvnFRf6WhaEoxotEONAvKlzvqOG+FmK1HdzHMp8ldnm5ltWvMBd2PkJNo3
         /DXWoHQl0FNBdf/0JvfaKzpiUtIghYVM2Y8J1O2nSXrjSilIrtaGh+hsyTRG3/MrGTu2
         yhJwdR/IujhiwOrSFMYAKReHAYxRKgFKUTdx+yKxj4GjIzFtVAVJ7tH93azcksSHEXJl
         WKMVQL/xs3U3PDZp9cSS+R7teyLZWZVazEzGWgOitp1tpsMo3XI8rM8oEc+apZJi2BQw
         3lydGbeVB+oHlutttEmoUAIEKt+k18uWrXdSUVNWy63kmomi02hWVRfepnIMfzZrSFdf
         RdIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CBCJYN2i;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id a6si381697pfn.3.2019.03.17.04.01.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:01:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CBCJYN2i;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x530.google.com with SMTP id b2so9392243pgl.9
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 04:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=CBCJYN2iOy63lvrChbgSUEsS29luBz6aUwle9jN/eE+fXWFCvaxMInp4sm5eHpLRf9
         nu3qScLHJHObaSdMo3C6tH5Du4RhYpFWNK4firbuFyta+EcxBCrAky+wejrdSWOL+gqG
         YlMO3+NTo28VePwL07f6lQgMl18Fzu0aElB2z63iczClrhbFsrChjLo0+7YyXS/1iWlk
         UVq1IAAOW7DbFRUM3Qhs3q+r2opVwZ5mQLvidRfUnsGgps/3sqzYUxed0v/r5AnKVUwn
         rV2CxuXcEkqxepRtUcW2F20uVUZg5/H2lBUxaGeBnUWoLyUrl38IX/4cQb+Fgp/UZgbD
         vp7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=oxQC/FFaLal3qZ5vhthj6PBHYJULi8Dq6ViWO2rTU8c=;
        b=Crx3gq31bRUFUK6rXcCRRmYQZ6hvwA/43AKRJph1rp60L9wFFNy2bD+kHUb8jQPanS
         yKM7xLYHDFg8ubn30hlWxVmNghQePbRrt5rjLEyiHXMbzaTKst/iDWk+2LNHp61Xewdg
         O8xbc/a/4OjJrU6Nsm9tvG/dZ2Xy/PZWnTtEAcimkzv6X2qRTN9rjphMmao5flAQsZFY
         eMZdV1BigM98Fl1K047subQ/W+lizm9GYM1tkiJkJbkih3K2oJUtz9UTaRHgZ1S/r/2+
         EpkaS33e0jzLRo+82Oi+fAMyv3O1Xzhr9Hpp8KCWBQ4lsPhJalmrEGN2mfXrZL3vlR8M
         Bx9Q==
X-Gm-Message-State: APjAAAUE7WHoAsqgPUQ7b6KJh/OSlwz7OilvqZBO8US+rEP4isPPhRJ7
	ggTuWrOy7KuPpFdjmMUy2nGmzj2i5Wc=
X-Received: by 2002:a62:3047:: with SMTP id w68mr13558888pfw.17.1552820510789;
        Sun, 17 Mar 2019 04:01:50 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id m20sm23347733pfj.142.2019.03.17.04.01.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:01:50 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v6 1/2] Staging: mt7621-mmc: Fix ret.cooci warnings
Date: Sun, 17 Mar 2019 16:31:33 +0530
Message-Id: <20190317110134.5368-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317110134.5368-1-bhanusreemahesh@gmail.com>
References: <20190317110134.5368-1-bhanusreemahesh@gmail.com>

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


