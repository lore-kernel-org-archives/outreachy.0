X-GM-THRID: 6806929906514001920
X-Received: by 2002:a17:907:378:: with SMTP id rs24mr2188491ejb.242.1584877858000;
        Sun, 22 Mar 2020 04:50:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:f102:: with SMTP id gv2ls5730887ejb.0.gmail; Sun, 22
 Mar 2020 04:50:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvvl8yKwLjBhUKpE5H6SlVKfNIVHRg/gVQc5aAxPXdiuBQaxj3uYA+NGhS+W9xNFDPCLdYi
X-Received: by 2002:a17:906:8292:: with SMTP id h18mr16081741ejx.318.1584877856601;
        Sun, 22 Mar 2020 04:50:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584877856; cv=none;
        d=google.com; s=arc-20160816;
        b=JBIs5kyvfyxVyRIjQAQU1O46cXVEFIR0s3hT/vUTg/NdcKL2C5pKytWb3FdxtajJcU
         v4Ky1qJnbkyhqLn49X2jTF1P3r7lqfCNbrm+RHYRc/V6EDmFeMRwTSgli+t4wb8O+cJs
         BOI9KBCMfoyU6U73c6OUHxWhSkyf287+xkgCHpzL24tROPME4K24Z0B2YAP/nKWiJbjM
         8bxuet/SSPE/j/cTOanATOmH2TQ1nBaoGJhNBBmXx/tUSEaUhVX8FgZdsPmY1G3ETfTB
         qi5IFDngr9kR1Lfm+tkd/zHQRxJ42vakibXtrDxJkc7m2vjif2xNK5SCyqQUfGhfS9fS
         c1yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8FnQVvVaMc0/LfUkrw7gc0GlqByxeHRrLBZ+2+LqTig=;
        b=i4cHmyRvaFqqST6v+e8VCGxt0mYO6KRyef0+aeSuyo/8MVY7nu23LfEuxMJc9aPM6Z
         z9BbiW9Lo1eBBb+Ro6Wp1q4ht2h06XQN8kQ7ytYlvlvkx0tWA7XG5uPNdq5z3eFCuYhA
         R+0Y7Tc0DYmsyjT/FtdCegU66g2DcwBp3ANBin97e9KENAaQ6YYGhpb/qfUKC+srSk7a
         EJl8l691e6Pu3J6LtEBAfJgo4SkdhNCpUwLEg3tB6KRoqPJnqyY29qYJECuekSvti7qj
         kn27jNjZTwZcpITQ0ELuhFT/r1MWwFXJEzBSHQKXnWj5juCKbzpKZOeBApA1S3m55u3z
         edbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtlXsO41;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b6si74916edq.3.2020.03.22.04.50.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 04:50:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtlXsO41;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id a25so13043772wrd.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 04:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8FnQVvVaMc0/LfUkrw7gc0GlqByxeHRrLBZ+2+LqTig=;
        b=WtlXsO41QjtCRhMa22Fy2r0ytgggXnVEPXft0z6RqynW6FmSycp6eIEqgU24wQB1G8
         ruaASyZCgLzjJpePDLo8ptgYxfXXwn2oha/gevrRwjEGcGHVK9H0AUuJaaSJIE4A7JTu
         Z5pR4lyNa6NAfVIpPohu1mJuTy8qDBKAu2dmmAbp36RjU4eGyoetTlbbLTHzQdsq8qDn
         obxkUdFU9Kb795rSDphXMR5pnijHNY4mj4kQvCExbJicxs1P8vuLAxXR7AAp4JFK2lpf
         TAaw8CdnVsqaHeiZZPQ/2Ly+TqInjMFXcu4tSjk2oevosfva11Y11ZgI/X4ZBxAvIn+a
         hTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8FnQVvVaMc0/LfUkrw7gc0GlqByxeHRrLBZ+2+LqTig=;
        b=rBrI2/dIhqPQzFpHTvbSkAVTbMeMqqgGq7+LiCHIsHPTgfN4QlOfKVEuNekM9sjvZD
         7QqeQGAtGCfOwUm0vFUFyk9DWoRINkT8r8HKD/S4gEMezK8F0/szCnz2KPDg5iZ5Q6qA
         te55gQa/WsFOXPskN+gngZ3OhzUFSFoL44vVImvSNoBRgnDmlR12nkPi9PxN8rdDYT1Z
         8lY6deYJf/Xb8AkxA0Fhc0ZNeFWXp7RQFkpXPpqXpH+KX1VwH2ATucGlHaUhOC7t9Lid
         Yzo1KlLCzXe2Tm09d/WgaSf9S7Qo/X3sZfiQIMgJNuftZPSl28FVX+We8InN8mRVQHcv
         cd+A==
X-Gm-Message-State: ANhLgQ0pGNjBiUzFbWcFilLMyO7v3iLKhMzL36g7oWBS01P/NwNoHymL
	UZiBHig4T3BfRunbFTXdvo4=
X-Received: by 2002:a5d:51cf:: with SMTP id n15mr3250667wrv.195.1584877856235;
        Sun, 22 Mar 2020 04:50:56 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.132.208])
        by smtp.gmail.com with ESMTPSA id w3sm12370614wrn.31.2020.03.22.04.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 04:50:55 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Jaroslav Kysela <perex@perex.cz>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v5] Staging: hp: Use netdev_warn().
Date: Sun, 22 Mar 2020 07:50:51 -0400
Message-Id: <20200322115051.2767-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This replaces printk(KERN_WARNING ..) with netdev_warn(),
as the use of printk() isn't preferred when
a struct net_device is available.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v5:
- Reformat the first netdev_warn() by moving ioaddr
to a seperate line to prevent line over 80.

Changes in v4:
- Make log message more clear.

Changes in v3:
- Update subject line and log message to be more descriptive.

Changes in v2:
- Remove " : " from the printing message, netdev_warn() doesn't need it.

 drivers/staging/hp/hp100.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index b89c4dcf53f5..c1f5506b7381 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -469,8 +469,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,

 	eid = hp100_read_id(ioaddr);
 	if (eid == NULL) {	/* bad checksum? */
-		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
-		       __func__, ioaddr);
+		netdev_warn(dev, "bad ID checksum at base port 0x%x\n",
+			    ioaddr);
 		goto out2;
 	}

@@ -478,9 +478,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 	for (i = uc = 0; i < 7; i++)
 		uc += hp100_inb(LAN_ADDR + i);
 	if (uc != 0xff) {
-		printk(KERN_WARNING
-		       "%s: bad lan address checksum at port 0x%x)\n",
-		       __func__, ioaddr);
+		netdev_warn(dev,
+			    "bad lan address checksum at port 0x%x)\n",
+			    ioaddr);
 		err = -EIO;
 		goto out2;
 	}
---
2.20.1


