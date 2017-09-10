X-GM-THRID: 6464167912849539072
X-Received: by 10.31.152.79 with SMTP id a76mr3602922vke.53.1505065402219;
        Sun, 10 Sep 2017 10:43:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.192.65 with SMTP id u62ls4205291itf.16.gmail; Sun, 10 Sep
 2017 10:43:21 -0700 (PDT)
X-Received: by 10.129.157.20 with SMTP id u20mr6150737ywg.223.1505065401679;
        Sun, 10 Sep 2017 10:43:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505065401; cv=none;
        d=google.com; s=arc-20160816;
        b=0pg6FZjcowXxUi+URy//4tE66FfRoPKIAMEqWbD/xSfefW/b2aZjbF0xKW9BUVGcFa
         EjSsnUFqH20glGx7zFosSTjhLXn/7i6708lgPjMgfdTA93y221OaPprD9tQQxbkE3a6H
         PQFXnaoaAcJrG+ccCETYq7T5nGVYQoq/upjwR1tyes4vI8/+Wa1Nyq5euXscD0+UynYU
         8pHKrQCnDRabXIbnObzTRWpKPhERmjP0ZNu1gSGyko+3Y+u23s1VqPpGcUHr1qlKhbO2
         ooWWImPpYixvlpcJkyWsOmbHsGwAZaBUIQ6fTzF0QbVoNzZVrkuwuaFqkfjg5xWDxkfv
         aZjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=xJc2yndW+hTBEnsh87GV3l4ANU8ru+S/1cyTz4l5B44=;
        b=LaQIAKvCc2LAW6pkw1zn8ukfV3Uml4Syqz3OwiFO9X1EXLKjXL+UcTWFGFqLlltHH2
         vQAY+MafPT83xr/YyL1lNcWSo4nze2QwWWPy0NILik+MtgICQs3q5xpWFDP4lh24l7hK
         E3wpoJa8qkY730wW5OCKvLdfEUg8w7tJBh0Rlx41+kJSN3m3YXaXzkFs4OkYbqcJ7Wk2
         FCh+yKWQBGYy9pnWZ7c73IH1v8PsOPYytNZ8t0EE9Hmo/KP6q/HFgFc4KVPHcVw7S7Lm
         Ea4kGatCMzodLSgY3ao/S6pDD0OsNljYa/DsWHauFi8tiEhxcUWmtbvkc58ze5iKf38s
         p97g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oiRZeoYK;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id q65si696614pfj.8.2017.09.10.10.43.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:43:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oiRZeoYK;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g65so3736327pfe.1
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 10:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xJc2yndW+hTBEnsh87GV3l4ANU8ru+S/1cyTz4l5B44=;
        b=oiRZeoYKpqaUir6kbdjJvPx9VhPScxcmdUyMHQpzL5HDonAYKO7YWhX9s+9FpVLARS
         LQstENJJnHA228ZhDVf793Iv5BiSes75sA7Lp++RuIjAn5GDRjpvgG034vItwxwZucNe
         Y73ggTiC2jYjKmVNyQpS7FhCtyKj9DKsAMo/GphZj6xTR0ExsGEx3fSZhFp1E4GyYDcA
         w0SGVgI+wswajxXTpyQt5FEdRN+WIxW088Vs+PpYXR3KdDzwh8JDfUsJkSiX3N/10eh3
         mnC4ylX9DNPNnzSxDuS+WV4CXxIJs3VdAGR3+nKSH6clv2tpVFhzh/tZjfNRHkAvqXrl
         kSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xJc2yndW+hTBEnsh87GV3l4ANU8ru+S/1cyTz4l5B44=;
        b=dVINOCsMQzON5h8wXCUWaWsezAmeCJZ1djec5k5VDxSXUOG7CK0X8RVnMNf9FvjYh3
         uMyx1YGoL43+zJxbLW3ji+UZJGWsXrW8RjzCQG3lv3fj8rgRKXUrmI6Jtu702cRsLs5o
         6vynrcXmBedu0+a87QDZ+zUQIS8+54cFVzf8r+3Z0mWzqdUTdW07I1awkEwa8fgm3wj7
         TioYVzDV4Gq617lQ01hFYTY4hPuHNsNl/24HNlLd4chapEbo7QNRJRMqv7bsfMHyjSYm
         1fvoIPpp5BVo6MzHOvph2Huw58wUK9SXVNTZfmGy9T2TQm9B3fNX04xCvPpMy8B3sd5c
         jRvg==
