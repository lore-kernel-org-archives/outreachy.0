X-GM-THRID: 5015409262592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,eaeb13245395f719,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.80.7 with SMTP id n7mr15516960obx.10.1425091440219;
        Fri, 27 Feb 2015 18:44:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.164 with SMTP id f36ls790786ioi.108.gmail; Fri, 27 Feb
 2015 18:44:00 -0800 (PST)
X-Received: by 10.50.61.132 with SMTP id p4mr6106959igr.7.1425091440060;
        Fri, 27 Feb 2015 18:44:00 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id xj4si680042pbc.2.2015.02.27.18.44.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 18:44:00 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so27289375pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 18:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BBj1RgdxTDmnXNLOdqpEOtgY6DHA+C3oYXr1bhvBexc=;
        b=cQsfaVZ7LEmUzpEOEWQcb5ZIJd15X4ezVKi28CcOuUnMZC+PAjTWJK0qg6TM9WweA0
         eA4qSZrhpnFdXeqqAlr4Y//TwSIyCQTyaTVFz3vuwxw7/mQankDSSl2Di/DE+Gf/43O/
         o7Xo4CPviONAeYHUp1EuByq89Vgddc2AYpqCTUlt8R9QXSUMr8A2z19fRmv946neMWgR
         LbtIIidrAh5aCA/3qF0n4enIbjgjwwk+9eiKM10D+daX55Zvxy3n5FjUONvg1e5zQmLo
         qLMV254ZC48LIFc/fnxEFHiFRJcnPrYsn/FHEBB2Sb3td0kxf0E3hGFJZS7DLd2JMLYd
         A+Wg==
X-Received: by 10.66.63.106 with SMTP id f10mr29265703pas.0.1425091439892;
        Fri, 27 Feb 2015 18:43:59 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.242.202])
        by mx.google.com with ESMTPSA id d11sm5269599pbu.10.2015.02.27.18.43.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 18:43:59 -0800 (PST)
Date: Sat, 28 Feb 2015 08:13:54 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: Use del_timer
Message-ID: <20150228024354.GA2767@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use timer API function del_timer instead of driver
specific function _cancel_timer_ex as it is a standard
way for deactivating a timer.

This is done using Coccinelle and semantic patch used for
this is as follows:

@@ expression x; @@
- _cancel_timer_ex (&x);
+ del_timer (&x);

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
v1: Here, I am not sure whether I should use del_timer or
    del_timer_sync [though function definition is using
    del_timer]. That's why I am sending a sample patch. I will
    go for removing all cases of _cancel_timer_ex once I have
    cleae idea about the use of both functions.

 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 546414d..0ec0bda 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -609,7 +609,7 @@ static int recv_indicatepkt_reorder(struct _adapter *padapter,
 		spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
 	} else {
 		spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
-		_cancel_timer_ex(&preorder_ctrl->reordering_ctrl_timer);
+		del_timer(&preorder_ctrl->reordering_ctrl_timer);
 	}
 	return _SUCCESS;
 _err_exit:
-- 
1.9.1


