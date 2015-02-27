X-GM-THRID: 4672151617536
X-Received: by 10.182.33.97 with SMTP id q1mr14274519obi.42.1425055196333;
        Fri, 27 Feb 2015 08:39:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.221 with SMTP id n90ls575294ioi.56.gmail; Fri, 27 Feb
 2015 08:39:56 -0800 (PST)
X-Received: by 10.43.8.129 with SMTP id os1mr9790904icb.24.1425055196016;
        Fri, 27 Feb 2015 08:39:56 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id m1si564156pdc.0.2015.02.27.08.39.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 08:39:55 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id fp1so22137515pdb.9
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 08:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5eR36rCNaAmV4cJmsV17aKRU2U6Cm0+3sXZaFS76N2s=;
        b=uM5iMEZW5zShuWapOkGjH3jeID+JfKwJcCeBsSdJllGkMkcTMK2UjnHiOZ+olO/41p
         ea26Y50DDg8a71c7dacYXjlwkMnWkvjQp5YItlURpPam+rWGbblK0yVcor73Yy5Rionu
         gSyO3dllnXE2k5YQv+eXQpVv19LVNpzhiSmVonhj237Va6KnjNOinwbc73WWXKuL0svi
         QsR8H5t/U+/uo+dEWMtlHdfj95pe1X5M/Lxz6e34iOy+K3o8iglMZyG32sY42Dmn72qI
         3knVXNuREV6OvBftGXGfTvsnqzBI95wD6Ssqa49BBl2FSQMcB3QlhVYLsBgpMEgKDBiy
         1prQ==
X-Received: by 10.68.131.227 with SMTP id op3mr25290280pbb.157.1425055195910;
        Fri, 27 Feb 2015 08:39:55 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id g10sm4480448pdo.26.2015.02.27.08.39.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 08:39:55 -0800 (PST)
Date: Fri, 27 Feb 2015 22:11:06 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8188eu: Add blank line after declarations
Message-ID: <c38be7da29d85cc2020a9ebff04d2977c173d035.1425054707.git.navyasri.tech@gmail.com>
References: <cover.1425054707.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425054707.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the following checkpatch.pl warning:

WARNING: Missing a blank line after declarations

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index 4c8cc2b..51a52e4 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -530,6 +530,7 @@ void usb_read_port_cancel(struct adapter *padapter)
 {
 	int i;
 	struct recv_buf *precvbuf;
+
 	precvbuf = (struct recv_buf *)padapter->recvpriv.precv_buf;
 
 	DBG_88E("%s\n", __func__);
-- 
1.9.1


