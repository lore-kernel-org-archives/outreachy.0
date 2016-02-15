X-GM-THRID: 6251304948617707520
X-Received: by 10.66.142.80 with SMTP id ru16mr7904060pab.2.1455495354038;
        Sun, 14 Feb 2016 16:15:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.55.103 with SMTP id r7ls1327270obp.34.gmail; Sun, 14 Feb
 2016 16:15:53 -0800 (PST)
X-Received: by 10.182.125.132 with SMTP id mq4mr14013916obb.22.1455495353558;
        Sun, 14 Feb 2016 16:15:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x232.google.com (mail-qk0-x232.google.com. [2607:f8b0:400d:c09::232])
        by gmr-mx.google.com with ESMTPS id i133si1935689ywe.7.2016.02.14.16.15.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:15:53 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) client-ip=2607:f8b0:400d:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x232.google.com with SMTP id s68so50494117qkh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 16:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=kw1N5tK4pvDDShk/SmZB0R38m5UuEnA0TJGL60Yivco=;
        b=0qw+mAF9++2pvtePBsvykDIPstlh6B8vNhkdnkUKzLSVRHAC6VlQhfHLeO7nOkaG8d
         rWu3Abbzj46IxZ/yBLEDEmYN4V9RNsGaFMHp7gPmi2nBidEnepo2fYmyHSCa0FKbMqsu
         1ZDpBYie9M918+4Hm+EZovhBOXj9bk5SHoe6tDRa88/YOHw0EjaH1AmOE/5WcpQWUWpr
         Uw3bLYxe27aPXS7soOOQxNhEs+TIcFIdtlnScbfL9JCqj1YEhp9JY88253EEH4aMIXjS
         OUcLJEeE3/X8FuSJuBt8iktUjGI+gxS9WhW54MhLr1BvUjiTTzBOe9PK9IzDvn3/JA6X
         RA8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=kw1N5tK4pvDDShk/SmZB0R38m5UuEnA0TJGL60Yivco=;
        b=moAKkJrkX69lSuJiitnp5rqnCDAHJFX43ASqZwsU6U9qYx9Dyj5J1HN02WmZT/Ne3h
         ci3U3A6e28jag0/I5hwPamtEOmrxNEYJBH7x3hgS+BUzR9YDTE0LQQ0DFkYF3fCFZNQt
         SakC9tpjiOpwHGDqf+AG8CWRwHr23jUZ9uPRzw/ppPp6wIEmk657TXDmMs/tcsn/UAhr
         dZsMBa2O6DDyHct/Q3qAF1b9Jr7kQJPbAoPiHVk/C5MT+QYXQuJnDdNi4SyAZpeOnmqh
         pxjthF1UQEePdKbDL2B3u8ysBAC3nxgXTB5pwr27SfTN17dHSH0prr1i1EqsKtoCv+fQ
         +XEw==
X-Gm-Message-State: AG10YOQoJ03dhW2TRBqgM4wl5gJoEy1kkzzcE2BjdO22cOzgp2DQxKWcTCvn8UrIL8GAHw==
X-Received: by 10.55.76.84 with SMTP id z81mr16895581qka.17.1455495353412;
        Sun, 14 Feb 2016 16:15:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:1481:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id n203sm10053178qhc.43.2016.02.14.16.15.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:15:52 -0800 (PST)
Date: Mon, 15 Feb 2016 00:15:12 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Add missing blank line after declaration
Message-ID: <20160215051512.GA3115@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Add missing blank line after declaration of variables. Issue found by
checkpatch.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/vt6655/mac.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index e74782a..79e42d0 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -488,6 +488,7 @@ bool MACbSafeTxOff(struct vnt_private *priv)
 bool MACbSafeStop(struct vnt_private *priv)
 {
 	void __iomem *dwIoBase = priv->PortOffset;
+
 	MACvRegBitsOff(dwIoBase, MAC_REG_TCR, TCR_AUTOBCNTX);
 
 	if (!MACbSafeRxOff(priv)) {
-- 
2.5.0


