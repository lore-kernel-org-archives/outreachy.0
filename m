X-GM-THRID: 6749203879083114496
X-Received: by 2002:a2e:b4d3:: with SMTP id r19mr7169798ljm.143.1571421483457;
        Fri, 18 Oct 2019 10:58:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9d44:: with SMTP id y4ls845315ljj.4.gmail; Fri, 18 Oct
 2019 10:58:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvvn0rUvAp+HhNfj+DII6fPuHqTG2GupISU/bmvNYLa4DaHfmcW8pV7qtI9Eeob7NFR/87
X-Received: by 2002:a2e:8e87:: with SMTP id z7mr7018486ljk.9.1571421482199;
        Fri, 18 Oct 2019 10:58:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571421482; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9ahD3N8o1IOBNu2xPOS+SjgnOssSkXYmBNMXgy0xyyv27ak6ks7HqfkV4GM14oU36
         ZDwVASLb60bXw1rCb1WdE39XStdi0L3ZJW0g+oGHxxmMz0N+/wG1SVH13zG0FYdwyP+Z
         ZLA8beNgpPQ+V0I6Q0jeen8/YqbUGbgaSk0MfH3qLTB13OAQFF4vK25+EyxEtIcP0SNj
         Gwt5khKQMVplUxXT3WZ6SGH2ULBsmglwuTFYOOAjsGvnPnXzq9pUH1Y4i9rX5o4LokS0
         p3t7bt0MGdnPh4aH5pCCcFHNV7FzoFx7B0/GQoFVisP11pJww46L2M9owHgjePvhvn7v
         Oazw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Jy5FrCCaNiZILh5YTwAzMH6Y+j38agph+8kk5ldwrr0=;
        b=lTcV7FVyndLQ0TF5Ngj5RXDcVJ68fqqg+NIXyvI55kQWq9xGx0tlEZ8MF0E1vJKBBy
         0arw1K0pQmqKQUOYTi5m85LiqBoNgXcF5NtNXgx10nrENlPtFwujXM1U1niNjvl3OgYo
         Mb3QAlFoFg810bD6HFFKlVhZCHMy+XSfd+Dg51ktMKJwz+bI2DmdTrSy20O5tS+qwthB
         f/YrUKASmBeTcN2G0DFTpNnn/JN+YK5f/CCDMyT7EhTYnzeSBgZb3gqPZEuZdQXFFR0o
         hqlHf5/bnbV2oN4wdqN+HEwjjACIhFWRJy754gKctSyel6TU9LqmsXCxEPmuKFnwqJui
         eqOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c5F9pOrs;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id k24si282404lji.3.2019.10.18.10.58.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:58:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c5F9pOrs;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42d.google.com with SMTP id r3so7186508wrj.6
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Oct 2019 10:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Jy5FrCCaNiZILh5YTwAzMH6Y+j38agph+8kk5ldwrr0=;
        b=c5F9pOrsYhd+xk8+slZHlFzrpSSym3go27s5n76qOiAFomS1KxIgVZYUkE5b8dV2mt
         85ETxVv0rBsJemnnC7ZovIF+8ZgPGXsqg4AwpYf4Hh/GB+ZHs2V5aoAwyzCSX+pwcIlQ
         MkWmq14gRWe3ZEnAXDuX3mlCxJULKCoDMlYUVZ8cB7iW7vhQmDflhqBv3amVl4wGHEqV
         f94EPW6F5a1Px6dzbtXsb5YdxZ/lJMIpmwTOjw8dOJMwkUCtmVBwnmsevEdsOpfTDhqo
         ++K/szAYZXpN6MctGBMRUi0wqIjYsLTA3pEijmbcK1rYUhxdPWDIpNiAm6E7Bxcdw6cs
         iFAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Jy5FrCCaNiZILh5YTwAzMH6Y+j38agph+8kk5ldwrr0=;
        b=P+hSqcoAjheF8qXdYcCEFuRpnrxSCe+NCCDNzqEmSI8gUiGTG2XiyeKbsixOQs51y4
         1aL2tOMumItup1PGuyUlBJ2bT7N3efQxaMIrtLbuaL1ZTEMOwn7Ut20i8omwAAIXv/nD
         DgtGlBhnFMm4/E/ITuHYYAT31dJi+tv1l0zJLqp03/C16xA46LE+q4x63XFgwOlJtpD2
         ZGw9aTSIVjOOTxcm4mN+MO/Et6DUD9lrQ6cmwCFHropVrGjxkAGvqMe5dSx0W0DhCsqR
         DwvZ8fwGmKjV2vz6hAYutzpcrUFvf93kiTiZNfCriaRkpiGFqdeZ/grdFl5+TuAgKovQ
         AIhw==
X-Gm-Message-State: APjAAAWqxbyLrgkqBKENTHl9phth/3OacMFTQ7FLwA+KI+ODUwllK8pg
	+J81jLG8N35Fn87WoZqm40uLilFxaSU=
X-Received: by 2002:a5d:658e:: with SMTP id q14mr9660078wru.380.1571421481507;
        Fri, 18 Oct 2019 10:58:01 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:c94:5be4:ddaf:8143])
        by smtp.gmail.com with ESMTPSA id b12sm6096465wrt.21.2019.10.18.10.58.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 18 Oct 2019 10:58:01 -0700 (PDT)
Date: Fri, 18 Oct 2019 18:57:59 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: Netlogic: Fix spelling mistake
Message-ID: <20191018175759.GA8294@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Change "standred" on line 3 to "standard"

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/netlogic/TODO | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/TODO b/drivers/staging/netlogic/TODO
index de8fb8009ce3..20e22ecb9903 100644
--- a/drivers/staging/netlogic/TODO
+++ b/drivers/staging/netlogic/TODO
@@ -1,6 +1,6 @@
 * Implementing 64bit stat counter in software
 * All memory allocation should be changed to DMA allocations
-* Changing comments into linux standred format
+* Changing comments into linux standard format
 
 Please send patches
 To:
-- 
2.17.1


