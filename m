X-GM-THRID: 6523850474748116992
X-Received: by 10.28.129.195 with SMTP id c186mr2357874wmd.10.1519070489372;
        Mon, 19 Feb 2018 12:01:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.116.3 with SMTP id p3ls357794wmc.9.canary-gmail; Mon, 19
 Feb 2018 12:01:28 -0800 (PST)
X-Google-Smtp-Source: AH8x227lkiNnygTwPuD8C4BjA/LUimsuC/HO+xZvt5h6a8FdT3uG5/i0rFVvWBaJRxlucdrjLGNk
X-Received: by 10.28.192.26 with SMTP id q26mr2317335wmf.29.1519070488280;
        Mon, 19 Feb 2018 12:01:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519070488; cv=none;
        d=google.com; s=arc-20160816;
        b=YNa5D36zuywKGbN0ueEa4CCFOqW8xlLnNpysdKKP1z/ZgKT10x9f6D9NKy2HmcZQIE
         1FRZp+quzGtRDe+ETwrOR/Qb0RN0MSZIDO+1taGxvO22r5sjGduKuo7bnLId9sHGEN+T
         8zc79rB4EUzD05eX/H/jjLiUuAeuz6PPWwmeeasbLxzpHxxD13LZUDPERuX5WMqATgvu
         HmpeRHHHyjkL5Yx4FyLvJs6TelEHW58CrpRS7M+myMl2wXM5uOUqkoiW0NnBbzBFugtl
         5ub4FjMTCV89MSRDuXfAFmM4Fdy2VELtNQBkPiPPradNLnucz6UvCLpMr1fsPloCN5CI
         JQKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=bn5GZrgF7q3oe3zNXEZzOtpx8tR4vV9fzB3bAN4pO08=;
        b=WKDcAsJ/wLh82E9Fwb2aVagK1f5CWNRDbX8rNABMhYoX7/7FCH30/wFBZR9By7gZu4
         8J4Qb2Y7k+JbMvGSGzLszXV7HWujegK97EOWJGifLhG4Aloq5+ciw4gfoGazi7iZgQYJ
         sYu9UmO7Q3cAiYkbE2pKt6AKYdRYz7OWdUuH2wp7ITIoFC9eChJeO8Iz7GE/tp4uPizM
         3aI9M9axZ/DdDQntzvuMUDotHw7q0JLIuMv3ShrAqLP6YPYOc7C+2eSbGIqYocU8yH3n
         NSOis9h8YbvZpqzErF5hGFa02PDOn4Pu6yXcunCPZ7BGyIBGmw0hiKKnS5knxxRzny3p
         ja/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNjJAhkm;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id g70si422425wmc.3.2018.02.19.12.01.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 12:01:28 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RNjJAhkm;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u49so6200561wrc.10
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 12:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bn5GZrgF7q3oe3zNXEZzOtpx8tR4vV9fzB3bAN4pO08=;
        b=RNjJAhkmXQ1ipHbEBr7IH6HoJ8YZLzXlm0xPg/Bc5PiuEIKPBCu7KIB789iToFh9hJ
         rzRAkdg+68u2odiYsSa5rRR9o7Sy1/UAu2Zyrg8K/B6uL3IThOyvLJeYjaiAdY8K9XLm
         F+/is/hyxJ9sziPWDiIPxKMCdrPwzfZO4ZMyUtFr2QSPVf8sKEWUkQAHj885Dt9ccxFS
         tNghZjKDY8JHwHAGFrNLprVKAouhrKO/xWfqW1Ucx/4aSTwtLUGMAWwhO8xUZXbj5ElM
         tGTxUp71YxYgy1Nea+it/Hs2uhLGTflQOOSktpsqdmVqVOwZxm7v+5eW/sBGloSPNj+X
         XJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bn5GZrgF7q3oe3zNXEZzOtpx8tR4vV9fzB3bAN4pO08=;
        b=Evt84BY9Kfh6JYt9ShW97/m/pYySEIkITkY647SwJmFlvvb9hctCtfyMmIR+UcRYUR
         +KsnWKCXb3cFA5N2vBVX54TPI8A5CtoJOcFcY2+UPoo1jn3Fi6gHfRlEOM5obDzU75vu
         xAbgL8z94kpLqTHP8xRk4IpK4oSEfi2XgX8bhBfxRmF2xDdWLqB7rOdfUr+rZR9JEL6d
         Dh651CaZnUjFWQda5qA8YAZqzvQmliwdexhyF4LNHOT66oDCS7cVq8h/VLIDLSaE4+gV
         gLvZt61UVsMQj5J0+AIJCthZJMZOIepRee0wGemNRI02h2v53MtgRjt7h7ERMuqUnamU
         LhRg==
