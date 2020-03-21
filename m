X-GM-THRID: 6806733335671341056
X-Received: by 2002:a2e:8644:: with SMTP id i4mr9548116ljj.20.1584816103023;
        Sat, 21 Mar 2020 11:41:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:96:: with SMTP id 22ls2050814ljq.0.gmail; Sat, 21
 Mar 2020 11:41:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs1Y+t1uySiNGER1KKknH8s/0Akra3qUfFSCRShSTqan2S4GroJbVty1jPfESEnXyxkUWfa
X-Received: by 2002:a2e:a58e:: with SMTP id m14mr9028788ljp.204.1584816101543;
        Sat, 21 Mar 2020 11:41:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584816101; cv=none;
        d=google.com; s=arc-20160816;
        b=VikmQaNXIr3hVMlGdRZVdIZegzGW3kTiUMwqPdPHbQhZ2OXDOzXUkYquM7bA1Bxki0
         SWFM3/IruUA2TI/+x7B3CyoTTk/hZEBpJEM8r1tmPQMx1HphJDNM9FvAiyLCnVtc3Iew
         /paPx37TwdaTwOcGyglbhaD3+j9KhSLwiZkoxiwxJLohLwLYe3rta6G8xCdV/YJv9Mmr
         DtsNQYWl3cRe0mHiWtxibcRtg/ZT3+F9HuRYm0ocCwdk/euSsmRV1IizwFJx+rS+EDh8
         +ulq+QANkGdbCGoTGxm1fpMj19YVbRFozw2W4fwzBWO8+jAlWtvlKu50jaFMc15rR3mK
         9DmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aC6M59aoMXj2m3kAoTs9WkKSxrKZSN6mY0gKo/aYTcU=;
        b=JtOwabJLT1f6rVJn/g2AoYnA6gDei9CCW9k/Wu0g6W5dfmmEPXMmmFRCtvqLkXY88s
         VD7loo4XZKctBOPT62vW17nTVfx0WXLFwKDECUTM2+qe/jvtH+D4NwtJi4mGa7nU+JQ1
         IZrKiajcOTaOe0xzsQwERM2PnIqugDw3V81OxX3j8i3fqXIRrehdNmN+XxfNMTcp3rq9
         1e8+wW5AMkkIfVp/ElBbFysmJfG6GwEl61QzsatgfMRTiIhF9b/3mI+9NptQyAc4dsuM
         unNrr14XMkEjuwqh00L6JaeyfNHm1+T7ldKMrQhq0Yql08dmRY/99GXH4z77+bSK8sJe
         EByw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nzdpzDBi;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id q17si322344lfe.4.2020.03.21.11.41.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 11:41:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nzdpzDBi;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id h9so11533604wrc.8
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 11:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aC6M59aoMXj2m3kAoTs9WkKSxrKZSN6mY0gKo/aYTcU=;
        b=nzdpzDBiTDMBzWNV3puULPzX1eDTZe69t8mcLoGLivQ5p9lMqeGLXjiqgqIG1to1wS
         kcw1gNcVVGBBIb264h9RT7NbjnSY3EodQmOXdAde/ikJdaQxapy25loQLbDj/XToUKXf
         mai/pUd7wWhoDFCB02w8tmRFNBcA7SmPTR9nm1fyAlj9zJ+RWm5MK3+o15YBslewO0/C
         q19peP0Z/5Zrf3u6zKrq8T7HqnOu4BCS56Z5VvziPJnPjVtEFe4A4Ss2qBS+jAfnM1fR
         X95NnJTMxPQorxJUZEtjPjWH/q9ulb9MlD3o0A/OtI7aL2+WPoKNGc0mm9di60Nli1/4
         lHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aC6M59aoMXj2m3kAoTs9WkKSxrKZSN6mY0gKo/aYTcU=;
        b=UD/HsAqEco6osU5Q18NwKahxmNfW0JEBESWOOcZr1aKVdq4pujFkjy+tCxOukTfKIs
         3OXm+44iB+P22xXG7TPkLH5yA55Um6fIpyYTokeU0/jm4uW6TjnvLfm6WLoJxuueRbE4
         m2zFZuJpl16SAEX7Qmvy9M+Izl1MdOIx2C0/poxozv0M0pO+zCc37tx+lEDAfYy7MgGR
         3U6DhF3In1AxpUORYxUHQI/03modIutlEtsolu0ipSSXFt0kmjTKNF7HBwz64/835xh/
         CDa9oKk6R0Sm6voNA66oKbXFflrX7vDCLgoupn+N0BUfkblH62mCQ7+PygSXyM3pajp4
         F7nQ==
X-Gm-Message-State: ANhLgQ0ptSU7FYcI1KfTFq2rsJpCMTvduyLbMmTy9WTG24uPL9//Hhf9
	8MQDI4Rb7AugS7ZbYdzX2X3WhGi816c=
X-Received: by 2002:adf:a1d6:: with SMTP id v22mr19215830wrv.416.1584816100864;
        Sat, 21 Mar 2020 11:41:40 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.115.229])
        by smtp.gmail.com with ESMTPSA id 61sm15966412wrn.82.2020.03.21.11.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 11:41:40 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Jaroslav Kysela <perex@perex.cz>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2] Staging: hp: Replace printk(KERN_WARNING ...) with netdev_warn().
Date: Sat, 21 Mar 2020 14:41:32 -0400
Message-Id: <20200321184132.1908-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixup the following checkpatch.pl WARNING:
WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ...
then dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- Removing " : " in the print message, netdev_warn() doesn't need it.

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


