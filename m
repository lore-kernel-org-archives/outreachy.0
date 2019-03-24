X-GM-THRID: 6671816179609239552
X-Received: by 2002:a81:37d4:: with SMTP id e203mr15130286ywa.399.1553403275992;
        Sat, 23 Mar 2019 21:54:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:d306:: with SMTP id v6ls4623234ywd.9.gmail; Sat, 23 Mar
 2019 21:54:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqycX0aoZVPQi5LFaPSjkazhsKRFjPC0q4FL7iK+9on7go/pEuX5JyXBaZ78p2d/imJMbTBd
X-Received: by 2002:a81:a6c5:: with SMTP id d188mr15734726ywh.46.1553403275518;
        Sat, 23 Mar 2019 21:54:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553403275; cv=none;
        d=google.com; s=arc-20160816;
        b=riHOqb/ZQat87YR188P2EHYconsoVTz/duzp2DYOMsjmiICS4JR4MwYGTyUtTxJHJw
         pEV6XbkirtgG1oWpJ8cybDuSA+sbL8C8EGchHuQUYqmgptmWrEQHSFlaUVt39hUe12q6
         Bzewczj/1NOS922M3VlC2et7Ns3tpKLE9LAl4FRDchSXWcqZ22vvUyFGhPnuMEqt5SLx
         bSqUlLAJUi+QrTkSleT/DdiRYGWbp0CJ6E2uQFzjIqeJ4J1ZccFRIjhATdtsze9bWxZk
         FebObwlF08mzT0vyrQbQOo7IDIXml6iRlf54/CNQogCUIhOSK3jkjOuo9hswA579VZEk
         9cPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=I1bOn80Fkm7hVr3k4o+MSPNDIlAqMhybuQB4ZrPNblc=;
        b=Vql37s4QyKDz2jhRf7Zl3J08an9asawOitSGOpMIYFUdLhf/Bj6Gi4DDuqvjwt8qXV
         uFTr5Bm76PzP2B9YcUdzzQ3pcEtj7cbKvnXsW9jeVcxqH47Z3D4SEtifl9r/6mmcgEAC
         lfuBlZ6cNmZydk1nlLzJYY57AWBpp5gwEEDbTGpA9OKpPtUWloQXuKxvLCmdoHXoDh16
         kEdnuB0VACT1sbwtPuR4fXLR225Asp64LsfK9bLtppZH3Oo1NZsa9ZD0LI0OJF1R7owg
         FTBedNyLy1rJNmsvmYQQL7aJOUIxe8jFuu5X8do9nY7ayIQNO42od8R9FbVLneS/pfQJ
         gQdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OMqRfy5v;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id z204si20576ywa.2.2019.03.23.21.54.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 21:54:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OMqRfy5v;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id u9so4172445pgo.7
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 21:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=I1bOn80Fkm7hVr3k4o+MSPNDIlAqMhybuQB4ZrPNblc=;
        b=OMqRfy5vxEw7cpSIQcDGChHli8SPRUNQ7H8n+6FVaVM/ZHy7KHoOJ6/pMXNiMxWcgu
         lsqEB/9MpxyZW7klvHkb/a/XT8T3TuIbucACpZP6Ur3xlXFn4y4sQ/Qob+Gdi599XCkj
         q/IuAZCH+Qkf0XC672FFfR+yRyXj7x/aa6Q2cxpIOSY3OWDXnph/Uh+rznjxP9gzH2E8
         4SvnMeOIQmHA0ddfXZewi6jrgXfx08p79DU0tZOa7P6u2nXi5cq/tE39z1cDP2lVxvTr
         EuDdTrEPO3c3L6rss6NLsu03qP7LtyFPKCIZQVneh2HBFxIKZA/R7txa/x2fBzfRma0X
         Vcig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=I1bOn80Fkm7hVr3k4o+MSPNDIlAqMhybuQB4ZrPNblc=;
        b=n7cLlAi+xvEiIwZNPFihjqpHGE58uIsHsjMuOXhk8GFUDuIfjmYq1sWDOTc4A9wpeF
         K8ugmuT72rxqXsH2g1MhwOz+kTXnPLfc6Lf/zMWuRKcAMVCNsm8aWXR8PBpF56goiruB
         n1c067eqE+D6oAtvKsgYmw4iUQ7AcZSQGH75w0TloKnZwyKMZsmksj9tRPL7jxomKtgM
         YvqOuEd9ZLurl2JCPRMFMrdpTdVKh3cOlHBZUjKep1Cdn/Gr0Sa+4KAVk6tXydt0vHt2
         vZulSDSXy9wb1VHc6q1LhzLIX+sKE30n07QpmyO6CFq+H2NQTAxmPp1bhyUYwHX8dXKA
         ilzQ==
X-Gm-Message-State: APjAAAWpI/atfqlpfgsFkdBL9UPSlq1g0eHHgYDmRcsNpa3kBZXcCHpK
	oh/EjKUf1q/j1vvltLnkDRU=
X-Received: by 2002:a62:ed08:: with SMTP id u8mr17569003pfh.200.1553403275280;
        Sat, 23 Mar 2019 21:54:35 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.202.114])
        by smtp.gmail.com with ESMTPSA id b15sm34275913pfj.167.2019.03.23.21.54.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 21:54:34 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: 
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: rtl8712: align to open parenthesis
Date: Sun, 24 Mar 2019 10:23:52 +0530
Message-Id: <c84fe5150ec9d89d48131821c6087b7ec8576a21.1553403095.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
References: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>

Adjust code to fix the style issue of alignment.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/osdep_service.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
index e939c4a..d33ddff 100644
--- a/drivers/staging/rtl8712/osdep_service.h
+++ b/drivers/staging/rtl8712/osdep_service.h
@@ -46,7 +46,7 @@ struct	__queue	{
 	} while (0)
 
 static inline u32 end_of_queue_search(struct list_head *head,
-		struct list_head *plist)
+				      struct list_head *plist)
 {
 	return (head == plist);
 }
-- 
2.7.4


