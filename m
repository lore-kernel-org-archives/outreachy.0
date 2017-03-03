X-GM-THRID: 6393296356207755264
X-Received: by 10.176.74.12 with SMTP id q12mr433316uae.41.1488555693342;
        Fri, 03 Mar 2017 07:41:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.135 with SMTP id 7ls4178507otl.0.gmail; Fri, 03 Mar 2017
 07:41:33 -0800 (PST)
X-Received: by 10.157.1.238 with SMTP id e101mr1297468ote.62.1488555692995;
        Fri, 03 Mar 2017 07:41:32 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id h79si105160pfh.2.2017.03.03.07.41.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:41:32 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so13005572pgz.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LLgM+xAYqfd9DowlAG1FdnT20bJbNFBC/mOT0fFup9Q=;
        b=ayeO0boqCIe+I6wHqEwYe1QEpylknq3o0VRYIwuWS62oJQsC7OaspnbWxbVKeWjn00
         6sHYrICOizvdCDIA8PcxZ0oXNrQO99tyOr9VDegvCgZe20Juy7ql+vu5oM5pJdEXDfWl
         A9sX4DbXlnrz57HrsM3Su0sr6hG5Bo4Rr+954gND26v2oV/htoW8uIelAEu2NSLBidkW
         T6K+NvEngY+tvTnlbQ+dZPmIrhgEOdxY3b6QCTJS8nNBGoF7dwLyvmNiWr5kgD37RVnz
         wlCi7p35FALUty6QTGCS/ZZssOKagqicgZhd+GKC/scxnd+wpAK2kWiJF3mPFOKyZm/D
         WVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LLgM+xAYqfd9DowlAG1FdnT20bJbNFBC/mOT0fFup9Q=;
        b=eLHwEQlJxm9nahqCBv03169jL/VXHToDQRPzWHObHDYKpseKDPx317JXx1VqoYrYyX
         xP8BdJOOvae6Y3RYgfoxlYq1u2F/bmgIkDZ/JpwCzzSdIQ9AlAwMkii85cKCc2dDmbus
         3d12LO2Q4J+JBMbH2jhIdDYC0rkPn9e6/a+8wOcK4iMVOHf4OuPuhXYqD80Iu3mlHJbw
         2wJA/MLSOPX8FXXfaFWuIYJbDHuu70iT1tuXROAH+oo/tV8ZXUcMxEYv1RkIffD4K6Wf
         LKc1PbZ/MIiMwPv7QpXfp9d42DJ7zrdZ9L/ktuxGqy9URPQxuCSIqyQRRdBxkMe3NcLY
         iWrg==
X-Gm-Message-State: AMke39nfr63xWb/7Dr8s354lhIaOiDi/ZzC3Lf/NrRy6NUCv8RqUc41eGve2NwsyXUyRLg==
X-Received: by 10.99.7.13 with SMTP id 13mr4074477pgh.121.1488555692777;
        Fri, 03 Mar 2017 07:41:32 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p4sm24326246pgd.50.2017.03.03.07.41.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:41:31 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: david.kershner@unisys.com,
	sparmaintainer@unisys.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 2/3] staging: rtl8192u: Replace "the the " with "the"
Date: Fri,  3 Mar 2017 21:11:18 +0530
Message-Id: <1488555679-17028-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488555679-17028-1-git-send-email-singhalsimran0@gmail.com>
References: <1488555679-17028-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "the the " with "the". The replacement couldn't be
automated because sometimes the first "the" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index f0fba81..3ca7f7d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -918,7 +918,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	int i;
 	struct ieee80211_rxb *rxb = NULL;
-	// cheat the the hdr type
+	// cheat the hdr type
 	hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 	stats = &ieee->stats;
 
-- 
2.7.4


