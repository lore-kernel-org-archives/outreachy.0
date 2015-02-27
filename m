X-GM-THRID: 4714696540160
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6c1918fc46e7b79,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.81.68 with SMTP id y4mr14608755ick.17.1425060471399;
        Fri, 27 Feb 2015 10:07:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.80.75 with SMTP id p11ls287588igx.40.canary; Fri, 27 Feb
 2015 10:07:51 -0800 (PST)
X-Received: by 10.42.163.196 with SMTP id d4mr7932830icy.28.1425060471225;
        Fri, 27 Feb 2015 10:07:51 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id ri9si579721pdb.1.2015.02.27.10.07.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 10:07:51 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so22655069pdb.9
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 10:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bGBEvT7IpP6MVnIrBP+AMmoHzIO0xsbNCgdVavaXd0A=;
        b=okk1rOjh2yS0gU6R2quYyHbZw7Jy3g8bj/nYDo7/hPlwWU9weohswMoXtoPJW0NDk7
         DxgIC1Tlc/hrnxts4rqzDv/9cPM70pXdPlrqAifWYe0HoFRRrfc5r8z39A9Lpu3Gio9u
         k6DsihibBmRMRG/tZt4Qtg6mkOyLjIXay2HBxd8sCZ1UNGKI2XgF34BYVw1WCjcig2fS
         OZsJnFUDU/SlhSce/ZcDtg3ExK+oqUrLXA00kioAeZwc7psIJz7qgN+cAo5cokHLxS4y
         MeDyyqu1GNaFpA8RIE/Q3YQyEq/JjiOc8SJc+navJgm8/PDfV6N2AGg5LiUmA3UTabnZ
         6VNQ==
X-Received: by 10.66.65.169 with SMTP id y9mr25990948pas.60.1425060471087;
        Fri, 27 Feb 2015 10:07:51 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id g11sm4642971pat.24.2015.02.27.10.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 10:07:50 -0800 (PST)
Date: Fri, 27 Feb 2015 23:37:28 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Refactor loop to increase compactness
Message-ID: <20150227180728.GA22813@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The variables tmp1 and tmp2 are assigned the same values
in the nested else and the outer else. They can be 
assigned without nesting to increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 3d0e447..05379be 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1039,18 +1039,12 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
 
 	for (i = 0; i < bound; i++) {
 		if (i%2 == 1) {
+			tmp1 = resulta[c1][i];
+			tmp2 = resulta[c2][i];
 			if ((resulta[c1][i] & 0x00000200) != 0)
 				tmp1 = resulta[c1][i] | 0xFFFFFC00;
-			else
-				tmp1 = resulta[c1][i];
-
 			if ((resulta[c2][i] & 0x00000200) != 0)
 				tmp2 = resulta[c2][i] | 0xFFFFFC00;
-			else
-				tmp2 = resulta[c2][i];
-		} else {
-			tmp1 = resulta[c1][i];
-			tmp2 = resulta[c2][i];
 		}
 
 		diff = (tmp1 > tmp2) ? (tmp1 - tmp2) : (tmp2 - tmp1);
-- 
1.9.1