X-Gm-Message-State: AHPjjUiXeqKCLkV0Ll/GmDEZyqD9OK+mWPy01z+yfRl85e0Q6hANPiKh
	YgDPOcRHzjZNXA==
X-Google-Smtp-Source: ADKCNb5Q43rGLjMMYmNXOqWvIGBfqnyzJY1nx0Wy1AP21ohCx2nkBPO9YbFLg05GMeORi0UuSDTy3g==
X-Received: by 10.101.87.139 with SMTP id b11mr9034050pgr.186.1505065401409;
        Sun, 10 Sep 2017 10:43:21 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id z83sm12057951pfd.10.2017.09.10.10.43.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 10:43:21 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 10/10] staging: rtl8723bs: Remove unnecessary blank lines
Date: Sun, 10 Sep 2017 23:11:14 +0530
Message-Id: <f46968c4aad2d723630cd4eb7ee962914dd81a93.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Blank lines aren't necessary after an open brace and before a close brace

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index fb8502a..5cca7a9 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -454,7 +454,6 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
 	}
 
 	return rtw_1d_to_queue[priority];
-
 }
 
 static int rtw_ndev_notifier_call(struct notifier_block * nb, unsigned long state, void *ptr)
@@ -1024,7 +1023,6 @@ int _netdev_open(struct net_device *pnetdev)
 	DBG_871X("-871x_drv - drv_open fail, bup =%d\n", padapter->bup);
 
 	return (-1);
-
 }
 
 int netdev_open(struct net_device *pnetdev)
@@ -1091,7 +1089,6 @@ int rtw_ips_pwr_up(struct adapter *padapter)
 
 	DBG_871X("<===  rtw_ips_pwr_up..............\n");
 	return result;
-
 }
 
 void rtw_ips_pwr_down(struct adapter *padapter)
@@ -1113,7 +1110,6 @@ void rtw_ips_dev_unload(struct adapter *padapter)
 
 	if (padapter->bSurpriseRemoved == false)
 		rtw_hal_deinit(padapter);
-
 }
 
 
@@ -1186,7 +1182,6 @@ static int netdev_close(struct net_device *pnetdev)
 	DBG_871X("-871x_drv - drv_close, bup =%d\n", padapter->bup);
 
 	return 0;
-
 }
 
 void rtw_ndev_destructor(struct net_device *ndev)
@@ -1390,7 +1385,6 @@ int rtw_suspend_wow(struct adapter *padapter)
 			DBG_871X_LEVEL(_drv_always_, "%s: pno: %d\n", __func__, pwrpriv->wowlan_pno_enable);
 		else
 			rtw_set_ps_mode(padapter, PS_MODE_DTIM, 0, 0, "WOWLAN");
-
 	}
 	else {
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
@@ -1470,7 +1464,6 @@ static int rtw_suspend_normal(struct adapter *padapter)
 	if ((rtw_hal_check_ips_status(padapter) == true)
 		|| (adapter_to_pwrctl(padapter)->rf_pwrstate == rf_off)) {
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR #### driver in IPS ####ERROR###!!!\n", __func__);
-
 	}
 
 	rtw_dev_unload(padapter);
@@ -1644,7 +1637,6 @@ int rtw_resume_process_wow(struct adapter *padapter)
 		}
 	}
 	else {
-
 		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
 	}
 
@@ -1657,7 +1649,6 @@ int rtw_resume_process_wow(struct adapter *padapter)
 		if (pwrpriv->wowlan_wake_reason == FWDecisionDisconnect ||
 			pwrpriv->wowlan_wake_reason == Rx_DisAssoc ||
 			pwrpriv->wowlan_wake_reason == Rx_DeAuth) {
-
 			DBG_871X("%s: disconnect reason: %02x\n", __func__,
 						pwrpriv->wowlan_wake_reason);
 			rtw_indicate_disconnect(padapter);
-- 
1.9.1


