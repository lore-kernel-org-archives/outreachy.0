X-GM-THRID: 6467597635831201792
X-Received: by 10.46.80.65 with SMTP id v1mr302431ljd.14.1505854920817;
        Tue, 19 Sep 2017 14:02:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.65.81 with SMTP id o78ls2323lja.34.gmail; Tue, 19 Sep 2017
 14:01:59 -0700 (PDT)
X-Received: by 10.25.212.195 with SMTP id l186mr289656lfg.31.1505854919361;
        Tue, 19 Sep 2017 14:01:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505854919; cv=none;
        d=google.com; s=arc-20160816;
        b=Hcs8APP81Z4PeDNMIV1qFcLx/qapwAKeotNoKc57wD73AKeOqh5XrydjB/5phm1UEJ
         661HtKieOxvmvr8AKYITkavfHCh6oXHRKgsamnK1TL8wpf8dRY45Nysoct+726k/mikZ
         oxaDBaj9X+LRwKuEIdpgLRSWQ8k54bu3kJ4EsCkMRAlUtjL1fRpi2KdjNukFnVnhmco0
         l4uDv+z8DPbUttL0u+ie1uF/HFFXfliZBseAR3JnTzQrwkDsB5ywMP45fescnCzwBDeI
         qjhKCzuu35ga+FoNOQWFBKa/QRMCyCcEDYwW/knmDAByzbfYZEMXT2McCNsFAklgJzNB
         J+Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature:arc-authentication-results;
        bh=Yx5OYC/C0TV8ThPkB68j8Sh5ZmZNufi1xh5Tjkq6MCE=;
        b=AMvmPXx2yLthfpBjpdCXl8oTfTjvd9Y5tmgGOgpDBes5vj74RUqzgo05hZYtV4DM0I
         gr0OvjISeSwOvncLvH8r1s6gqwFvAZGgm6EEI2jDp9EU4cSH08IeG7MAGh42AQq+uznf
         zEjIbIOmEbF0GxEzsWOqslcv9avoWvi74uQPSfk41VCXNVly2EdOYjgStFJDMQZ0F8TJ
         ZFMFH/rSPnKf0yiOXDd/TXO+9rZRitfj3uYW2l8gnjPYLdkOsgbaLO5a5Qa3JCfFZBPl
         B6FVx86OBVT4apCvXD1bPabs8IunNXyT0GaRccWfz06Sx3PG7C29n+zqRkd9dUgRYOwH
         gJWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DB7IAzot;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id 200si45118wmj.0.2017.09.19.14.01.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 14:01:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DB7IAzot;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u48so425443wrf.4
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 14:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Yx5OYC/C0TV8ThPkB68j8Sh5ZmZNufi1xh5Tjkq6MCE=;
        b=DB7IAzot9y1tdn/vPDH+4q/M5RUZRqvbgvLrOWcJ7CwEx3tM0r8hhm52xoBQ7hImVA
         oJuqLcUdUllLfH/WiMpMO9xGMtDl5HvXL2+mUAJZ1R7eMroYGgVDDETjLczMsNtJ8SwJ
         /2BUqOsBo7cP44V07pPlSFBHZbsIHkWKb9PzcLcM/VFdAVIqD9lG11OI/hPoU5Ae9ydC
         hc/8lXdosVb8sEJFgQoYz4TPHQdc3t5l67LUghA1KGoxd/oDz6fCT80qBxZO2kzVIIsS
         XS33V3G69TH+Fw/T7uLRVIB39kFQ20GyqGvgSeqpuySXajph7sqi+vf3XpOAJZlFJDsx
         p51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Yx5OYC/C0TV8ThPkB68j8Sh5ZmZNufi1xh5Tjkq6MCE=;
        b=ub+iscHmfMig9ugnCHGCF1MeBoUJhRBtTVrCr5T9CrgPP5bqnIPgFGwiViSp0xnbgz
         n9SDIOuvP8yfjeq6zy4xPf9b86qSWuxqt1IFuIhFFgWUA98blQVCuXQ2K6oU+TJ/2PlH
         BCyYOCRWmsqoY4Cer3hbaJKp4k3pMZ83X00C51wLiuPLGuXqh0uT7uIecfe9jdGHeHWg
         ZpP/mDQdhFuvnYfZsYq5dKUJtEf9yEq/Zcz3vgGk4nCsytYs8MCP4S0e0ifV30XiYyfP
         Pjfp5SNGN7ugFCQlXECKtRvWKq6hd7lfvZ76sROACcRQkup7p9I6iyr1j3VI96TA44v/
         DADw==
