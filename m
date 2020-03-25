X-GM-THRID: 6808080746625892352
X-Received: by 2002:aa7:9695:: with SMTP id f21mr3301692pfk.93.1585140173494;
        Wed, 25 Mar 2020 05:42:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls1932771pjo.2.canary-gmail;
 Wed, 25 Mar 2020 05:42:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsgSELsAkexKVixc6nVauoMZGtVVzce/0E/jW1iiFg+lmjp3enW/qEfsYOePf6946u9bs0l
X-Received: by 2002:a17:902:724c:: with SMTP id c12mr3185549pll.60.1585140172087;
        Wed, 25 Mar 2020 05:42:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585140172; cv=none;
        d=google.com; s=arc-20160816;
        b=sjUS0zXj0wMeIsh7kCLBSUt/Yz7bhcGMcRo2FAvpUFgevOQO2J9mG75OWcxTpUcLuU
         vxy0vMKaAhGRDOnLUlolT/2k+H2Dt9PlpAIbWfsL3WLoJHFjwKo4Q1vBsZszK8PvmT9n
         +jUCwlkFzQ0LD2TEZnf2wvwXQGR9NwbFNpabuX10aR1fjs/HZ6gIHZiA5myPyacG3n3t
         wjQe1mYk49PvWWtvbUBqalphjn/s3JDy4zwMvPvaAhD2cfPCTA6Sa1Kkp0oj2W7SSs9Z
         X0b0w/1EZAJmhFyTAehJXB/aHTWyuXt834Mhdx7EjtD3UsMR6C86k4YTRBLzDeuGjD7O
         kwWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=34sHF1h1vULu215he+6kshqX0/jj96bf531gXwL8CiY=;
        b=i9QoEOHbg24L5jGoJ4AW8H6M63HSB98GXt1iOCUrlghYfU2UpuXGIlCYc0/fRb9Puq
         UOYis4qVbWpn5/em6WUdUIhhrSc1ve4v04XcEudX9HyBEgLxlWqfpIcKm8wkqApZzVtX
         r1oG7KFEuDr8KVXTl+WQ1T7qk2bKnhTK0VFQwDeiQC06r714yu3ARkdYprEjs++d79WY
         59vogFMwE6nyoNnLeSMnxIqAxCaIls1v12NuFBcwSw3mLfyyaN2JcLvtEL7g9U4xphAs
         fEbxgL/b0xtWW/sQqT1wUmwNxcjMPPy8CjnY9/N+ioi0cnr1dQy3j8k124TIv6Sq8T2a
         HZyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=US7TZlfA;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id c207si562334pfc.3.2020.03.25.05.42.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:42:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=US7TZlfA;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id h8so1089774pgs.9
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 05:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=34sHF1h1vULu215he+6kshqX0/jj96bf531gXwL8CiY=;
        b=US7TZlfAH5lzgf3YwMoxpJxluGVpEk5zcYEt+PzT65m8MRWon3fNcPWu/Z+wu8IXya
         qWF9s00ZqXNBYzTLhYXu9ryxatTtKMlAk1wBpMnnZ8eFo7sr2of5/WiGOveKo2faeHUI
         pFEMPY4l/qXcgd87TWnYg4Y/N/t0WA0Wtbv91HiySN92U2rW+c4u8DR2Fvh/TpdkIsPl
         lFKO9JfdNa47EDyTRoxxB6lrWEZhRIjyKiFsTqT9uKD39Q/w7M7R4RIQtC38nqVAOA7V
         ZkkWCantdHCMQyg7PxO8UU2eI8FBRGC3UGYA5et84UVbc05gNgPC2VGPIvDuK4+qzc6C
         GePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=34sHF1h1vULu215he+6kshqX0/jj96bf531gXwL8CiY=;
        b=GzOnyyC4mQCodRO4l3TGbdqVhtCYituP3iSo6YFxN5ligx0S/ltamHwddmj+XKhnRp
         nZiwZtfXLHYDGi9fpFq0GpllHM2P/4z5IRvGzNdHImopSxKdoYloPskmTr26s05QTnE8
         zDpbnfsd6GGDej65w9NebTpvLFpd9uYcjZHEFX04OMuPSs04Ju1pJp7vDSX7iiPxEmB+
         q2D/WLXBbpY04AjP9eOuP4+M1/W60wRmJgJxWG4+7ZShVdqCDIh1ZfDTCFPGwIVmlHJP
         BaMJmQEYlg9WonZ39sY/xu6weEWg49RJc5pFp460kPUHu+E10MWZ9GEnKY86GyVRtw86
         Fjng==
X-Gm-Message-State: ANhLgQ06qTozbKpJUi+K+dVp/AmwqlmRiH3WxLHZiynbPEg8NqkaZ3eB
	1nU1cYW3oyjIjb9yo7JT8SKeH0RRxKlKtg==
X-Received: by 2002:a63:d90c:: with SMTP id r12mr404665pgg.158.1585140171336;
        Wed, 25 Mar 2020 05:42:51 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.210.159])
        by smtp.googlemail.com with ESMTPSA id i2sm4336396pjs.21.2020.03.25.05.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 05:42:50 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH v2] staging: hp100: Add spaces in if statement.
Date: Wed, 25 Mar 2020 18:12:32 +0530
Message-Id: <20200325124232.39252-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Add space between if keyword and open parenthesis to improve
code readability and to adhere to the standard linux kernel
coding style. Also, shift the next line to the right by a single space
as it is the continuation of the above if statement.

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
Changes in v2:
  -Remove the redundant portion of the log message.

 drivers/staging/hp/hp100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 16fe9c7879cf..926d0b51ddb2 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -556,8 +556,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 			 * can map the full 32bit address space.
 			 * Also, we can have EISA Busmaster cards (not tested),
 			 * so beware !!! - Jean II */
-			if((bus == HP100_BUS_PCI) &&
-			   (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
+			if ((bus == HP100_BUS_PCI) &&
+			    (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
 				/* Gracefully fallback to shared memory */
 				goto busmasterfail;
 			}
-- 
2.17.1


