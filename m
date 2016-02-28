X-GM-THRID: 6256339376552280064
X-Received: by 10.66.231.4 with SMTP id tc4mr9169449pac.14.1456667523770;
        Sun, 28 Feb 2016 05:52:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.202 with SMTP id s71ls1140258ioi.85.gmail; Sun, 28 Feb
 2016 05:52:03 -0800 (PST)
X-Received: by 10.107.138.211 with SMTP id c80mr14471542ioj.20.1456667523499;
        Sun, 28 Feb 2016 05:52:03 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x229.google.com (mail-io0-x229.google.com. [2607:f8b0:4001:c06::229])
        by gmr-mx.google.com with ESMTPS id nt4si754133igb.2.2016.02.28.05.52.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:52:03 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) client-ip=2607:f8b0:4001:c06::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x229.google.com with SMTP id z135so163733136iof.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1+XLrGrpC0X5yorSuZnK9g+BeSgxAFeiKwY8DGcU51I=;
        b=U2JA4xDJJLla9U34oXWbzzk82f0dmuKy7/my1A71HP1olI1UAQF0rIDUwCDL6hHdlO
         CMC36RYUEBti5fb2cuya+Ywro8zvSDnQFm2WHF59zuDR0D2up5S+YJXAznXQB4uQYLfB
         h8d0AwzPFRumJR7hOlkFtv+qL08qaCQShYoOO7DHJeOazSDK/pDcFCWQ9Hlk8fj5fWCp
         /w/GHQphsnEG9tk32sv9mPjSxgHYNgj2ldaHCWr1YiK46g69FeYd9LGWhHdEnVwEszPf
         fFr4vlTurRbItJUfEucHumvc8MSfB0+Np0Ei/OdPFBB9FHUjBBe9UsFlk2kGTuTQZ++7
         TIBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1+XLrGrpC0X5yorSuZnK9g+BeSgxAFeiKwY8DGcU51I=;
        b=FV9OXdb7UxY6tVYttI5QCkcrad4nNycQF7t4FcF2xaoFsGbdhsqP7oCh4GB2hSXvQw
         C7HNcofgmAd6SLwtvbKKQdYYTRO+6H81MIa9icbapT8HurB99TPnpPbVgy+qL2rzFY+W
         9HvmSfBXrFm1Cf0Aw3n99GLHIxiiQDTARSLrIXNS8bXPWNI4WuPL5RBP7uOkXIq7iEly
         4T6GYvCuCmPoJcqYjm3JLY7egut02sm1T7faM2Bbsywq8oblC9wEnXrk1oUj85xaRjR7
         AVGEfAMV5AgcoJYYwY3TFOW9pe6RFvJosyfUCUBaqvhJitQaVOjw1iZyDJxrte2j+B05
         ROag==
X-Gm-Message-State: AG10YOQcHSKUP9LafDq+LDP1ql+X1WCMP3YrWI0qtuUTDwIGLedu/335XFg6GlVWmrRHwA==
X-Received: by 10.107.198.197 with SMTP id w188mr14716036iof.178.1456667523342;
        Sun, 28 Feb 2016 05:52:03 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id mu8sm5038333igb.16.2016.02.28.05.52.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:52:02 -0800 (PST)
Date: Sun, 28 Feb 2016 13:51:13 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: core: rtw_sta_mgt.c: Replace
 container_of()
Message-ID: <20160228185113.GA5066@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_entry() rather than container_of() for linked list nodes.
Semantic patch used:

@a exists@
identifier var;
struct list_head *ptr;
@@

var =
- container_of
+ list_entry
  (ptr, ...);

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_sta_mgt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_sta_mgt.c b/drivers/staging/rtl8723au/core/rtw_sta_mgt.c
index 22d857b..be3fc55 100644
--- a/drivers/staging/rtl8723au/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723au/core/rtw_sta_mgt.c
@@ -275,7 +275,7 @@ int rtw_free_stainfo23a(struct rtw_adapter *padapter, struct sta_info *psta)
 		plist = phead->next;
 
 		while (!list_empty(phead)) {
-			prframe = container_of(plist, struct recv_frame, list);
+			prframe = list_entry(plist, struct recv_frame, list);
 			plist = plist->next;
 			list_del_init(&prframe->list);
 			rtw_free_recvframe23a(prframe);
-- 
2.5.0


