X-GM-THRID: 6669057124685840384
X-Received: by 2002:a6b:ec0d:: with SMTP id c13mr6458781ioh.23.1552760867051;
        Sat, 16 Mar 2019 11:27:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7a07:: with SMTP id h7ls4813477iom.5.gmail; Sat, 16 Mar
 2019 11:27:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw7vQLUlY9oTdSbyKdZqkWdpX6i7YDgxqQxSq0mlVRYdW/71eWLk08mbpPj+hKKnX7zztoV
X-Received: by 2002:a6b:251:: with SMTP id 78mr6377640ioc.39.1552760866163;
        Sat, 16 Mar 2019 11:27:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760866; cv=none;
        d=google.com; s=arc-20160816;
        b=iDhAxU2ObYdXwQ1Led9YfdD8vOOUXELkLU0R1jt1L8tCagZdn1Y4+xgZuM9cS/+vBI
         mFHvWBH838Ioxov+HY+FaXgtVyg70k+UeODkiwHOFNBAPtaLx8L2bZsmnY04m4sPaLnI
         I8IMgY9uDgnju4vyDjRrv3Zu35xu2CVwYqaxd1/1DfF8L4ljtqkFMi4M8tObQ4bOOIch
         tztOq3FrIxudH4/pCdn/WFlOTtHkNBvcgJLWH4Dz7n1pL3ZzMh7LZ9lEMpLKbfQXkZXQ
         HnNWdjNk3ctiWTpRKK8J8kGbIZOQYCHW9AOhq+EcweRHpyIAuOB9YWGWYkfGgDRu8Hdr
         J6Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=muJVNpHd9vctRqm0bOEEa//Afu2fZFAHmgZp4s7IVSI=;
        b=rtonMumJUmI1E/5ZwVcnwMMozWwPYYss5z8ELlwS9hHyvYgvRlnAcl/uxYRS+OGbn6
         pQRMIo0cCIB/mgPzIF0tmf91PcQEkBm29Rad/xPly3hBTCFhygvfc1Lw2FYqwc46iuAO
         xan5htIYHpQ7pWiNnOFtEYJEueRoiqB4povPQrvtStK56mbJ4ZZ4LEhrv7VasSbjP0ls
         dNkCd0pA///RnbuIVFvVgVxu1bIU5+aqlxfrzd/d/mI3HBj3YyfCKNhT+Sr7zQSx1sBN
         itzha4IceOSZ7EsQbRCfLjFypPBSp2EVq3Gxi8P27SMxpUoraYL7atBNGt/bKz2w1Sw3
         42hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AtizvvfD;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k26si217157ioh.5.2019.03.16.11.27.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AtizvvfD;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id i7so5409614pgq.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=muJVNpHd9vctRqm0bOEEa//Afu2fZFAHmgZp4s7IVSI=;
        b=AtizvvfD0PPafkPfI21MKUj1CjuH+RHhR9ug0P3UyvkgPAhQ8E0GScrWO5cE/D5+Oj
         xzhAgMpjSXpB79+C9g47onX4rc/OYGiBa8IMk9W6X6n/xUVxj215y8vb3Ngohy2bXyBD
         j1VwKHFvlAbiP9ooZDQ28nbCA1XHxUdcOBkFK1Uu8Ns/YUbvgHXMVio/pPR/sbQZszxe
         AHC5DXCipAIQAvMUUT6g13syguw2vS1h5EuFFYSjAoVLG0lNu2kh0gtyo1yHp6hehQLx
         3AA6QFxGxV90y/gbKRJraJloge56eLSjjbZtLWM98CB1Voe+WsbyGRbN1rnqaT2lt+lY
         ZLTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=muJVNpHd9vctRqm0bOEEa//Afu2fZFAHmgZp4s7IVSI=;
        b=Dgq+c30Ou1vopg0f9R5U4sLLfCkR3swvvHvW9HBo5fMuWD/uLxvTy0ZUvdOrABme1A
         /1ISTdI9Kq7oh+DQ+/FD7IvnCOzgkC9cef0z8R4fJS2hS2ezgCf+RxszeLPQTOzHZOcy
         FNt2EKqkgagsqlMGxHkALH+P7sKLv45wFB5yn6NB+LCjuoxBqkOtPivXWl0cTKmwNKmQ
         Bx3PhtQB9mUTyb4wLGn0LuTmR9QNsmnOd8pZQxgTeRVFBgQaVn/mkAJzYRZDDYHyQNPT
         E6HP2GLAYVVYzIK6rYJzcQJWt+thambxkPp494AD6VeuFQCsfSGPL7PMx5DHqjhms+6M
         pfOg==
X-Gm-Message-State: APjAAAUkGrtWwz9Gikka4X/mh81PJeI2b1Joexz8Xm4mHRrSlsLJE2Wq
	A49B/LmiZQaik6xL8SLH3Vc=
X-Received: by 2002:a17:902:8f81:: with SMTP id z1mr11121747plo.265.1552760865486;
        Sat, 16 Mar 2019 11:27:45 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:44 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 2/9] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723bs_recv.c
Date: Sat, 16 Mar 2019 23:15:36 +0530
Message-Id: <20190316174543.36254-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316174543.36254-1-himadri18.07@gmail.com>
References: <20190316174543.36254-1-himadri18.07@gmail.com>

Remove comparison to NULL in file rtl8723bs_recv.c. Suggested by
Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 26742960ed65..b269de52e535 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -170,7 +170,7 @@ static void rtl8723bs_c2h_packet_handler(struct adapter *padapter,
 	/* DBG_871X("+%s() length =%d\n", __func__, length); */
 
 	tmp = rtw_zmalloc(length);
-	if (tmp == NULL)
+	if (!tmp)
 		return;
 
 	memcpy(tmp, pbuf, length);
@@ -424,7 +424,7 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 
 	n = NR_RECVBUFF * sizeof(struct recv_buf) + 4;
 	precvpriv->pallocated_recv_buf = rtw_zmalloc(n);
-	if (precvpriv->pallocated_recv_buf == NULL) {
+	if (!precvpriv->pallocated_recv_buf) {
 		res = _FAIL;
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("alloc recv_buf fail!\n"));
 		goto exit;
@@ -439,7 +439,7 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 		if (res == _FAIL)
 			break;
 
-		if (precvbuf->pskb == NULL) {
+		if (!precvbuf->pskb) {
 			SIZE_PTR tmpaddr = 0;
 			SIZE_PTR alignment = 0;
 
@@ -453,7 +453,7 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 				skb_reserve(precvbuf->pskb, (RECVBUFF_ALIGN_SZ - alignment));
 			}
 
-			if (precvbuf->pskb == NULL) {
+			if (!precvbuf->pskb) {
 				DBG_871X("%s: alloc_skb fail!\n", __func__);
 			}
 		}
-- 
2.17.1


