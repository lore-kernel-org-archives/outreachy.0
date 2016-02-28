X-GM-THRID: 6256431065023381504
X-Received: by 10.182.142.8 with SMTP id rs8mr10571486obb.33.1456690947946;
        Sun, 28 Feb 2016 12:22:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.18 with SMTP id p18ls2094621qge.86.gmail; Sun, 28 Feb
 2016 12:22:27 -0800 (PST)
X-Received: by 10.31.151.21 with SMTP id z21mr10189002vkd.7.1456690947159;
        Sun, 28 Feb 2016 12:22:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si1113993pfa.2.2016.02.28.12.22.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:22:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t66so3532597pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mdMqJyrgw5jtfYlWnzmNgxKZJsVIzNfDkWRxCJiLeaU=;
        b=bR/btE4vQ9oNLC9NRWEQh70vSUMOg6TSl08vSaZmi02wJMAg1vePDqqTB/1VzUSSUu
         smkhd1YT64ktQWdWQoBu9TxjpwgsSietzcZjVVztUITSOTrF04/gNwALpPROoId86jCd
         tvq3w4aXlzYSei73P8KwFn0pqleChXzpQSWpkvlLPVYrXAQiFVM/9iK2b6px6x3BsnTF
         ormPvYhgjy98mqBu2ihqzGmfJXA0Q9O/LG0v3Y2tYj8whfWjBg6XmwbMRhUWdOcuCxtU
         sw0s+i0hrxaCkJKkJBERs7WYW9DqRVk5pOiDQPb0F+V98T4g8FnBOrhhKjdynreGx7Ng
         ZKiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mdMqJyrgw5jtfYlWnzmNgxKZJsVIzNfDkWRxCJiLeaU=;
        b=UACjODI9HDP4JlkmMHXm81tTnC//GDkCCnB3amRWfM13iUdLykDmAo7nqIZHxKMaCk
         q7CDProXMr2vg4AJuxw6B8Sb2WJYq/cbpHWjR0TPQgsvry95ECvoouvbvr6GMNUH1zH0
         LAbFzvFLnQIsaih8XhD766IC10K8NLaqBBPiqNzu+FUNZvg1tn2/9JQcw21gL6ovGgkC
         dKQInY0NQ4/QQW9BusbhIzrt9ws32eOca+Er8DSfo7fMRFZi0KlbO0Ywfld4b0hMS5j6
         yLAIjHYWXaAiJ8KXTD0Ef+lULmroHe9+uzbn47T3F8egguJ02z6rUJQU4XG60uNsBHR8
         LPYQ==
X-Gm-Message-State: AD7BkJLyNjjJRRe8qjDRMXQc36DhQa6Aq9FKoTLg5VAZPGGouidHxF0IE6iXOoa3fca+3w==
X-Received: by 10.98.14.156 with SMTP id 28mr8355636pfo.1.1456690946989;
        Sun, 28 Feb 2016 12:22:26 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ko9sm32933344pab.37.2016.02.28.12.22.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:22:26 -0800 (PST)
Date: Mon, 29 Feb 2016 01:49:36 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] staging: rtl8188eu: os_dep: Remove NULL test before
 vfree
Message-ID: <20160228201936.GA2352@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

vfree frees the virtually continuous memory area starting at addr.
If addr is NULL, no operation is performed. So NULL test is not needed
before vfree.

This was done using Coccinelle:

@@
expression x;
@@
-if (x != NULL)
    vfree(x);

@@
expression x;
@@

-if (x != NULL) {
vfree(x);
x = NULL;
-}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index 6a68f17..e8d2236 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -442,7 +442,7 @@ free_adapter:
 	if (status != _SUCCESS) {
 		if (pnetdev)
 			rtw_free_netdev(pnetdev);
-		else if (padapter)
+		else
 			vfree(padapter);
 		padapter = NULL;
 	}
--
2.1.4


