X-GM-THRID: 6394976013217955840
X-Received: by 10.107.19.231 with SMTP id 100mr1610310iot.46.1488946381307;
        Tue, 07 Mar 2017 20:13:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls2274211otc.47.gmail; Tue, 07 Mar
 2017 20:13:01 -0800 (PST)
X-Received: by 10.129.130.7 with SMTP id s7mr1730529ywf.134.1488946381009;
        Tue, 07 Mar 2017 20:13:01 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g82si394122pfb.5.2017.03.07.20.13.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 20:13:00 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id v190so2289515pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 20:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=g3XWSpxt/0ACvdZ71ueIuhAqjFizkjFq8YNKlIUnTgg=;
        b=H1C4/OG6Z+c5Krk1EZIgW8y1fxal0zn+eEoB0hDhrrELJW/JDEsfmmVla8EvMMttwN
         ZW2X142Ze3FMswQ/OXLiRTwZ//rG1z+QXF63M9H76VTTLF3drdvoWnBwsHG5ZJMJuKBl
         dQ2tyWf/3AIH8wkuWASY0nrllqUdkuU8oKq7dLSVJq9Jx9FzI01S9Mk4xG8zjtRrUkAb
         VGmlncCXN7b7VleGrBCaEi6dzpregsHRp1JhzcHYMr43pMLrUTqBAWmB7HeNcNjU9Z68
         rfcauGenvKgbXcRqo3rxYLw887fXFezUegR4T4FmeZ9Mcgg3mY4LP6pkDGO5yu03SdLe
         hrtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=g3XWSpxt/0ACvdZ71ueIuhAqjFizkjFq8YNKlIUnTgg=;
        b=CzRYQILLEtfQ1XTxxzHBa0lVPgsGX1GbkJUglAOj2OaVCKpSGeXpsKk9+JmKyzEX5T
         TLGSgnyQU06A8T6tel02eiDxLRMNIplzP+CpnpRWo8hUpePqiWnZA6b4pgTbKyd2aF6w
         FZWn+LcShjpRwuvL2OQNZvrrq2REYGzYjkBj9gPKYN6d3wIUfQMb+6jYhM5vHXi+3eYi
         utb0oFBP3+meoXdUHhVdeKaw3EOLArUAeQ/327NkhkvjYuo+wYzQLe7YEHXRCSez3uAz
         A26jc48yzhMbliC5MYvLYJK92bC2LIyblEC4/9XZodxZoKecgJxGKQkyJH1zddVK9Gyh
         GO9Q==
X-Gm-Message-State: AMke39lbN9iH9oeri0w/oCZo0a1Ixr+2qLf6I4xCi8KzFn97fUSPOf1m1v01PPdwXzdYJw==
X-Received: by 10.84.238.9 with SMTP id u9mr5664964plk.174.1488946380623;
        Tue, 07 Mar 2017 20:13:00 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.151])
        by smtp.gmail.com with ESMTPSA id x15sm2563233pgc.16.2017.03.07.20.12.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 20:13:00 -0800 (PST)
Message-ID: <58bf84cc.0f7c630a.ae1eb.86c4@mx.google.com>
X-Google-Original-Message-ID: <20170308041246.GA6298@<rvarsha016@gmail.com>>
Date: Wed, 8 Mar 2017 09:42:46 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove useless cast.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Variable ip_addr is already declared as pointer to u8. Again explicit type
casting of ip_addr to u8, is not required. Hence this patch removes it
by using the following coccinelle script.

@@
type T;
T *ptr,p;
@@
(
- (T *)(&p)
+ &p
|
- (T *)ptr
+ ptr
|
- (T *)(ptr)
+ ptr
|
- (T)(p)
+ p
)

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 2429c85..b14b3ae 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -385,7 +385,7 @@ static void handle_set_ip_address(struct wilc_vif *vif, u8 *ip_addr, u8 idx)
 
 	wid.id = (u16)WID_IP_ADDRESS;
 	wid.type = WID_STR;
-	wid.val = (u8 *)ip_addr;
+	wid.val = ip_addr;
 	wid.size = IP_ALEN;
 
 	ret = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
-- 
2.9.3