X-Gm-Message-State: AHPjjUjqKxHz5gww+Or68MuUP9hpgzhlAhgjdoinMYN2kWh7Q1yfUJOw
	SxjUNUyF7A6vhMZLVaOIFjI=
X-Google-Smtp-Source: AOwi7QA5Qd/FOJOoy9C2UGh4QO2BxwciNsWUiNuvCDbvDwWRNGDqYGeLUFbbXc120qla6NCS8/P9bw==
X-Received: by 10.223.138.151 with SMTP id y23mr2272675wry.244.1505854918958;
        Tue, 19 Sep 2017 14:01:58 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id v98sm210190wrc.71.2017.09.19.14.01.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 14:01:58 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
X-Google-Original-From: Georgiana Chelu <georgiana.chelu93@example.com>
Date: Wed, 20 Sep 2017 00:01:57 +0300
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtlwifi: halmac: Remove unnecessary 'out of memory'
 messages
Message-ID: <20170919210157.44uf4sm27tjshxn6@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Remove unnecessary messages because OOM (Out Of Memory Manager)
reports memory allocation fail messages.

Fix issue found by by checkpatch.pl.
WARNING: Possible unnecessary 'out of memory' message.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
---
 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
index f33024e4d853..269c9e082165 100644
--- a/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
+++ b/drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
@@ -277,7 +277,7 @@ halmac_dump_efuse_drv_88xx(struct halmac_adapter *halmac_adapter)
 	if (!halmac_adapter->hal_efuse_map) {
 		halmac_adapter->hal_efuse_map = kzalloc(efuse_size, GFP_KERNEL);
 		if (!halmac_adapter->hal_efuse_map) {
-			pr_err("[ERR]halmac allocate efuse map Fail!!\n");
+			/* out of memory */
 			return HALMAC_RET_MALLOC_FAIL;
 		}
 	}
@@ -538,7 +538,7 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
 	if (!halmac_adapter->hal_efuse_map_valid) {
 		efuse_map = kzalloc(efuse_size, GFP_KERNEL);
 		if (!efuse_map) {
-			pr_err("[ERR]halmac allocate local efuse map Fail!!\n");
+			/* out of memory */
 			return HALMAC_RET_MALLOC_FAIL;
 		}
 
@@ -554,7 +554,7 @@ halmac_read_logical_efuse_map_88xx(struct halmac_adapter *halmac_adapter,
 			halmac_adapter->hal_efuse_map =
 				kzalloc(efuse_size, GFP_KERNEL);
 			if (!halmac_adapter->hal_efuse_map) {
-				pr_err("[ERR]halmac allocate efuse map Fail!!\n");
+				/* out of memory */
 				kfree(efuse_map);
 				return HALMAC_RET_MALLOC_FAIL;
 			}
@@ -3579,7 +3579,7 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
 	rsvd_buf = kzalloc(h2c_pkt_verify_size, GFP_KERNEL);
 
 	if (!rsvd_buf) {
-		/*pr_err("[ERR]rsvd buffer malloc fail!!\n");*/
+		/* out of memory */
 		return HALMAC_RET_MALLOC_FAIL;
 	}
 
@@ -3598,7 +3598,7 @@ halmac_verify_send_rsvd_page_88xx(struct halmac_adapter *halmac_adapter)
 			    GFP_KERNEL);
 
 	if (!rsvd_page) {
-		pr_err("[ERR]rsvd page malloc fail!!\n");
+		/* out of memory */
 		kfree(rsvd_buf);
 		return HALMAC_RET_MALLOC_FAIL;
 	}
-- 
2.11.0


