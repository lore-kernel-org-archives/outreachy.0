X-GM-THRID: 6670815133562830848
X-Received: by 2002:ab0:778d:: with SMTP id x13mr924656uar.7.1553170187228;
        Thu, 21 Mar 2019 05:09:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:49f3:: with SMTP id f48ls1543uad.4.gmail; Thu, 21 Mar
 2019 05:09:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5EA9AvBAa0q/hSUOICMSsTMnNhZc59fu9J3VD5P+GdW4uBsgSsrrm6SCuYluZWD3Wymcc
X-Received: by 2002:ab0:21c5:: with SMTP id u5mr935889uan.22.1553170186507;
        Thu, 21 Mar 2019 05:09:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553170186; cv=none;
        d=google.com; s=arc-20160816;
        b=iArf0DH8sVLwEdkoj5WeQEvcvQK6LpYjvO1jbBELkD9559rxNsIalF7aU3zYjwXDd/
         l2XCtYmsk/vPk69ecegjxIFCfGtG2fYN/GiBntO5K9dMUegy6IJ6g0mEw4j2fMJaWO2J
         c2Wl3ErabLLVJnFdLxbT0DoFpARQUN1bvu1HHgfpLzRAc1dMfcOWy6ndjIx2tSCSLd6m
         Jl8NHefERlRh93yqFPta/a+nJtUovSgyuwix/mo56Qt1pDneYKBfTSH1B4GxoRko87sN
         ornNQLyqI22iumnpsWpglZiDSN9VJRYLXrIKhXF3aeeONn/Ug8Z9rxEc/sPtmy1tAbsq
         Lnbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=0WzGgpORo6b6UOSHRA2gtG7XIblTQzbX4OLq1uV4R38=;
        b=B1ArxMzSFWNDRCAhHEZHjhRB/y0vrsZhfVbar6pC2Tv801JXr521JEluU/8DDCn+8h
         cZGCkxXBEWfaP+OZmMvalGrJtQS99rPm1d9HZ2nbkJ4p1jtzhDRcK0FfxCXhte5tv+Si
         JKWXMFAJ7QSOnV0+Oj23ys47SKmMbhUWdCDAbA4CZTiaX3uPQ7p4KxTs63Y3A0DkeCtT
         d+P9V9gs3xfi7gJorqdAGMm88/2dp6dQxW0YfGehdETYpfI7786nbHu4w+nR59xHpvSU
         xwWca/wcyIsu2FlPHdXOLE5YZHL8ZJ8gHaapkP6J06u/cjA1MEedk5r8+p4A/iXHQImC
         oC4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qkTDrTkn;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id e142si550vsd.2.2019.03.21.05.09.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qkTDrTkn;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id q206so4068939pgq.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 05:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0WzGgpORo6b6UOSHRA2gtG7XIblTQzbX4OLq1uV4R38=;
        b=qkTDrTkne9kWCbKhQRglYOrIVAGsqUFtwH8E7ed/GVSezKHWGuoC+q65SbSrS1CJH2
         yreErFYZC23sP3dXLm282RU7deXLwpEmUtVNngivbPhCOveHBIxtqOKXvPdRU9GllBF6
         Vsd5C0vqOYt0aJCIHc5FshUsQFzBx+w2wHaR6PFa3bHdy39oWMfIDk4BrmQm+3aG/uiL
         RqTLTYtzKedcy0TbcgXjI6pFA/8hDBJ4ZsZeokBe/O5z8dE0rl7xBiqP3zv7kC3B2p5e
         Y3s7AI5/Mna5OQCbMBTI5XPZw6nVoUUoNGX+RQlUUBT+MfalIwHc/tCtTiOItinwPR/Z
         x59Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0WzGgpORo6b6UOSHRA2gtG7XIblTQzbX4OLq1uV4R38=;
        b=f6b5+NJmHSLhaG5qad444y1Iu4flmkoJZipUk27SI676MIlbnpViDI5Z28UUv8W070
         Tv1/7jGHhMnZccAZOx886AWVpH3SCU7WcE76FGNppF7Qi77GUeV3U9OLw/LvqV7qgsvN
         QqbbeJPjHrGhSh6FBv7p0qzCvEMduFYeBl/XtPF52MkuEynCuxmYhKVZHbqQtoT830Dy
         5PmAlsseiMTM5FTywgtIP+LxXEKNgR290eoIMAeLYtbPVOkPgfHrOQU6e1T7+Phv2DE2
         uLHpgKODugTnZiKM+i4TyVxJXIytnW1RAin/q09e6grrxKW4Q1G+6xqLMpj5Prnnm8E0
         8TiQ==
X-Gm-Message-State: APjAAAVeHu3m1cbCUCDIYPLjNVc+1FsDH020MR1uW36yGktP3fP5oYv9
	8lyajhmBoBBvkFrKoaAhudCfe9oX
X-Received: by 2002:a17:902:a98c:: with SMTP id bh12mr3104463plb.289.1553170186110;
        Thu, 21 Mar 2019 05:09:46 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.80.198])
        by smtp.gmail.com with ESMTPSA id c130sm6687518pfb.145.2019.03.21.05.09.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 05:09:45 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 2/5] staging: rtl8723bs: include: remove typedef for struct pno_ssid
Date: Thu, 21 Mar 2019 17:39:05 +0530
Message-Id: <20190321120908.43680-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321120908.43680-1-himadri18.07@gmail.com>
References: <20190321120908.43680-1-himadri18.07@gmail.com>

Remove typedef for struct pno_ssid as The Linux kernel coding style
guidelines discourage the use of typedefs for struct types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 011a5685c2ff..a08b27c65a31 100644
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


