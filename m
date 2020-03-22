X-GM-THRID: 6806929906514001920
X-Received: by 2002:a17:906:3e49:: with SMTP id t9mr4278211eji.302.1584861871542;
        Sun, 22 Mar 2020 00:24:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:99d5:: with SMTP id n21ls6116693edb.10.gmail; Sun, 22
 Mar 2020 00:24:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvMPgjU3YJAaGrADoIMRbe5FopPci2cReiGNof/hy0X8OjX92xKnFQl2gRSJPKC9dltbpaa
X-Received: by 2002:a05:6402:369:: with SMTP id s9mr15993453edw.349.1584861870137;
        Sun, 22 Mar 2020 00:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584861870; cv=none;
        d=google.com; s=arc-20160816;
        b=FMhAwRpWXG8ytoPKL3JMKaLGk+fkJZmbHBFKXa/Ugd4adVOasCt+L0w9UNbk+Su8Yn
         xBgHYXto5XoNdkkBCg4P1anAvh7Fx48L1V8BhwnO1/VN+7lpiitGr+30C73axEc5zern
         fImvgIOgFpDAAjlLBCLI7q1NuVKvsrf0j4us7eeXVEgz/wte7gaa5P5MtgTu/TfVUWeU
         RRlwvlsqt0Ef2uKYJDtNHKN5a0lpp0tAxVJK10eztfDT7tZAp43Yju7IaKYLGPmLKSqx
         ukK3PAZjJt6lliUdE1jcZs+nQMvjbwNrG/mTcdnCxCv8ON3lpN1RKcJxbk/Rykp/TCmP
         5aXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FmO64lNnP8XHOVR8+a73+Y8HlkaVbA85keLWNbJI3Ek=;
        b=sn7c+TYuoaRE+ToMPjMsNXVXWaVPXomgQKdbUwGCzKoVnE0f6eS06fAXp7RsPHhQnx
         DQUtWPfdQ28O9uETzsZTu4CMht/VJKj4q/v7SWfzL5wCOwtwO8ywKPbW/zPURJHFhw1T
         4OhlQ59GCCswhp89GzVUVdOficr330JVKYnv6k98mCLaU74a1XrVRH18HZ6kxeICYytd
         ukdUXNFnY1iUnjiXKqZoqubNS96mlC8Nn4kVI0bkNYQqbdJjLYnnY7xp+2a8Vxubie3b
         eTtqeMMRGgMPYwEsln6ILwVv9Vm1uGYeZWhO8tjVlwmL1L1ZgAb6wJI9P9RnNhBrmNaT
         o2YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LKBfDGQt;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b6si46258edq.3.2020.03.22.00.24.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 00:24:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LKBfDGQt;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id f3so12513496wrw.7
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 00:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FmO64lNnP8XHOVR8+a73+Y8HlkaVbA85keLWNbJI3Ek=;
        b=LKBfDGQtz4+A+nfYuhjMIOJBUhu2+31K5oYvtMBjlfIBS8MkBN2K8MbCkskiVcVwee
         t07TNj5LfzayfBr3BkygQYzK5l+5YO0B3GvLkBXJsaMFznq4jMRZi+9UELaXZ7zDxhG2
         b5QYrgcYy53+k9jzq/XOlXxf4aresaFXWa82OVKu2C2ZCUkUw0jBiXR9s9LToZzYsR+z
         wSYeFL0vjRWmlE3UcKe7gDifqmQ1oL0Idu8kckvzOdcDTma2/J1wo+y3FObeMCyBiiWT
         HWRoldRCjHwVFev1ae60FmHcO8gnYeJuzVpVUJBqbTJeq9wRkGjJnfJDoBMaxK1XWJLL
         gckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FmO64lNnP8XHOVR8+a73+Y8HlkaVbA85keLWNbJI3Ek=;
        b=qEvTHmXTIcHxdqvQteAe2n5rKk1aenj9dd9O5ykpXAFJrEgYlkT/pmWQVSGazn7L30
         s70Oi5tcQpLgap6uFZaFq3zFiFjykMbKWWUBfJotCJs3wfrBPuSmHKGgvprJrg3QgSLA
         3R5qUM5amZkp7YkDr7zYOx9rhvKkQfZLKE2l57iLV5sYXpZuG2iV4CxG8/8K4QppqhNr
         yitYnuLPBoejahLaReOtoOPHEEV7evbG7Zdy4Bckod6CPe/Cb16ie7bkuCHV4EOhBDSY
         X/1ax98ITKOkYuL41NDqiBC0t/1CJpL1ByUMT7RiC9SV1ugaOzYUG69M+id4f+pKVE/1
         M5Ow==
X-Gm-Message-State: ANhLgQ09C4O8wd86bX8aWWxBUdcRumniq9MjtVDnM94KIBtPBRzKuPQk
	lIAhcOoc6MrJMPFZXV05+Wo=
X-Received: by 2002:a05:6000:1203:: with SMTP id e3mr23001855wrx.166.1584861869857;
        Sun, 22 Mar 2020 00:24:29 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.132.208])
        by smtp.gmail.com with ESMTPSA id w204sm16848330wma.1.2020.03.22.00.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 00:24:29 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Jaroslav Kysela <perex@perex.cz>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v3] Staging: hp: Use netdev_warn().
Date: Sun, 22 Mar 2020 03:24:24 -0400
Message-Id: <20200322072424.3922-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This replaces printk(KERN_WARNING ..) with netdev_warn(),
as the use of printk(KERN_<LEVEL> ..) isn't preferred when
a struct net_device is available.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v3:
- Update subject line and log message to be more clear and descriptive.

Changes in v2:
- Remove the " : " from the print message, netdev_warn() doesn't need it.

 drivers/staging/hp/hp100.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index b89c4dcf53f5..1afd511260d0 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,

 	eid = hp100_read_id(ioaddr);
 	if (eid == NULL) {	/* bad checksum? */
-		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
-		       __func__, ioaddr);
+		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
 		goto out2;
 	}

@@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
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


