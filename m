X-GM-THRID: 6464167912849539072
X-Received: by 10.159.242.199 with SMTP id x7mr763917plw.16.1505064187899;
        Sun, 10 Sep 2017 10:23:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.196 with SMTP id d187ls2921599iog.38.gmail; Sun, 10
 Sep 2017 10:23:07 -0700 (PDT)
X-Received: by 10.101.85.68 with SMTP id t4mr5716264pgr.4.1505064187065;
        Sun, 10 Sep 2017 10:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505064187; cv=none;
        d=google.com; s=arc-20160816;
        b=tjek+GSuGmmcHEcqunXK/VMTKNitwRnEMl7C1VgPONOXqnMa45KhE32V8nw22XLP6/
         WxTz5X7BYfUXy3WZ2ESteMC4QxTTYuMDF52Rv5iGRYlTxXgi+pUTZ4fGWv6JpoDUuHI1
         RzlI4K5BSbdrILOX5WSMossKcC5F8GAh8Vza4qfLwe2sW4hFrZ/gbfGJxhIJ+JDGapar
         lATe/IsE65Vqdt//xX8689s4MY20U1XHOoDzM9b4F6mXBu54ocekZRZ6TE1VNi9bZ+qB
         OaGEqgkSuHgbdKoSOYSVFiUyb8aCNrax7v04x7VUncDTd4BqZLKfe4IIC09nfDdhNA1Q
         gJLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=VUhZel3OFk5hVQoiy9aAoT7TH34jLqHSxWc2pUpQ1rs=;
        b=GTS1K/kg9ooT8GrG/+BOtSCOyPWWasIIA0iXh4GKi+GyXnEPcPsbVCsKVuVfomm+Nc
         A24zEnG2Wdylia9H7wQ79nxHsA4zEGtwbLWUJz8fQ6GmuiREpga6m0ZzjCj5hC7Wsxfo
         7Jt4K7bYW+RhRaS8KNiDl8ww5Wipow7xS1CPe7sM3EkAy+QEZyhWeLJzr5dgPQfn3WHJ
         wQLJAJVh3HNgQcv4eY6zpwdJHukBP6IRCtCd9EHSL5napgD06nQi63bLpGnGuv6JIxbd
         fIBzwUynvmL8Aplgil5z6ictzBY5BGksk8JBquB6bcfsJiNbdyQ7+34aGXGnBKTbwFzz
         3WDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RgClOjTk;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id d207si242260pfd.16.2017.09.10.10.23.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:23:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RgClOjTk;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id i130so1630090pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 10:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VUhZel3OFk5hVQoiy9aAoT7TH34jLqHSxWc2pUpQ1rs=;
        b=RgClOjTklINILDGxaqF+zM9U+ndOuYmJZQ+UuBX03Iv4uqj1fY6sVcF63pU5NBD3xW
         Y5MSRXZtFHGyuAW1/MUJ552Uy2k/oWJJbmNExy6hdTfT1FBB+xruoqfDPn/CT3APVjTr
         AObbEXCQQU1lV91eoBEG7Jv7ew0XAPWnYkhRBxt6RQLxV9DPvl+n2WjyQ+HfOWIN1IPU
         eCTDPy/MkctdceVfxmP7EscP7loiFhCpKXGPQmoE0QyflcM6DZMS1neCIh1RAXrZ83AT
         36kZVeZ6NMtC2zpXKggA1YV4nigLBBl+q0pKM7dh+CCwcu/a+sC0UuJ+qeY0MIKkfW93
         FWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=VUhZel3OFk5hVQoiy9aAoT7TH34jLqHSxWc2pUpQ1rs=;
        b=TXSGegQEQuVGBYyYfZctqygAqrfzsbSN11IQaKRRqZI8OJVqln/F5BXszV3igbTIAi
         ze+1pnZtw8SKFhpSVxtfnSWBYBvOqthXV7dQWMy4jMgTWt333/PWlvpR8iBMM/ikQvha
         /1wUyqfOFU/YcXaqvRDhIEqwiGrd8D1lPtwOI9Lp4X7nX1nuL/SZ6En63arNt6nbiepS
         BTEE7YlaTJn6KDhmAJErZhkK3adIu43405Xp3dgSIv8Y+RGbfUxv+RvgszlTgBdnWokJ
         Iop9p1IuH95WtHMh813/P+qZPBGeF/mVWY+UL2D4pU/ZnrM6sWHrxLdViAHcEMT50h8J
         RmIQ==
