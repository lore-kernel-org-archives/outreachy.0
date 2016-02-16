X-GM-THRID: 6251873454505590784
X-Received: by 10.194.62.69 with SMTP id w5mr1898700wjr.5.1455627720128;
        Tue, 16 Feb 2016 05:02:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.85 with SMTP id y79ls2585870qgy.63.gmail; Tue, 16 Feb
 2016 05:01:59 -0800 (PST)
X-Received: by 10.13.223.140 with SMTP id i134mr20439113ywe.11.1455627719351;
        Tue, 16 Feb 2016 05:01:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id ui7si3918707pab.0.2016.02.16.05.01.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:01:59 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id x65so105061173pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/k+cLD6SUOvFiaa8eorVxaH1VUmPaSqnS6zig1/+6FQ=;
        b=cZAyL/ZCD2XoFlPwS6SPbTSYMsHgyJxITz3PpSraSPcYjd8NtA1uDIaVIHbP0Cka5d
         kflcYG1eg8jjvI+sX2AYj/oIfVEsYJjQaxbUlMu0iCbkP9emsob+N/CdQEff/yyR9izq
         HZbrjXV2jYgit+70A2q0ZS5VV1cD1j+fg5F4xn0qR4kw14a8uOiTjo6L5vFt02rxAAN6
         MYoVsmHGjnPDXFecOmHD6WNENgz/tQZ4bA1PYpy+EaQwEOOknF2I5jDxc8B4gOjcxRSO
         3m6Zn1sKFsyRRIp3ixuyfsc0PNDTF6TXEHMuPIkE2jZt2Pf9RhhwmsN08KKgDLN2MeXA
         dipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/k+cLD6SUOvFiaa8eorVxaH1VUmPaSqnS6zig1/+6FQ=;
        b=fHV4F0luHxMA5k3ayixiIpcoMiMYD5uSJLDXszvP38syUly2EJ5cYtI/PdytYxo0WH
         pD4cJ1n1+ffhLhRtHUFTp0WTErgh2pTaKkUxw1+PyZSPhZ2sBWHPRwl/JrYQi9xT+Ze5
         438fzovn3qFLZMuw7kR8KKkysNzPG2ifJ9UzCYcCTPqcVuuUcehYFCvxqBeqPNUju4jQ
         mQ5FraYDOp5dw3H7/tS4YYXDKEhCE/ztgAIC0/lFo+eGdW+AFluZxBGBa7wI/8X+HjQ5
         SbFM9XZf+aX3H8BKx7qMOTXMWdnH/1Do+fBDAuOuJleYo6I4Le+R+F54NQC3SnJLSkJe
         frPg==
X-Gm-Message-State: AG10YORkdA0UFLPneQXshxVIPWaJL97oH+F6Nm+nwQFkUovcmXYTtEjh0pPVGf93v8HK2g==
X-Received: by 10.98.16.150 with SMTP id 22mr30881645pfq.128.1455627719145;
        Tue, 16 Feb 2016 05:01:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id z67sm45771086pfa.71.2016.02.16.05.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 05:01:58 -0800 (PST)
Date: Tue, 16 Feb 2016 18:31:55 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Declare function as static
Message-ID: <20160216130155.GA3403@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Declare rtl871x_intf_resume() function static since it is defined and called
in this file only.

This fixes the following sparse warning:
warning: symbol 'rtl871x_intf_resume' was not declared. Should it be static?

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/usb_intf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index b64f10b..f1d3d70 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -221,7 +221,7 @@ static int r871x_suspend(struct usb_interface *pusb_intf, pm_message_t state)
 	return 0;
 }
 
-void rtl871x_intf_resume(struct _adapter *padapter)
+static void rtl871x_intf_resume(struct _adapter *padapter)
 {
 	if (padapter->dvobjpriv.inirp_init)
 		padapter->dvobjpriv.inirp_init(padapter);
-- 
1.9.1


