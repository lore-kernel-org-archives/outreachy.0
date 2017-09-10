X-GM-THRID: 6464167912849539072
X-Received: by 10.99.181.19 with SMTP id y19mr5798966pge.47.1505065009907;
        Sun, 10 Sep 2017 10:36:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.201 with SMTP id p70ls1575190ioi.16.gmail; Sun, 10 Sep
 2017 10:36:49 -0700 (PDT)
X-Received: by 10.129.105.139 with SMTP id e133mr5982217ywc.4.1505065009198;
        Sun, 10 Sep 2017 10:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505065009; cv=none;
        d=google.com; s=arc-20160816;
        b=tIYZdcEWJO/eNU3+mVYm9l5ymKS27DeKOiOXPhejr5Xinttvzy56N62rvUKMDEh17D
         2AT8UA3GYuPvCRTyPLwH0PwZIXWfsdT8hbiQ1NFS96/3VHzXZC7b5D5RHU8eMzoQa27A
         KXOwyzA5PKtbpPBrtCzvGD2OHj0eSNRP7uWVUaRKNL3QDABGop3YNP9N7q4K1xV1FavX
         Vk7Y2HtHadua9qFHI/O/OpJuuBYNqrnytX/grGwkDVpYp3Av3DYT22g6cp004uqCONVZ
         cjjg2nEeCUfZRyZDlOauFQ9bj1xZog/5GwuljA47/EY6M09SVNxkpskcPxcxpRLpf3+Y
         7cjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=q+82M/UqeNHGeKq3UfD7PQQhnnNznJ6GaOSfeOySAxk=;
        b=W2chgqlf4nPEjFU1GNsGAQGot7MRi/X7xk0kcyl95SJ78Wlh+wLrbPUaEqKtaHndvI
         6e/SGMzI67/HgSUmnFiHx1dPkjQ0x2jaAFvDdRKJd0CYw7SR8ukDVMfLSuEpGsXtvZ4L
         7RDDTqeFro09ALzH2+8X0KFS8lEjR16ASb4uoSuCwboBBVwUBTzr0PPdNwjQ8WHZ5xNO
         5FntuzXcdgUzbPlunUIOYSRPfy4omokJ5ocwka54TCrl4ObLCesALIcrR6Kwm/NNBywl
         0ZZ/6EtqKJQQ7ERNnJB7nNWeB4VXZRzWOVoY1h3oKAAZ30uB0d3Gx+yRGOAhtPPtohhk
         ECug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IMtPkKsR;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id d207si244421pfd.16.2017.09.10.10.36.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:36:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IMtPkKsR;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g13so3961894pfm.2
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 10:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=q+82M/UqeNHGeKq3UfD7PQQhnnNznJ6GaOSfeOySAxk=;
        b=IMtPkKsRVjwsJ5ZZAWW/W+NicK4hudmne5Y0iCNZuPk9HLbdZ0EiN89vGvdKIMhgoY
         7vLn2/lfQGAf2AJlmCfdNrEviMupXFHk891khMMNv5towzyizYZnX2S4PnwcN2u2Ghzg
         fadkhzj40dGXxdkOrbrk22GLPqMAzfR4S83Qgg2pp5qnzDrO0MwQgtm1nh3mzBUJcb69
         3rsPMfNeMaCX8llDvcmWCGN2qkJo4URqooQ4uj5ES92tW68bVjV+Gh/ewwmJmuBv2DgK
         W9EcMAIL1ggk2EBPtJP4LeMy1IbMJz2UNQIymO5jl5pz2cco12KRGMxEor1GuJh+oNkQ
         rZ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=q+82M/UqeNHGeKq3UfD7PQQhnnNznJ6GaOSfeOySAxk=;
        b=JYx1qvGPKF6Aa223IMsyL78pyTLg8pmeJJ+FcJkTdIpZiIWwvTYtc7keOsHbUeBnt2
         diNmgKgM8GkG269ovac5vAvRNXY1ELUHldmpj0uV+yiuNpDPyiyepG+1qbzV4WMg0UfV
         YKZq0CI4zMPc0A1bWke/I9/jD30pK8245kMXmvaeLzBu/3EUpu2Lv77qWpYcGNGSsJtP
         HdMILfE8DUU2TXidliq40bQdhFPnDhoMOv3bpCt50Wo8NtiPiachTpWe1IZuT+OXVbXl
         mY+nAq1xbqrsu2NLUAmgkfiVnJOYpTDBGDaDHGEYuWbTYV5Dtgz3gfIeC2yg+DYitbnO
         xjdA==
X-Gm-Message-State: AHPjjUi33/5O9mhe7F0VHs9REAv+vQKDGwhdMuXA9brXMpAxIy1lg23Q
	iuPZjtEjEgoiAQ==
X-Google-Smtp-Source: ADKCNb5jjp/4oVh24Thh6fG2ibxq7fx7vCf1307CkCw7sgAkKdvSzBwCg30tDNKNWKZXs0yuqvpT1w==
X-Received: by 10.99.190.3 with SMTP id l3mr9179325pgf.79.1505065008968;
        Sun, 10 Sep 2017 10:36:48 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id 195sm12185385pgg.42.2017.09.10.10.36.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 10:36:48 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 07/10] staging: rtl8723bs: Removed unneccesary space
Date: Sun, 10 Sep 2017 23:04:34 +0530
Message-Id: <e67d17c4599196e34a39fa331aefed76d63c2260.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Remove space between function name and open parenthesis '('

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index ecb01cf..8e13fb3 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -230,8 +230,8 @@
 MODULE_PARM_DESC(rtw_decrypt_phy_file, "Enable Decrypt PHY File");
 
 int _netdev_open(struct net_device *pnetdev);
-int netdev_open (struct net_device *pnetdev);
-static int netdev_close (struct net_device *pnetdev);
+int netdev_open(struct net_device *pnetdev);
+static int netdev_close(struct net_device *pnetdev);
 
 static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 {
@@ -606,7 +606,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
 	return _status;
 }
 
-void rtw_stop_drv_threads (struct adapter *padapter)
+void rtw_stop_drv_threads(struct adapter *padapter)
 {
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));
 
-- 
1.9.1


