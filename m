X-GM-THRID: 6802585330019991552
X-Received: by 2002:a25:c486:: with SMTP id u128mr22972938ybf.311.1583850336052;
        Tue, 10 Mar 2020 07:25:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ae04:: with SMTP id a4ls3693773ybj.10.gmail; Tue, 10 Mar
 2020 07:25:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu02AiQ57ssRLeslTRNFQBuia1KRK+iDb/AS48k20OdOCjYFuMZJOl0UGHqCWGnt3sua2I5
X-Received: by 2002:a25:d756:: with SMTP id o83mr21859214ybg.26.1583850334646;
        Tue, 10 Mar 2020 07:25:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583850334; cv=none;
        d=google.com; s=arc-20160816;
        b=Ak+JQqxBB7Z8+P9m+TNefdtZnZ7idKI/IHHMbX1UP2RRBn717JsZl1Cr8BsPKhMLNu
         XBxttRJQkksfARzmYwAGJKe6/fM6UhaB/9PV+hbDg5NPocnLR6aMt9Qg8rZMNXc6AEG6
         wEtfpXANFggZbGEznaPoSdVBdd2ZKtT8QywTsFykKSpFT0EGK92An1Z2+VnkI4pEF2W0
         GHqdiOD4geKT8bk49PGISZURyBrNHFs+ykNXLUeTP1dDe8qG268ckGkBQHSiertbJAMQ
         HTWPvc1dCzNLJ3BOZV5rqKp/G0BtGScnke40BFIbV40yoa4yaM4Dl6YKn8T8LLJ5ohuR
         CC3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=TD7/TvP3/sIOTJBVHMEPSjmRCQe1Znyqz458nUtr0oY=;
        b=O7noZ7DP8FMUuGSB+537CjtCXA4rSiHmEvhFc/mHfD4aAN2HfZxuphTT/ptFDRr9TE
         7hHy2+Z3fCxUKUwy1lWfiI9C3aNchTWyddwVZunK0ztsW4tbQAPTF/Du8IzCzC36KkzQ
         s5PwsZgV0RWYzofeHDBsdMNHhtNIYrcYO21jnuOfTmTi+s9bdoGpzYUpHNvYmEG5RCEO
         vA1WRQPtjdSABbdbIj9uHl1yefkjXr+dm6FV4bGnbaQEyGLhTLV2q2NcGCRmINQvFJxA
         MYJ9+rcxyAHuGbKeCy1371VjAeY9cFK1iYXAOwy33ulgGWZ3tJZjbQdYEICShDbAm1cT
         AZbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=r9l9D7Zw;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e131si431824ybh.3.2020.03.10.07.25.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:25:34 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=r9l9D7Zw;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x644.google.com with SMTP id d9so5482713plo.11
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=TD7/TvP3/sIOTJBVHMEPSjmRCQe1Znyqz458nUtr0oY=;
        b=r9l9D7Zwo4Zj0kxv4nlRBQYObsNDjVuvBMpLmqL08Lcw6ysTWAotI2j04dAm+PKXT5
         RxYJVC/xOFX2krYj8N367AXNGMA1kBdQh1LlMAgClJ/Z3pp/HZlZzHdbdnVn4nxHXhiz
         2+QIZ0lhVGuWdKE0n6ygSn4kxJIHlcH9W2SR8U23O4zspi1yVdUlsPPVdXSXuKyaB2r+
         oCfpjmITO+UWiGo88C62FSNqKc2jupTcggNuZ41XF+eq5RBEmit07aOrj6gzkDbkxVHz
         CketKvZyMElT+TAoH98B3hpb9NlXSa/q2+mocNQSTkf/sJ77wT/y98OF+TqbzCDnnHzv
         ZN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=TD7/TvP3/sIOTJBVHMEPSjmRCQe1Znyqz458nUtr0oY=;
        b=HkoqKZqC8liUeo+Kx/I13On4UEFQ4NXA20qn6ys9eJdaH+Sl/8Fr3zJO6LjrFU0VG+
         ZyU9z4kSma5baQXAdCNZS3sJxSyVYjS0e/dFXNQ5OZEahYolzGQQ82CwjXf62d5c/Cbc
         bgGyGVzDe+uo21u/oY1sdsV9uiodE4G+yCVWgKtNsbmTEqchq0ufWOIEqBwc7b6iwfCo
         7TJqghenrCFzjgooKfhz4HAflQ5nnkqijvGwf0/bfsAnHiea3MTp99hirw1NYcNauTgz
         eyn1jwYURRU/hftxpt+OZsSMOiJeH83ScqheSzMkJZl8p4Bm2eet4b8hVorjHhsnTe4D
         y1gg==
X-Gm-Message-State: ANhLgQ3w4qPAFoqhVK3vbrIQeegQ4zZhwaNfJB5Wva1qyeerF5Gb5Eq8
	SwIXZkck8+kbUrFDqx0R1GcP3Q==
X-Received: by 2002:a17:902:bccb:: with SMTP id o11mr13254682pls.281.1583850333679;
        Tue, 10 Mar 2020 07:25:33 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id b10sm2647180pjo.32.2020.03.10.07.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:25:33 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	kgupta@es.iitr.ac.in
Subject: [PATCH 2/6] staging: wfx: change 1 to bool
Date: Tue, 10 Mar 2020 19:55:05 +0530
Message-Id: <20200310142509.25632-3-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>

policies[i].uploaded is a bool. 1 is assigned to it. Change it to bool.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/wfx/data_tx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 815fde0913f5..ef617347abad 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -227,7 +227,7 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
 			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
 				break;
 		if (i < HIF_MIB_NUM_TX_RATE_RETRY_POLICIES) {
-			policies[i].uploaded = 1;
+			policies[i].uploaded = true;
 			memcpy(tmp_rates, policies[i].rates, sizeof(tmp_rates));
 			spin_unlock_bh(&wvif->tx_policy_cache.lock);
 			hif_set_tx_rate_retry_policy(wvif, i, tmp_rates);
-- 
2.17.1


