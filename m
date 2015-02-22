X-GM-THRID: 2595026370560
X-Received: by 10.50.56.6 with SMTP id w6mr8566472igp.5.1424641311421;
        Sun, 22 Feb 2015 13:41:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.28.8 with SMTP id x8ls686213igg.11.gmail; Sun, 22 Feb 2015
 13:41:51 -0800 (PST)
X-Received: by 10.66.156.199 with SMTP id wg7mr3582973pab.40.1424641311140;
        Sun, 22 Feb 2015 13:41:51 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id bo1si3981374pbc.0.2015.02.22.13.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 13:41:51 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padhz1 with SMTP id hz1so22443345pad.9
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 13:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KQdF5PhawEtDcca5GNzg19k4gW6b9nZDMJ0TIYvPle8=;
        b=IM4M13CyQtkVCSEb+qaCZPiGQL8S1xtuekB2OnYa8Qp3jMHtZOK+YU9BA5LxSvwGj7
         EUpFsg/Ucc0iibnrGIKUTWxorglmEzqP9NtMrJ+Z4K5pBPLNo1rQJ/C7ywDB2nXnb4sb
         rj7ssxJqcfvWBX4osJPKpE5kastNONx7wIrFsdL7BDdkoqeoYrqjBDBH4TfyX73yEKTJ
         JGeahmtVnWYCJxb7UYaB4Fg2dgCAN/b7g9QnpobrTW8OYx8cTpK7MBqwq8EnnR/rQYPJ
         YYWCgt92fijGQtVnRvap8ieYRRtsk6hJ5JG+n3rJQpUw2lI9MilnrH04y0M1oz5ScF8M
         DchA==
X-Received: by 10.68.98.98 with SMTP id eh2mr14142752pbb.112.1424641311066;
        Sun, 22 Feb 2015 13:41:51 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id jw8sm33314307pbc.73.2015.02.22.13.41.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 13:41:50 -0800 (PST)
Date: Mon, 23 Feb 2015 03:12:52 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: rtl8192u: Remove commented header.
Message-ID: <9021b9331879ddb040fad9a3b24793576950e018.1424640704.git.navyasri.tech@gmail.com>
References: <cover.1424640704.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424640704.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the commented header <linux/config.h>
as it is not used in modern linux systems.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index d401dbf..286b71d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -22,7 +22,6 @@
 
 
 #include <linux/compiler.h>
-//#include <linux/config.h>
 #include <linux/errno.h>
 #include <linux/if_arp.h>
 #include <linux/in6.h>
-- 
1.9.1


