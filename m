X-GM-THRID: 6400148461910491136
X-Received: by 10.157.33.117 with SMTP id l50mr18169633otd.57.1490150685283;
        Tue, 21 Mar 2017 19:44:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls877093oth.13.gmail; Tue, 21 Mar
 2017 19:44:44 -0700 (PDT)
X-Received: by 10.157.17.228 with SMTP id y33mr17481326oty.102.1490150684631;
        Tue, 21 Mar 2017 19:44:44 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s67si2498pfs.4.2017.03.21.19.44.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 19:44:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id w20so3153462pgc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 19:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LoLg/jiCXUkIexxSczHtrdD3gHe+xKqPYMDZimhF77w=;
        b=TqryupnGTlERfz/3eVvtoPTJaEwkU0qsuN80icTMBEVnv+z1hh6p6hwj5YrP0m5Yjc
         8rTm9QXVt1VxAQ7Wcn2Zu8YwghYLGlFB3ZVpBq92Z6ea1rn/8MBFIRM3KMluS52++usV
         7Iu8ujXXSBXBFSD25es2IwvsDVQxkneKNaJwOv9Mt9WlcC+YHe0z7TVpWTLrv7bpXnOT
         VGMYB/MQ8Z/WptavkQq6Ni90u24FmUBqqkRg3PqBsJIdTi35KX2iv7BJ36jig9ZgHQx4
         B4vnvgH0BMOQCR7U1RGKNvatSd5228ITUH1tF0X63nS4Yv6FIBXt+yei4vv7r4/cgXck
         gfpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LoLg/jiCXUkIexxSczHtrdD3gHe+xKqPYMDZimhF77w=;
        b=qSCFhsF8e1ZNUjtLVOsN/RnhCMD7Ykl2I2hC2qNObXNvaP1fEYKRwsdsOfmMhCAXjT
         rnixhGDl9QKQSLM4vnRyJuK/p0g76OZeU1yDEJPvSfWuiNLXteL2D9GHzueero+4ZrUk
         axxX33aW4ryRmanB9gQYDRheh8boM0Xw7sidpCacbHRhNsJqQcxTYtsQxflNaPdNyf1G
         N45mngWiNbcIYyct8aYzA1tQM5/mt8xPoqjeJy8HR7lUp1rrvruNGobeIiQKw8nHiPYd
         bjX28ofZxcJG8ilLO+VBR0B9t4sXyuMHfwdW5sZQQWxP/SEhJuSokiAh61MEqkwnzklI
         Wzcg==
X-Gm-Message-State: AFeK/H2ONsNNHmxfAGvUgKn9c+9ryMPIq84KpLBH1MhItjCp4pqpBGVnawPlqWVBAdrZvw==
X-Received: by 10.84.233.205 with SMTP id m13mr25799663pln.49.1490150684442;
        Tue, 21 Mar 2017 19:44:44 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 129sm7523pgj.59.2017.03.21.19.44.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 19:44:43 -0700 (PDT)
Date: Wed, 22 Mar 2017 08:14:39 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Replace a bit shift by a use of BIT.
Message-ID: <20170322024439.GA15700@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 7fe626583c8a..a17531b30c1d 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -503,7 +503,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 			switch (pattrib->encrypt) {	/*SEC_TYPE*/
 			case _WEP40_:
 			case _WEP104_:
-				ptxdesc->txdw1 |= cpu_to_le32((0x01 << 22) &
+				ptxdesc->txdw1 |= cpu_to_le32((BIT(22)) &
 						  0x00c00000);
 				/*KEY_ID when WEP is used;*/
 				ptxdesc->txdw1 |= cpu_to_le32((psecuritypriv->
-- 
2.11.0


