X-GM-THRID: 6674617337151225856
X-Received: by 2002:a17:902:6a87:: with SMTP id n7mr1619205plk.87.1554055463049;
        Sun, 31 Mar 2019 11:04:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:227:: with SMTP id 36ls3108328plc.8.gmail; Sun, 31
 Mar 2019 11:04:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyaYk8cmqjxnPxD28U2+eb5+WSErJtUedyvSK4KCGL/kcMk1osp/oika5VbsZOw7DjxNsjh
X-Received: by 2002:a17:902:8f8e:: with SMTP id z14mr1633359plo.99.1554055462370;
        Sun, 31 Mar 2019 11:04:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554055462; cv=none;
        d=google.com; s=arc-20160816;
        b=Vqjudiq0cKZy5u0+bVNZ+Vntb4FRSXvkl9UiG397AFQ3nVqW5fpaOSCNz8KMHVL/bP
         4HMqGgNlTOYCJxWadU82/1anncQwxMRgWbfvsgZz/3iScD0URfWjYU+bGHJUAM9l/Srj
         AaJKKfPbyctI1wvqChDT1D/7zgPe5NVcpZlKiGyjrn3uc7TJDEjbLoPyi9TK9pDs8wyv
         WNdVDvFSOEEFxlAD5Js6f8VxEpODxJiO1zwVoPzFa9mtLBNgd4Fg7OojUM6hnGeqjyv0
         D3vG72OMbJKQLsewqJ4CCRoxW4gtgJY6h3jAj4L9t5XJ616daqamMba4U+8LTg5anPtC
         HtAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=xq4KQ4Uyc3lubpS0fIEwceevaguY1GTG6Zq0hLYynz4=;
        b=i4iy8MBedW9ZXoPhUZdpaBmYWUL5gq1BKrzO5dKo6xbO2mJQ5QTOkeD7IkmJSrLmUd
         gcKaANwKAOGvCBN3njEuNr36Dat/72HXSTpDL313cYNDANx8O4eqkw6Q5vGrKYBbczCZ
         /IidvqHLbAgwTkaErt0xBlnR0fxATdkKnK0oPWruhihNC+zgTLX/umPgcp794HIzIfEi
         MnYyUhT0RoZACu/fVjBUWZXxP6efsw7uGt0wr//jr4xZBSglTK4ynDOccj87yJfHXj6F
         5BXHhPyEhKvGfcuVTXpfMGqASbLi8EgXZsK9S7DZ0MMcXNnsKevEt6JfoyUeplcDmaUL
         m/Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hvSc2kN7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t136si536055pgc.5.2019.03.31.11.04.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 11:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hvSc2kN7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id i2so3555939pgj.11
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 11:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xq4KQ4Uyc3lubpS0fIEwceevaguY1GTG6Zq0hLYynz4=;
        b=hvSc2kN7yJrn44Ni94JkJyU00Ig4cqrcLigUDGM70li18DxVdpNUeQHHVkxbxh84Oq
         0hGpXI2zjgVEBPHhImpgxzxEa9/CVMocfj48DWMgg9snM8ZOpZuT/N/3j0XZkyr4+u33
         t3nXMWWeteXjAAn1lVdksN18S0od1b6p2CZPzTQdpHAi/nUE8sGaoaqXtOTeaKc8Dfqf
         qd6xllt7vrmZ7u5t5TmFPDxbf3SeMDKelTbkbBxjqCG7NYa7kvnhQuhXm5GGZCRHtwZv
         kiDyuiQvDUDwWoUmF3S3QqYOVbcZYZ11iSQyOj42aLaEGL9qJlLTSISmDs/mxjzi1kS0
         VFfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xq4KQ4Uyc3lubpS0fIEwceevaguY1GTG6Zq0hLYynz4=;
        b=rpchutBYCdm5/jBhyS1OvPAdJm0j7I6FCv4OLb9VatqmUp7fUp7x17pCeSmqpx0x9Q
         TA/CVIj7Y699eHApLC7E/jhnhsPcJ88exbBn6iGOnUVGKfoHOEEKL4YY4DP+xqppifw3
         /C73UVyvNPUq/vN1YtIy7zVPcWJ2GiDRDuCYKuj+OUs2ee/pb+EOMoXiv/9dgy3bvdGO
         x6L3TP1yCyzDk/YvIUJw2N8xWdXi6gBIIjtjRpYWa02z7hOiAAivQMWfXwPJgNF6gKET
         WPmaLjuNG3BGtZMGXIq2NSw0i4Kt6q4fo84/V9tGmebcObakbJ9MzVDrXuS+YOUEqWC3
         hsSQ==
X-Gm-Message-State: APjAAAU4RHamx98u14aooWZXFeYWZqnfpA+M6bYOaEnVVb7+9nTOkmaj
	nCYIGnkqhsyGS/M8CxYyZT/rrZ4E
X-Received: by 2002:a65:5acc:: with SMTP id d12mr57223909pgt.337.1554055461791;
        Sun, 31 Mar 2019 11:04:21 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id e1sm8289669pfn.187.2019.03.31.11.04.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 11:04:21 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/5] staging: rtlwifi: use !x in place of NULL comparison
Date: Sun, 31 Mar 2019 23:33:48 +0530
Message-Id: <05ef9b495cc01ff924caef15858a348e13ced346.1554054896.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Avoid NULL comparison, compare using boolean operator.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
index dbb11c2..e661fc7 100644
--- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
+++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
@@ -33,7 +33,7 @@ static const char *const gl_btc_wifi_freq_string[] = {
 
 static bool halbtc_is_bt_coexist_available(struct btc_coexist *btcoexist)
 {
-	if (!btcoexist->binded || NULL == btcoexist->adapter)
+	if (!btcoexist->binded || !btcoexist->adapter)
 		return false;
 
 	return true;
-- 
2.7.4


