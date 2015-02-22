X-GM-THRID: 2499198058496
X-Received: by 10.50.56.6 with SMTP id w6mr7320833igp.5.1424621609228;
        Sun, 22 Feb 2015 08:13:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.114 with SMTP id y105ls623714qgd.53.gmail; Sun, 22 Feb
 2015 08:13:29 -0800 (PST)
X-Received: by 10.236.40.112 with SMTP id e76mr8608578yhb.5.1424621609083;
        Sun, 22 Feb 2015 08:13:29 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x232.google.com (mail-pd0-x232.google.com. [2607:f8b0:400e:c02::232])
        by gmr-mx.google.com with ESMTPS id f2si3920545pdg.0.2015.02.22.08.13.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:13:29 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) client-ip=2607:f8b0:400e:c02::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::232 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so19684699pdj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gIr6jAhuAMoxQEQ/oNnzpqin81STie2mUlnPWG7pSpA=;
        b=gLIlj+HcXm8hzR5TbGB3xxHcB4WEhriIgldKVSaDysy8e1OkN8qqk62O9vpRYsifTz
         FY8wMxVPLwDd8VRVWpDB8zRWZGu//Cly3u25ZgbJ1HNRgy8EQ2PvfDC2nqqaNjxvIr94
         uIq/hCldMiiE/2jQjFYFowO149XpQ8jW0CKsBxPPntgonAvnq/Qt8GyVqHo6KW3Yn9TJ
         vEEhEkoaA2nyAjypDp8gHNJht6rAkOJ9haNtujwYCDqndMp9Qa7mWkiiMU+mYqdHCjUX
         jZfN8aIwu7U217LnE9FGU73UX6Wymd1ih1ZAw9bEfjIfdS8K1d5hkgJ4pOgdF0jjW2+s
         tjXg==
X-Received: by 10.66.138.46 with SMTP id qn14mr12658886pab.86.1424621608959;
        Sun, 22 Feb 2015 08:13:28 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.124])
        by mx.google.com with ESMTPSA id ph7sm32931797pbb.6.2015.02.22.08.13.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 08:13:28 -0800 (PST)
Date: Sun, 22 Feb 2015 21:43:21 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: Use mod_timer
Message-ID: <20150222161321.GA3033@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of API function mod_timer
instead of driver specific function as it is a more
efficient way to update the expire field of an active
timer.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 9bb364f..71ef0de 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct sta_info *psta,
 		memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
 			key[24]), 8);
 		padapter->securitypriv. busetkipkey = false;
-		_set_timer(&padapter->securitypriv.tkip_timer, 50);
+		mod_timer(&padapter->securitypriv.tkip_timer,
+			(jiffies+msecs_to_jiffies(50)));
 	}
 	r8712_setstakey_cmd(padapter, (unsigned char *)psta, true);
 }
@@ -153,8 +154,8 @@ static inline void handle_group_key(struct ieee_param *param,
 		if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE) {
 			if (padapter->registrypriv.power_mgnt != padapter->
 			    pwrctrlpriv.pwr_mode)
-				_set_timer(&(padapter->mlmepriv.dhcp_timer),
-					   60000);
+				mod_timer(&(padapter->mlmepriv.dhcp_timer),
+					   (jiffies+msecs_to_jiffies(60000)));
 		}
 	}
 }
-- 
1.9.1


