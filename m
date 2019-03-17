X-GM-THRID: 6669239463558774784
X-Received: by 2002:a9d:6b06:: with SMTP id g6mr4804941otp.69.1552803319415;
        Sat, 16 Mar 2019 23:15:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:164a:: with SMTP id h10ls1794569otr.7.gmail; Sat,
 16 Mar 2019 23:15:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzrwpGy8gp0tL8MyvXktOxEBOieqNVbpGcRzBzYzIVOrMkXRwRG55t3Bcs8eyqMlf2hdcBF
X-Received: by 2002:a05:6830:149a:: with SMTP id s26mr4211784otq.3.1552803318639;
        Sat, 16 Mar 2019 23:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803318; cv=none;
        d=google.com; s=arc-20160816;
        b=cZ2vlKXlJA0q5g0yj3LzMFQFa+WrDk7oYscJVYjL/Nau6yZeugXYzk2WC0i+8lVGvA
         7TsICGG9Rj+c06P2B/l7TFnMjSyuCVr4tl/kpbYD7ySov2+xgceJmTkVPSIdabF9yUrS
         lK8k3QOWzuGqtqFede/qOUpzlzizbCtXDSMJwZNGpvoj5p4El1rOEB+fiOxwNRMmDEL2
         1ktWhEnkRrvWKWoYyj/tzC+ZJRsEh7v/znhsIH63N75s+HOIs3NPULTbwwwzGP4yc0tl
         4HV64XVPqOFbEvemUCdZR19UKVreyOKo2Rcvs067AdWLCyhkCpCN2Fw846qOpxKDvvip
         diEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=uzkc1JmUIGB/tmvZezUUuJdZK4G1uVI4dpF4ARDTCHI=;
        b=xeANwyP00A9jL5B74Qje8lFWi7vSUJ69U5jKTJKIvnLmVKA+Ivwm9mjjt1esxxE/mV
         9bx1qxYyuf7mpPa5vnX/NzDBfNsG1M7kPqPMR7ClY9RMCQ+52uDPl7bEI/FIrb2sitqu
         wmoXoFTmH5r0lDGaW93yf/X9maHCEH91QdNuwIDoeq6AAqw8OymSVFL/p+brRZ1Q5as2
         EDGTIfzKlN+JFBSpZ0VcLtmMC4WV470dCtwr8Xd0k7vN3pB89RZh8CQ8AxxS9cdZHQnz
         0q4kgxqQ+PFYGg/7z8BLNan3H9lwEgutdrNdGFbnVMeOxXtza8srY20udAUNY5BtFvqi
         WsOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hy3I7vaK;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id d128si248010oia.3.2019.03.16.23.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hy3I7vaK;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc42.google.com with SMTP id j128so3633733ywg.12
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uzkc1JmUIGB/tmvZezUUuJdZK4G1uVI4dpF4ARDTCHI=;
        b=Hy3I7vaKx8o+mVPI6P8qR2P2jVcczHzyTgOqLr75+pK6trXLI5rwpjNXmPsaJnvXLw
         ca9dtlGp/pKeP+z/31PCJQbkTD8GD2jlmNKQZ+Nppnb1/JXHQe9BfgmNIOj3TvKDPx77
         +wx9yGOCZUOS2HuUzYdKiYCYTl2rcHpiYBrilYYfG9s1JDtaxjjn2t77SsuZ3+LjNG3i
         gTP2gZn7oPw9XlE2tt0W3m9RIQxwarAJVDYP83Ip+n0yB4DkUuQXNt4MqswMvNX4lrEp
         UTQjWUjt+MP3u1uU3gkrZ7M9uxAfFd6KtRG4yPYQBBaWrbmJY3iGfoqO4OzL7Fn2ljRN
         wAkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uzkc1JmUIGB/tmvZezUUuJdZK4G1uVI4dpF4ARDTCHI=;
        b=i+Ja47fPFW6wGCY/TpyCSi1IIBGWOFYxWoG1Wkqg/9EZ1mqQ7tlAeksu1FPiae2fhf
         7QlS8BIgmxl6t0YTv79amO/AWf3kwEWwScqyFxhQzhH/NPAvyMHnm/mfL9VU8ddyBlZg
         +ZzG8PPC1UW4aIC90zx6ni1oHHhU6FF/uQC9DLaqaasUxkACGUuQjmBkW21xjAT7k88f
         90it+WG/ThtfbTqqW+AXLgCaT0sUsi1uRTZ/TuJ7ZrElW4ZcqeHs78RPc3CPDcUviego
         IbFsrGGaJW/A5Di4faDJn3UFmK8aLdvYRygkjSmbYBAMxcA82ruSrGUHF27dn0FpKbAO
         OeMw==
X-Gm-Message-State: APjAAAV5bjfDr66wtVkoFlpuE7fDbAv93L6YSJqmKKYAu3GlD1iHYVb7
	sYgDquUIzZNHG321dUkqc+E=
X-Received: by 2002:a81:9482:: with SMTP id l124mr8160256ywg.397.1552803318175;
        Sat, 16 Mar 2019 23:15:18 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:17 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 01/11] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_rxdesc.c
Date: Sun, 17 Mar 2019 11:44:51 +0530
Message-Id: <20190317061501.85447-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

Remove comparison to null in file rtl8723b_rxdesc.c. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/rtl8723b_rxdesc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_rxdesc.c b/drivers/staging/rtl8723bs/hal/rtl8723b_rxdesc.c
index 76c8e6e9e6bc..86512264e280 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_rxdesc.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_rxdesc.c
@@ -34,7 +34,7 @@ static void process_link_qual(struct adapter *padapter, union recv_frame *prfram
 	struct rx_pkt_attrib *pattrib;
 	struct signal_stat *signal_stat;
 
-	if (prframe == NULL || padapter == NULL)
+	if (!prframe || !padapter)
 		return;
 
 	pattrib = &prframe->u.hdr.attrib;
-- 
2.17.1


