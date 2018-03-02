X-GM-THRID: 6528402715160084480
X-Received: by 10.157.59.246 with SMTP id k109mr3139231otc.47.1520012206165;
        Fri, 02 Mar 2018 09:36:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.231.17 with SMTP id e17ls1251541oih.2.gmail; Fri, 02 Mar
 2018 09:36:45 -0800 (PST)
X-Google-Smtp-Source: AG47ELuAFCBaoC9SD1WuubQ6iGgPSs238nITclJ1Wj3H574irC4KKCwkFB6m8gO+cptGOUdJ9oYx
X-Received: by 10.202.237.213 with SMTP id l204mr2809165oih.47.1520012205233;
        Fri, 02 Mar 2018 09:36:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520012205; cv=none;
        d=google.com; s=arc-20160816;
        b=Q7yEQ2vbO5it7yaU3n2ssGhus9XrPdxEgE/IHRRBxkJ3qHGvFXuQEN2xQc0LWNtyEN
         31loz+KMHf6k++leFDTZvhu8yrsf9QKco/jt2hrhFVe0H3A9pkUPsYez3F2xFhiqN5ie
         TQopb3cmcQVkzHEl/oj/jB3VTx66kQfZri+mgtF69oc8cBCB9PyZJrP4b5Yv3Nf33bpa
         b3qRdxgtVpArKtfY5OdmC38AO/tsF94YQqXW0MLRM8zVI9cIJ2XYNx2iVc5wyXUTuk8x
         78wMhS4XLTc3USV14vMkmp4Nm24vB8Zg+GpgXVKxjbqOuVg+sL1SxBiaRta+2myn4Y7a
         Ij7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature:arc-authentication-results;
        bh=INfGVKZPpcaL5qfCtC5V/xa04DYnKMxxlniAFvB4hbQ=;
        b=NhZ5bkv6mGzlT13gxXzwZC05+CogN0WSjW4LKNDF884p8hoCbnlryCtbm6I52Se6iu
         Ok7mhudq+HYNVdK71Slkgo8zHGChaOQdrGfJQ0Kb/gdpOHIrScQPF57LdVvAa9rv6o7O
         o4h/jDRTr1WJgEKL9yyKKVBjVYD1ZiaWbxTjA8EMpcxT+XEB+2asSxZ6PAo3E78/3yGu
         a6//E+2QXtBlHpzuSnJ9uZqsjv4YFXxOrlv0G0z9XxinLQkQ0zEwnpXfwqWtq7TTEjpO
         nIZ+Kd2Tu6P2VtAjBKL8Kt/JZdBhwmU0fLlc6Ww6YhUHNfISUrRc+Fzy+WAL99wLiT3h
         nPcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bON0Q7PX;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y81si511896oia.4.2018.03.02.09.36.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 09:36:45 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bON0Q7PX;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id q27so4040280pgn.8
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 09:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=INfGVKZPpcaL5qfCtC5V/xa04DYnKMxxlniAFvB4hbQ=;
        b=bON0Q7PX1uWSx6YgOXqaQP091z99ecTqLRyTvmQjL17FIrl3aVczlODSzQkIvrGcsx
         IK7lsnOMdAc/xB2yA44dszd45UTLQyOhvlcyx/moJOAD7Jutrepk7W8tLZyjn64vFI1F
         XTL4M8DO+nVdfpUwgCey6DmztjA9rLaPvFEkVIr97349RalzzDQtCe2CkG3P6mPrPQKV
         coCJ+nRbd4u5mqaUQakVim3yt/JwaEMVeTYP+Sxyn4GW/ZejF3FUNGx5CIcjAYesP1IL
         /Ii2k41XGPmTn6ck8129RlZ3y6XxQLs/Aa2vbnu/olspx+xPVMCKNEBLKVOtoipFnmYT
         p5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=INfGVKZPpcaL5qfCtC5V/xa04DYnKMxxlniAFvB4hbQ=;
        b=cYEY0YpyI8TRc8qFWZs9/G1yIoNHMAcfQL7kWawbAcrf9UWSXGaA5SsN5K+IXTvFnk
         WE6WceAY4s3msO7yzMjhIgZMlvdWJKxuDBOv/8P0ehOr6hHc9PGlPSq22et5zjGVe8mS
         d2RX7qfDYGCUYpjBwlREOILZdfhIgQzzSFnvjJ0GCiOG8BJsYBAthHjy1t/uM4hWRIzh
         FeUFqxNgsB6b01rp+9Ss2FrDBZIk69vXyQZW4aNGr7LEz3bczuDDPeDxSDaJiHq6GHz1
         W6tjqzxQqwGKOzCh5NV74HIYmR29RgO17+MkX8LrbunOkkbFZMlR4sJLISnund3jVMBz
         dbBA==
X-Gm-Message-State: APf1xPByiqScZOdRDsTl07KnmNwJO2O4j5zekMZ3F/x8Dn/Ypa8qn2wf
	O6zLy/u+t0zpD+U7JraiKe6Qnw==
X-Received: by 10.98.226.16 with SMTP id a16mr6320934pfi.157.1520012203924;
        Fri, 02 Mar 2018 09:36:43 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c62sm13655097pfk.127.2018.03.02.09.36.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 09:36:42 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
X-Google-Original-From: Arushi Singhal <arushisinghal@gmail.com>
Date: Fri, 2 Mar 2018 23:06:19 +0530
To: Larry.Finger@lwfinger.net
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: match alignment with open parenthesis
Message-ID: <20180302173619.GA8598@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checks reported by checkpatch.pl for alignment
should match open parenthesis.

Signed-off-by: Arushi Singhal <arushisinghal@gmail.com>
---
 drivers/staging/rtl8712/mlme_linux.c | 2 +-
 drivers/staging/rtl8712/os_intfs.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index 3c7c4a4..baaa52f 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -36,7 +36,7 @@ static void sitesurvey_ctrl_handler(struct timer_list *t)
 {
 	struct _adapter *adapter =
 		from_timer(adapter, t,
-			mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
+			   mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
 
 	_r8712_sitesurvey_ctrl_handler(adapter);
 	mod_timer(&adapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index e7df5d7..d6d27da 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -230,7 +230,7 @@ struct net_device *r8712_init_netdev(void)
 static u32 start_drv_threads(struct _adapter *padapter)
 {
 	padapter->cmdThread = kthread_run(r8712_cmd_thread, padapter, "%s",
-			      padapter->pnetdev->name);
+					  padapter->pnetdev->name);
 	if (IS_ERR(padapter->cmdThread))
 		return _FAIL;
 	return _SUCCESS;
-- 
2.7.4


