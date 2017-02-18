X-GM-THRID: 6388469372118106112
X-Received: by 10.129.138.194 with SMTP id a185mr4749311ywg.62.1487431435368;
        Sat, 18 Feb 2017 07:23:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls6711640otb.2.gmail; Sat, 18 Feb
 2017 07:23:55 -0800 (PST)
X-Received: by 10.200.51.85 with SMTP id u21mr3774746qta.39.1487431434987;
        Sat, 18 Feb 2017 07:23:54 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 23si1407009pfw.4.2017.02.18.07.23.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 07:23:54 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 68so6336207pfx.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 07:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8rN/dUVo5U457Uv6tEzT8iHmwwPjHVX9uDE8xDuZqT8=;
        b=ED5xCmfogSqlKwthrp32VZr6e9U1gjKmHt8fsnjUW/TbBV3BCiS1cHKNC3XelckXNT
         v02i+/wDViBYLiUF2n/tk+xNAO2sB7ger5m1r2fQ/KfonFn/iDGpgda2YPh9kOv1bGWK
         NfUcVSXY+e9NaIsbkEZbnIwEHGwqTTgFOq0R5+hVGOW1Vb/r+3wgCCVvI+I3VD+HXIag
         VeV0b3DZ8UdOb37bhFi5C829v67VPtA/ek9636ByD0hDODfuPyxy0alhq7uwnVyxs+bZ
         w0baRkeMJ8GF06V/UaA816rrvT7OdVtqw8XMqNNDWKdNdksfZKQri9OIAuFEV+nBkDPs
         BsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8rN/dUVo5U457Uv6tEzT8iHmwwPjHVX9uDE8xDuZqT8=;
        b=FRBrWIote8XKRVExfXHCR61GTg9jtXwdDF45YzYAJgA37H/ZK+rGllbtEnTaMkusX8
         2Teo5Fal63TcE+F6isU2EtnYiI8tysiyEYpq55MYyCzsEmNy4pQ1pkwWU2Bh7YZyoSb8
         CcnFbWm5wDi+nRKkjQrfiiE2PPYM/lWfe3sontYqdIpma3N7DxzZEVcP6xJXrrIsvMcE
         bmrOIWLoZQeoGD+j4RwKSk2GkR6zxmsHBf1lm+bHbxFBstGen/xWSa5uTx8KmpDPyn4E
         GZ/nC0t9+3KBcKVFihber1pz8NG2gbw84IIZ04AtC2iB5eR4iNzbFpFySoikVgiWA5rv
         iCkA==
X-Gm-Message-State: AMke39mYDlrTbbvPhTF+bo3SWf7Jy4B7e3ofR3azwxw80G/wbQZvmW5Azb8tpUGHtt/wQg==
X-Received: by 10.98.87.142 with SMTP id i14mr15525828pfj.85.1487431434772;
        Sat, 18 Feb 2017 07:23:54 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p66sm25915045pfb.88.2017.02.18.07.23.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 07:23:53 -0800 (PST)
Date: Sat, 18 Feb 2017 20:53:51 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: rtl8192e: Fix block comments warning
Message-ID: <20170218152351.GA28908@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Align * on a line, to conform to the kernal coding
style for block comments.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HT.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index 6eb018f..48d101a 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -11,7 +11,7 @@
  *
  * Contact Information:
  * wlanfae <wlanfae@realtek.com>
-******************************************************************************/
+ ******************************************************************************/
 #ifndef _RTL819XU_HTTYPE_H_
 #define _RTL819XU_HTTYPE_H_
 
-- 
2.7.4


