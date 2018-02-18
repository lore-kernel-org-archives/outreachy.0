X-GM-THRID: 6524033541786828800
X-Received: by 10.98.39.196 with SMTP id n187mr3074716pfn.56.1518994928868;
        Sun, 18 Feb 2018 15:02:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.16.20 with SMTP id y20ls1780876pfi.8.gmail; Sun, 18 Feb
 2018 15:02:07 -0800 (PST)
X-Google-Smtp-Source: AH8x227Uw2rkY4lWGOM5hT9LariMwTDY+FA2w0JOi/3whsEyX69KPz7XF5hiyS9RxLFmcF+Tor3X
X-Received: by 10.101.76.197 with SMTP id n5mr2980497pgt.40.1518994927239;
        Sun, 18 Feb 2018 15:02:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518994926; cv=none;
        d=google.com; s=arc-20160816;
        b=Q6Qukf3WcfOiDZ0Cg/sui8xk5hPAO4EyPpTwgYnepumuIZeiciY1lJhtVxGjIFpnRv
         aKi9trqmqM0xV6vbQBomEMC/5PvLDkyFRJHFLzMZs7qMXNOweXgXBDWxbdbp7OFcUdTu
         DADWOHHjW69VhrBUYuOMo7kZg+NokVcBclJMhmU8AeMc/AnCYkN/6nbHlCLlcr99xsR4
         vCAMgO6ESP77uwkTncqjxKPbgThwg6aCiTw3WUs7YfjX0ZGclLSNS0v4AD7qapmWErBU
         kV3OB2BTyhw13htuZa4YYSCwBbAaE8db8XG4U09E0zGzWLL/nkuwvpG6nM9gUgKiCtdO
         NlsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ttrQDw1tqtRuJrTejZmjrV8FeNSg8UcgTGFDd6bMb3U=;
        b=a3NfPWfmQDjD7hFp5qSysHm4i1xhjWfipBrqy8z7XfTOR0bjtbMAi+rdsp0NZBsVcm
         7gVhsiRqQG2QLkm6/+ZmbA6JkCit0elHcq6deU19R+aZUvahT/dYXWQboJs11NdLBSXn
         SS+1rvma/eJodPfRmVMjbMPLDW7i3hYOBJ7IRA2q1H2aFavVeoG+pCTPRyQMObywu7bl
         HZ0FPLclWk7zCifvqK3PMWyAblrTWMJRVGGhEJ8RXjXYLv+KzYXLoN5dsC0sgWHpWSLV
         AWtFAu72BSKPeIjZqPyNqkKDFiv7dnqJADT8dGV1Au4jGPXw83yxhEPoU1LlgrCLDfhu
         PKCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KHlYny2s;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id d21-v6si753705pll.1.2018.02.18.15.02.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 15:02:06 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KHlYny2s;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id 68so1459782pfj.8
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 15:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ttrQDw1tqtRuJrTejZmjrV8FeNSg8UcgTGFDd6bMb3U=;
        b=KHlYny2sfjvZ0FmjrYBmmq/031ZHy8slbJhGhsPb4rEciTp6ktrrVMz6F2ykQ/XLKN
         E5S0xHRdCBaj20iOzAdR4nbDVcp1JeTEK6++rmMOEKJCRkPph6tc35+mmB0ybMOZxPYL
         RJNj7crau4aV5VqRfPeWp1TdzXqhea2n3cpV6we4cIov5vCP8qhydiABuuDJOUVlzOae
         La9XPniH/rMDkVxTOfbiaujsi8mK23srqoFcfcwfUYyC1r/72pX+t9L1CbKmpXlBMLZO
         cTUULKGVmvLlPq+aa8BT+2ZO3KFmZHS9vQ12rL4IwOkNqGsrSmQQSiYpKEdQTIp/ZlrK
         1qKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ttrQDw1tqtRuJrTejZmjrV8FeNSg8UcgTGFDd6bMb3U=;
        b=BCyuDgzbJhFyPxGuc0euGFR0RprqiTJYFRa2QnoLKVAlmPxY0/LNBsvuVa5rFgaXIP
         E5HJ4QqWuX5yG+W97b/VgHBE+/oHRN4kbjfhC+vEwI1MgM4wTU316ZpBPfh9UuepXKQf
         uI7NHvVGG6YT71vk199K1QRu9qgfJAO/wv7A/Y6DstDLvY1zIlpOejs8aOz+Ob6aTOR2
         o32nKf9BlyIW6Nac+Acpre3aKG2/Sg+0wKwgTpLyphVhbDCjRoysgczxwF6kSYvWIicC
         /jzR3UC6UzIJfO294nRrf/kbtTGyYGGdTamp8h/SQqFZIu2taiXDUd8ELXbTJxHGyLLK
         hERQ==
X-Gm-Message-State: APf1xPAW4Icc0PcNdnrbAL6MHXfF8+OyPZQ4cA8NEqVEJStEseiyaKMn
	VksUOvtMebx5DRFfUvuYuuH3FDAJ
X-Received: by 10.99.117.89 with SMTP id f25mr10538184pgn.18.1518994926669;
        Sun, 18 Feb 2018 15:02:06 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id f7sm45282774pgq.66.2018.02.18.15.02.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Feb 2018 15:02:05 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: vt6655: remove additional blank line
Date: Sun, 18 Feb 2018 15:02:00 -0800
Message-Id: <1518994920-4952-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove extra blank line inside a function to conform to Linux
kernel coding style. Problem detected using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 9aa4d52..bea0b7f 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -1080,7 +1080,6 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 	else if (fifo_ctl & FIFOCTL_AUTO_FB_1)
 		byFBOption = AUTO_FB_1;
 
-
 	/* Set RrvTime/RTS/CTS Buffer */
 	wTxBufSize = sizeof(struct vnt_tx_fifo_head);
 	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {/* 802.11g packet */
-- 
2.7.4


