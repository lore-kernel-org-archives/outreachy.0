X-GM-THRID: 6334340423439351808
X-Received: by 10.129.0.194 with SMTP id 185mr3421307ywa.12.1474828557504;
        Sun, 25 Sep 2016 11:35:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.203 with SMTP id 194ls7896263ion.11.gmail; Sun, 25 Sep
 2016 11:35:54 -0700 (PDT)
X-Received: by 10.98.22.79 with SMTP id 76mr4599905pfw.32.1474828554496;
        Sun, 25 Sep 2016 11:35:54 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si3932896pfw.1.2016.09.25.11.35.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 11:35:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id zl8so1037778pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Sep 2016 11:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FEGqU+uOGZFJ3slIc2R5Ez3AZUKWsl4cT6HY2hgWp6U=;
        b=wcsGHnOgaOL7HotH3xQ8tK1zKNKxSYwqEKib+hDt0JS4OyGQu195yf1ZvZaFnP3d2o
         BIEsE4AmKutaO++qTuMGhpBHdKI2/5pEqOu/SPO6nqIeIVEWxSEp94flZfJbtW7BAjqL
         JY0vPT51fvfz2XPH06hrsNdHkk9cxQ24Tbwqyo85FliWrS+HxWoDVTEYiBK7ffmIY0cI
         sozRFRy3CjUHZH0myfzwIlbus8EDPAkyrcPk2sCeZBI22NwjxXvIvJ7b0IBUSzpn2BzR
         8voqhCbEha7JzuYddCkT6u8KsZ7dITwxPMLzvPDPUiUEdnClyTjS3qaLgZeUD7ZfJ2so
         wzUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FEGqU+uOGZFJ3slIc2R5Ez3AZUKWsl4cT6HY2hgWp6U=;
        b=KUCnoD4XwlmokK/0uT2s1A6K9yut5cyDAZoamXsqoF4/ezCpXtkik1FhqM+g4j8afG
         9cBVmoaGtb+9qI4HKKeqp0HjlY1rwL4IQy4dRS8PWZJT6+UQY8b3NIM6XXoCUJdP2p65
         41cBSAbn5gG6MADl0zOITzm+rd6Y+X0dxOzFJ5oKVSUFsGT4ojOc0tcfPDmmgAdhQMEh
         5bLWdyAoftLLWDRn0lIzX7SLpdGJUjtxFaqgJ4RLOyw4Py0ZxKa+0JN69TcWR9HJrmth
         8UhEq/jzBVIGE7WGVr7laRwDxfDVaniNzIX2dQNBIyjQog2B2ITiWgEl8STPV9wZpT+L
         mf+g==
X-Gm-Message-State: AA6/9RnjIBq9pEkQRmkXs5bpP5fhg4UuRD5OdJ9W4BU8aOStQvCUCHzNkc1Ns+5WoH3Etw==
X-Received: by 10.66.163.227 with SMTP id yl3mr17977164pab.0.1474828554326;
        Sun, 25 Sep 2016 11:35:54 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id 25sm25253160pfj.23.2016.09.25.11.35.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 11:35:53 -0700 (PDT)
Date: Mon, 26 Sep 2016 00:05:49 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Luis de Bethencourt <luisbg@osg.samsung.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8712: Remove unnecessary 'else'
Message-ID: <20160925183544.GA4221@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary 'else' after 'return' to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 66f0e0a..cf46592 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -508,8 +508,7 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 			plist = plist->next;
 		else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
 			return false;
-		else
-			break;
+		break;
 	}
 	list_del_init(&(prframe->u.hdr.list));
 	list_add_tail(&(prframe->u.hdr.list), plist);
-- 
2.7.4


