X-GM-THRID: 6805874038364176384
X-Received: by 2002:a50:e0ce:: with SMTP id j14mr2221775edl.236.1584616036172;
        Thu, 19 Mar 2020 04:07:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3715:: with SMTP id d21ls887258ejc.5.gmail; Thu, 19
 Mar 2020 04:07:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtr5BKOqwhaL35bcp/fVefvdJnhZAhiuWEs4ffYCrHu9T3YZpF3WdBU7mpDPJc5Id1ddLL1
X-Received: by 2002:a17:906:3047:: with SMTP id d7mr2620486ejd.141.1584616034859;
        Thu, 19 Mar 2020 04:07:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616034; cv=none;
        d=google.com; s=arc-20160816;
        b=TxWgjF0U2rclR840E7GkHjoY+RCZ47Cq4yIMPE99RVY2/FOpjkMtIZK/GkLIauBxgN
         UpkR7WFY31iMg5lVtqz9cRulNnAlHQRefyuytJdzxvZteSbJVRLtM96CutTJVbaZwGht
         gwYGGtjSENpsT/Nl4LhJyl3eZO+OIIfVsiDL0HNAm5n1hSZ8PceBbprZkiP4TlM08ZER
         N0Z2HOAXn8dwqOLlMkB3tY6Tm2wRtqSupu7X4337QEgyCm2AGEoAv/JR7ot0Nd+lVMK/
         xMERnjXF/Cr0qrxDV4rhtSPFckwu0s62sBgZHXOFh+aFP5pKjEoz/sAvWE9q9jeyVmmA
         asRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=nnu0Bt3HgL9BmblrC2TCRWAFsFvnJJcIE6Dro8ZUsfQ=;
        b=t5QY8d/lhItXl0msVjpxFVKTW2foDUifWygr0oTDe5GzlcJDREMKxc1a+vGvxJaJni
         Io6NfpcYFan9P0KiC2vMsZOt7NfKFDjwxmpdLr58tAFgChy8JvgOMHFVfLOIyHy4nkgK
         vT1av1kw0ZILrQMuIGU05t80eBj/gECpb385u08hTm8jJ+ToQZbzMTwe+UTPC7GSTKwp
         3X7L6SyyZhhAe8v5pqUl/7gb+yiHgOJJNlyKFjUqyVn9j+dIpYiLid7+7E0SxlkVgcmA
         j5MUIy+5cvOYj5Llww1EDKQXyi1+EGAmTJlv26nfmz7QBw6qSPEuj4f21QM8qACfsle1
         qSng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id k9si68212eds.1.2020.03.19.04.07.14
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27691 invoked from network); 19 Mar 2020 11:07:13 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:13 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 01/10] staging: rtl8723bs: hal: Correct a typo in a comment
Date: Thu, 19 Mar 2020 16:36:44 +0530
Message-Id: <c56073275d70ee0d18f029613cc7ff46c96e5885.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
References: <cover.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a single typo in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index dd349c506da8..c60e8c58d9cc 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -1807,7 +1807,7 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 		result = 0;
 		WaitCount = 0;
 	} else {
-		/* accquire the BT TRx retry count from BT_Info byte2 */
+		/* acquire the BT TRx retry count from BT_Info byte2 */
 		retryCount = pCoexSta->btRetryCnt;
 		btInfoExt = pCoexSta->btInfoExt;
 		/* BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], retryCount = %d\n", retryCount)); */
-- 
2.20.1


