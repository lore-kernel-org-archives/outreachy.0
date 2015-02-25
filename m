X-GM-THRID: 2499198058496
X-Received: by 10.140.149.78 with SMTP id 75mr1322971qhv.9.1424837137267;
        Tue, 24 Feb 2015 20:05:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.206 with SMTP id s14ls1386482igr.37.canary; Tue, 24 Feb
 2015 20:05:37 -0800 (PST)
X-Received: by 10.66.252.138 with SMTP id zs10mr1346362pac.3.1424837137092;
        Tue, 24 Feb 2015 20:05:37 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pc4si4885072pac.0.2015.02.24.20.05.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 20:05:37 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabkx10 with SMTP id kx10so1913943pab.13
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 20:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NIQ+FMrX51jqYjQfOMpAUKu18FwMXkJNs0qgRzhsCkM=;
        b=UvsXQkGp/KTlxVYBYb5ulyPT/ZZ2GyCGVlKhCHV5XKyfrlRU4Lqt9foebXuulJahDb
         iUdbXm+0u7cNbaizb8HHNvza5vVZg+uNGVzdMTZxPReBq32QAc8M4Guqn/uztv8SIviC
         nSTB3sOWTKsNXyoDaB+2b8lugyYRUrnm1+ORFe+P2cLack/9xjW00sH6tm1DelUkd7wJ
         y6SdfMoWuemI05TOnsYgGgntJPoBsR/k4ur2DDF7nzkGfgdvP1GCnmwIAAlAUOHSOW74
         f5SqmPSPbaNY4Ob/ioiem8dz137UQlPR56d2NPbsP5nBwlrDnRngLrqyrqQQXJaS3eNB
         ADdQ==
X-Received: by 10.68.57.162 with SMTP id j2mr2019783pbq.120.1424837136978;
        Tue, 24 Feb 2015 20:05:36 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.87])
        by mx.google.com with ESMTPSA id qp3sm39828698pdb.11.2015.02.24.20.05.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 20:05:36 -0800 (PST)
Date: Wed, 25 Feb 2015 09:35:32 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: rtl8712: Use mod_timer
Message-ID: <20150225040531.GA4569@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces the use of API function mod_timer
instead of driver specific function as it is a more
efficient and standard way to update the expire field of
an active timer.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes since v1:
        -Edit commit message
        -Remove unnecessory parenthesis
        -Align second parameter of function
         mod_timer properly
Changes since v2:
	-Remove unnecessory parenthesis

 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 9bb364f..5d4470a 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct sta_info *psta,
 		memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
 			key[24]), 8);
 		padapter->securitypriv. busetkipkey = false;
-		_set_timer(&padapter->securitypriv.tkip_timer, 50);
+		mod_timer(&padapter->securitypriv.tkip_timer,
+			  jiffies + msecs_to_jiffies(50));
 	}
 	r8712_setstakey_cmd(padapter, (unsigned char *)psta, true);
 }
@@ -153,8 +154,8 @@ static inline void handle_group_key(struct ieee_param *param,
 		if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE) {
 			if (padapter->registrypriv.power_mgnt != padapter->
 			    pwrctrlpriv.pwr_mode)
-				_set_timer(&(padapter->mlmepriv.dhcp_timer),
-					   60000);
+				mod_timer(&padapter->mlmepriv.dhcp_timer,
+					  jiffies + msecs_to_jiffies(60000));
 		}
 	}
 }
-- 
1.9.1


