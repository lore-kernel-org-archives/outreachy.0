X-GM-THRID: 6464167912849539072
X-Received: by 10.36.70.72 with SMTP id j69mr4887833itb.20.1505211089735;
        Tue, 12 Sep 2017 03:11:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.145.68 with SMTP id t65ls918590iod.50.gmail; Tue, 12 Sep
 2017 03:11:28 -0700 (PDT)
X-Received: by 10.202.179.2 with SMTP id c2mr8219616oif.123.1505211088816;
        Tue, 12 Sep 2017 03:11:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505211088; cv=none;
        d=google.com; s=arc-20160816;
        b=cy5+klDabCEXrQoWH2J5k96mlT2XoEiAL5f7ZE/DSPQfJ+dP431ZSyA2FmL3yK11QY
         P6QyObKaDhtRoCWmgai0nxFT2YVu7ucgQUS8e1EgYs7TKINj2EBh0v73P3gIQsU6g4Cu
         7JrTih8KdKPogCg7oDLksfAtV94RwRhhwRO3unz0kIQxW1hWPBrO7s/bJXmD7OYJsYa8
         7fWssLee907f+ltRFzksq0hn52Jlxlha+AwZkfeHRTAMXt51GsSShg6ylqJfvReV5SYi
         wQUs2ZbRQyBtcU4UupHjwdYjKexEoK8y5zlfL5nHCq4mUTMOfkpsCcFpsrqYH+8K834C
         VOZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=5PSN73YCcsryJBfQ6Eisyiu/sWV9t72KibejhF6ZWfk=;
        b=uJbRWN3fyyThnBUoKUZrhMkaJnWD6yUL+GCKZKF9GmUMHhZbblA7NnNG7EVIvIwXEQ
         hNnJPCcaQA+piNtLiyEoWhTaJpXSjTv7DciuIA1KPrY3RUHEDoZLrUqZz4JzHdnHTbHZ
         43pUU39y41v1lD3K78TFXWh2BdXCUg9N5lhp7vK/Y9f2NPGFeZFCRdPH0reJ3hQ4K6RM
         XmjL7PkUstecLD2Rs9tuf7zAp8Tw2GPZIMiQ5cMWAfjVSd8Rtbf1venZGPKvhFlIl3BR
         Hj7LikgOjb7MUg54bAP5uGLZJejNwDX33oXML2aVwkObY4ojNEssECxZ/ayf/KV8Noi3
         V9FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dcDn0Jjl;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id d207si693203pfd.16.2017.09.12.03.11.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 03:11:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dcDn0Jjl;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e69so4267668pfg.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 03:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5PSN73YCcsryJBfQ6Eisyiu/sWV9t72KibejhF6ZWfk=;
        b=dcDn0JjlXXnndbZ8tvEHqgn53uiAdY5iHY8f1izn8cjM+Bz7FN6BgsZ2pbkgqwNM/d
         4d2FVpP14HOsy8Zk/QHFmHacGsa5WMckouxUp7kLt8cmnsCY7qymcEMBF042dU8Hz0Cq
         TY8wxJWxDKxa2zuFQS52rVR+WrwuwtXS3D/8RQp14mPRddPYchtfpsmgntRoMOPd8rLh
         uQvyq6rOgoy41a1OtPh2KFA7aOOIr2H85KdNpvTukPhODIu0fddFAkvMHaUKZX/Vk/BC
         lVbCQhT6ll9QjJmFvPShi3PYpnn6tqsN1ZVg1cWGNoVqwf/z1Gwy7hFaa2XcoAbDJR/f
         5kAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5PSN73YCcsryJBfQ6Eisyiu/sWV9t72KibejhF6ZWfk=;
        b=SNboxkcYV1TEiK2gh5mZtybASEa9lvTQRriIJxerCBpGS312QJNnwtY0JcV5kT+29I
         dg/hfY+v4Q0oX5/2oOSCzoQgGYsDyQZtk06WcCJ0PAONlvphfjeN1jXxJgqrVxxaMDQh
         pjl3NgHQdwMhkFoyWclkuRnJmpe7424+in/cgILndzQayP0zrRwl1lAfh5Dvj8WxFxN2
         C1KDWzXqHV5Bw0PDkX5e3NH8mtot5v8YzEUfIawnwtyQSUN3WUjrtoGAqcV1+qLJaCjc
         DU6PWcPmPvGmtwAlm2gCgKj5iaB7G9tcAG97nUfkeQDgb9bWV1uqBQKxLqTE/e8q47x7
         FdUQ==
X-Gm-Message-State: AHPjjUirDP8hV0OhwBzcHTKaIYZ4sXOGPoNrIL4vC9dRZU2PJoC/wy7i
	kdN7rBvVrYZpLA==
X-Google-Smtp-Source: ADKCNb4x7ODf1IZhIw4pOh9PYKIwiuJD0i6kqKVnpVfyH+Wk0lKfeShFU6qZuCvtAgBT+UMkJRqJxQ==
X-Received: by 10.101.65.5 with SMTP id w5mr14301835pgp.100.1505211088547;
        Tue, 12 Sep 2017 03:11:28 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id n12sm20470717pfb.131.2017.09.12.03.11.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 12 Sep 2017 03:11:28 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2 07/10] staging: rtl8723bs: Remove unneccesary space
Date: Tue, 12 Sep 2017 15:38:56 +0530
Message-Id: <1505210936-24971-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Remove space between function name and open parenthesis '('
Remove space before ';', '++', ','

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
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


