X-GM-THRID: 6803716874412490752
X-Received: by 2002:a6b:5c12:: with SMTP id z18mr12271121ioh.138.1584113786086;
        Fri, 13 Mar 2020 08:36:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8616:: with SMTP id f22ls1752645iol.9.gmail; Fri, 13 Mar
 2020 08:36:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsCsChL8OWI1jfzmex9HRniGn0IpDG5AGiIZde7rPWyZtfdQXJhw0IT8kJvChYo1U/WJgfO
X-Received: by 2002:a5e:990f:: with SMTP id t15mr13095036ioj.153.1584113784721;
        Fri, 13 Mar 2020 08:36:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584113784; cv=none;
        d=google.com; s=arc-20160816;
        b=A16KSszmOB7njVH+nRsZbz8MNHJ0s2QS1KC7ii9p3H6o4tPjRiTDPnJBpfLB44GXAv
         uL1DOnVfFUOEXIS/u5B4eEcKDx15qvtQgDvvSP/QtFlHaBDIu14669F+Qm32VGWkYmUR
         STaZXjlQ+jxmf+GvH+750OI3/u36odUK+J1kh8F7qsLEOb+POopX19Vv7YIJmpAv2xec
         IvUi7b4SXgLNWNghl30gcXUls1ytMOEsSGGgjsH10ukpICGy2jIMtK3QMQXqLBnX/KHg
         0ctzMdTrATbQ8wCk6P0uj1X8i/qhNDiqXqgFfCOojFBx2cAtiwbcuukRrLVfB/a66Oyr
         JEeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=nPI6xPNanytQOWTJH0/ia/MT84CeVaEiqB1xueU8ePo=;
        b=FL7W0WB0U4tjOdQsR28LO8qjZr8yAh1RRzshFduePN/W7q3oBUl9qfl3XJgjIj3UUR
         682xYnNxipqndkcia3nyiIQ6ZPmxSGYDzcu1mw8JYJQBuVJ0zAV9rneQ80W5QhukZYcQ
         JjZr287zcVaG1w3s95mn+nnsx/CZGFscnWKHYWl7cJ+qOVFryOvk1c+GZAZNbBw17qB5
         z3RCqGFrAK20I2CROOaIQs3VYDECO2aR9K/jzmdsTPTO+VFebafrJMeqPTTrCnv8ys8P
         aR1VYBlhw0tDNjZaIIxO8rfTax841lF5fh1izNlVZzU0tqFix01s8CgjDQfcQGPvk9qa
         AGwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TYkWtC3n;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id q6si381403ild.2.2020.03.13.08.36.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 08:36:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TYkWtC3n;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id l36so4311004pjb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 08:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nPI6xPNanytQOWTJH0/ia/MT84CeVaEiqB1xueU8ePo=;
        b=TYkWtC3nzq4eefI7JBkOgH26r1660RdeRdr11IKiCZrNbUJtRjBOzBO8VGjIfO+85L
         vKMgBYWIEC3Ued0MAx4Ie4Y/xDpeby5vxsK+Ej7vXp4LoG7mhQC2a7tPbE/bUEKXXJN7
         tNcekNDKr+o18dF6oEdpps2zMlwHc/0nDqpKCKYXRswN7QltmjSSHJwq45BTkrhNEtBq
         2sdCxy3KTnReQjoNUOOd1hvb8SXXK4+rVNpUlpefd1leT9xe2oUIXwVAuMeC5/6PPxxi
         7lCNCkppFKG2aWnHop6erTPyt2UrsXrhxXWQAbSufaLhx40xcRxtXNSgPt8SI/pdnH1n
         dX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nPI6xPNanytQOWTJH0/ia/MT84CeVaEiqB1xueU8ePo=;
        b=OGy9qQTd3nzupSYuqBIhSu45/Ok94BJ3q+9dau6xhAZ89IC/c55tXW1EOkxhy1EVzM
         7fxYSwKBazXOtFxyrwgYuh3fYOCx/ZRnn31yaoxa5njiqCPZ02bTa0N5f15aF3QLPt7n
         j4eOrU/HhRob+FqUzxQK81aEfXe8ctuVBQF8DrYhD6aqI6Mfarz1ZvzhmGj0BNbKb5mf
         urXFCVE0hrvSbSRJpwYnQCba2mtWjhu0okrVbtBV+mM1XZvM7wvpWGDR9VC9XfApC/Wt
         7KIbO7YGL/jhOmnrRoW+aPgzwYgvPMhDsZyYzuOrqQwSELt9+RlrozR0gOY6o8jYt8z9
         cRgQ==
X-Gm-Message-State: ANhLgQ0vI1ivzxPJQZ80rv0WgVI7RH0HR4RuTXGCCdBaPtKCHxsrZN6x
	yi0SQ0bkFAhJt9zvlBV8r4o=
X-Received: by 2002:a17:902:561:: with SMTP id 88mr960618plf.78.1584113784194;
        Fri, 13 Mar 2020 08:36:24 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.225.150])
        by smtp.gmail.com with ESMTPSA id n7sm962891pgm.28.2020.03.13.08.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 08:36:23 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH 1/3] staging: rtl8723bs: hal: hal_com.c: remove unneeded variable
Date: Fri, 13 Mar 2020 21:06:08 +0530
Message-Id: <8976787aaf5f74b4c903b0abadd5e2ee6492f89f.1584113084.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
In-Reply-To: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>

Remove unneeded local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 109bd85b0cd8..02676da5c166 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -961,10 +961,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf)
 
 u8 rtw_get_mgntframe_raid(struct adapter *adapter, unsigned char network_type)
 {
-
-	u8 raid;
-	raid = (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
-	return raid;
+	return (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
 }
 
 void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *psta)
-- 
2.17.1


