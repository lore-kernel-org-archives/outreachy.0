X-GM-THRID: 6463854288984604672
X-Received: by 10.107.212.10 with SMTP id l10mr7347511iog.20.1505152273417;
        Mon, 11 Sep 2017 10:51:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.10 with SMTP id g10ls4652056iob.18.gmail; Mon, 11 Sep
 2017 10:51:12 -0700 (PDT)
X-Received: by 10.176.91.76 with SMTP id v12mr50721uae.3.1505152272654;
        Mon, 11 Sep 2017 10:51:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505152272; cv=none;
        d=google.com; s=arc-20160816;
        b=kPIDUrany0+cZ9uBTpQQNCuYc9x2zzqKSaVdbramXN0ImfTTbzjPLNGtOUh844x5wl
         iz4mfLRT3J44xkIQ2RuJFzzRoeOdpG8sB27xeGfJTAj8nTYe6u3aATU9lVoE9l3apFD+
         QGOybCw4cFfWyi7/nWilFyFd/p09Jc0jVDwbf0WImAqS4mYRywvd2QMFvU+4rhVTG0qx
         ZmtdlVTw2/7tWCfEbLuFrL0IpGEAEJ5XgYzK9Bu93Z6VCzeZ+bqUDW8g5CrOdjCzrJZH
         Fw8pITVV0LSpx6dF1inefXixWb9VB9wrEhKlfZacgZ9RA1hxk7mXJOG+AoywtS2ROM7M
         6jrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=8cA2wYrOAeskBImYt1W+MGgKGwGfk5s+fhWAXYBQkSI=;
        b=B3+JwvJ6ADwHv2WrQzK+k2nEFJjGmYg6scrUbmGhLAaPHjF1QNEzEP0+lseZfWnz/g
         L77jmkQQRwWhW7+keOLVFMBJZG1eMTj1v67enZGxGuqDqbZJms++Tj5gGiGQudYQP0Nh
         HfRDGiLt+m4AO5FEdv3cUvYHImU0j/1L4aInpfRedQGzNSMuXgeKBt0dCBSOuSsubeFQ
         vJ0Ua+7bGm/am35SGa603ZsS/XriRyiiMyf3G85278o0b0zf1lu9oPGZK/VqSrrn6I7/
         3nr8dkmi0h9MrHy+hJHthit2yuZsvH+wnAhwjgzWAO4KU5xqpi3Fwc+IBXIbhFJnmFrJ
         c+8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m8rd2en3;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y125si573255itb.0.2017.09.11.10.51.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:51:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m8rd2en3;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so4963776pfe.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8cA2wYrOAeskBImYt1W+MGgKGwGfk5s+fhWAXYBQkSI=;
        b=m8rd2en3cMDnlUPRD6k+CVqyYizzEFk8pLp3ZQ+pZuxXt4htgcMHPNKoJVfEh7XuET
         58hDuzDf7MFlF806KXkoRrnLVr24tSghJIAPInkWwHuVr39SgdzUZtnCbVt7TEDBPcUo
         MQSKcTYtwdLkuYt0YRkCO0Y4Qq0G9/tC7wLsJT7lsDAYlYH9iagEoArYMtNAOrV/x+cQ
         JDVUerPFB75hX9eeSrFReFelTL/Y8ILnSNbz3cEJtoaHIBnVu2LcB2vc3KNrHQAQsEIT
         rOtRYtM6cPMozdbH+ygbtMmbls+ExO0rjcUv+xUeiZTnTd0lkfv+S/Vb1pUlJM7F5WRc
         gBOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8cA2wYrOAeskBImYt1W+MGgKGwGfk5s+fhWAXYBQkSI=;
        b=U05MSvGWe3XfXfMsyKYv5KPFrTaNbD8UVtEdyG3vI+2zuY0Pypi7CntoJNgsLI9Z8M
         iqQon4EnPVmNZixrFpbMO3HNdQM15wVJr+YLAcjWIL9iRJVgvDZRU0Sv0cdEqksigjkB
         s/LaY9HfcCsPuHyanrvBYiHtT2otUWEXvHRF9kHjOL/GrHsHjO/9miuFpkdsa91wcQNa
         rbYgbiWI7EAmhqEHF95Jb1mc/9OVhXV8iqRg27YqB0iA8FoNBDLAYFKG+n1Yyoo53CPt
         esVZR6xmyQC1e46XdM5Md8OGab8DQg0VXt6+a9q4IhwYns3C0DESOie+yPGIfItS4sAJ
         oY1A==
X-Gm-Message-State: AHPjjUjjQF6f8E05xlQRLOm7sBL8DOjSOBFDwiL/onhCWeLU9xqQOHLE
	6lgBFWlSF8iDfXyB35c=
X-Google-Smtp-Source: ADKCNb6dr3ND81AesGpAxlaIUzYWB/N7FPkcJM/eBsrFJZ1AxOqwFp6a6E1fWh9vaXHOIOTdwYuFEQ==
X-Received: by 10.98.87.193 with SMTP id i62mr12528356pfj.186.1505152271982;
        Mon, 11 Sep 2017 10:51:11 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id v10sm15425165pgf.8.2017.09.11.10.51.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 11 Sep 2017 10:51:10 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH v5] Staging: rtlwifi: Remove unnecessary 'out of memory' message.
Date: Mon, 11 Sep 2017 23:21:06 +0530
Message-Id: <1505152266-3308-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

Logging messages that show some type of "out of memory" error
are generally unnecessary as there is a generic message and
a stack dump done by the memory subsystem.

These messages generally increase kernel size without much
added value.

Problem found by checkpatch.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

Changes in v5:
  -Do not remove leading spaces from the patch.

Changes in v4:
  -Include v2 and v3 in the patch.

Changes in v3:
  -Make the commit message more appropriate.

Changes in v2:
  -Original patch was not sent to the mailing list.
   Also, add a tab before the return statement.

 drivers/staging/rtlwifi/rc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
index 65de0c7..779a5c6 100644
--- a/drivers/staging/rtlwifi/rc.c
+++ b/drivers/staging/rtlwifi/rc.c
@@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
 	struct rtl_rate_priv *rate_priv;
 
 	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
-	if (!rate_priv) {
-		pr_err("Unable to allocate private rc structure\n");
+	if (!rate_priv)
 		return NULL;
-	}
 
 	rtlpriv->rate_priv = rate_priv;
 
-- 
2.7.4


