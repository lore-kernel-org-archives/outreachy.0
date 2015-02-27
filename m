X-GM-THRID: 4711413448704
X-Received: by 10.66.161.36 with SMTP id xp4mr10019518pab.36.1425059952541;
        Fri, 27 Feb 2015 09:59:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.164 with SMTP id c33ls699742qgf.66.gmail; Fri, 27 Feb
 2015 09:59:12 -0800 (PST)
X-Received: by 10.236.41.73 with SMTP id g49mr15330432yhb.57.1425059952280;
        Fri, 27 Feb 2015 09:59:12 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id xj4si553133pbc.2.2015.02.27.09.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 09:59:12 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padbj1 with SMTP id bj1so24403967pad.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 09:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wH5NVtjUJSnCle3hjqMDW75e1tzXlbZ2ZvuYRQ+lFXo=;
        b=uSQJlgPAXiQba7MV4Qvfj9P9cDJ0s39gNnO8exaRSsEtqbjAgLyRFWYg/vg88wKeNw
         CqYeJQjGlijzUYSyTCy7RoHB6NEiMRScHjw32PNRIqeX1TGquFg/OtIkVkqfK/KVQCSX
         7zpz1HDiRjiIHgTYelxumhSNFfFcyGQAVwlePhxaVfYPj8hfTEzwGhmBYgQLzoecp/op
         MnJ6OtzUo1FJN1vvlUELMrKNGd9/IvRguw5Zymy/jtYPQJ7RccdmS1iwZgXBhjAD3Y58
         83jhEL8CWrui7lvkFdR3XLbyilgUc/AmcMEGatKTjdSDyxE2ZUFz+EKL6cZqTgCdGfxn
         +WgQ==
X-Received: by 10.66.237.35 with SMTP id uz3mr26326243pac.46.1425059952129;
        Fri, 27 Feb 2015 09:59:12 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id pr5sm4653145pbb.1.2015.02.27.09.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 09:59:10 -0800 (PST)
Date: Fri, 27 Feb 2015 23:28:49 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Refine if condition
Message-ID: <20150227175849.GA20418@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Variable bound takes maximum value 8 so the if condition
for odd i is made more compact.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 6af72a4..3d0e447 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1038,7 +1038,7 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
 		bound = 4;
 
 	for (i = 0; i < bound; i++) {
-		if ((i == 1) || (i == 3) || (i == 5) || (i == 7)) {
+		if (i%2 == 1) {
 			if ((resulta[c1][i] & 0x00000200) != 0)
 				tmp1 = resulta[c1][i] | 0xFFFFFC00;
 			else
-- 
1.9.1