X-Gm-Message-State: AHPjjUgRXR744XnyyjUkBjjsh55PPZmrluIHnudx3XWp30GoFOtOZ3xf
	46LjSerDFllMrg==
X-Google-Smtp-Source: ADKCNb7zqby53TZL7IAWfBUaKXD1o3C7EYGOmE4eMvVaJOvIfi6yergmHkQAzOQLB1KVLc4LyCzj8w==
X-Received: by 10.84.210.45 with SMTP id z42mr10829933plh.178.1505064186800;
        Sun, 10 Sep 2017 10:23:06 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id r138sm11547634pgr.12.2017.09.10.10.23.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 10:23:06 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 03/10] staging: rtl8723bs: Add spaces around '?', '==', '||', '!='
Date: Sun, 10 Sep 2017 22:51:01 +0530
Message-Id: <be22d7c63780098571fec9d490b1a83039ddbb75.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Use spaces around most binary operators

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 18f0ac2..5ceccd7 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1140,7 +1140,7 @@ static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
 		}
 	}
 	else
-		status =  (_SUCCESS == ips_netdrv_open(padapter))?(0):(-1);
+		status =  (_SUCCESS == ips_netdrv_open(padapter)) ? (0) : (-1);
 
 	return status;
 }
@@ -1262,7 +1262,7 @@ void rtw_dev_unload(struct adapter *padapter)
 			rtw_btcoex_IpsNotify(padapter, pwrctl->ips_mode_req);
 #ifdef CONFIG_WOWLAN
 			if (pwrctl->bSupportRemoteWakeup == true &&
-				pwrctl->wowlan_mode ==true) {
+				pwrctl->wowlan_mode == true) {
 				DBG_871X_LEVEL(_drv_always_, "%s bSupportRemoteWakeup ==true  do not run rtw_hal_deinit()\n", __func__);
 			}
 			else
@@ -1524,7 +1524,7 @@ int rtw_suspend_common(struct adapter *padapter)
 	while (pwrpriv->bips_processing == true)
 		msleep(1);
 
-	if ((!padapter->bup) || (padapter->bDriverStopped)||(padapter->bSurpriseRemoved))
+	if ((!padapter->bup) || (padapter->bDriverStopped) || (padapter->bSurpriseRemoved))
 	{
 		DBG_871X("%s bup =%d bDriverStopped =%d bSurpriseRemoved = %d\n", __func__
 			, padapter->bup, padapter->bDriverStopped, padapter->bSurpriseRemoved);
@@ -1671,7 +1671,7 @@ int rtw_resume_process_wow(struct adapter *padapter)
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
 	}
 
-	if (padapter->pid[1]!= 0) {
+	if (padapter->pid[1] != 0) {
 		DBG_871X("pid[1]:%d\n", padapter->pid[1]);
 		rtw_signal_process(padapter->pid[1], SIGUSR2);
 	}
@@ -1774,7 +1774,7 @@ int rtw_resume_process_ap_wow(struct adapter *padapter)
 			rtw_netif_wake_queue(pnetdev);
 	}
 
-	if (padapter->pid[1]!= 0) {
+	if (padapter->pid[1] != 0) {
 		DBG_871X("pid[1]:%d\n", padapter->pid[1]);
 		rtw_signal_process(padapter->pid[1], SIGUSR2);
 	}
@@ -1842,7 +1842,7 @@ static int rtw_resume_process_normal(struct adapter *padapter)
 	netif_device_attach(pnetdev);
 	netif_carrier_on(pnetdev);
 
-	if (padapter->pid[1]!= 0) {
+	if (padapter->pid[1] != 0) {
 		DBG_871X("pid[1]:%d\n", padapter->pid[1]);
 		rtw_signal_process(padapter->pid[1], SIGUSR2);
 	}
-- 
1.9.1


