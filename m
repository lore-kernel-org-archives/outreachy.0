X-GM-THRID: 6673442126229929984
X-Received: by 2002:a25:6cc6:: with SMTP id h189mr4417460ybc.13.1553922824503;
        Fri, 29 Mar 2019 22:13:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cdc7:: with SMTP id d190ls1309321ybf.8.gmail; Fri, 29
 Mar 2019 22:13:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzTlYuM6xXBzFtGFjDQ7sJmehzZSTC7nupy/SqzFBJyhMXZ+kEDMn1p1zGeSn7zjexxEZsi
X-Received: by 2002:a25:76c7:: with SMTP id r190mr151287ybc.22.1553922823993;
        Fri, 29 Mar 2019 22:13:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553922823; cv=none;
        d=google.com; s=arc-20160816;
        b=jwktuF0Qf4qlSvZK+JwaA4EROFNOzc5ed8HAmWhTHKDJxlrX8QFaN8riivhrnyWirc
         FUxWEncr3hIYHzMKMKvwy9NTW3Gnla5xqPDBJsf+f4tyvwIa9lJ4yf06C/LY5kYOBAjX
         3vDyOYw3r6Fe9mOpUKqJ3ISTEUX30/StklKri4ICp5H3obrfliIP/qdc5LnRgjVHN0UC
         tR7M06Vsed7l2W5fApt+VtaivjrX+3+4rp/j+f1XzrArx0u5wTZfqKqSx1iOPYCRT60t
         W2lcIKl3iM+TJFbI0Ydsd3L0hNx3dcfRcs2o1JUH46aL2TCQUjqYdV+CTIt3obJ3mExu
         VHUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=oE5r8dVWAdqXRd7Fnjt8xAohMVd6OM4Q/BNwKi7fGsA=;
        b=1CVjXisn/P41svoCFECy9sAtxd/sxM1Z7h2QzEUVugkVM2OamoYQxexXH3OjTavA7z
         YaSHehGkCNSaSMGd2/xPVh8ePKy6zXU+e4C4jVtN+baDvu/f4+AEVF8Gtrrc6/67wp9f
         eLq0TxRTrshW6nEhXgOnlN0yTuazlxRkekXAYAzOtjSGWs8FX4V5KiokDykCJj7KzSso
         MtltEUXBfqriu6hg15jQwW8RVMAcoFLQZIyeJ6rzf2vK4hGY2l+ACeo0k3QKDRpA+coL
         JfrNB2AdY7bVT0HUg630nmPYMbelvdlBSXVTAU2MZI5WEhMDS55xEfujaDNhh5vP+duy
         ocjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s06ywIXq;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id k62si217035ybb.4.2019.03.29.22.13.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:13:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s06ywIXq;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id r15so1988782pfn.9
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=oE5r8dVWAdqXRd7Fnjt8xAohMVd6OM4Q/BNwKi7fGsA=;
        b=s06ywIXqj+DY9CLejGkSLgd5v7Hwl+hCbuX0ifRZ4eH0IabAZCCnOjaNMoLaTaq2tM
         cbbjo3XxveqjxONedvKd2JRWZhOnJcKlJ9PH4H+AEnb2QiiuKo+1yusQdGxbfdyMpjun
         IGlucYNuTrq+xeLa3CpC6NJxwXSAhQwz4LSHAvaDb3jN/koDU32X9GTtjfGI9vdfmILQ
         2wR9iKFaVXfkRzrJStA4dWXDsnC98ws895sG8G8GHX0OZW9pJc0yygjHyPBL2ngRFobu
         UAYCEzo31jQpp/Qa4G50CzK+iuHpVD9Q+LB7BDTnPsJwGU7xJYT5tLNSsXNQCAECro3c
         msPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=oE5r8dVWAdqXRd7Fnjt8xAohMVd6OM4Q/BNwKi7fGsA=;
        b=S31Evbt6P2BbgoO4navBE4yT/RVegGqUIXuYodu+wKplZr5WmA/KNteQfGR7xqu5XR
         DuEuyTEl4rTPkR27ObTXbLOhKQAHtWDvL3Ha8bum/8jlh31ccJ+DYp5Wk0c3BO5isZgK
         OwvPmcDKzAh1K9fCBek0UC+82Vgs4rGxlG6RPcE0P3MfSruy+WpSbjERYfejgNqyDRq6
         LRRZE3mx78ivCMqBxdLq+37ccXft8bTSj+/IVyhyfgzKEG80k0AX+X0mFFItMyiz1M4/
         jL+P/qm7/npcWLaQImCMxcvAl0JjUdE45ROkAaNi5OUX/lapcQbLQxicNHGlwylIghna
         lljA==
X-Gm-Message-State: APjAAAWOC4DwAEvzogASuv8XZwqeBe5lKmt2gy8/b5mh42WFxb04oSs2
	plWOR+ZuDuR7pJE2UBivhcEeg2pP
X-Received: by 2002:a63:1912:: with SMTP id z18mr50708329pgl.115.1553922822916;
        Fri, 29 Mar 2019 22:13:42 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id o2sm4864557pgq.29.2019.03.29.22.13.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:13:42 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 8/8] staging: rtl8723bs: os_dep: ioctl_linux.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 10:42:47 +0530
Message-Id: <c92a25aaae32172a4c04e3b1cdcbb676ba316672.1553921776.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around an expression and fix identation
issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 8fb03ef..e43ad33 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
         if (pPMK->cmd == IW_PMKSA_ADD) {
                 DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
                 if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
-                    return(intReturn);
+			return intReturn;
                 else
                     intReturn = true;
 
-- 
2.7.4


