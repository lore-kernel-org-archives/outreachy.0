X-GM-THRID: 6669057124685840384
X-Received: by 2002:a05:620a:164e:: with SMTP id c14mr5495145qko.38.1552760864203;
        Sat, 16 Mar 2019 11:27:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4ad6:: with SMTP id x205ls5482685qka.5.gmail; Sat, 16
 Mar 2019 11:27:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzbJtGKok7I4EhC6x3UCImA9jkXfyTFuj4kPoA8acN9GPIFJZS48QV43N5o4B1YkT7Y2GeK
X-Received: by 2002:a37:d959:: with SMTP id u86mr5532412qki.30.1552760863577;
        Sat, 16 Mar 2019 11:27:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760863; cv=none;
        d=google.com; s=arc-20160816;
        b=WtoDKxle7idIRZgfpnzGAar/zYsp1b/tq3Ub++tOOdbhrm/YsYxUQr0pkbMdp9+ho9
         p/4J1UoPhylqsQuOtWvNbI94U+xLONi2P/qccJaadptTcts6VrVQREQZxJVfehYYn3X+
         3kyVdUOptqe8Om0+s4xM5TI1NNYKQMVqLWQczB2y4YTO/xymcuBTMsgF8ZUcTCoyBRTO
         GsLqK74cxTbXX4HwcIRhnfvT8QQKa7+ljNPFHCR3f2Vn+hFsAwFP97DdcacLqyF156cw
         MSSEzlgYXQfZpsq41YQhZfa97wzoJPCJXqgm0GeFUdwmKuA2FqgpkSPU+Ot6Y65ETFv0
         Mhaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=uzkc1JmUIGB/tmvZezUUuJdZK4G1uVI4dpF4ARDTCHI=;
        b=G5Kf/c7XUkQMrXCibhDx2kTkgKsnCOIFdn9f7ttkpcxwccyyUqHkxCMEV31KTfLBeE
         x+Fuu+sRfpujiCP8QeOaOS5YlN2JeGCOCXxg8a9nAplNhnWOkovvriqCi8YR6UYH9/EB
         /W9hZuvomHGaLPdHQDc4dnV6Ze+EFd/FxKRhX5DggxC06iBoQDsybFLKsxMGZT9MQUIj
         fZi4Sb2hY6REbBf9vinWRVt8IkSTIdTuoZ4PdU6HXz73tfPZdBpClJJI+WKczuzVYCKV
         JSTUUEjBpRSWUoRnnzviRRXX2XIgdAbpMc14NYpSLMx3HXH1jpaDNJjAcvGLPSSSXDnZ
         Atxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uf54JHXM;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 27si376764qtp.1.2019.03.16.11.27.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uf54JHXM;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id 8so5114066pfr.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uzkc1JmUIGB/tmvZezUUuJdZK4G1uVI4dpF4ARDTCHI=;
        b=Uf54JHXMVz99SPxnUrb4ymyGl5m1I6IZ3advZXjktxAOfHr17bXl68PR7x5K+MJtvk
         974Lz03+CLvAeFZBkXiSCu74seZm1EtVNeANiZAX52OrFhqH7S4c5Bq41pZ38TcUprzp
         zi7xDjMUiRc3lM2Z3x4q5irw4cVMxEod/3Q/EV2aFL4a8i9112JlucNiNXKoyBEvncs/
         E52yAR6qRNuuiS3y927Zqh5ca2+1DRgmijrb0TD7TE02TL3aUP3GDIwcce+FiNUr9ZrJ
         DgL2u8i0A8zKbsCg/HK2/vZTpPzp1QCtIk6vyR06qKaZ31fF/JIGW1MKCk28BrMJs9SR
         XJEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uzkc1JmUIGB/tmvZezUUuJdZK4G1uVI4dpF4ARDTCHI=;
        b=JmA+wKqzfDeC3pLZWg9TM7HE0LhpkjPMbxVig1m7cx7TPiQWV5krh2uX9yqhBIuspp
         xec4aeHizXLTOS5G5guRhoRUxHiU0eBJqsy1LV5e0t6xKkW6gCvEvM2WjOPTeC6aNQok
         uyYbmC0LYwLq6Wzz2cNBrndJzlX4tEyQcRBti1mRfCIC21GTYTa8pY2n99vSnT1bxtNK
         cqQRra0fizzGsR+X6exo/075I6AwM9QZtcfnoSPnkJdglB2fGCl2XiE31XaeTl7hsoFX
         K1ngQuPw7iGRSV2NGM4SRBxoi+4Yfasg/2wLOjy/kkq/AvNP1VT91gqxqZGY1TAcK0mJ
         7ETA==
X-Gm-Message-State: APjAAAUjg7jYx0joAiIQMCsIytyu1rolVp07fOzY5rox2Vjrqr+pPkkV
	MrdyyBRfrmvfVA1BSMUbRpU9pc124Sw=
X-Received: by 2002:a62:bd13:: with SMTP id a19mr10478274pff.222.1552760863167;
        Sat, 16 Mar 2019 11:27:43 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:42 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 1/9] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_rxdesc.c
Date: Sat, 16 Mar 2019 23:15:35 +0530
Message-Id: <20190316174543.36254-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316174543.36254-1-himadri18.07@gmail.com>
References: <20190316174543.36254-1-himadri18.07@gmail.com>

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


