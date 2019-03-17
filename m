X-GM-THRID: 6669000631583244288
X-Received: by 2002:a17:902:20ec:: with SMTP id v41mr4066915plg.103.1552820513998;
        Sun, 17 Mar 2019 04:01:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:322:: with SMTP id 31ls7188437pld.1.gmail; Sun, 17
 Mar 2019 04:01:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzJwt9/RXWmiDpupg+ubufellIi8/d3XIwpNhiLcoidh/tbdTSAUnrQvP8Qz6TzcSYoNwD
X-Received: by 2002:a17:902:b201:: with SMTP id t1mr4077773plr.126.1552820513471;
        Sun, 17 Mar 2019 04:01:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820513; cv=none;
        d=google.com; s=arc-20160816;
        b=s1u7zwJpRCo94IKGz/2Rdy7Xa4WKGcmPHnf2yZuUWldESAP8y9VYftFSTwc31WkFgM
         9OosydotTCwUEM7/YNeIWNWrW/pSve9J3r83WnZACLdb5x78cHS7fx7XC7P4HdF8quVW
         FARM9V8NrQUHOD9rTt981smayB/AjHOGo02Ysb5wwKZg2kpHrYLq7jJmdy1cBcUX7iHC
         VxT9YNYI8dyCPebJ+IKJNA6uC6dMKrRGAZ+EH3NjkHbohMdPEWT5qi0Y97TrI2mfo/b8
         Pw1KxfWhxCjKzNhJ71TQTQJ5BhfgVgJqo+iDh3FiYekNvBPfpxuUSUHW38EPgQ37XKH+
         cxGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=9rY20vucNGtvVtzyBfC7nhiC9MSPk6WhE5FuzJzDfKQ=;
        b=m3ZlIuUZt69f0AuGRwj+j3wlWKSazwIZXpEU4zrgV7sAzpCD54R2ZE8hfDwlmDBE/P
         d93RU0Njt0DJeIcJ5qBkMPDyaklPMW7NAOcY2vnJP5X7hAqYUKxPUl7PUj/zvFSAI2lK
         dXb28t3fBLLFJXJaXR9AKddnm8BdPWysQ/Lx0KaMMalNHIZt3xOQkuH/2xLe4Oun5tg9
         kXdsIUE44xuXM2dJunJ+82IMQpQKLe64qf0EpF54WJELXHWiur8xtHu8JXR43p0GDzd9
         2QVm6vtsWKhKdTbLBPw++duMMMC1UPoUCW2tWUC+Rx0GebbWJOZj9rgz2XYXgxcS1SpM
         mEeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d5Lu+Uz5;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a6si381725pfn.3.2019.03.17.04.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d5Lu+Uz5;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id k11so9403765pgb.8
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 04:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9rY20vucNGtvVtzyBfC7nhiC9MSPk6WhE5FuzJzDfKQ=;
        b=d5Lu+Uz5yok8YHZwlDJ6L30mpUSmJMMxuW39YBimPgcOlBsmuOSujoDn19o9wgFMvw
         J4VxLLDkMHotdxOhKGsffE5EHA4ebGdSa5t0h8JbzVN7paDvQfhvWYbMdmGgKae04wxI
         jplFTQmpmq676mlpBvh8wT+IG/iNKkNESLvKd/Y6LenR+488MZEmn6FVTlZ7iNvy+nWr
         nqcjsTKzmc8e1roZ+Va16JWeNk6ZkcjmY774CxFIcwWSPv+Ofyg02U0V6aN8Vk3aM5On
         eUyl/eA1nPMOx6JvkMjz5usQFJXZo/WupkZqZGV9ZcgKrIrgZ5yCRMfirt4Uj+kRwvTu
         WY9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9rY20vucNGtvVtzyBfC7nhiC9MSPk6WhE5FuzJzDfKQ=;
        b=YXpwk/hIvFuRJVjfDozPGDnZPfyUhBnqwHnep+fguLeAbCv41a636C4J27DmH90frQ
         e99yQlLFzbgE2kg7I3PANIpciBjTHEXwezL5tA5fwf2Q/8/c8MZkVczfNJV/N3dlZ/g/
         Fs2nDRCqogVi38lshc9ItZ4I1mQdYCHVD+xdHUSF8xtEqEvpcFDLc7TXRA2a6RoNsC73
         SWOZfsfRvEJaRtFlkc7RDaf/aAM0Wj3iME0jY7EqpnDgCcYrNbGfEgXW36FN8jiIP5kh
         8kogayYdHelrs0ygj0WB/39Po1ie34QwSBdhuH4sfjlobgXDN1Q5vJl4Z+famE9ERUmG
         0jPA==
X-Gm-Message-State: APjAAAWGCEeniI+DVXs3tw07YWxkpiUpN5rq9oiJKvRWuzTJHkep4eG9
	NH4Fu5PRuzMQZqSmuZH5a5g4tDyD55E=
X-Received: by 2002:aa7:8719:: with SMTP id b25mr539668pfo.90.1552820513068;
        Sun, 17 Mar 2019 04:01:53 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id m20sm23347733pfj.142.2019.03.17.04.01.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:01:52 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v6 2/2] Staging: mt7621-mmc: Modify the return type of the function msdc_do_command
Date: Sun, 17 Mar 2019 16:31:34 +0530
Message-Id: <20190317110134.5368-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317110134.5368-1-bhanusreemahesh@gmail.com>
References: <20190317110134.5368-1-bhanusreemahesh@gmail.com>

Modify the return type of the function msdc_do_command to static int
as the member error of the structure struct mmc_command is of type int.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index 8857cdb9dafd..049b312131a9 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -168,10 +168,10 @@ static u32 hclks[] = {50000000}; /* +/- by chhung */
 #define PHYSADDR(a)             ((a) & 0x1fffffff)
 #endif
 /* end of +++ */
-static unsigned int msdc_do_command(struct msdc_host   *host,
-				    struct mmc_command *cmd,
-				    int                 tune,
-				    unsigned long       timeout);
+static int msdc_do_command(struct msdc_host   *host,
+		           struct mmc_command *cmd,
+			   int                 tune,
+		           unsigned long       timeout);
 
 static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd);
 
@@ -535,10 +535,10 @@ static unsigned int msdc_command_resp(struct msdc_host   *host,
 	return cmd->error;
 }
 
-static unsigned int msdc_do_command(struct msdc_host   *host,
-				    struct mmc_command *cmd,
-				    int                 tune,
-				    unsigned long       timeout)
+static int msdc_do_command(struct msdc_host   *host,
+			   struct mmc_command *cmd,
+			   int                 tune,
+		           unsigned long       timeout)
 {
 	if (msdc_command_start(host, cmd, timeout))
 		goto end;
-- 
2.17.1


