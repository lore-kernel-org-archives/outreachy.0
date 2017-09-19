X-GM-THRID: 6467580145196597248
X-Received: by 10.25.19.201 with SMTP id 70mr272275lft.35.1505850848932;
        Tue, 19 Sep 2017 12:54:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.130.138 with SMTP id e132ls42448wmd.22.canary-gmail; Tue,
 19 Sep 2017 12:54:08 -0700 (PDT)
X-Received: by 10.28.134.137 with SMTP id i131mr234376wmd.29.1505850848016;
        Tue, 19 Sep 2017 12:54:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505850848; cv=none;
        d=google.com; s=arc-20160816;
        b=GoHURunD+x93x5OjwxRPIWme2qgziRT8j9sgysOcUq5YfdATXINsqJ2X7Jz5tKpooo
         pXdzQasZFzoGAf/BR4KRKdLQ7wolnA7memkSxo+/I66bs70YKXZjVxhdoYNSW84C0pZd
         aXe0DGEvvDs8OuxFBopphME2eGhAjNFHuMtt28nClAceXSpa+04VfUT1n6G0JvuANqW2
         VJ7U8lSn/pv1XjwftRv+wgbtaIYPgvWUo2PkXRgqYlOvOWBQ+Ulelj8PURVy0GSrN/wY
         q6tUKCmwEgBwf2BoL2Nqw7Q10pRmMmYwbn0+mKQhaUaPz8CPtyFDMf+1YLgsXnwgzTiz
         1SeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature:arc-authentication-results;
        bh=FMrgP99UdNw5QKcuUva5QQzEb6RjI7f37Ei0TYezJMA=;
        b=FmtEP+/Gk5CLtcqkSWHyR/QG+URsv3NwNoVNyqUNL61gJDauW78vbNIka4qYyx4Vvo
         ZnA1ASGEbixlBBUHfdISS35tl2PztGA2bkXrYnjOkJghNaCLCIHE7Atn1fJWqfNebjYd
         MTvAO7G6jGcAQL3StvT3O8E/kOqPyivTzLDGFfbzxHJ6v/ZVWTeRVpldSNDerXO8Qnn4
         DK0hnqvGrHNScCvmQh8e81k7Un7eUVLvOu5fZCBlD+a7O6Aawrd/f1J4WFKoI40OGBST
         nY0ktNh4AnxDPjkZKDsulGF7rlG+LJukT4hf96HfM54z8bj5c/ZJo5fnSmCBfUPfDsuw
         WWlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZDanLndV;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id l133si3755wmb.3.2017.09.19.12.54.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 12:54:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZDanLndV;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id k20so348648wre.1
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 12:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FMrgP99UdNw5QKcuUva5QQzEb6RjI7f37Ei0TYezJMA=;
        b=ZDanLndV2MDroJfzfXfBCyglmlxUSy78NTm/14NxTfRUQ9zW2bZ3x1kmQEGsn4wzr+
         Ym32xfJxNxMz+NFwK/a0WbUAOwEecYLiWlwHxpYkqj4icY9yBdv9jyB9Qu42EKq0pvuI
         O22z6v6W+uZSRDHZad1/SExXrx20E3tKIUEQO6yLu1pFp9DdOW5TrvUtlzurIeKGyED2
         84gV3g5evY3AF7egZlGi23VCif34zprv/Wb23hyTVgXaTHY0bJ6rY/jBYVHbq2Cq/vvm
         vTDFZcLuEt7J6psxjeAI74FGy+Y30YUbxujqrGPjzwfvfteKWPmSAD/njkTDJr8BbTC8
         KfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FMrgP99UdNw5QKcuUva5QQzEb6RjI7f37Ei0TYezJMA=;
        b=aIJKEn/Mk8y86eutqfcRZ8NXzBQ7a3fC6wYkB4UPBHWGcTiWe7rpG+QZIIJOBHVCb9
         Ah5WCVnOFjYHw4LZtAskPWN/axixdGk1rOS1SYgcEl6PCrSX4ZA6Fwb/Kj/ADN/bGloG
         a9DrIuqUFKeF1Wq/4SrhH8LYW1gZOrkjEgBofIYU1QyvsdbHzeie09yVcJ+1dQ4SQBnB
         kJGCwXdSZmLYbVXd1Pi3hq0loTGd1Nyd566RvrNCme8hoyxrcymnHAHVzvPJ3TDRaByL
         9NUyDiUbFJm38axx0REpScHG0cdESpWt7Wpqqpc2K5KvIk1UKqQM1ByQ48t092JmXcw6
         m6+A==
X-Gm-Message-State: AHPjjUg4uUdj/LmNi8MfYIsIig/zo8QxZXTsXpJOAr9xHchNvp8Wuq1Q
	73YinZLRdyhus5KB0Cqci4bLMfu0
X-Google-Smtp-Source: AOwi7QD8bGcVbX0mg8aWXa0Ihc4syzV1TVjZ/EtXwjWWcFPc9Ge3X9zfqhg9r+ULXo+4XbHgG5F5hA==
X-Received: by 10.223.135.252 with SMTP id c57mr2202593wrc.204.1505850847749;
        Tue, 19 Sep 2017 12:54:07 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id m201sm64231wma.13.2017.09.19.12.54.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 12:54:07 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
X-Google-Original-From: Georgiana Chelu <georgiana.chelu93@example.com>
Date: Tue, 19 Sep 2017 22:54:06 +0300
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8192u: ieee80211: Use netdev_info instead of
 printk
Message-ID: <20170919195406.n6kztu5q3pnduhir@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Replace printk with netdev_info because struct ieee80211_device
contains a net_device structure.

Issue found by checkpatch.pl script.
WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 8aa38dcf0dfd..0f86195680e8 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -143,7 +143,7 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, P
 
 	if (ACT_ADDBARSP == type) {
 		// Status Code
-		printk(KERN_INFO "=====>to send ADDBARSP\n");
+		netdev_info(ieee->dev, "=====>to send ADDBARSP\n");
 
 		put_unaligned_le16(StatusCode, tag);
 		tag += 2;
@@ -345,7 +345,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
 	pBaTimeoutVal = (u16 *)(tag + 5);
 	pBaStartSeqCtrl = (PSEQUENCE_CONTROL)(req + 7);
 
-	printk(KERN_INFO "====================>rx ADDBAREQ from :%pM\n", dst);
+	netdev_info(ieee->dev, "====================>rx ADDBAREQ from :%pM\n", dst);
 //some other capability is not ready now.
 	if ((ieee->current_network.qos_data.active == 0) ||
 		(!ieee->pHTInfo->bCurrentHTSupport)) //||
-- 
2.11.0


