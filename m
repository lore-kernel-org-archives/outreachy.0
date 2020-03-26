X-GM-THRID: 6805867897863274496
X-Received: by 2002:adf:ce07:: with SMTP id p7mr9076577wrn.261.1585227322456;
        Thu, 26 Mar 2020 05:55:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls2249726wrq.11.gmail; Thu, 26
 Mar 2020 05:55:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs2wxNTP2ZLX8iBMju3SqimVxCE3lAefPslrUxelI2qhIG8M4ZPbguAA2ItzA9H9jVogkGR
X-Received: by 2002:adf:9071:: with SMTP id h104mr9333469wrh.359.1585227321198;
        Thu, 26 Mar 2020 05:55:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585227321; cv=none;
        d=google.com; s=arc-20160816;
        b=KkOXOjQzlUrYG4fujRrZxK+/8GR756fRlm8xdxzLfvBAsH2ZAlZtM1hL6N3QTdjepH
         uBVk03GICPe7pdZ/vnRgZH/fx6m63MoIpABoxJjxI0J22eCZIuv7hVaUB62uqqGh1eSe
         IQosG4c7Tw6fpf7b+YbhCnfvekY9CBKT2H/6hX5TFv8G5WTPjrebmMCKtikvFrNFdT79
         Cms7BYPsifvYM/6J7E4Tx3DygDB1tYtK9hwWE2pHkFB0wQCukUyTOKuu4E/qI/jznOju
         IyaOsxdK5G2AcQ0wQZ/NOgGV9eb/Sj6swX9Qy3zM65DxNlZ1IFHpgLntl7zkO0CB3FYj
         SWDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=8o+PVdyHb9Lld4rEA4CQzoZ2Acg01K1OebeC1i8wdB8=;
        b=UmgBWVuywJ1eTSePPjRJjTCRS40XvTuOnP4kHeFUdJb9wJ3rhzv50VtPYAnxPVNGQw
         XLzw3QIFwU3itlO6/G7bL94jppst7KWbOQg9GCH9mEAzC1j++nj7p1p4bulN8AAqb3zS
         ZyzqX+vXJCBLM8pV7zcv0mpWZ7A04hHNwAPJQqlAAyPjliANi5oCd71IPmsdmz2JRpga
         zlFxa0WXfVAzuFsPHWMU7Ja9XF+yIdZDTA6fjMqlicS8kCHp2jT18yF2Kb78q2SZRehD
         7IBzTWMPhOSvSy7MYevB61pv4LHl0uy89DtwGpfwzXijM6DMXv4remee6ohoSSl/L1sQ
         eRqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id d16si93754wrv.4.2020.03.26.05.55.21
        for <outreachy-kernel@googlegroups.com>;
        Thu, 26 Mar 2020 05:55:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 21625 invoked from network); 26 Mar 2020 12:55:19 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.131.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 26 Mar 2020 12:55:19 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: os_dep: Correct typos in comments
Date: Thu, 26 Mar 2020 18:25:00 +0530
Message-Id: <20200326125500.12861-1-vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments.
Misspellings found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
 drivers/staging/rtl8723bs/os_dep/os_intfs.c    | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 29f36cca3972..5059b874080e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -1093,7 +1093,7 @@ static int rtw_wx_get_range(struct net_device *dev,
 /*  Commented by Albert 2009/10/13 */
 /*  The following code will proivde the security capability to network manager. */
 /*  If the driver doesn't provide this capability to network manager, */
-/*  the WPA/WPA2 routers can't be choosen in the network manager. */
+/*  the WPA/WPA2 routers can't be chosen in the network manager. */
 
 /*
 #define IW_SCAN_CAPA_NONE		0x00
@@ -1391,7 +1391,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 
 		}
 
-		/* jeff: it has still some scan paramater to parse, we only do this now... */
+		/* jeff: it has still some scan parameter to parse, we only do this now... */
 		_status = rtw_set_802_11_bssid_list_scan(padapter, ssid, RTW_SSID_SCAN_AMOUNT);
 
 	} else {
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 17e65934fb5b..d29f59bbb613 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1274,7 +1274,7 @@ void rtw_suspend_wow(struct adapter *padapter)
 			padapter->intf_stop(padapter);
 		}
 
-		/*  2.1 clean interupt */
+		/*  2.1 clean interrupt */
 		if (padapter->HalFunc.clear_interrupt)
 			padapter->HalFunc.clear_interrupt(padapter);
 
@@ -1348,7 +1348,7 @@ void rtw_suspend_ap_wow(struct adapter *padapter)
 	/*  2. disable interrupt */
 	rtw_hal_disable_interrupt(padapter); /*  It need wait for leaving 32K. */
 
-	/*  2.1 clean interupt */
+	/*  2.1 clean interrupt */
 	if (padapter->HalFunc.clear_interrupt)
 		padapter->HalFunc.clear_interrupt(padapter);
 
-- 
2.20.1


