X-GM-THRID: 6464167912849539072
X-Received: by 10.13.201.3 with SMTP id l3mr8773946ywd.183.1505212555324;
        Tue, 12 Sep 2017 03:35:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.14 with SMTP id u14ls938523itc.7.canary-gmail; Tue, 12
 Sep 2017 03:35:54 -0700 (PDT)
X-Received: by 10.36.69.22 with SMTP id y22mr8663084ita.5.1505212554507;
        Tue, 12 Sep 2017 03:35:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505212554; cv=none;
        d=google.com; s=arc-20160816;
        b=Ot44tQWXbb8V8sOAvyjsjfPUpKtjFhlw2qSBIEBrNfg95mAIMXwqIkKJRa0mNE1cfK
         0DEis5QcktMXZD97ADfrFbLSOVJeK0YgWpfCr8Uy6R7PgPXRvZJXh2YhlEf5j4v6NK0H
         u3UJ75rqEkmuieNvwA1+I5XMnu9xOIaxgkyvHmnjhuHZltBfUFXBq4yqRcKGP+DVGB/M
         Tm/4Hhz3sucxK15mVdZhDxgh4JeFMe1EklFhT+GkH7WwvCxPO7PiUTOvBlEH05bMAy5z
         6FLcPjRjRm06RcEWRz3L4cl42cS6pMUqAE+WWs2VaoVWjLTSGsHAvax43EbpJRb4HTKQ
         +tXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=RkYCLwrOFN/MUuPKN4frXpwshfvgZq1IhQdFKHLUquA=;
        b=zj+oCYLWCsHzV3r/Ow21fEexNCi7VBPp20hMllENE9ZwIM1hRJJXN2/IusneDvutc6
         xFYazwfk4KBEzD2jRLdT5qD35rhJuL9XVBj6m2Fuzehtkb8VA/Fmi9OhoFC4hkTK5O7V
         bkeF97/5eoD5jw+BpYGKkhsgZpca0s6C5Xv6D5qN3zUHTenftXqjKUaSvIVW15zXEhX5
         8YZTMynq2OoAFzzm1fdAMn3tIVNITcygkrZVvu/K7t8cMOD5cMKp+4VGKQT0sFPGBdkm
         q8kNiKWP11TpMDH/2RooCJhFRAPoxsnpw1U6IljIWcBzQCCpNfRzOZV2DDTkaLdEhMev
         kKeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ru1v3Aqp;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 88si818977pfm.20.2017.09.12.03.35.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 03:35:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ru1v3Aqp;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v82so5971071pgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 03:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RkYCLwrOFN/MUuPKN4frXpwshfvgZq1IhQdFKHLUquA=;
        b=Ru1v3Aqp2CmWVwV03dlLUynKvcIxTMh4d5fF9mzsY3xbYri85NbqSMJRNaaFhnvfFV
         KhrE89C/HJLPe+wBlY6vCY4deXbNJij/VWPNCk/Zt7tnrwGuDFrdcFAymTVZPB0aktgE
         P6ExfvQjnrmMqc4qNXLoz9U3WUUaD2xt/cf+uPucL8KUkxGmhL2B9wDVy2ARRQ0WAu+O
         GS5SROrMsaViJFBheXq6Mt5kEYWXuk4fJno+1kQdeJTgsxJZ6cD0KDXzdoZBDmfdCy5I
         i0O4rl9+k5S5w36c4QrcH7twkyw8Z9FRwijfPzVpV6pm7lg1t+x7eQgvk9o0RROuUPXN
         WmLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RkYCLwrOFN/MUuPKN4frXpwshfvgZq1IhQdFKHLUquA=;
        b=ZZjrXK9tJ4mCul2JgI4MWtaJCKsmoWwkoDelogjURWdbP+kOM6F1twRQSeUf0j4rp0
         ciVL+VS8MtmcVZhxU6/C458Mjo3jjlTsLlWdKhmlbmxJC9DOtdkSxoj8RdbWKKddEiLV
         KaKh6NjJc2qUo9dbfQiGFicbIs7FOxSd/GPM/HiHEBkm8y6v1+oy0Zzn0RgeJb9wU4kc
         re5s6MZLU6iWA2rw08dRaQd7Hepvx/C7z8+qf8KZhbieDfw9LbwSQgQ5zJFtuHce5LXY
         OtIDbFbnYlGMvWH4OgPXqS/rS4g/+qlRLb6ADKaDn0Z6REhfwEUQ7Kkaa+hABDBNs33x
         KZng==
X-Gm-Message-State: AHPjjUihXUjwZQ0RkwxCtf6xJLsuVaRT6x120n2DDKzv5JiaVHL5eLaE
	9LycZnc2zN2zuA==
X-Google-Smtp-Source: ADKCNb54xJ6xc+tP7sOqVex2yHByTwFm2ob3zAr5V2zolPrtHlSWLugavtmwhIHhYHB4r/uTCqd96g==
X-Received: by 10.84.132.3 with SMTP id 3mr16928354ple.377.1505212554288;
        Tue, 12 Sep 2017 03:35:54 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id t65sm19291238pfk.59.2017.09.12.03.35.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 12 Sep 2017 03:35:53 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v3 07/10] staging: rtl8723bs: Remove unnecessary space
Date: Tue, 12 Sep 2017 16:03:53 +0530
Message-Id: <1505212433-26469-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Remove space between function name and open parenthesis '('
Remove space before ';', '++', ','

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Change in v3:
 -Fix small spelling mistake
Change in v2:
 -Merge patches 07/10 and 08/10

 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index eb21821..61be2b8 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -235,8 +235,8 @@
 MODULE_PARM_DESC(rtw_decrypt_phy_file, "Enable Decrypt PHY File");
 
 int _netdev_open(struct net_device *pnetdev);
-int netdev_open (struct net_device *pnetdev);
-static int netdev_close (struct net_device *pnetdev);
+int netdev_open(struct net_device *pnetdev);
+static int netdev_close(struct net_device *pnetdev);
 
 static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 {
@@ -258,7 +258,7 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 	if (registry_par->channel > 14)
 		registry_par->channel = 1;
 
-	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense ;
+	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense;
 	registry_par->vcs_type = (u8)rtw_vcs_type;
 	registry_par->rts_thresh = (u16)rtw_rts_thresh;
 	registry_par->frag_thresh = (u16)rtw_frag_thresh;
@@ -607,7 +607,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
 	return _status;
 }
 
-void rtw_stop_drv_threads (struct adapter *padapter)
+void rtw_stop_drv_threads(struct adapter *padapter)
 {
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_stop_drv_threads\n"));
 
@@ -1228,7 +1228,7 @@ void rtw_dev_unload(struct adapter *padapter)
 				DBG_871X("stop cmdthd timeout\n");
 				break;
 			} else {
-				cnt ++;
+				cnt++;
 				DBG_871X("cmdthd is running(%d)\n", cnt);
 				msleep(10);
 			}
@@ -1879,7 +1879,7 @@ int rtw_resume_common(struct adapter *padapter)
 		pwrpriv->pno_in_resume = false;
 	#endif
 	}
-	DBG_871X_LEVEL(_drv_always_, "%s:%d in %d ms\n", __func__ , ret,
+	DBG_871X_LEVEL(_drv_always_, "%s:%d in %d ms\n", __func__, ret,
 		jiffies_to_msecs(jiffies - start_time));
 
 	return ret;
-- 
1.9.1