X-Gm-Message-State: APf1xPBgoWPlOIbDEw4nTQn8qhcGaGsT0SExD18/nop92rBNUEaX29SE
	UIDoM9azSA88H0ZcZtENaE8YirCM0s8=
X-Received: by 10.223.178.232 with SMTP id g95mr15152609wrd.35.1519070486997;
        Mon, 19 Feb 2018 12:01:26 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id 6sm22462426wrd.57.2018.02.19.12.01.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Feb 2018 12:01:26 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH] staging: comedi: Use '"%s:", __func__' instead of function name
Date: Mon, 19 Feb 2018 21:00:48 +0100
Message-Id: <20180219200048.10511-1-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3

Replace all occurrences of functions' names in strings by a reference
to __func__, to improve robustness. Problem found with checkpatch.

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
 drivers/staging/comedi/drivers/jr3_pci.c         | 2 +-
 drivers/staging/comedi/drivers/ni_mio_common.c   | 8 +++++---
 drivers/staging/comedi/drivers/quatech_daqp_cs.c | 2 +-
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/comedi/drivers/jr3_pci.c b/drivers/staging/comedi/drivers/jr3_pci.c
index 201f4f96c182..2578ae4b102f 100644
--- a/drivers/staging/comedi/drivers/jr3_pci.c
+++ b/drivers/staging/comedi/drivers/jr3_pci.c
@@ -295,7 +295,7 @@ static int jr3_pci_open(struct comedi_device *dev)
 	struct comedi_subdevice *s;
 	int i;

-	dev_dbg(dev->class_dev, "jr3_pci_open\n");
+	dev_dbg(dev->class_dev, "%s\n", __func__);
 	for (i = 0; i < dev->n_subdevices; i++) {
 		s = &dev->subdevices[i];
 		spriv = s->private;
diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 5d610af6799f..d6eb55b41814 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -1965,7 +1965,8 @@ static void ni_cmd_set_mite_transfer(struct mite_ring *ring,
 	if (nbytes > sdev->async->prealloc_bufsz) {
 		if (cmd->stop_arg > 0)
 			dev_err(sdev->device->class_dev,
-				"ni_cmd_set_mite_transfer: tried exact data transfer limits greater than buffer size\n");
+				"%s: tried exact data transfer limits greater than buffer size\n",
+				__func__);

 		/*
 		 * we can only transfer up to the size of the buffer.  In this
@@ -1978,7 +1979,8 @@ static void ni_cmd_set_mite_transfer(struct mite_ring *ring,
 	mite_init_ring_descriptors(ring, sdev, nbytes);
 #else
 	dev_err(sdev->device->class_dev,
-		"ni_cmd_set_mite_transfer: exact data transfer limits not implemented yet without DMA\n");
+		"%s: exact data transfer limits not implemented yet without DMA\n",
+		__func__);
 #endif
 }

@@ -4687,7 +4689,7 @@ static int cs5529_do_conversion(struct comedi_device *dev,
 	retval = cs5529_wait_for_idle(dev);
 	if (retval) {
 		dev_err(dev->class_dev,
-			"timeout or signal in cs5529_do_conversion()\n");
+			"timeout or signal in %s()\n", __func__);
 		return -ETIME;
 	}
 	status = ni_ao_win_inw(dev, NI67XX_CAL_STATUS_REG);
diff --git a/drivers/staging/comedi/drivers/quatech_daqp_cs.c b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
index 802f51e46405..ea194aa01a64 100644
--- a/drivers/staging/comedi/drivers/quatech_daqp_cs.c
+++ b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
@@ -248,7 +248,7 @@ static irqreturn_t daqp_interrupt(int irq, void *dev_id)

 	if (loop_limit <= 0) {
 		dev_warn(dev->class_dev,
-			 "loop_limit reached in daqp_interrupt()\n");
+			 "loop_limit reached in %s()\n", __func__);
 		s->async->events |= COMEDI_CB_ERROR;
 	}

--
2.14.3

