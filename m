X-GM-THRID: 6263344417274331136
X-Received: by 10.66.122.101 with SMTP id lr5mr11238747pab.3.1458298512046;
        Fri, 18 Mar 2016 03:55:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.127.177 with SMTP id nh17ls248121igb.21.canary; Fri, 18 Mar
 2016 03:55:11 -0700 (PDT)
X-Received: by 10.66.216.100 with SMTP id op4mr11419009pac.9.1458298511734;
        Fri, 18 Mar 2016 03:55:11 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id sf5si1989728pac.1.2016.03.18.03.55.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 03:55:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id n5so162726497pfn.2
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 03:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WyEDGPT3Um37nT6uwxbkjJouWogO7uhTR76f83Qfjgs=;
        b=nJ8b8VS5ulvNNxAkeUdM/Hyd9N/85rNljHb2GTxFSJmrwCZuoqyz6Zt3whW1sz7mz9
         3lxFy6pjmTgX4XC6W2PnzelZgCeWBGBSs84c78ddS5oQlMx0kUfW/CMpzGJTyRPU15FM
         0/ZGa6rDlC9k71FN0pqTuC27KRpRKN3Q8t4ntTcriM7LRbmP+K/I9PgEoSMVbn7Gyce5
         KcQRUKAHTPefF0fl5ZY5mD6Wc8SSbFznlihtFi8yUXCGjPtTxVXVfeMjwvPelhwZexzt
         bKYFN5KP9COp9qqNNuwovaF7Uv/KMcGjFqg78xi/Y5i/11yHamvybyNv40m98IhdeRdF
         JQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WyEDGPT3Um37nT6uwxbkjJouWogO7uhTR76f83Qfjgs=;
        b=Elek7moh97U7BjasWUOZ/4KZ5CY7f5mbnQ+g5o2IYlrqfisqO61oAZUSpuLmTnMs2s
         TVbaDG1i69p5fHFhQU8TVWT30lWkCqPXq0CaI6aGQjEWO9tK8TEw9CaXpIG/7xnkuXHv
         IdJj9Rk3boj0k/lrpMDs1RAwpSIwFgEmVncwZ1oKc/Y9HG/lqvhgbwBzE//+hvhvDNma
         gRkDBYhu0ZDDp+WBttZ5xP2T2v1D7NjT8jX+N6dsj3av+avpT8/dW19xq5qOq+FbhUpT
         AqmTFu1TAC2qovsHpKdsTFzxQpnfc8KzvvZUl/0HjTqBLAtYHtQVI7czjtL2oSK/7qEO
         rdkA==
X-Gm-Message-State: AD7BkJI8tehcxi/5QHvDvMtZvTPWJFOP6+5BVTEq9VXebe/TDb0qM5pu4bd9pyywy8/PEQ==
X-Received: by 10.98.80.78 with SMTP id e75mr22734664pfb.147.1458298511576;
        Fri, 18 Mar 2016 03:55:11 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.148])
        by smtp.gmail.com with ESMTPSA id v3sm19053548pfa.67.2016.03.18.03.55.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 03:55:11 -0700 (PDT)
Date: Fri, 18 Mar 2016 09:26:02 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8723au: rtl8723a_rf6052: Remove unnecessary
 semicolon.
Message-ID: <20160318035602.GA3988@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary semicolon.

Coccinelle sementic patch as follows:
@r_case@
position p;
@@
switch (...)
{
case ...: ...;@p
}

@r_default@
position p;
@@
switch (...)
{
default: ...;@p
}

@r1@
statement S;
position p1;
position p != {r_case.p, r_default.p};
identifier label;
@@
(
label:;
|
S@p1;@p
)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c b/drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c
index ce0d8d8..24c0ff3 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c
@@ -465,7 +465,7 @@ static int phy_RF6052_Config_ParaFile(struct rtw_adapter *Adapter)
 			break;
 		}
 
-		/*----Restore RFENV control type----*/;
+		/*----Restore RFENV control type----*/
 		switch (eRFPath) {
 		case RF_PATH_A:
 			PHY_SetBBReg(Adapter, pPhyReg->rfintfs,
-- 
1.8.3.4


