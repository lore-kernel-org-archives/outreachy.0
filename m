X-GM-THRID: 6808898651661795328
X-Received: by 2002:a17:902:8d91:: with SMTP id v17mr12876423plo.53.1585320359667;
        Fri, 27 Mar 2020 07:45:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:245:: with SMTP id fz5ls7422336pjb.3.canary-gmail;
 Fri, 27 Mar 2020 07:45:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsT0l7woHqIk4bMZkhfAWDHVR3JTpQ/LS8jxww0zEvPUg2vbmK1beq6wqrG/L5iuLiXH64L
X-Received: by 2002:a17:902:a702:: with SMTP id w2mr13706272plq.107.1585320358268;
        Fri, 27 Mar 2020 07:45:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585320358; cv=none;
        d=google.com; s=arc-20160816;
        b=c28Tnq04tnmsktkhhDcHOKDIa/epYsXdnRw9QY/a5vUyX65fYhvBDSXGQYqmmWbOm9
         jK29oQzknRglCsx2u0K1yXjjGgoSKifaJ/m5q1BD8kkZeNFOU+uxm+rng4H1TUnHSLry
         WXwH/lfG/OkyWAs5oaPuqcFMkxMEi3Ek4u4l8Q+P7F01HI8KTa/FsU0TZqwGENtjCUDP
         sckS4C3O1uDGFgD/qsG58TUy0zkMW/yiDuvHRmKLaG1wd0vpkYFmS/u8QKoBvn4H5MHx
         +9eQGYm7aqaovSvbUmG/kUn3zyoREYKBvYLh9l3yV9G3t0aNDNEyHVwFzpNo5uMBDQEU
         lITA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=YaNw4SstDdfvPMGgrlwgDm8isHo2zZE8TTZmoTNzoqU=;
        b=aQ1578tKrCtZOj9psy0Ogs8SWtPYBcdQXg3j86Knf8ca8Ofui92TySHGqgAa7c9E00
         GkYd19D+9jhgjJf+1v+gS2AAErLkvohsdVSpXzuscLhEuF1tp22v0D7v3bIZz1LR6HTp
         a9eZYtsAoz39C3OMRD3y9NeUElDI3Xm6MNTxmqb+/tKRQonZcVy5kqI112ZPK32hplUk
         xl+d1izqyUiekziXdqx81AMtkGUXmgNOaeN2kDBY6yWcqQetnlC7X6woIveFa55DkGgl
         cyyccgjJUchmI2sNndCNq2UlduzSljc9HAaigfFJ+dtmuU1o1g+w65ZYGxs1NuHAmbRI
         M2Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cb7Na2tI;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id w18si495996pfi.4.2020.03.27.07.45.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 07:45:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cb7Na2tI;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id q16so4412327pje.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 07:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YaNw4SstDdfvPMGgrlwgDm8isHo2zZE8TTZmoTNzoqU=;
        b=cb7Na2tINyJS/5C0VVqIqPDA9fFiJ6sxP+cB60+sRib4WjJyR5ICCiT19H948eo8C/
         /l619iStGqj2A/zScEhgCcWbIyLtBfwEP426fCEgMbWkJbkEKntfmX/EhIVVB9uqsSsP
         ds1qpw3KOVppNN0asUXzFaNIcg8Mkwcp6mgy7XIZ+4tn9GFyggZk3z39AzYEObba9Lgr
         dRgaHlsRsXwplU+fq5/O0nfpnzVvODue/O6ItY5Ux7x5BsBwShW7ww9/t/RAWbxX8h9I
         d0KUZW2X7E3wcysEDQYh/2III1QczZLUUHMEii4B4GRNmJnZokThGEBgclAJOXEiUCyH
         FwrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YaNw4SstDdfvPMGgrlwgDm8isHo2zZE8TTZmoTNzoqU=;
        b=C8ZSvbZx/4KkQ6R5F0t+KKpPFZyTwSHYqwMkg6gno2TIhSEtXhAfV2JSvMrqQCQcDg
         8xLCqxf8XqR/cmpKb/YghskyWPnDyPAN4znRu6eTIOG/4JKYgvvjCES5GTuwJsiyc7gP
         re1uZKTtOJq77fmNJ6CFrmjptPtnbCc0oEk0zDwWBkx6YxmJ8WXTsQG2eLl2edrDwwDf
         uOwi1iInbMuNVtcSHjRWqH6nerS5nv6oYzM0/nZ+cE9rYx9yAkCkJnOjkCY9xTitSTDK
         akwuWcyefUGHYQWpTYeRy3btdwmPcCSjD7EHBuKXrE/A/Vz3/c6qg/5sX9lDKrOlBl+9
         pXUA==
X-Gm-Message-State: ANhLgQ0353sYavkvD7oK/i0d5v0D0f0uPguwhYgyz17JQIss9316V5bM
	eFym3kz528arPYbEP1nmJXRAQ/0qPo1YVg==
X-Received: by 2002:a17:902:26a:: with SMTP id 97mr14034260plc.82.1585320357586;
        Fri, 27 Mar 2020 07:45:57 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.233.220])
        by smtp.googlemail.com with ESMTPSA id g69sm3939333pje.34.2020.03.27.07.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 07:45:56 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy Kernel][PATCH 2/2] staging: wlan-ng: Line over 80 characters
Date: Fri, 27 Mar 2020 20:12:29 +0530
Message-Id: <20200327144229.19738-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327144229.19738-1-debsoumyajit100@gmail.com>
References: <20200327144229.19738-1-debsoumyajit100@gmail.com>

Move the last argument of the line to the next line to prevent the line
from exceeding 80 character width limit.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 3d17037f954e..9ab57822979b 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -362,7 +362,8 @@ static int prism2_scan(struct wiphy *wiphy,
 					  ieee80211_get_channel(wiphy, freq),
 					  CFG80211_BSS_FTYPE_UNKNOWN,
 					  (const u8 *)&msg2.bssid.data.data,
-					  msg2.timestamp.data, msg2.capinfo.data,
+					  msg2.timestamp.data,
+					  msg2.capinfo.data,
 					  msg2.beaconperiod.data,
 					  ie_buf,
 					  ie_len,
-- 
2.17.1


