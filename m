X-GM-THRID: 6670870479881895936
X-Received: by 2002:a62:a509:: with SMTP id v9mr4112900pfm.64.1553183067829;
        Thu, 21 Mar 2019 08:44:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8216:: with SMTP id x22ls3188176pln.3.gmail; Thu, 21
 Mar 2019 08:44:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxNKdS2SNaxgkrX+khUaQncv6+tC7qETrB3Y2dHKoSBBAiBq8Gq+TP8IbflvdS+w6UN/8ZG
X-Received: by 2002:a17:902:28ea:: with SMTP id f97mr4282351plb.203.1553183066991;
        Thu, 21 Mar 2019 08:44:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553183066; cv=none;
        d=google.com; s=arc-20160816;
        b=VgqsiJivkJckkqNFbCT9D9Mvnq3fnfS4ZQ8+o6aHQR1TLaCkCzlFD0qtgHHXOM14SU
         4YkzXUR3gQNR9H9uxeqvp9mv4DFXcfQqSWFM5WEQrotGKPFLZh16wQlydIIPhiqc5jfm
         TFGpIE33dKP8jxLvSMYEKhjUM6lTH/4lzSTAETVZWwelW+chHeHt4Wg7XFFCSNgkfaHV
         HZGf/H9TvsQouCXD4AKyhzbbECBHBgmkZKiK3BJwMUk942kmXHLY8BfJ0IfWYTidKe1D
         AECx5gYkmmYjIZU4ZRY/2lok3XXy1wPYeLR2P8JhyePdCVi/4rQz85PtYZO69gNJ76Hx
         7Axw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=AXzsLUr51WYPntE1/8rZHZIeGUpT6j0D60oQ6asnSrA=;
        b=jFUr+yOtbcx3cpyWCYPO5lQ44ISSsGTZLqDX9U08q1OAyxZ9NOQ0aRdzXspO/VPA50
         KuZrE9WI+dmYUck3Zovxsw8FoaR6qcGh4R06mFoQkrqoiG+x5UZkbRIV4sZjh1yDW606
         grjUMIbmSp1M2+kcw9pHjzvD84Zm868btLSvwYHRmym/3+S12rKheu1zHIQP2wcQ+JhZ
         ZYXa55B2x+tlQPMExcjfgkLykdmeLxvAuoyezcnz3a5y8h3waHbiLJAgqhoX9gccEL4e
         QmEDHss7sZDyzuK0W3ORK9o2uNy2A+Z7T382jiyRwjQOmWlaizpNtZjP9wU3acMduklM
         eUAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lL6i15v1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id a6si383882pfn.3.2019.03.21.08.44.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 08:44:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lL6i15v1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id p10so4560145pff.3
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 08:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=AXzsLUr51WYPntE1/8rZHZIeGUpT6j0D60oQ6asnSrA=;
        b=lL6i15v15mXwhsLsqKRf2pyGYL/NFD6TzUGXo6cx/1IouO4pGtfgyFm8RgRCpx4FxI
         xCDL3Uh5GnkkDV1Yiu7sPzpmMdSGk+o7ueKOK4/KlEOQ1i0ZlP5UN2HhGfV13fkMD5JS
         ZOXo42RsK6HeGfmwkatNAIrtIkl2UOHubepYzX9XxizgebNV5uYhedgOvPVudlAmC4ol
         8MSzloSaBvRjM4BgyKDvE91WcR7zNCamlZ8Qh9nuahg4md8STPyk23/8ICTEb39qwo2M
         XUdUmH0lweou8op9IfNkhyC/yguEJHeS2D4fYeVFhMvVEfreT3IDIesIQdjKZQKy3c10
         6FRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AXzsLUr51WYPntE1/8rZHZIeGUpT6j0D60oQ6asnSrA=;
        b=dKeV1+/H2XUEGDPdKp3VX1dYHAwf6fRxrQE3gM4rLC/mcnvIOR4xF/fEl/nBPnjtsn
         x+2Zi1hHj1jPYnUo+JO+b5nSlBdE2fHSnNny/mfai4YZBRNmy9Cu955mt7I3F9gVIcAx
         ipiwKDA0F9fedNxoIB74P0CKLl5IizzQUtOmlTmYLXSqKKnfqQnD4XKwRucJHIC2qbf4
         AeLAm0gYAajxzuE4XEGq6+Aau1mw9VO9zDVpyscRfu/iQuqXFDiniq3jabnGrkUP9gin
         ErmL+jvJ4jPvQEUXWPla+P3lFD/Fr06HDQdu9/JgQqmaq3Cz/BhsttQ19N/MYdG6YPqT
         UtKw==
X-Gm-Message-State: APjAAAWsSFMUr2fqTSxEr5ygcMMZEmzFdWUCCKzv+uGPDaFKPW+4aAe8
	odV/EDHPOTgsgpm++KBDuJ3H3Q2H
X-Received: by 2002:a63:5913:: with SMTP id n19mr3980987pgb.422.1553183066244;
        Thu, 21 Mar 2019 08:44:26 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.235.30])
        by smtp.gmail.com with ESMTPSA id s79sm11357745pfa.61.2019.03.21.08.44.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 08:44:25 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 1/3] [Outreachy kernel] staging: rtl8712: rtl8712_led.c: remove unnecessary parentheses
Date: Thu, 21 Mar 2019 21:14:10 +0530
Message-Id: <1553183050-8801-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix unnecessary parentheses issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_led.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index a899a93..a0c3cf8 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -419,7 +419,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 static void SwLedBlink2(struct LED_871x *pLed)
 {
 	struct _adapter *padapter = pLed->padapter;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	u8 bStopBlinking = false;
 
 	/* Change LED according to BlinkingLedState specified. */
-- 
2.7.4


