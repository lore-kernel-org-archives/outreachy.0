X-GM-THRID: 6261199575440162816
X-Received: by 10.182.118.169 with SMTP id kn9mr11595319obb.11.1457799127103;
        Sat, 12 Mar 2016 08:12:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.99 with SMTP id u90ls3445180qgd.68.gmail; Sat, 12 Mar
 2016 08:12:06 -0800 (PST)
X-Received: by 10.13.203.135 with SMTP id n129mr11529521ywd.46.1457799126202;
        Sat, 12 Mar 2016 08:12:06 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id y20si2036413pfa.2.2016.03.12.08.12.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 08:12:06 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id 124so105103158pfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 08:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=K3yhK1g7atFr6y54BD2tkTVmnlVHdYg4qDVRo+j8+co=;
        b=pFTkY4wxfSvvff+WBlHlj4tR1Bw6sH0in4eM2LvRQDNJ/NV/lBUqSuYVsAs/U9Nlip
         Eye23eEZ65ywuQcQ6hIixmzkR3mIURIKANRZe8bwiN/O0ckOfwacX33GEuP4xQ5S5Gc/
         5/P22+ukCcLqK8W6dIdKhw7/Y4081bGs/F5rrYDMxL4kWu69biUyaYrtcBdDm8lG/zJw
         2MS8NhK+dYUuTDH5W14uAKUaAAVHBP4O37GJPVRoPYAYGyHAO0RzbivYXaDWWZSjf52b
         dmHVbP20VKxtxyFGV6y0LHptGxNssRLak9aS0Rijn13gmTpzUyg2GBlEDID0QXc5Ifcv
         g5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=K3yhK1g7atFr6y54BD2tkTVmnlVHdYg4qDVRo+j8+co=;
        b=S9jl8g7sfjkmFXwnrr4alO8VlqF2fXGg9/f74ZGTgBoE/WGs2ngIdvcMhBMNRD05XJ
         QiSJhfbCcU8F2WZ2hw+98+oTS9U89q9fA4SFB7nEe2aANNwlIfws7xLHS4/iC9dMxUXe
         gcuKUHnzyEp9yqO9bypGESOAymFg6wDkEd8BQJvqKuop2jdNNnh7g+2+BakJDcGmc6v9
         Ef1WsMsNnBKvf5TDz/8yQud32L25j/njey49wBRorZD3+1qpYWzLsK61+LRKZa0fcJbW
         OxmdYhDIlhkWdDyP8O0ZeaWFZwT7fatIGbZ0HUUbpXfh7kB+As64I7jNaIsiOGZ2cLs1
         whag==
X-Gm-Message-State: AD7BkJJiT/QJnsMGbpRxXoTcRtX7ZfDksWmXdfm7zdAmN9DHHSbP1Io7KIhbOYbWurWczg==
X-Received: by 10.98.64.202 with SMTP id f71mr16813453pfd.113.1457799126012;
        Sat, 12 Mar 2016 08:12:06 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id c9sm20703188pfd.90.2016.03.12.08.12.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 08:12:05 -0800 (PST)
Date: Sat, 12 Mar 2016 21:41:52 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: staging: wilc1000: else is not generally useful
 after a break or return
Message-ID: <20160312161141.GA3241@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove else after a break. Because else is generally not useful after a break or return.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index fd938fb..704771a 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -626,14 +626,13 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 
 			if ((reg & 0x1) == 0) {
 				break;
-			} else {
+			}
 				counter++;
 				if (counter > 200) {
 					counter = 0;
 					ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, 0);
 					break;
-				}
-			}
+					}
 		} while (!wilc->quit);
 
 		if (!ret)
@@ -679,9 +678,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				if (!ret)
 					break;
 				break;
-			} else {
-				break;
 			}
+			break;
 		} while (1);
 
 		if (!ret)
-- 
1.9.1


