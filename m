X-GM-THRID: 6669239463558774784
X-Received: by 2002:a0c:8ab1:: with SMTP id 46mr4893364qvv.59.1552803323443;
        Sat, 16 Mar 2019 23:15:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls5333847qvc.2.gmail; Sat, 16 Mar
 2019 23:15:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZwrb6SzTwfHnLQpwtN5dJGVakA8+gg0W2GBxcBi6e9bHHhAYNdbO0rKXBTyDrcssItMEi
X-Received: by 2002:a0c:b4a3:: with SMTP id c35mr6408808qve.31.1552803322808;
        Sat, 16 Mar 2019 23:15:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803322; cv=none;
        d=google.com; s=arc-20160816;
        b=D+cEGjJ7xg/+/6ro7Ij7THw2yM1apU3tBpn0wDl0FEQUjL7uaY4ykWsXBUvaJBlHX0
         BIuRMsR9/7X61PnfpB+plS/H9hVRtqHVFvzsFLBSYGq8JPxwRFBERHottjFlx2xF3Aae
         fF/DIV35Zd7qcsYVlJ58soN9gZukGiPl9L9/L+ws3h9jOyOnTtDMyUkrK7AgOx75dxZs
         s87tirYB/O6Ba/32ruJf5mf9cIjioOsejBw6LsliGixgX65mlRY/JR/Z13c+JHwiRIil
         VfnDOaSsm5kwAfMix8Sas74tzt/xh0XhBw3z763ek/Krm254jjvKWtVqxVJH0BsiYblP
         Nq9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=muJVNpHd9vctRqm0bOEEa//Afu2fZFAHmgZp4s7IVSI=;
        b=aJFdzIE63A86bdIrAKH0AJaO8dAakz7yeng+EcXdJJBnWF18+AYex5dWr0jH4asGrl
         L/Xxz3IEpPiv9CenbjIcNuutl1OuIlTVp1yRi0ilvP1q+q2Ox9rOD4H+JOe7MuayFsT+
         Aey5wvCdJOy/ylpNit9MzsURGOCvuuqC6PrOY29M4NxdlZkA7YuR0e7t6781u1K3gWKu
         rMhuPAtt6BA5RkdT79+u5qI5sdOAT5dNF6SAbbr/SWB8or57raw3uM2F8a02+JPW4nI3
         rzVzw75MQ44y8DvM19RvI75zCnC1Uce67VQw8K+RoiVtjt5pIy6SXRBMDjOGRoqlqX/+
         C3Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vZ6ykdeU;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id m1si377541qtc.2.2019.03.16.23.15.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vZ6ykdeU;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc41.google.com with SMTP id a199so10532353ywa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=muJVNpHd9vctRqm0bOEEa//Afu2fZFAHmgZp4s7IVSI=;
        b=vZ6ykdeUkhl2N4ouVmtIyB4zRQqvTBLDmTMBxywaOX3gTrzqAr2JlqzAIYJkWgmXkh
         qfiWloiShXN7akee5MZU2FH8r/AJoCepA/BWkhgWI9PmxCcQaZUmZjrS+vrxk82sO6h7
         Ha7W3PedMF/PRuCV/jKFSvGMTYB899He1o9kGIvB8YrNRrfj1aTTuHGNEcR/xpkuvde9
         wOmObBNJcVggIQI4caa9UeYxanGJOtY1DtPF4ce6Ew7bUHwEqny0TL5yN65mfrhaQzc2
         sQXv8VLwJXMjDlPZ0TvjMACYojzqYTh9RB1dF24DSeqBSfkij4HcKPFRLCj3lAXH6BKZ
         HbiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=muJVNpHd9vctRqm0bOEEa//Afu2fZFAHmgZp4s7IVSI=;
        b=UH8UEewpjw2d1602iwNlOWa1AThA30m2DHN8nhVw6B118OkZCf+ITXS/IlIskJgl1L
         w4YBSqg9/TuHYG2wRuxSRfUcZfcc4/isSELcFdNfaI7q+p86zIo5F51AORO7Ay1ijQ0B
         DIELUZ6IEwtj7I2XejlgqaATtVE80NBXDUXufFjUx4OY1kDmO2HhB+5H4WQJ9SdwUbw6
         298OjL/D0boO95eDILKUQ1APv2T+ShsSYGjQeZlAlqjFkv9+DXnNlxsg0MPInTQhyP5Z
         bb5fqH5fgzKzZYQHBBIdFXytOFmJXl8/pjwO2pCxvuQYoobxHWLINkeVt7qLDh8bPHN8
         P7sg==
X-Gm-Message-State: APjAAAVmqJUeH3BnUo1/hnVliUJdCdmT8AfqaWN2yoZDdNsYWlezM36X
	tKuqtZrdtjdcOWbdJStIraY=
X-Received: by 2002:a81:360e:: with SMTP id d14mr9266815ywa.489.1552803321103;
        Sat, 16 Mar 2019 23:15:21 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:20 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 02/11] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723bs_recv.c
Date: Sun, 17 Mar 2019 11:44:52 +0530
Message-Id: <20190317061501.85447-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

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


