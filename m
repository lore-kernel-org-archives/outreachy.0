X-GM-THRID: 6261235815090749440
X-Received: by 10.98.14.21 with SMTP id w21mr8993593pfi.7.1457807564916;
        Sat, 12 Mar 2016 10:32:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.16 with SMTP id k16ls1378239iod.108.gmail; Sat, 12 Mar
 2016 10:32:44 -0800 (PST)
X-Received: by 10.107.40.134 with SMTP id o128mr11861197ioo.7.1457807564201;
        Sat, 12 Mar 2016 10:32:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id h69si998328pfj.0.2016.03.12.10.32.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 10:32:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id x3so12587901pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 10:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=otdqk2hVpWD/tyjsZG5zGUQvBn9Fvggm5iDLPQA68Jo=;
        b=eGwNrfqkZ5om+/eArz3WIjzCWIkLQnze/3dBiEsZ84z7MLcBWUit8d6lgLoWzn427s
         dFdBTr79NFOtUqmm/FNHhfwzr6X9jVwqdSu6AAg8i7aRuZKgVUYjJ1pO17iG43P3VZBH
         tgzFukntkr5sAlrZBKYlMdV48ogcMoj9tfieJbrxvOtNTkxZcXuKHNOTRz5x4ftFM1EV
         FtuSuMIaFWwaQA+rngUUV99/fHIbI8bVcp1zldYMUi/HaPbNFoOxI4tjCTO46eP1ref3
         kM8TpvCBayis0Wq0/3Fctfz3nXcOkBxJiZi7jtGEDqXiaOPCHp81Wrh7Zcf9NOE39RTq
         +iVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=otdqk2hVpWD/tyjsZG5zGUQvBn9Fvggm5iDLPQA68Jo=;
        b=jK2UT6sVxkwhZMLzQBSUDWC4GvBM0kRaAuSTK2SXe360s71oHLzzt2mrbBt91b+um0
         GhQVy1CwlO84rCla1bJMYKt2bsCkzOPJ5eBi1rKiQJIp+bsF9EnvH2Bq+uDBZ5DDQjTa
         +Apk9N99kNwk7VoPWSYHITFGnad4XPU5wDB+tIMEQKg8A5S0Br5hJ29exicFcMYeYX2B
         1tFbCnlESOZ+o+6DATmRrqTMdHazu6Rv0SOnfDXPES31lTUsHdiihOJkuwerATXvstj0
         ym6CAgkAfFhfvbhSG12XuA5mT19aUy3iSOzZOFq+3KnFmKWRv1N8AioIhXXJbk0V8bN8
         I7Qw==
X-Gm-Message-State: AD7BkJJsqWjaFJS/rrJUQAKE9/n8y8BeqMO/y388j0PlCi/2bCJg70h3zHNxBgJIDxXLEA==
X-Received: by 10.98.18.195 with SMTP id 64mr17443389pfs.131.1457807564018;
        Sat, 12 Mar 2016 10:32:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g23sm21272593pfg.35.2016.03.12.10.32.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 10:32:43 -0800 (PST)
Date: Sun, 13 Mar 2016 00:02:27 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] staging: rtl8712: usb_intf:  Remove flush_scheduled_work()
Message-ID: <20160312183227.GA17219@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

flush_scheduled_work() flushes out all work items in system_wq.
Since one doesn't know what could be running there, flushinf work items
individually is preferred.

Since there are finite number of work items to be flushed,(viz
pwrpriv->SetPSModeWorkItem,pwrpriv->SetPSModeWorkItem,pLed->BlinkWorkItem)
instead of flushing system_wq, each work item is separately flushed.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/usb_intf.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index c1a0ca49..32c5798 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -627,7 +627,9 @@ static void r871xu_dev_remove(struct usb_interface *pusb_intf)
 		if (drvpriv.drv_registered)
 			padapter->bSurpriseRemoved = true;
 		unregister_netdev(pnetdev); /* will call netdev_close() */
-		flush_scheduled_work();
+		cancel_delayed_work(&pwrpriv->SetPSModeWorkItem);
+		cancel_delayed_work(&pwrpriv->rpwm_workitem);
+		cancel_delayed_work(&pLed->BlinkWorkItem);
 		udelay(1);
 		/* Stop driver mlme relation timer */
 		r8712_stop_drv_timers(padapter);
--
2.1.4


