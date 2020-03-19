X-GM-THRID: 6805874038364176384
X-Received: by 2002:a17:906:55d1:: with SMTP id z17mr2743938ejp.242.1584616078634;
        Thu, 19 Mar 2020 04:07:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:f102:: with SMTP id gv2ls909751ejb.0.gmail; Thu, 19
 Mar 2020 04:07:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsuNLG2mJnMWyXiPtCSh+ixfRoKCvgsTjtlrmybMFHdLtA3zqdrEPJElr9nhbSBS7fy6cBN
X-Received: by 2002:a17:906:6a8d:: with SMTP id p13mr2663874ejr.196.1584616077379;
        Thu, 19 Mar 2020 04:07:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616077; cv=none;
        d=google.com; s=arc-20160816;
        b=RpQdnM3KpJpuE0umukXFZSjU8e/mzcQoMxG+tNRUr0qEluvvQXlx/EvFLM+XQp+pHN
         pC0+kExtrvlmffc1LExGVPZ3GrYsTXBxxNYSD3+cQmBEyAhdgYScr5q/4WP8h8M9KngW
         OUwbF0yy+qiJLfWv5Yq+7vn+TNtcDHWtTNZ0VxILeV2n2VAndGCrn8jMhddMAMp3avsM
         bc3RI+5VJ4S3lz6wZcdiU9GNDzoCwLAHC1ilHyz0XOfVnHbHNFaH31PW/4lZ1rEbuUEK
         HM6JjCg7C+fkYjZq6kmqTvP44emOOe4H0yQMh4VohDZWgBT9LWP4Sy/XI+dz9iPbTHC6
         sq2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=WoqRKCeEfVY3IXQkT1DYUjdQDZ8Q75o2GxjMrxz17tw=;
        b=ByRYEG+CqmftncWFqnS5oN5NKsWL+z4bJ5dU9GV3cqgvOshX4Q6JZTHNaWbpSE2KPm
         IeiokXvEeq77YM+P7UekkfFwTMYov/TL8c3Mq9+jAjlwvHtS9PWMeITzqUd8O13EBDRw
         Wze4uTcK1eNUX0qyQ/8B6zJtkysgvCZxvkVcVy5PsdYqmnnytYIDQjBHdBqqqJ+WzcQF
         XLZmCjMnqqsvWO2dqt6USyTtCSxw7ynaTUfxuprC1tHUf5g5CLHqSg4WnOQ3LDfOnXbW
         R0UIsJcv+XMuvPRf/9qW/03PLSQ6QgOLLhkZblOvqmgM9oxixKLYNcWy9hZfsvF8Wwdo
         MhhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id k9si68261eds.1.2020.03.19.04.07.57
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27829 invoked from network); 19 Mar 2020 11:07:56 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:56 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 10/10] staging: rtl8723bs: hal: Correct a typo in a comment
Date: Thu, 19 Mar 2020 16:36:53 +0530
Message-Id: <10611db3d4af017cd3a7d80ef2fc6f498797eaf2.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
References: <cover.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a single typo in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 4894f7d9a1d4..7853af53051d 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -235,7 +235,7 @@ static void _InitQueueReservedPage(struct adapter *padapter)
 	if (pHalData->OutEpQueueSel & TX_SELE_LQ)
 		numLQ = bWiFiConfig ? WMM_NORMAL_PAGE_NUM_LPQ_8723B : NORMAL_PAGE_NUM_LPQ_8723B;
 
-	/*  NOTE: This step shall be proceed before writting REG_RQPN. */
+	/*  NOTE: This step shall be proceed before writing REG_RQPN. */
 	if (pHalData->OutEpQueueSel & TX_SELE_NQ)
 		numNQ = bWiFiConfig ? WMM_NORMAL_PAGE_NUM_NPQ_8723B : NORMAL_PAGE_NUM_NPQ_8723B;
 
-- 
2.20.1


