X-GM-THRID: 2499198058496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e241efa4d6dbf077
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.132.99 with SMTP id ot3mr11228339pbb.6.1424688995444;
        Mon, 23 Feb 2015 02:56:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.136.226 with SMTP id qd2ls871191igb.17.canary; Mon, 23 Feb
 2015 02:56:35 -0800 (PST)
X-Received: by 10.68.194.97 with SMTP id hv1mr11250759pbc.0.1424688995063;
        Mon, 23 Feb 2015 02:56:35 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id xj4si3802452pbc.2.2015.02.23.02.56.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 02:56:35 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rd3so26688729pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 02:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=g2xonN1cCdrZL0KfuArFrMoArgm8UfPK/TqOUKCVA6I=;
        b=B8Q5K8WqGdTdBQatQaBdW4wi3LWrnqWeDRVCPjyeukYfBboZnpsJD6WM2wV1S4FQc7
         v7eTqOEr820OgAQ6W9vP833T9YaMEwHTRCBMSypFaVjGwUgWXOelK0HHlTae0vCcClke
         yzQdTo1+ckmE+e4EPFGLA79la2pzivHtBaMMIsfe3/CyVB3kqnh2t3XFZbJ2jZqb81/x
         I2B8u6GAdmEc9NcLInRPju0gBegl3dCSKYlKZynJGzMxWaoT81oVQ5M5P+DirgHcnOe+
         +Pt9MUt6w4BcW2I/YtbSXtKLid6UcwMt4sBbHjQY3Mjigfl3HKNV9n0kpUXeIggdDXmm
         z9SQ==
X-Received: by 10.68.191.233 with SMTP id hb9mr17970035pbc.111.1424688994970;
        Mon, 23 Feb 2015 02:56:34 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.102])
        by mx.google.com with ESMTPSA id c17sm11630578pdl.79.2015.02.23.02.56.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 02:56:33 -0800 (PST)
Date: Mon, 23 Feb 2015 16:26:27 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8712: Use mod_timer
Message-ID: <20150223105627.GA4466@vaishali-Ideapad-Z570>
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

 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 9bb364f..0ce8e9d 100644
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
+				mod_timer(&(padapter->mlmepriv.dhcp_timer),
+					  jiffies + msecs_to_jiffies(60000));
 		}
 	}
 }
-- 
1.9.1


