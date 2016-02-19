X-GM-THRID: 6252998244395122688
X-Received: by 10.129.125.215 with SMTP id y206mr12249246ywc.54.1455889606674;
        Fri, 19 Feb 2016 05:46:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.195 with SMTP id y3ls135742igl.5.gmail; Fri, 19 Feb 2016
 05:46:46 -0800 (PST)
X-Received: by 10.107.12.99 with SMTP id w96mr14001930ioi.5.1455889606402;
        Fri, 19 Feb 2016 05:46:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id ui7si1619955pab.0.2016.02.19.05.46.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:46:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id yy13so50638477pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=30SzBibpqqPSrj7J05Q9vAGvdR8MdFNehoGFvlFPYaw=;
        b=Te0Js5gNJ0+HaosnS8ZEq3xZ873yW9M4XY+fucAJUOMXYzpiPXdn01zRUKBNuwDZbb
         R9DKkSQRG/DStL0r2HbnUiBRMtQRvrXV10av12pvmYO51NQb5nv8alLATuUWml1mCULp
         rZNB6Tjy8XiBppXcoKIgHMez2WKogAwueNojYVEa6OLQe7Y3HIIjTtG6jk/zqel2AuWM
         C8QyCqfhgNNlMAfNsNs31Vo/b9sGRiNl3u+TmPjkfEzfNjsp0guT7DTZhhR+rVmV0jET
         KlrrnSoz1jsyHDNIpY90RayBkztzY5ZWD0a8xkCVhMxKj3XtJHHswI/GGHvnWoXdIdjI
         a4Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=30SzBibpqqPSrj7J05Q9vAGvdR8MdFNehoGFvlFPYaw=;
        b=AEoEHv9UxVdtc01J2TmtAvax1K5Ni+VpHJvA/bSrLlwGfkLwUCMvbRiFaYaBtWnzU+
         n4aP9ZubhMXzhK+XYZA5QrTpfqm8bo8X2lDLVera1bOXkOcbpOgLkwHOQL/hXK3y2oUC
         85YF8gxIlcDXWqqEEBqb90z8K00Uh2XON5rj+VDzuz5TSF0LCuXG8FiYKLqannCaOQal
         VIET50Wtd1aYL5jV0g0CL6Kh1ddrh5ST0zuP0nYPFuqNYstDS9D+lSDvGMVUHsyYAjjO
         jPGqexs+l0EpZ2vKBc5afgn0zsWsY9BOo/eSDINusTCsKjkTyr0mrveHNsWh0l1GrV6o
         eoEw==
X-Gm-Message-State: AG10YOSbM30+xc9XKg9kGP7/yUX5Ux417aG8sVLv50OeE5gvR98F89mqboL5ze+r0mvQGg==
X-Received: by 10.66.102.40 with SMTP id fl8mr17686357pab.126.1455889606251;
        Fri, 19 Feb 2016 05:46:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l24sm18024473pfb.73.2016.02.19.05.46.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:46:45 -0800 (PST)
Date: Fri, 19 Feb 2016 19:17:15 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8712: Place constants on the right side
Message-ID: <20160219134715.GA19976@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constants to the right of binary operators.
This issue was identified using the Coccinelle script
misc/compare_const_fl.cocci

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/wifi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 7a352c4..ee41971 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -260,12 +260,12 @@ enum WIFI_REG_DOMAIN {
 	*(unsigned short *)((addr_t)(pbuf) + 22) = \
 	((*(unsigned short *)((addr_t)(pbuf) + 22)) & \
 	le16_to_cpu((unsigned short)0x000f)) | \
-	le16_to_cpu((unsigned short)(0xfff0 & (num << 4))); \
+	le16_to_cpu((unsigned short)((num << 4) & 0xfff0)); \
 })

 #define SetDuration(pbuf, dur) ({ \
 	*(unsigned short *)((addr_t)(pbuf) + 2) |= \
-	cpu_to_le16(0xffff & (dur)); \
+	cpu_to_le16((dur) & 0xffff); \
 })

 #define SetPriority(pbuf, tid) ({ \
--
2.1.4


