X-GM-THRID: 6670815133562830848
X-Received: by 2002:a25:ba4c:: with SMTP id z12mr4429279ybj.504.1553192156760;
        Thu, 21 Mar 2019 11:15:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1384:: with SMTP id 126ls2113752ybt.1.gmail; Thu, 21 Mar
 2019 11:15:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPrJYBPWawZSUQdWlLwUJNeQGEUyrMnYuJuhXXybQ23nC3dX7COImVlk1B69mCeWaJIKP4
X-Received: by 2002:a25:4e0b:: with SMTP id c11mr4344939ybb.480.1553192155932;
        Thu, 21 Mar 2019 11:15:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553192155; cv=none;
        d=google.com; s=arc-20160816;
        b=ftBZvddufxX9Hr4qcefwhL8Eut2SrGI5IgXejqQgDs1jUsGefLBj5X1bME33uCtTDN
         4C56wmQWkho0S34VKBo1e1W8zrjUU5BYOlJuersu86zohA9Uw9gUk1NsUm0iapCvEyqU
         MAFeQ8nDxuJRAiECZZPuHCP1PzSXiA6Z/tDtlsr53dNvpXcVcYsKPr9aY+v3LflVXy2q
         pdoSlv4FoZMbsYPlAHQiwWlQzSdoKlnraPBgZbGbM+DoF6MllcEG7cNcgLPnOgRUkeZd
         ZEHqiwyaXpVa0xzAYmxFy1k6E1kH8CH4MR9pEDqtXvFBt13wuNuKYWdAPlgcgfBElglg
         BwcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Kz6oylHHYP4nfY0eXJsMayZqVQCsuFMgczF9YnXjcI8=;
        b=h5NUeNYLnMM3vv5WrBZLpnYw/c0KjYYHSqNTdlpA/ow3mJ38IYN/TJIdZ4EyEWknnS
         fFO+kCJVJABMAdZ/BSOAw4zSp8/eWyPY++JW8MtdJ+br0XdrOlb9iE3vOC/0LttIBgL4
         Rw5FaSCPFF9ZCJDwD/8pkdXAJ3AzzUbDqnbaIRBQV56PWYgADc9uApmNkVfqvm7MD6t+
         6JnH7Mvc2tdx/Q1klNRrezX29HlcXLYBGz6dM8Yx/PMm5wYsZ7er9464YjctKs5EpOee
         cataap3NsjDrf/A5J+8xCykLyZ9Hm2pr6vO2JHzBxwn5GY+VnWZfQp8a9AyzCbWx0r1J
         PE2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hQ3KdptC;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id l126si394196ywg.5.2019.03.21.11.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:15:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hQ3KdptC;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id v21so4793553pfm.12
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 11:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Kz6oylHHYP4nfY0eXJsMayZqVQCsuFMgczF9YnXjcI8=;
        b=hQ3KdptCGV53IrfESvrgO86RylHuCLeh+eirC8GCrtkkbZ3lLZZ5rId64AuplMdUlF
         zHoKamIq9pGyAZs+x2mOAeKjAp3kLCvH3+f7N+XjH6y1a8BmFrZ+mMK1OLRJYjhaENE6
         ynWhvBHCHyM5/DiRtjP+kCOweaXX4mwIqFwPhaEnBh/z/KB8ug5YivUxf7wnfxs5nPY2
         3rdTxcZc/0SM2LcLPdIb3eTq52kI8GZsm/N33mNYBDFr3VaQyS0Yx5d6KM+c50VbNOI4
         UWiMepcXUdHeyE1dR1XFwxarN/Jv3BzafJSQRsg13dt+vGfcCaOsYw5PYK5HozCHU7Wy
         0/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Kz6oylHHYP4nfY0eXJsMayZqVQCsuFMgczF9YnXjcI8=;
        b=ANDZcvy80035DORv/IjUkzIO9SUrbAumWdzQUVQWtxL/WZnaSFhZEziiopNLlnTM2y
         YiP944tosVna+PAZtHSE/Ngjbv2pefQFVBjDGOgFCql5X/jXReS9O/kkOtKIw1YXfTx/
         uSABEtoC/SzorgsA1YQYldCQoZia0oMz5zKu2imWRl4Fx8d1rOdb/fDuvcLbePvyrFN7
         5lFZEEemWEQ5QJ8ezQtnKU/pK2FdGSyKutHmrbbSLJZVg6hKnyhkpj5D//js+eN2Qu/w
         UaXKKfPOW20z0ez5KTeDlqT3AJvW+tPGZbMUKEOogp08mkPO8FzqBDA9rFRl0J3df7rh
         g/Kg==
X-Gm-Message-State: APjAAAUrYmiXnevOQWXInZJb8yx/b8DqSaXfwtVIMJ6RQALtghjooEnD
	EDAjUraFaoTop2n4P+kqO50=
X-Received: by 2002:aa7:8c1a:: with SMTP id c26mr4701078pfd.31.1553192155580;
        Thu, 21 Mar 2019 11:15:55 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.112.101])
        by smtp.gmail.com with ESMTPSA id v6sm7296251pgi.90.2019.03.21.11.14.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:15:54 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 2/5] staging: rtl8723bs: include: remove typedef for struct pno_ssid
Date: Thu, 21 Mar 2019 23:44:02 +0530
Message-Id: <20190321181405.6219-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321181405.6219-1-himadri18.07@gmail.com>
References: <20190321181405.6219-1-himadri18.07@gmail.com>

Remove typedef for struct pno_ssid as The Linux kernel coding style
guidelines discourage the use of typedefs for struct types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index df85267363b8..ba79a98fdc67 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -170,13 +170,13 @@ struct pno_nlo_info
 	u8 ssid_channel_info[MAX_PNO_LIST_COUNT];	/* channel information */
 };
 
-typedef struct pno_ssid {
+struct pno_ssid {
 	u32 	SSID_len;
 	u8 SSID[32];
-} pno_ssid_t;
+};
 
 typedef struct pno_ssid_list {
-	pno_ssid_t	node[MAX_PNO_LIST_COUNT];
+	struct pno_ssid	node[MAX_PNO_LIST_COUNT];
 }pno_ssid_list_t;
 
 typedef struct pno_scan_channel_info
-- 
2.17.1


