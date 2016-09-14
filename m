X-GM-THRID: 6330275775734874112
X-Received: by 10.13.249.6 with SMTP id j6mr3357255ywf.37.1473882676180;
        Wed, 14 Sep 2016 12:51:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.247 with SMTP id t52ls1988326otf.28.gmail; Wed, 14 Sep
 2016 12:51:15 -0700 (PDT)
X-Received: by 10.13.219.210 with SMTP id d201mr3487857ywe.53.1473882675849;
        Wed, 14 Sep 2016 12:51:15 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z4si1498819pam.0.2016.09.14.12.51.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id p2so1132288pap.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=meiA2VJxwc8hhq4laSNP2AJbOrnZk4CoHD8PecelJ4A=;
        b=Bs0QMzmt7ZeWU7W/WBnvZ5AAHCCfQtvALHyAq+7qgGIuaXLy/BhfKAdefb5JHriCFZ
         thJheMfKJYvjI7iSuQjbaQqxNuymRx8DHhI/L/z9eaiU53S3KJ30yLYwN+ztWsNk906A
         +YyiqFPlWr7opg45gWgWXsmUj3aZCGma9RzjavECAo7vynqhmQhDL9dk9HN853RmqkmI
         BhwZdEfmkK0SokhbpBTDwIFJoVzmfd6O2SDiEOvk4DPbtxEnPuHhSOB0SM9907DviNnl
         o67PYjTz5qvLVQX6kr6G+YQetKB9+afxCHaKG5g7PyWxCxY2TJHZ6ClLb3ooSxDv7AGx
         4rYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=meiA2VJxwc8hhq4laSNP2AJbOrnZk4CoHD8PecelJ4A=;
        b=THOCAbvYFIgUTcx6R/e8obJgq9t4sleEak3TjWYjVXu3WhIDMqXbpmobYs81zkA+Qd
         +KlPtv5vwnF/1RehEpigTBugDPOA6bImGVy5hgmxPBRyN3LVrbGIb1r5kDDxtV7g7vNW
         NRCKYAtWi40JbkWjdJrtPAJKsduqMw7jzVjlq4kpVZ4MhkKAxxioeWFNB0QEejhYTq/u
         UMy0zt/DZTebTrh4nKhf355fC/OHggYy2tV1MnpTDlOwseVI9CZWN/Ac0zPlDaez+YKE
         GCcMq1YBmSdh29Fn31UBM7oufua8tjCrExN3pWjS+S0Q0YPwx8vM6Dg6E8Qq8l9gsQ3q
         CdDg==
X-Gm-Message-State: AE9vXwPJCp0Fgf1bsmdMchsYG5n5BJJdVEKsVf72AFu4DRAvSEd4wxs/MqZyIl65y6mlQw==
X-Received: by 10.66.134.51 with SMTP id ph19mr7796246pab.30.1473882675658;
        Wed, 14 Sep 2016 12:51:15 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.22])
        by smtp.gmail.com with ESMTPSA id p73sm28895185pfj.35.2016.09.14.12.51.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:51:15 -0700 (PDT)
Date: Thu, 15 Sep 2016 01:21:02 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 6/6] staging: ks7010: ks7010_sdio.c: Remove the null check
 before kfree
Message-ID: <438d294872e61f3976e3f062201b0344c64d299f.1473877138.git.karniksayli1995@gmail.com>
References: <cover.1473877138.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473877138.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch fixes the following warning by checkpatch.pl:
WARNING: kfree(NULL) is safe and this check is probably not required

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 4ad4670..01d0acf 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -726,8 +726,7 @@ static int ks7010_sdio_update_index(struct ks_wlan_private *priv, u32 index)
 		goto error_out;
 	}
  error_out:
-	if (data_buf)
-		kfree(data_buf);
+	kfree(data_buf);
 	return rc;
 }
 
@@ -757,8 +756,7 @@ static int ks7010_sdio_data_compare(struct ks_wlan_private *priv, u32 address,
 		goto error_out;
 	}
  error_out:
-	if (read_buf)
-		kfree(read_buf);
+	kfree(read_buf);
 	return rc;
 }
 
@@ -873,8 +871,7 @@ static int ks7010_upload_firmware(struct ks_wlan_private *priv,
 	release_firmware(fw_entry);
  error_out0:
 	sdio_release_host(card->func);
-	if (rom_buf)
-		kfree(rom_buf);
+	kfree(rom_buf);
 	return rc;
 }
 
@@ -1192,8 +1189,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 		unregister_netdev(netdev);
 
 		trx_device_exit(priv);
-		if (priv->ks_wlan_hw.read_buf)
-			kfree(priv->ks_wlan_hw.read_buf);
+		kfree(priv->ks_wlan_hw.read_buf);
 
 		free_netdev(priv->net_dev);
 		card->priv = NULL;
-- 
2.7.4


