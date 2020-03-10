X-GM-THRID: 6802585330019991552
X-Received: by 2002:ac8:6054:: with SMTP id k20mr18644185qtm.92.1583850348134;
        Tue, 10 Mar 2020 07:25:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4044:: with SMTP id j4ls934587qtl.7.gmail; Tue, 10 Mar
 2020 07:25:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt+4KDvJ6T6cVpWbkVhL0DddtdE5FN6qUCkffwwPvMDS/8ZnfZLKAURYgSOOkpMmA6ctnt4
X-Received: by 2002:aed:3fce:: with SMTP id w14mr20169551qth.0.1583850346809;
        Tue, 10 Mar 2020 07:25:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583850346; cv=none;
        d=google.com; s=arc-20160816;
        b=DoDoTRMG9QF2+PsGnlSAzwOPM0OrGWlI4EapcJp24YzhzsC65UxPg6l3LlsbNBtQAa
         xp3YBSakVQcLaM1YL0FaF/j/rSqNkRjbsin/7KyIw6LTSoMVzF5SuqQzbJ/nGVafhL37
         L6lL38un3OrXLvaZ+tNcOwIjzGogu4gI7LI9BqdimWxEOX61T67DP9/areKKkR6rhc4M
         luXBTgslitchcVmhdJ0xEPiFnFtIzlLOWouXJF4iPs4/34SxKhjjgDENcGl8hBvDxMwb
         g+j6C4G67f+tGDy+BhgaQFBI/PrB6WBkMnsB5RIkCkafqKVMtiwCNm8mDfVf0azsUoVp
         0M7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=RpLXjeAMQZHwZt0+3P7tgayx3dYOlfTtiBcrSKTuAfc=;
        b=EcY83tF6DdUIlD0GWL/KnobEW5lLXWBmbhirpXnXsgnvULOMJd9chy8WNBM3rF1c8w
         JXpLzF//L59XGf/AO0OT9Zis43b0ikdOpAn+P6W11RqrDp6/xu1raSJUeyU4eyb9tYIA
         6SJWcQsncvPhDwb8r5Dw11Ymxq/CLbdN0o8ACg/SAJJ7rH81FCCYHDoWOi3iXRhI70Gr
         +V9pDpzPofa6o0OnOpxc3dmrbHMdfO9qtLlvId3jOSrZ3X5t3qHj5edKvDaCpbcxJ62g
         7hsQHEXPf395EAy0t2HHpmeMbLvv9jqHBqg+c5lrLnLIKjBbAWPICr30vJvQKEE2dES4
         j+pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=SHWP7zKf;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w10si693342qtn.1.2020.03.10.07.25.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:25:45 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=SHWP7zKf;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x542.google.com with SMTP id u12so6365617pgb.10
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=RpLXjeAMQZHwZt0+3P7tgayx3dYOlfTtiBcrSKTuAfc=;
        b=SHWP7zKfVVsultGEEGbRxcJA+O/uDZYaFQuKcYR9KesmP2bJcaauvP1Rv/+QhXyVta
         tZRmKtQdJyP3I0FDUmPuAcpPPgKgNhNfZ8jAR8+zm/vCiHWx9VqOje6t48fCK15jKX+D
         w9q0c+z2KNuiQ5IjjYWnGwtBwqYn7v0egYiytRpa2dFU8jeJW9/hqfCmcB5yUx2UEIcR
         1dMKde3Ky86ryHR9nGpwsWgaWnn1KAN5lF6P1js/ZF3pRuswPqFxSNM6u/DeW3ygRuQv
         Ow6SKimY3AN4vVYrPbwrrNCh8IZSn3rFPgC1ha3JlcJaXha8e3ZYHy6GUsaRfFsYqS9K
         ghFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=RpLXjeAMQZHwZt0+3P7tgayx3dYOlfTtiBcrSKTuAfc=;
        b=nxM+XlbbWNR0G+RGYJteqMNvY2Ahf14bOE1nOz7Cbq6YT2MxUY/dHI+XGczDk5iSjt
         b76V1L1+Tm9tiuhTo315tkizmuoxurZed3We98/i6tYoztaWsVWle3aRGa3CLx2aphxX
         SbBGORoEF7f3FEuLuS9fnHRX7b7sDmiGexZ7A3WuUT28pyjqaSu61FLszNQr92T9TOeH
         XECBwiZAs94Ax1hMveC0J/P9TEc4YByBqWvD6Snwj0nKo6t6naBi2V7Oi2pcivDc3v7L
         lO2Wjce7wBjlN8uggEHBdd+m+hWzc7uwKkdqKDfWdCEGjJKvDyHvp/B6H7aKEaWRQJwN
         7NDQ==
X-Gm-Message-State: ANhLgQ1bFoP2EXl4qbjduqdI42hyYMm/1JBm0GN/ad4WwVxnPuiN0/m/
	DIU2eeynkb8xnXPrKf9E5rEIBQ==
X-Received: by 2002:a63:e14c:: with SMTP id h12mr19783502pgk.393.1583850344884;
        Tue, 10 Mar 2020 07:25:44 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id g19sm47864758pfh.134.2020.03.10.07.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:25:44 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	kgupta@es.iitr.ac.in
Subject: [PATCH 4/6] staging: wfx: data_tx.h: remove space after cast
Date: Tue, 10 Mar 2020 19:55:07 +0530
Message-Id: <20200310142509.25632-5-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>

remove extra space after a cast in file data_tx.h

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/wfx/data_tx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/data_tx.h b/drivers/staging/wfx/data_tx.h
index 04b2147101b6..c545dd75449b 100644
--- a/drivers/staging/wfx/data_tx.h
+++ b/drivers/staging/wfx/data_tx.h
@@ -61,7 +61,7 @@ static inline struct wfx_tx_priv *wfx_skb_tx_priv(struct sk_buff *skb)
 static inline struct hif_req_tx *wfx_skb_txreq(struct sk_buff *skb)
 {
 	struct hif_msg *hif = (struct hif_msg *)skb->data;
-	struct hif_req_tx *req = (struct hif_req_tx *) hif->body;
+	struct hif_req_tx *req = (struct hif_req_tx *)hif->body;
 
 	return req;
 }
-- 
2.17.1


