X-GM-THRID: 6806652966405144576
X-Received: by 2002:a5d:4a0c:: with SMTP id m12mr17924531wrq.246.1584797391148;
        Sat, 21 Mar 2020 06:29:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls121937wrd.5.gmail; Sat, 21 Mar
 2020 06:29:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvU0HmW550uri7tjTKbmIYVbQ1waJazpxDGnum3O71iyQBuYVVqYpBhDz97Z/UecAX56bDf
X-Received: by 2002:adf:f503:: with SMTP id q3mr17572164wro.135.1584797389812;
        Sat, 21 Mar 2020 06:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584797389; cv=none;
        d=google.com; s=arc-20160816;
        b=buqXPa1s43gK53V59n0VuQcIPCb8bmMxaAqCW0WBZPMH6aR9ye9CbgOBSKU3EmXy5S
         CYEtymoSM1eBmtEktsBnZ4pxleTtXCC0UzDV3Xaseo2oMJ46zuqe2uWxZJ79N8XcDLsx
         Cpj2oX5ve8OTXgDVIDBqXmQ6V6+fClFosfzT/Hq3RSYsWv9n2GBh84+LbFOdkegUujsM
         1x+rh3hs6SVgI9JcrYy84ULfSjaZBFzjIopnRnjX9N9UGotcz2/7jCjQF4ahR29d6jSG
         XtOWFX3KnNZHnCsjXAJhx6a4r6ahcyYJmUS/gptKQ9ztYCkRy+dWVjtKtrssmn/DB8Cl
         IWXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=li8GZuCfqCfdidXJMfq42qruKtkyzSxRsu4o2TpzJYs=;
        b=BTsIiiKEP95YKTLhLESrVhikZev3l9YnLal4XONXq8TUUpqimw1VP4kK7pgFI8rYmm
         Yi8Zf1Hs55inov9D+sdjko80AY+o7kpUt1FL7hC79LKJh+l3rwjAJpKejk5ag/W3CMqO
         DVZAN+paWhGxKOR+hm3IKzLgkTgOEPAC56F8olz6rS/HGneawse7Ah0NVscPldHVCg2G
         gEseLE1XjmhuTJVVTxGsu2O/t5YtFDw0L5Hzt3PHQ4RkP+E30gUoBWXQ4n/fXLYIbuJ/
         3yTvH2WRK4o3if+AIwdhygCPpy6fnwaChlqfS9qNerR8+6YETx405g1WrMGlKKcqFJ1a
         hEeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+mDoRTE;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a18si410402wra.0.2020.03.21.06.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 06:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+mDoRTE;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id t7so6134108wrw.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 06:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=li8GZuCfqCfdidXJMfq42qruKtkyzSxRsu4o2TpzJYs=;
        b=V+mDoRTERY74Vj7zX7ESMcPP7iyMWF5YrBDKxGp5A+85BFF6J/ZtK8cTLtFEJwsIhA
         QuszjFhKj2UhEcHEdrgp4GTo9LtQOYgYKO32EB9/TP0yEkYxzLpX0y4Z6iaxYdTi/rGL
         yY5mC+7GbRUn/Pq5+gWJuosWzD6UK+ZK2AqS4bDXSuSErgVinTQXS18s1OAFVgjDiZoo
         5WFLZAItV3D9HL69KLTB8YY7bz/cMrT1/b9NujCOUeA2xf9C5VuCNGHv247Qdrh36nlY
         lOCL7SUS/hr2X6IDHAIXi/g5hYQYzY0NXLaW8ryaAFFZxM8vmoZ8ngIvssFxZTJHMDd5
         MR9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=li8GZuCfqCfdidXJMfq42qruKtkyzSxRsu4o2TpzJYs=;
        b=IACNR7gGYRicUggMuGWTAiSA4Q1RLySbQ4wr9phx/+uU0JVx/9jfZWJbXNFcEVFaF5
         XeoLy4CbmzImbDM+1mX+BPmymhNf83EH/WnX6b5LQcI1/1INL1N7/lvvDKeVRb/dAXcG
         Rz4rVcrimPdE0kSzyEMT7Pu2BQW/RHPaFhI1JI7EtvDXdIbbYKz+yP39pztAfvmnp8rP
         EFqAMa0ELL6zCcjTDFrKXRsckpEyuBGt3o7J4jb6z+gtNv0ONKtfd17w8Pz9k3UWz8W1
         T7e9FjA3mZmj26AXeP9ku/mr//rmDnp51igjMLpLKTihSwpsQRqZaFO56GKWyO1Q01e1
         Sgbw==
X-Gm-Message-State: ANhLgQ1jIJgTpjd3aImjpx2prKdYQxrOGNSdJGhpXWuNfAmlIbFLIU4j
	KHVCvgu60ihO4tk8UvA9msk=
X-Received: by 2002:a5d:5230:: with SMTP id i16mr4361972wra.15.1584797389451;
        Sat, 21 Mar 2020 06:29:49 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.115.229])
        by smtp.gmail.com with ESMTPSA id p15sm13285663wro.68.2020.03.21.06.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 06:29:48 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Jaroslav Kysela <perex@perex.cz>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH] Staging: hp: Replace printk(KERN_WARNING ..) with netdev_warn().
Date: Sat, 21 Mar 2020 09:29:19 -0400
Message-Id: <20200321132919.27704-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixup the following Checkpatch.pl WARNING:
WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ...
then dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/hp/hp100.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index b89c4dcf53f5..89af70571661 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -469,8 +469,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 
 	eid = hp100_read_id(ioaddr);
 	if (eid == NULL) {	/* bad checksum? */
-		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
-		       __func__, ioaddr);
+		netdev_warn(dev,
+			    " : bad ID checksum at base port 0x%x\n", ioaddr);
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
+			    " : bad lan address checksum at port 0x%x)\n",
+			    ioaddr);
 		err = -EIO;
 		goto out2;
 	}
-- 
2.20.1


