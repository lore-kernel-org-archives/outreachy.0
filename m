X-GM-THRID: 6805874038364176384
X-Received: by 2002:adf:b35d:: with SMTP id k29mr3597002wrd.239.1584616050166;
        Thu, 19 Mar 2020 04:07:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:2250:: with SMTP id a16ls914445wmm.3.canary-gmail;
 Thu, 19 Mar 2020 04:07:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt5rSQrwlHXY+n8p/lG2nKpD+/gHUW1ma7e8wz8AissPjlRj02uDf9NIy0Rs+TDPkG8uda7
X-Received: by 2002:a05:600c:148:: with SMTP id w8mr3127184wmm.146.1584616048914;
        Thu, 19 Mar 2020 04:07:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616048; cv=none;
        d=google.com; s=arc-20160816;
        b=qwANz1xKLrkpBHVoMp0WEmz/ui1/9r8XfOc6zOlFfzOlcF/6tbJz3zU/pyFWd6WHZ/
         GW5ot8bHmbkvDDGE2jxHas7GPUGHMhBeK9WPg0p86Qh2yUY2CEamNwVaKEZ61WbItMu3
         LcFpC4jggwuwjjopTf1O6gaGVhdxOmBVm6MrrXHdpdE2E8GxH5pngyJtkk/1Pq/QYGKZ
         JVLVOVrhPMzV1BtI9ZGwoW5Hf6TCgIQ5IkfVe0599C43WaPxibh3/eDQ0U/1VL6LeFAQ
         gqEcYZI67Y/Do1vrZ0M6oN97YxvG//MYUjncmcM+TVHhC+WcBNC+t90a/zQ6owcTSP66
         TnMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=DPIuVWtLCVttu8P2k/R/2yTieUC3wCSxUM7HlX2vxPI=;
        b=uVlc4hSuCNkIR8aHvWeD7BufrkZF6oHNe8N/mZPQgWufhZoiBqENuWaaf/xposnksU
         fPOimGWSHkwnuN9um7OGGCcUQjnE96d41329eP0FNXnO9dY5gL78UVAyjLHmlcQX2v1D
         A1Ixr6M0lcJHSw6jj3wDLTTLZ0WNrc8X+KQN7p5/FRv+qA+5nzQKscriI0afUYE+ZCre
         AlfkLTscLnL1gwc1UA8wowspbn8SCfAH540HDf9KPHYp0KsACP3F1xiq2J9uevu8wQCV
         BUuHJVwFaJwzHHTykMMKWf78iBE9iaPam7ylBhdUQFpN/1F+s8SmWTdmeGZpQ8OYa5Re
         du2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id v12si11246wrp.5.2020.03.19.04.07.28
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27739 invoked from network); 19 Mar 2020 11:07:27 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:27 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 04/10] staging: rtl8723bs: hal: Correct a typo and long line of a comment
Date: Thu, 19 Mar 2020 16:36:47 +0530
Message-Id: <14c5b79f33f6532f2a8c91bc5cfa8e52b9053980.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
References: <cover.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a long line comment to respect 80 character line limit.
Correct a typo in the same comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
index c24156873fed..aefba05c8cd4 100644
--- a/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
+++ b/drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c
@@ -118,7 +118,10 @@ u8 HalPwrSeqCmdParsing(
 						&GET_PWR_CFG_MASK(PwrCfgCmd)
 					);
 
-					/*  Write the value back to sytem register */
+					/*
+					 * Write the value back to system
+					 * register
+					 */
 					rtw_write8(padapter, offset, value);
 				}
 				break;
-- 
2.20.1


