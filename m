X-GM-THRID: 6256431065023381504
X-Received: by 10.140.252.131 with SMTP id x125mr2280827qhc.12.1456691585396;
        Sun, 28 Feb 2016 12:33:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.133 with SMTP id b5ls332405igx.5.canary; Sun, 28 Feb
 2016 12:33:05 -0800 (PST)
X-Received: by 10.66.163.4 with SMTP id ye4mr10275518pab.23.1456691585039;
        Sun, 28 Feb 2016 12:33:05 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id yd9si3161541pab.1.2016.02.28.12.33.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:33:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id w128so7797946pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mdMqJyrgw5jtfYlWnzmNgxKZJsVIzNfDkWRxCJiLeaU=;
        b=HZ7wE4DxvWTn7Ydhto+khVqgUcF5C4MhMCFeYP2J0BOIlkijFm6FXqXjCeyxL4/HOH
         2O1+/Buk+Tg/1TsKux3tCCDTObdbKAzvI4T0f6+3ABFAa/eLxMhFUf09G1BX2S7SR4Xl
         igIfK0RWuAAI1UVOsqxH8AOLbnWDFQcdo7Gwxih2v/h9+naxc2K0t4kH0yQqGnNi1l0q
         hz5lpkB8UrVBl1fJaVmwpaFMUexzRMVjtX8tKsmdIh4ox4/9+gYe0gJYinZJbX2koqhP
         7nJuA+YzkaHdIOwhISN1hlE6HfpHyKHGdhmpFRC6qQPObm7Z7da0vJ8r26zkmowG4hz4
         hpKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mdMqJyrgw5jtfYlWnzmNgxKZJsVIzNfDkWRxCJiLeaU=;
        b=C47yOt/xJAjes6cICu8QV/AJOkBEsJL7hUYLApfhY+nX5UjC2S8OwcGdziXBwdAj/K
         +zfU2tHiEf8QO05KgS6wmGnZIWR7n0cNaCWcdnJa5I0DTts9ysEnSBAaxJYfDVJ3H+P3
         WRtAILI5Op5H7EHQVMFJ8Q6SROXdPkz9YTNNSuY4M6Avx5fDKeMCmwcigVavR0Z3QRoO
         1CpXgkf70UtuwnuRBtdPdnz39pTrgJpeALvgy73vZxSqTTfobOvz2bQlk+FNtEW8M7gE
         wjZKpg45Z6x3sMVCJojA82j5FKDyYhB5lNICrk2puJuggtHNYvQXkIk1Hd28WPvnGi2O
         GxxQ==
X-Gm-Message-State: AD7BkJLpSoe/wGLu5Y7rjEEGAyRMGneO7KlcnLz8IxIpazik4XM126DeNFv4URbFFsFFfg==
X-Received: by 10.98.72.193 with SMTP id q62mr17462469pfi.117.1456691584914;
        Sun, 28 Feb 2016 12:33:04 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id kw10sm32993086pab.0.2016.02.28.12.33.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:33:04 -0800 (PST)
Date: Mon, 29 Feb 2016 02:00:17 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/4] staging: rtl8188eu: os_dep: Remove NULL test before
 vfree
Message-ID: <20160228203017.GA2632@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

vfree frees the virtually continuous memory area starting at addr.
If addr is NULL, no operation is performed. So NULL test is not needed
before vfree.

This was done using Coccinelle:

@@
expression x;
@@
-if (x != NULL)
    vfree(x);

@@
expression x;
@@

-if (x != NULL) {
vfree(x);
x = NULL;
-}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index 6a68f17..e8d2236 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -442,7 +442,7 @@ free_adapter:
 	if (status != _SUCCESS) {
 		if (pnetdev)
 			rtw_free_netdev(pnetdev);
-		else if (padapter)
+		else
 			vfree(padapter);
 		padapter = NULL;
 	}
--
2.1.4


