X-GM-THRID: 6523432871904935936
X-Received: by 10.223.153.179 with SMTP id y48mr2045572wrb.13.1519056303754;
        Mon, 19 Feb 2018 08:05:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.231.15 with SMTP id e15ls1529244wmh.8.gmail; Mon, 19 Feb
 2018 08:05:02 -0800 (PST)
X-Google-Smtp-Source: AH8x224nQfzIbgyDOmGCUDBL/gwSjg2blEWkGXVowGwtl5G13sBlMZbIxnBoJ2f3OQBzjV7QY8JR
X-Received: by 10.28.239.20 with SMTP id n20mr2167446wmh.23.1519056302737;
        Mon, 19 Feb 2018 08:05:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519056302; cv=none;
        d=google.com; s=arc-20160816;
        b=JM5Uk9uOMDBQqcn+NUsIajd1wKb5GlAHh1rDdJAxkGSlpiaXlZEtX5CjpnZspPq0qz
         KhjB4DFdwexgbjjS6694PJUmOUk2RBCsK4ouV1Wf2b3NOdtvp6DaYy7kKlm+9AM/rSKm
         PFG/sZ8+vSfIoVZ8mS5PaeWQ23w9rr3JV0S9l1v9sfu/eKqkbplh+TVIWEehhaIruw7c
         N3e718Fnu7dbXIWVWgLWMP9lRYowUNQmb02yBaVPomS3niCESR4Ihqso+//wg5CzReVZ
         ICSiJiz+V2AdmVfURIWWfyUS066vq5zeAXISLd7n0mWI/mR+Aq3OokCwlyH/+9LvX9OH
         NEMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=jhPFm5hoEO17/IpBb2SQ1mLpBpLc7uuvd7o+lMtLAII=;
        b=0sN7/71Az+P8NAOoWk0gTIj6phlf0bxXZ/VR0gi0NoL5LMKxl3kyJvUPz7RzlGEpkL
         lTRkg7RRmpiZ7audKTktlmZf8ch562R/ZXZ1gCvGyMNahwdfKY09ub3zGX7v9kLWb1Q1
         KNNoNAd9PI2Z+0msX2VQIScHcMTI0o0zHLRCaO4jQQRwnmCGvESfFowFCahfVHmc/2of
         nb5DNFyQiRb6z2RQGjnEkO+Txjo2smEMyeAOTPDcw860HnsmwakGCdF5E9peyQVkUABA
         sd51ehPaJrax9QUlGs3zUT51mYh1WfweUbODemRkFuOuBxKc0TsyG3qwSVXjzZtgXcVy
         nZrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j2+9j4js;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id e14si486674wmg.0.2018.02.19.08.05.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 08:05:02 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j2+9j4js;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id v71so16013201wmv.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 08:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jhPFm5hoEO17/IpBb2SQ1mLpBpLc7uuvd7o+lMtLAII=;
        b=j2+9j4jslKGt0yY48+aV7kfCnFwS3hvfPoFKMscGzamH7OVmoxF8yfbtOjSP5uXvVO
         reSw/54j6WBWFYw3aknD9fsWv8Zn7s1DdzC+DkJ/489rPBPH7Fxu2DDAt81L+FuAkfm/
         DfFgKCltl+9eW+pTaEFpS46/ptNKTS5xKsdWWBi68YkWCZbboUxd/DO1PA00PcUsr717
         tb1nvByRtoa+2DzBaXmQbydxsANy4VhRVU2Z3l3amCs768S7LYq2XOU7HJcdPIURNDrM
         6z3rnPMNhevXQNFkcV3EAVcOHsCyPVNxnrJccnV1UtBzvS1J/V0f6cjM57MsHcPyOXjH
         saLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jhPFm5hoEO17/IpBb2SQ1mLpBpLc7uuvd7o+lMtLAII=;
        b=YZXMLuB9fXWPRuaBkx/H85MLaW27dXhos92/+RnVAKEPg7Ik4KPPdLpENtzY5dfO00
         /NHl9wyPFe9AtjeDNgmEW5ZhiPs57QN30Yx+eyTDr+/0o5J1mMkHnFjv4oHb+rTSoVXA
         QJj58XdMNrzC8lHd+1+UyOcrqE19KiEz0cfqPQaENfAe1yC5ttZHHHprZ0ZkUWEGCfjI
         3pdH39Ii2tRpDHHX2z+TPfO9V4AzvrDxGRRoPbBYVIeqsmVLx15HswpZxQxhWw6XANiH
         J6jBnPLAOiyQANQbvyHFwSN+6dDpy73s53i0Se7Y+IUgRx+Kks0yYrMaxHBc7aJbMZFu
         yARQ==
X-Gm-Message-State: APf1xPATuRpVFkH7XsUEmxqTmDjLleVu5aew5t0p1cTbnBVF2uxj3GsK
	mvEJEWKOaZ2ol7IXOdmO/1QqWJVmOpU=
X-Received: by 10.28.139.66 with SMTP id n63mr11095981wmd.101.1519056302038;
        Mon, 19 Feb 2018 08:05:02 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id n24sm25575332wmi.21.2018.02.19.08.05.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Feb 2018 08:05:00 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH v3] staging: comedi: Remove a newline inside a dereference
Date: Mon, 19 Feb 2018 17:04:22 +0100
Message-Id: <20180219160422.27240-1-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3

Remove a new line inside a dereference so that it is not on
multiple lines.
And avoid making the line go over 80 columns by moving the whole
dma_alloc_coherent() call back 4 columns. Problem found with
checkpatch.

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
Changes in v2:
  - Change the commit log to mention what I have done.
  - Remove the unnecessary cited lines from checkpatch inside the commit body.
Changes in v3:
  - Rephrase completely the commit message.
  - Move the whole dma_alloc_coherent() call back 4 columns in order
    to avoid making the line exceeding 80 characters length.

 drivers/staging/comedi/drivers/cb_pcidas64.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index b657beedd5ff..c00750054ae9 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1488,11 +1488,10 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
 	for (i = 0; i < AO_DMA_RING_COUNT; i++) {
 		if (ao_cmd_is_supported(board)) {
 			devpriv->ao_buffer[i] =
-				dma_alloc_coherent(&pcidev->dev,
-						   DMA_BUFFER_SIZE,
-						   &devpriv->
-						   ao_buffer_bus_addr[i],
-						   GFP_KERNEL);
+			    dma_alloc_coherent(&pcidev->dev,
+					       DMA_BUFFER_SIZE,
+					       &devpriv->ao_buffer_bus_addr[i],
+					       GFP_KERNEL);
 			if (!devpriv->ao_buffer[i])
 				return -ENOMEM;
 		}
--
2.14.3

