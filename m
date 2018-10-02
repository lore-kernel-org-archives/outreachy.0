X-GM-THRID: 6607744026526351360
X-Received: by 2002:a1f:b3c3:: with SMTP id c186-v6mr14147604vkf.7.1538485294079;
        Tue, 02 Oct 2018 06:01:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:663:: with SMTP id f90-v6ls3244945uaf.5.gmail; Tue, 02
 Oct 2018 06:01:33 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61w8QBHAvhtg6v+w/WvqVRgzZMdmYpzK0kc5DB1zBiRxyVVityXQgGzxXNdkIs+Oypm4+7S
X-Received: by 2002:ab0:2490:: with SMTP id i16mr7921919uan.14.1538485293589;
        Tue, 02 Oct 2018 06:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538485293; cv=none;
        d=google.com; s=arc-20160816;
        b=PfG1DC9vEWzaQXHdByH3GeKDlGBXRk8T7uSlh3w57iLD4SqVAT5vu+wwg77Mi0F90Y
         gkdDsMLyQgr1zA5+++dbGK4vcHLw7CWHaFPRnesuRVi892F1LmPv0L4zMyeq1eM0gI7Q
         YLYOLXykFfJQQJYe3wF1QeKeHqOKlHnWKi79JOqnNrNM3HYHx6Izc54p69bU0Xq2H+y0
         qbLsdE6DRXJElfgqaLGLEf3jwEVdbzRrConXf2ukJevzEfgPRJsBZzvA1DP4xSdBU8zr
         vTWTuWsvHHrvTtNBjh93GzdG6l0iCK6YxAm2D24ebfZ1mpO9bPyMgC3n4kBLb0nD60Zk
         4M6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=k1/9QGOjKeq45xq8afnhsClvf6TbvB10wcxIUr65QQw=;
        b=LXAWDvazPqQ9Gbki16csaX+5PUNM/FRh9vQL10iq8BUGk9PiMYUIR4jhrhEAxkeRqM
         srHabUbNKzsZMaqny/m6NtyqRaxDhHfJmtFfOdEh1cjV7sVCR8fskjsiqpenzjflTqa0
         6YpqyUtBYADX7ST5I6dasca9IceRacffN5VxUKc00npzhBJmy044W1ndvHMbksC25ofp
         XQ7YSiWmKJOG1CfjQi6cCfGutaHSoogVbzU+X2XkU6tQvBOknjUWo5SRN3FvIUuv1iRt
         D2G4mS10WZbdLmHguJtZQavNlnDDriBpcfr+U5Vxj8bOtqirR7+gNHH6DR4Dw9VSmPCB
         gLvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uMd9xwgu;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id a71si427847vsb.1.2018.10.02.06.01.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 06:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uMd9xwgu;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x632.google.com with SMTP id p5-v6so1395865plk.3
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Oct 2018 06:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=k1/9QGOjKeq45xq8afnhsClvf6TbvB10wcxIUr65QQw=;
        b=uMd9xwguR20DiRq87Ybhjau4WfQt3a+a8SPfl2bWDBq8UUKs6xCfhPBjJAc5RX1BMY
         8WrY3YXL4NubS+0fKDSh2PwXP7c8/idDqnGCyZq4Q0mX8BVX79GXmp01YpjHmrIVxprj
         tw6GE01sQPP8qJ/zq0hdqwN20d4cwqB2o8EnH38L7yPYQ7tWabXZ4d1h+JZeuhRgET/v
         gLYh4Qs3FaI9KqGHNDooInh9If+FedRx203SO5iviMTkGXZCYp1BCI1eJoKLxpBYoBNq
         jpUaButm7FZdPGzaGTfkJg1I0VU5GtS/4ZEosB4fNlMMPKKufUxwCg36zBXF8EksEDaq
         vyjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=k1/9QGOjKeq45xq8afnhsClvf6TbvB10wcxIUr65QQw=;
        b=phJbwWxLcidVoUHWFf8Hfdt5PXANWDPHu+V4FqZJqdMszcjriFedg31xDvEWZpHGOT
         ymah+B8bDBgD0ySCb71vpsmBPAsi8/JMdYkL8uvjo56XQgSlryFWsb7sjOva0WxOJJxX
         i2iyIPAr/ueooeFDIu5YER3Y9MFU/tk5kCQEqWogLIFrubgws4uGQ4yZ+xl0JXEpdN/H
         ixW6I8VWlpH21MFLHUXzuNtxPVldt994Vk4NH7XLTUsCIGs3TF/KeyTsEfPAZCgQpKa9
         wMsKjObNZlUKEDQgqxCsfo3ZfPJiHzMqnBgU8bkzNZ5o3DqdDupOL2jSuyPCxnx6XlSF
         NcZQ==
X-Gm-Message-State: ABuFfogPKzuPMXpAGuiwHPEnFW6Pr5xanGc3P4A19PcBq9gATmQhQNTr
	2bLWdmyIBPzhQCBLOm9+AoTT/EdM
X-Received: by 2002:a63:2ad4:: with SMTP id q203-v6mr12335679pgq.356.1538485293132;
        Tue, 02 Oct 2018 06:01:33 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.98.124.138])
        by smtp.gmail.com with ESMTPSA id e7-v6sm28267753pfk.3.2018.10.02.06.01.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Oct 2018 06:01:32 -0700 (PDT)
Date: Tue, 2 Oct 2018 18:31:24 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rts5208: Replace udelay() with usleep_range()
Message-ID: <20181002130124.GA27163@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

    udelay(unsigned long usec) replaced with usleep_range(unsigned long
    min, unsigned long max) to prevent trigger by interrupt in specified
    duration.Also provides better scheduling,power management for drivers.

    Issue found with checkpatch.pl

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/rts5208/ms.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index f53adf1..6654cdd 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -3245,7 +3245,7 @@ static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
 			return STATUS_FAIL;
 		}
 
-		udelay(30);
+		usleep_range(30, 60);
 
 		rtsx_init_cmd(chip);
 
@@ -4167,7 +4167,7 @@ int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 #ifdef MG_SET_ICV_SLOW
 	for (i = 0; i < 2; i++) {
-		udelay(50);
+		usleep_range(50, 100);
 
 		rtsx_init_cmd(chip);
 
-- 
1.9.1


