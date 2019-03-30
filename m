X-GM-THRID: 6673442126229929984
X-Received: by 2002:a02:634a:: with SMTP id j71mr7322493jac.18.1553965974038;
        Sat, 30 Mar 2019 10:12:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls1651648itg.0.canary-gmail; Sat,
 30 Mar 2019 10:12:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzGGexZhX97GP4L8qZaVNQWWCYfuwNVk9q4InMO3ohN4rQgYWSFtbvHKuMLqmTsXL1hykGl
X-Received: by 2002:a24:28d:: with SMTP id 135mr4132734itu.16.1553965973407;
        Sat, 30 Mar 2019 10:12:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965973; cv=none;
        d=google.com; s=arc-20160816;
        b=0sp5lW8OwIW7Qb+d9U65Dyk0pIfBGzsQMW2urW8aOcWfu0ohCW5O/vx3Rj1wM/cNyc
         SYxt8OZFZWdb+O1rctMRXKcPtMjQiji/4Uf0vdpzcc5IxNUwssA13IibfZNzO3weOiTP
         ZqvMCfQ3KYOTyh1mxjJtcrF8W4AkIOo806aCRUry5tOCi00ovZxKzhECIF0rTlwX+8dd
         QrQUtAQ/2OwecPcP7IapxVfn4hCMZBShZ++lAASL9ZTkyjw0LSTG9B+utEqY+2kxsLu4
         R3cRq0NcRWcJGfyjssuHzSjzBzF4zmVWsk8qlsqOMIaukmMtEy3iTBVeNAOqs4rbI93X
         1chQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=3u7JemPF/lkc/IDVyOxoXAB1IRbyNKAbcCuxTSH+WJw=;
        b=jSjWYidIAG/t1gMMiYaGKZqjuNXykxhHYM5x7JJXpW3x3+JUmI3VH86p2yej4eTuCk
         N9f6adifcJRRrSz6v9wII4zT94JkwSdTKpXB0V7Y0pC8p1+nyx9GpGfAy/4jABb6HfPE
         RSHXLT8f1iSDq8Hp8839x25q3iSbRMUKwNb65TizRdv+QyquwLW3Z70uopQKcX0CZlTy
         lKmY4/EBSj/5GU4DgOr1JGjRcqKZADMeMEXiCrWm3kwMZ9sO2iH3j067UFxWMGfPnrep
         bQR4kvO4FeKL05+FtTWAHC7D1jri+bJz72JtUVHxTgNExw5lscXXIXyMK3sW9ZCUir9H
         bnWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCRGAio4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q130si278709itb.1.2019.03.30.10.12.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCRGAio4;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id v12so2692446pgq.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=3u7JemPF/lkc/IDVyOxoXAB1IRbyNKAbcCuxTSH+WJw=;
        b=SCRGAio4Luf55yX1LKRXw/1OllDW3idQYU2yLhORV9G63eUAPqyXVJu6vMwfa0qCD5
         mOibHgLs5pP9Rdj1+OMaibwSW5oF0kE3a60OiXQYD8xq/2SJUMGVJdDzA4aRUnAWJvA2
         oW+P8i7oykQhkH8B0FWLv5EMVPQEv41iDaSqBWGUeqsAW7KVgYddJ8drL+ZBT7fcUG0N
         /5EkJGqXCdyLBYV/BQJ+rgE2xfnPO0DsDfBaM6M7+JlwlLiUtRBqIdZPxC2GSpi3PJlv
         ByVcWG9d+dytEkFQaQGqhO4H5zuAgu8dshCFXCXXFb1u1Xlfk+TbMoehDz0hN4Y45xgl
         XiJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=3u7JemPF/lkc/IDVyOxoXAB1IRbyNKAbcCuxTSH+WJw=;
        b=ee8UgU0yy/CB+jPs6h8gcnAG7x/gx2qs4bQzl5nnrUxg16skU5xONC1TuUfDXquq1e
         AazMUqOmQJJ5GZOORwJK/U6VTh49mWuNetqidJOgtdfzYSKjxXiL/y5/uPvld9h2YzjB
         D3eLfFpMwnJNto0nwaP8rLIj5GmgLijsRf0dEgVsFQlug9oD3vRpHY7JlhM7OprWpCZm
         yz32pKZxfHYtcIJZbt6j4hIyUe3tyN+WhwS7V0nHk6byYeJ2uGEEsTUqVgS9/abprdYZ
         1uZ1RL58LlLliV0V7kMZUMBFGi7nEUCdvobdW2/3C672ImvYjOy8Ehmid5FbUs9hb1TE
         iWpQ==
X-Gm-Message-State: APjAAAUKnUCEGrHDAhhPSxHxeXJ5sKpEf4ZWzIaFpgq6/frSqBCr5W2J
	wMKV22VayQgJi6a1X3hITCB9FvOT
X-Received: by 2002:a63:1654:: with SMTP id 20mr6191150pgw.166.1553965972848;
        Sat, 30 Mar 2019 10:12:52 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:52 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 9/9] staging: rtl8723bs: Fix indentation issue.
Date: Sat, 30 Mar 2019 22:41:56 +0530
Message-Id: <54ed2f9b66b51437d6285c614a3399cb1f7f1b14.1553964404.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>

To fix the indentation issue remove spaces and add tabs.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 68fac89..ec336a5 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -961,9 +961,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
         if (pPMK->cmd == IW_PMKSA_ADD) {
                 DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
                 if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
-                    return intReturn;
+			return intReturn;
                 else
-                    intReturn = true;
+			intReturn = true;
 
 		blInserted = false;
 
-- 
2.7.4


