X-GM-THRID: 6254033434194214912
X-Received: by 10.182.236.34 with SMTP id ur2mr25691778obc.10.1456130655596;
        Mon, 22 Feb 2016 00:44:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.204.106 with SMTP id kx10ls682646obc.37.gmail; Mon, 22 Feb
 2016 00:44:15 -0800 (PST)
X-Received: by 10.182.65.106 with SMTP id w10mr25750530obs.6.1456130655315;
        Mon, 22 Feb 2016 00:44:15 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id 12si2988255pfb.1.2016.02.22.00.44.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 00:44:15 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id c10so92200453pfc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 00:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=gy2Xq/TbrzRsHxE6aMgLEPSqARA4f54iMZRkJarxaeE=;
        b=HssuvYhPepaykDhn/EGyeYORfaMuicMqURlKAHR3QAPIYpSMymhA9i/1DPU1wfG4aX
         zk2j1WzaXF7zZ/ap2GYNrykoF15hvI1Ug/hNp7TX02B7B+GHhO+FXnsPgGa+lkJlYqef
         tFWTWefgcIPBk0NVAp+NAazSwy/8KZXLGW/scBc9+uqmXnONFUGjsHCR7Txe0k1p7vt+
         jJ8N6khs9IPEE5CVaPK5uiSMyuMduZocsVbupEqmKAO7j+9k2J6n9jw64fqmInbxE+2L
         JLMbNuf1zu0o2YYzFm3Y1f3iKGzAr9sRgaDfw7SxCjuSxa4fDS90XwLoZDjoVAglacqv
         vHYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=gy2Xq/TbrzRsHxE6aMgLEPSqARA4f54iMZRkJarxaeE=;
        b=AZwXM9z/kSz3vTDUSIq3JNmV3Ow0qpnbFZMjD247UCZdhXeTIDqz7yUVg4VelY0m47
         1X+zLvlxWNizdSTlLmGu1OXixdIZaYS3lTDFbFoWnMFWTT2uZQ2mDBWFSlCvXCXrNnkZ
         4UooU9NsWM4l/KrIPdXf9o7MSAXC5O3g9EShKG4AXZuK6UqZtUhh5BhxIo8kJziPu8ZK
         fYoKy/G7oXgla054aVwwXnS+jUfhRLBZ407oIpbDdMwho+jB/VcLSdWueC4I8FMV5+37
         h3VpjE5okRhNV8sFOK3p1+E+drrh7VRNfN/oEDalWZAS/cXuxI53MECf0GgyDWYYta//
         V1+g==
X-Gm-Message-State: AG10YOQb5M2SDQWT9a2tOjF6fA9MzwbnNvg0rybFTNmn6eK+8Nt/Zw+/tUYS18x3s8+OaQ==
X-Received: by 10.98.10.149 with SMTP id 21mr36743636pfk.75.1456130655155;
        Mon, 22 Feb 2016 00:44:15 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id r87sm34886900pfa.61.2016.02.22.00.44.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 00:44:14 -0800 (PST)
Date: Mon, 22 Feb 2016 14:14:04 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/7] staging: rtl8188eu: os_dep: Remove header file
Message-ID: <70c0691b6c1b8bb305e86e3672995b1304eb262c.1456129759.git.amitoj1606@gmail.com>
References: <cover.1456129759.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456129759.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove duplicate include file. Found using includecheck.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index aec20bb..5d6a1c9 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -3095,7 +3095,6 @@ struct iw_handler_def rtw_handlers_def = {
 	.get_wireless_stats = rtw_get_wireless_stats,
 };
 
-#include <rtw_android.h>
 int rtw_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 {
 	struct iwreq *wrq = (struct iwreq *)rq;
-- 
1.9.1


