X-GM-THRID: 8287160369152
X-Received: by 10.182.126.47 with SMTP id mv15mr50796450obb.50.1426331830372;
        Sat, 14 Mar 2015 04:17:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.40 with SMTP id rt8ls538802igb.1.gmail; Sat, 14 Mar
 2015 04:17:10 -0700 (PDT)
X-Received: by 10.50.2.71 with SMTP id 7mr55782291igs.4.1426331830154;
        Sat, 14 Mar 2015 04:17:10 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id ri9si849479pdb.1.2015.03.14.04.17.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 04:17:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbni2 with SMTP id ni2so10391435pdb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 04:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Z5zlaX/s6EcyJ8ZaBqy9KF9sBSVa14DwqMUXdB907qg=;
        b=koJSYIG/HRTnrrugiHvYTmUR79bR9uoH+ToaqO0/XBt1RdpHJrAWErqETCMX8Hg6lx
         loEgxb+D80iD0IFt4flgUV/lWzDEsjUBYxeJ+vXdFg8jnvJw783KScaECoFh5AeLX6LL
         7QytIBktWYVf1FtX6KS4zS7C4/VzMpU+7XvFyZchWGCmsTMdVsRZ09CfQceT80bjHQfM
         k7SzTYluCAYQ59QgaDnScOQWSFPL8ljak/wLZWe/UTmiGVu8gQuOBL/8GokBGd2xUhc4
         tzQtIftO1PunJF/5cnzvrod8XeTVNKgtrpFnBTsV+R92jRmHLuh7s1N3h1PABdcLqxDv
         veqw==
X-Received: by 10.66.241.36 with SMTP id wf4mr55801888pac.8.1426331830019;
        Sat, 14 Mar 2015 04:17:10 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id v9sm2530210pdp.12.2015.03.14.04.17.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 04:17:08 -0700 (PDT)
Date: Sat, 14 Mar 2015 16:45:18 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: Replace memcpy with ether_addr_copy
Message-ID: <20150314111518.GA12847@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace
Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
Use ether_addr_copy instead of memcpy(a, b, ETH_ALEN)

---
 drivers/staging/rtl8712/os_intfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index ebfb29e..e1b54fb 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -181,7 +181,7 @@ static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
 	struct sockaddr *addr = p;
 
 	if (padapter->bup == false)
-		memcpy(pnetdev->dev_addr, addr->sa_data, ETH_ALEN);
+		ether_addr_copy(pnetdev->dev_addr, addr->sa_data);
 	return 0;
 }
 
-- 
1.9.1


