X-GM-THRID: 6665628449675149312
X-Received: by 2002:a63:dd17:: with SMTP id t23mr5757243pgg.28.1551991200979;
        Thu, 07 Mar 2019 12:40:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls3537639plb.2.gmail; Thu,
 07 Mar 2019 12:40:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqzd2G573TeyVLL7BMwobKhxIJ+/lOc3OX63tWCZ2AkebRfZT68ckAOlCM/wAt9lcRdZHE9H
X-Received: by 2002:a17:902:f83:: with SMTP id 3mr4636309plz.92.1551991200323;
        Thu, 07 Mar 2019 12:40:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551991200; cv=none;
        d=google.com; s=arc-20160816;
        b=Fu62u48uAwrCyOACmTQyoYf2CdF3eK5MPD5rA0EfRtnidHiNVB4nayIOZPbSNoDtma
         2QxIIHloxXiLZDc761A22lHoVis6Hf8/DEQSQTWMIhPRRJBG04EEO4ZIbiq7ZepQEhnT
         t9vY/s56OTc/EDweCL+9SHm/aJwMlGgP97/i8OOYzVXZYppWaViz2SdOIVgVVd03Ck+Q
         STN4HMSep8SKWR5SN0Zx1Q9iKo2cuRvZ70xxxp72uKUMF4vhUvwciulSv5nQupT6McBM
         VpedFGYswpNrfnyDl2E25dB1fuM7EkTjKDJ2T2X9Xd+9GhvXPyAD80Aj0364VYqflp7V
         mwDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=GVOZpAwtOSYAv+gwwBwyBmn5i12XzjMDlLaH/q4CCII=;
        b=M5ejJlXFP4/UY/xOZFjExipJDqSglC6XXHDx8kPpQNVV685DMjpCp0xnewoy+EwSTR
         +rppwElvGFyQYTKBukedeGvybEoHAIrSdTfa9+cY/muZ2g4BM4zusj1g2RMUQW9kK94j
         2GJZkuUuAgk1qdJ0rMmthgzuAo+GJxRnG6sZuoty3JPOCkWF+OLnb8lwYuaClFEVeJcJ
         Pmipm7PHD1PQM3SJDkzHzXANbjbmhiQkaUuHBfEfzXF9NGdSLPFkcAORLmw62F900CJf
         w03hrqaAGacSF+neqUf7r0mYgGmacTn+1FtDcqdB7wXIiJJwf1slMfkG6ikt4mwmXKS0
         NN+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mub9fk33;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id j8si267816plk.3.2019.03.07.12.40.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:40:00 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mub9fk33;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id b4so13971368oif.6
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 12:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GVOZpAwtOSYAv+gwwBwyBmn5i12XzjMDlLaH/q4CCII=;
        b=Mub9fk339l2tDa9wr0al/Hro/N/T3tyHtZTavs79N1J8E3B9aN+sIzRS7StypvNQ8L
         IGEkh6AK+Ud4rtaYNZpXphD0PykOWIn+LQBXM2d4HFRUglWxPmy9KJ8Ldbo/3t9nCEN1
         jNaE73cUpalyy/j94pMdbwCu72KM1Cx+CMjqu0MWwCiJ2ZCttYqB7+M2OSkRMDPKvdH1
         kOMOwknWuQHr9cu3yKN3YoIDmCYVbyNTngVyoZ99k41t6t5OwqxqClkrY+ygSCY08NOv
         KeEO5L/aVuJFkum6pG9sAv2LdjVAifqxZOMOD5QqHxRpyi5qZOcb/KXNDR3mW1kX8sSh
         F3OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GVOZpAwtOSYAv+gwwBwyBmn5i12XzjMDlLaH/q4CCII=;
        b=DAJ2zQb90M8JQXGkzaW3jVjQHoMdNnzBoXM5S+6gNpMZLRdbd9vMuY5xaUM4m5lztf
         pYPXnRQZVQ4OwkYGAvzB0t0wnX0VATBmEhq5ju0CrTvc9sVnZqwF9fIvVDaI3GQBEgjW
         TPRgNrLFW0JaxeF6De9KXW+9VYmK582UlL5pkfn1tlQf8TPjLugUXOKZhHD/jUY6uuDR
         2QTaHIWUcbBk6yYsgVM7EP/Xl3QcBFkJ9vkojsJB2rZtGvfByjY/Xe+FKJLlRx7evwCX
         V2NaUSIq+OrKmRDox35PYRX35L+ojSMUdNrJA/J5kgpeswLKEawAYrl4hDZUHofL7rFv
         bpLw==
X-Gm-Message-State: APjAAAXzq5T5MJtMCq60L8e7MK5HxVZAErvMX0ggdP+0MdB0CAh7FXbn
	ViAVs1dKGpDDQGrA7jPCg1Y=
X-Received: by 2002:aca:b208:: with SMTP id b8mr6415984oif.40.1551991199802;
        Thu, 07 Mar 2019 12:39:59 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id c131sm2038397oif.3.2019.03.07.12.39.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 12:39:59 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Remove an unused function
Date: Thu,  7 Mar 2019 14:39:54 -0600
Message-Id: <20190307203954.7472-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove an unused function, as it is never called in kernel tree.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.c | 7 -------
 drivers/staging/vt6655/mac.h | 2 --
 2 files changed, 9 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 40a8f1ce837c..2f773fdf8d64 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -57,13 +57,6 @@
  * Return Value: true if all test bits On; otherwise false
  *
  */
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits)
-{
-	void __iomem *io_base = priv->PortOffset;
-
-	return (ioread8(io_base + byRegOfs) & byTestBits) == byTestBits;
-}
 
 /*
  * Description:
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 59538ac09fc5..c7888c4e96f2 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -876,8 +876,6 @@ do {								\
 #define MACvSetRFLE_LatchBase(iobase)                                 \
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
 
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits);
 bool MACbIsRegBitsOff(struct vnt_private *priv, unsigned char byRegOfs,
 		      unsigned char byTestBits);
 
-- 
2.17.1


