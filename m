X-GM-THRID: 6261235815090749440
X-Received: by 10.66.163.97 with SMTP id yh1mr13967988pab.11.1457853934670;
        Sat, 12 Mar 2016 23:25:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.174 with SMTP id 43ls3382882qgx.73.gmail; Sat, 12 Mar
 2016 23:25:33 -0800 (PST)
X-Received: by 10.140.98.179 with SMTP id o48mr13806553qge.15.1457853933794;
        Sat, 12 Mar 2016 23:25:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si2322559pfa.2.2016.03.12.23.25.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 23:25:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so10328415pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 23:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VPzEBlX3+nQaL/H4po8NtP5nxd2zBb89nUW1yShZ1lI=;
        b=NN4zTXQSa+oQg5UB7e2bJtK7DZrVtd+IHHca5ehVsAXDf2+glb+c4PeNBvYoPYr8I4
         Oz2TVV+NwYdd6SEEzWz2VcHxMWqUYAmsqXGf2HByz96gy/yKvuzLBXrG7+RcoVVuNfqG
         YF86EE/u++VqivazTtNCJnpy+8XUtl93mb0frBEtXo9la6fgu7UhBU9qchS5WSNmIbq2
         pJwYFWpfLiUG1IF+JfsX0lL/i6Gi/VrF5nvciMBUPCojKJtk6gqQj7yPTc6p9PPmz0Vi
         ZM666pu7Wo/Ana+MBDBrbRJcUktnvd2ZzkZ12SmrMj5THCL8zkUtaOozICW/Ha0BMEhm
         KYdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VPzEBlX3+nQaL/H4po8NtP5nxd2zBb89nUW1yShZ1lI=;
        b=lpfqoZcUif2Dt3cuMLvHEqxxUWkNdWDgE5oG+SMqN6BysIs1GfjJ3HWLPMklh5GKn5
         yDpyOiTXWMzP1HJBXRibmKri3q09eXEMbIS4rgL+OmhsmD2H/1A3AfbNQoOieRB3exGs
         Uv2WAWmWAF+RgD336c304Iyi9qsum16idCK1IQ7HGnwj3oCFYSZelpar5SeffMVGmWLD
         BxX83d32/XF0MrJSUQ1Eqa7Kwkbg69d2FKOShXR3eH+ynM1YD+lIUUzdpHD1wdiQmEAi
         rtnYjllOMwFMCE1820CRarv6S8U7gbDtsks7sDFXnpyhsm9KNIpNjZxzruGM+1Ja5aeK
         1/aw==
X-Gm-Message-State: AD7BkJJPBwNVyeF/YEKrwgRi8yyOgxk+36lTPgwQJbzNxfcPAwEIJD1KOfSozsqb4L5LXg==
X-Received: by 10.98.44.196 with SMTP id s187mr20595716pfs.17.1457853933602;
        Sat, 12 Mar 2016 23:25:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g74sm23713870pfj.1.2016.03.12.23.25.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 23:25:32 -0800 (PST)
Date: Sun, 13 Mar 2016 12:55:16 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: usb_intf:  Remove flush_scheduled_work()
Message-ID: <20160313072516.GA22863@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

flush_scheduled_work() flushes out all work items in system_wq.
Since one doesn't know what could be running there, flushing work items
individually is preferred.

Since there are finite number of work items to be flushed,(viz
pwrpriv->SetPSModeWorkItem,pwrpriv->SetPSModeWorkItem,pLed->BlinkWorkItem)
instead of flushing system_wq, each work item is separately flushed.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Fixed typo in commit message.

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


