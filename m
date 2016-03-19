X-GM-THRID: 6263801581970391040
X-Received: by 10.140.161.193 with SMTP id h184mr16325254qhh.1.1458404954052;
        Sat, 19 Mar 2016 09:29:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.119.6 with SMTP id kq6ls568776igb.37.canary; Sat, 19 Mar
 2016 09:29:13 -0700 (PDT)
X-Received: by 10.66.163.4 with SMTP id ye4mr16257668pab.23.1458404953546;
        Sat, 19 Mar 2016 09:29:13 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si2860278pab.0.2016.03.19.09.29.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 09:29:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n5so22121567pfn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 09:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VPfKHAKUJmTmlDlGjVYZO2GLk+NU0J2ztgxElen0Vik=;
        b=ItByMFYmPn2s6Ta7tk+Xj0bq0gicFdSiarlMvJ2ejFtKOP6Z7ScdWjAjyvb4PSYo0x
         VHB7y8nSv3qPFIh69f4yqGcF8kpynM4mNp5xo7OBt6Q43H/EWcCl5+MJE5NhSYs+6GsV
         S61jQhkTP++HB88cf9i+h7lBM6W3TtvAp6P514cJQzl+m/KvLZXEHm2DEyBqmLr+GdHh
         dWmtK4LIvbx7DdUjVajkDorArUQmYCB++7b4B+L/thxIBvDkHHdtKiD1r2lwk76ANbyD
         xOhClJmOLOOuH34i3S6Yz3K40+3GaPVn2Y1UMnbEIhqo3QBV51HLmVslOwAvEGZ+4jqd
         o2vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VPfKHAKUJmTmlDlGjVYZO2GLk+NU0J2ztgxElen0Vik=;
        b=VR9Lafn+B3Azp8Wiz6o57gGn7K0cTVzmnP99YIZPVuwxvfBWMMp7r1VDCrtEQrvr7w
         1JJAfhI5RaXOZhmDMBPbqy6AO5fhgL8674rjr32gP3JygdICHhcM05rLfWzBXCzAy7nc
         5J+Zpz+KJzdPdXeEFfM7KBIBiFtMTxvONh6FZOn9oZirgRZ9ubI5ukEASclZPBDg/Ynf
         fwpIUhSFkvQDUl5Ig2FwzV1gC2yFzLgeNhsdk5HA218ziJHWbjN7Qdv6p3dDqsM+gwxr
         PIdwvK22NKCEsyU5TYhGwdZJwAV8ErnpPoxttzd3236XasDRjCwqMolRm/UDSzTdlRmY
         l7fg==
X-Gm-Message-State: AD7BkJIuou8idp1ttH+xfnrMIer4yfgXuo0zFzoCYG9ACEefJ1bhYpSazaf7habro4SGoA==
X-Received: by 10.98.93.12 with SMTP id r12mr32442941pfb.64.1458404953394;
        Sat, 19 Mar 2016 09:29:13 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id r65sm29091145pfa.27.2016.03.19.09.29.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 09:29:12 -0700 (PDT)
Date: Sat, 19 Mar 2016 15:00:20 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] Staging: rtl8188eu: usb_halinit: Use !x instead of x ==
 NULL.
Message-ID: <9ec6b4713b94eefc2a360ad0b1258ae198b819fc.1458376695.git.bankarsandhya512@gmail.com>
References: <cover.1458376695.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458376695.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 07a61b8..e25c38b 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -2083,7 +2083,7 @@ void rtl8188eu_set_hal_ops(struct adapter *adapt)
 
 
 	adapt->HalData = kzalloc(sizeof(struct hal_data_8188e), GFP_KERNEL);
-	if (adapt->HalData == NULL)
+	if (!adapt->HalData)
 		DBG_88E("cant not alloc memory for HAL DATA\n");
 
 	halfunc->hal_power_on = rtl8188eu_InitPowerOn;
-- 
1.8.3.4


