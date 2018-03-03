X-GM-THRID: 6528466201738215424
X-Received: by 10.36.70.132 with SMTP id j126mr2232876itb.2.1520055233027;
        Fri, 02 Mar 2018 21:33:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.230 with SMTP id d99ls2156722ioj.18.gmail; Fri, 02 Mar
 2018 21:33:52 -0800 (PST)
X-Google-Smtp-Source: AG47ELtemQZXmx+BHRMqE/HbCAVIZCCe7vAYI6t9bRtljs0VLTSN6N6748h1XRzwX5TL1/9VHukE
X-Received: by 10.107.143.82 with SMTP id r79mr5544247iod.120.1520055232081;
        Fri, 02 Mar 2018 21:33:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520055232; cv=none;
        d=google.com; s=arc-20160816;
        b=GHxsUNuduN4Ed3I3MUdg4IJTlQIFOCvJEeFDjT3Dibb4q9k/yEAy6EmsBuW3z0Gju9
         fF8anm9Hi7PsXbzyaIxF9T+cXAMYIfthcUtH/84pfpp8+gtk6djiQFdk3MnaXon8+sC/
         LHxuFUHO3/2b5/VSe1sFWHRhTvwh5OeB5GFaFex2mNsMf5MK5yWGk76XDnQGKOrNddLt
         zpzGBOcNBliIDYSEc60fDUzRCCGilufBbpuo4FEebfaJF6YmzeXAvG8PnjW4tZmL+A6f
         H8nNutVekbF4QdAk+2Ov/IrTzrhWNjG9LuzisTwPPIJAdhWSoBfXcov7dxch/rD2tDfx
         oMFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=RNP1HECZXUjZrzn9rtq8XJgxYVLayDeWHi8/PfJKZOQ=;
        b=tUaKIecpByDiZSlXIL65zTLNNyEiDCB9TGVAKg7sAYpLS8f4xXiFZ+7I1LdFfKG0P8
         iK9iAnTD6pAYzfd6SEfqBkJ39NEi1MWtDzBgEHH//2eAolYhW5zPCiZJqH252gu5mR5Q
         kkYNbCA85hxM9ivq05zRwVD7exLKH313rpum/L7ttfzmtKwcou13MJUqRdGliOTi7+8L
         K8tBMEZ1d10qoh7NR+WybxyHsLfc8a+3QdhQ93wguxSVAImqSaqRfFP6i0wYDrVQpZ//
         qzbArtLwCzSmX1wNJ98wD5bVa/Ru0ALiZNykTKdX4riQmBPUUYx8amgFJ9MVJXYL24CT
         HAkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FhHnAjh8;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id n15si156636ith.0.2018.03.02.21.33.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 21:33:52 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FhHnAjh8;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x243.google.com with SMTP id c11-v6so6914310plo.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 21:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RNP1HECZXUjZrzn9rtq8XJgxYVLayDeWHi8/PfJKZOQ=;
        b=FhHnAjh8gWYD/RZ9jX4VThf4iuN9BGE1M0uY5/tbBtM6qkIEjb0qIEOrzVgzBhB52E
         vUBPsU21Hk/FLecgzRf7+cge9abuxi3nG0Dze3ziHmAOBa1vvYVX0i9ohAJDC3b+esBc
         8Q5jp9ndk88ACw7JfT1GvWWS1rL26wKV2PLhJoU05E04dM+vZfreVcAzq1LOp7omnoFK
         AX00ygmkOwRV4DNpssr2nDtn58eFZkRhfq+2rtMlzlQH0Yy/ORnV8aU0JjLqssjyZAcx
         LiV9KgaB1WJNWN6yCZeRH5iBKJNdd6XP7W4i1AmI9rcL95tsC+vYtQMIt97ZMhfF2UI/
         1E0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RNP1HECZXUjZrzn9rtq8XJgxYVLayDeWHi8/PfJKZOQ=;
        b=V/lcEMnXrxy1+hLtWVcFfcAqg47I38OjxsTJoMxL7m8eVVQX8h77eNxYUhxoEdF7AQ
         m3PIL8/wCV4iQG5l8vxhElvn3oBWvGK4blKH7BgqOlZBLvZX64B0j7aSD8ETAImyo0YI
         nAIkqYIZA1x6OPONjGY1zswwHPuoIqn2pxB0NQDjKLVJbcjUGxh5roKHYUhO/cUrMCfC
         mQNnJhyURBt9LAxXFTYBMQXR6sEnvzq04bqzRo6kTGlieHHfR7iMRqCJEgV/zubeij3p
         ApcHZ++vmcT9S5xd7OxKTTbqSNK7qUIL0hRe2PeWOP5H7T9w1/tqkEzmeBnW0bc1YJfG
         m1zg==
X-Gm-Message-State: APf1xPCexPXky1O3O+oDj7a0ZP0zqdKt/olBJCp+VMVqZ3Ik0ilDS0TS
	6BH/sMZefH6Fj3B4wgHpOadLqg==
X-Received: by 2002:a17:902:8c83:: with SMTP id t3-v6mr7537468plo.310.1520055230860;
        Fri, 02 Mar 2018 21:33:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m22sm16008604pfg.188.2018.03.02.21.33.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 21:33:49 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 2/6] staging: rtl8712: match alignment with open parenthesis
Date: Sat,  3 Mar 2018 11:02:32 +0530
Message-Id: <1520055156-8388-3-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>

Delete/Add tabs and spaces to align the code to fix the
checkpatch issue: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8712/mlme_linux.c | 2 +-
 drivers/staging/rtl8712/os_intfs.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index 3c7c4a4..baaa52f 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -36,7 +36,7 @@ static void sitesurvey_ctrl_handler(struct timer_list *t)
 {
 	struct _adapter *adapter =
 		from_timer(adapter, t,
-			mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
+			   mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
 
 	_r8712_sitesurvey_ctrl_handler(adapter);
 	mod_timer(&adapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index e7df5d7..d6d27da 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -230,7 +230,7 @@ struct net_device *r8712_init_netdev(void)
 static u32 start_drv_threads(struct _adapter *padapter)
 {
 	padapter->cmdThread = kthread_run(r8712_cmd_thread, padapter, "%s",
-			      padapter->pnetdev->name);
+					  padapter->pnetdev->name);
 	if (IS_ERR(padapter->cmdThread))
 		return _FAIL;
 	return _SUCCESS;
-- 
2.7.4


