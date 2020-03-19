X-GM-THRID: 6805874038364176384
X-Received: by 2002:a7b:c4cd:: with SMTP id g13mr3216620wmk.151.1584616054526;
        Thu, 19 Mar 2020 04:07:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls958782wme.3.gmail; Thu, 19 Mar
 2020 04:07:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtakKw8BjUL2kVcfnBGZXq7yav+72htDsQFuCxGO/50PtGYxDMwcdqWWb7RKCURNsidN2RX
X-Received: by 2002:a1c:3105:: with SMTP id x5mr3193045wmx.51.1584616053451;
        Thu, 19 Mar 2020 04:07:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616053; cv=none;
        d=google.com; s=arc-20160816;
        b=bCiwsZyZ1vDlkcEDDdrqeJiSw+671zfSuwAC6paz9pPObwPDRoXU1LtMB+I21wizkA
         1z3GW3lqFc8PqVMc9tCd2nCdSEcbBKoeYRXm/RcUZJ/DIrh+KKbXusXQAdV2M2ONApzH
         hmCzR9DAgl+Y9NpNbyh4JlLzOM/PsQpPja+oGrkE+DlL+RT3oNPQ3toCK7VBW1InJGWT
         2Eq5I6Qgb0L5s6cCkxOJeku6Kptii8VpO6M+g2jvaoAJfzJc5bhXj3W+BeWM2U1rXK4e
         BlUJ1YlczfrHa0fiV1/ehZwTX8AGnBmCduz11U6csxUGc6WNEFQdSJGeb1NnQbPI0/n3
         kjcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=IU1MqKueu37YJY1uR7iTpiXIiNuHta2pgBbDC/hEfyc=;
        b=eCRqUdE3yVUH2v7qKgyopzN3mx5LPCU98Kw/B+6vK492cb+IRdfvYBCyBKRVMS0n2L
         c6U0iEhVM1qeuhpSMf2PwhI08NlPRrfnEXZwOBWOQinltAdXUUQ52lqEH1WR1EckYDOr
         d0sNjYOiDmHpAp9uR6R+SsGYjZ7u4WpXydt5SBfkmsLBD7SKd0Nf+KTxsWjtdnHNmnCN
         bQXBsOclXVpBNM116zccPUPaGrQb/x9nEqKxxWns3NXJKb6nTS/ZNAMCeEQ9RGnEcWi1
         ta76riuXkNhRddGzxgceE/U2U53Qv726M2CuWiGpezJ2uigo/oqgyBwtgfDHzLVuXFAS
         NfIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id e12si69409wru.1.2020.03.19.04.07.33
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27753 invoked from network); 19 Mar 2020 11:07:32 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:32 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 05/10] staging: rtl8723bs: hal: Correct a typo and long line of a comment
Date: Thu, 19 Mar 2020 16:36:48 +0530
Message-Id: <11cde6ad8b94e32ab17200b4a889f5c2d3d63699.1584514678.git.vkor@vkten.in>
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
 drivers/staging/rtl8723bs/hal/hal_intf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 7d8f21f32fb9..8aebb8bc11c4 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -365,7 +365,8 @@ void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
 {
 	if (adapter_to_pwrctl(padapter)->bFwCurrentInPSMode == true) {
 		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
-			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this fuction caller is in interrupt context */
+			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter);
+			/* this function caller is in interrupt context */
 	}
 }
 
-- 
2.20.1


