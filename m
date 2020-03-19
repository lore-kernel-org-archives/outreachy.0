X-GM-THRID: 6805867897863274496
X-Received: by 2002:a50:9e82:: with SMTP id a2mr1968585edf.155.1584614634339;
        Thu, 19 Mar 2020 03:43:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:344d:: with SMTP id d13ls851018ejb.8.gmail; Thu, 19
 Mar 2020 03:43:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuYhq3gxzF4EXG5mpwB1klqkFAjjeltEqOHV6CKlqLMC2/ONfoHv9E7v4F9rcVntDPahlwi
X-Received: by 2002:a17:906:400d:: with SMTP id v13mr2566558ejj.107.1584614633186;
        Thu, 19 Mar 2020 03:43:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584614633; cv=none;
        d=google.com; s=arc-20160816;
        b=CKSmTcfycF7XNfXVuCRC+vtz7eZKGxU8LY03GLBY8Cs77GIgZ/R5d9BO4kUV2EzVNI
         Kac+xaE+dqmXLdMB3ozgexeqwmF6PbA2OGBSun2xtSYr/Bw05+7h5Z+hbCpqzAmfQdbY
         1UE76mcC9baJe9nhoC6HCnI5rfzicnjaFyb9CdqC5Hihjutna/+cKvhsH9f8XVDgXmhA
         INZE4zWlSkraooM5DUKVM6wJFbg21if+HLKt8V4RKaJOl6/2nVQWcRWlnNWyp+8yUvhh
         8CAgTS0vjp1kdzqwqyBSocWwPpBvYDYn1bWOYkcuSMhua0uizItzPOwxOAoRSLY20RY9
         TJNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rOiHq9ELC6RwvySJFUNUumF4yVRU1iZpFlgUavE9O7g=;
        b=irR5dKqgTt+kuZ0vKNvINt1isphLNkvj93C1UqcGH6rApQJNNym5tG+Unocrti2Tfz
         0Ktw5JID3hMwTTfPvkLhWVXTFQ5yuGMFBq7ItqiXAmhP/ca8/i0GNxFl6lZvTveGLhrf
         jCmVxu0iCc7zJPoJjvBh5+IH/MPr7Bc266LbI5Klvt74xcKHV2WslJXnJRySYZuae0ic
         S1LZSm0mc+NkCwPAKVV0VSbsEhvoo2QGg1XJd1fGjCy7S5mQR+vqR5nzTEHpJhBlinMW
         Znuui4JaMVCCG8XE9PyqfUZp3cv1Qc7n2KL7Vz7UgAnky+/x91wNyEbRlPOOq5tlcMty
         8Hlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id dc25si70718ejb.1.2020.03.19.03.43.53
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:43:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27280 invoked from network); 19 Mar 2020 10:43:52 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:43:52 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 6/7] staging: rtl8723bs: core: Correct a typo in comment
Date: Thu, 19 Mar 2020 16:12:56 +0530
Message-Id: <09856cc4ee8ac6d484bf66e006c18ffed7980873.1584519269.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584519269.git.vkor@vkten.in>
References: <cover.1584519269.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a typo in comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove word "Fix" from subject line
 - Change "C comments" to "comments" in subject line
 - Change "C comments" to "comments" in body
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 49807d865e32..110338dbe372 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1503,7 +1503,7 @@ void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, stru
 
 		switch (pIE->ElementID) {
 		case _VENDOR_SPECIFIC_IE_:
-			/* to update WMM paramter set while receiving beacon */
+			/* to update WMM parameter set while receiving beacon */
 			if (!memcmp(pIE->data, WMM_PARA_OUI, 6) && pIE->Length == WLAN_WMM_LEN)	/* WMM */
 				if (WMM_param_handler(padapter, pIE))
 					report_wmm_edca_update(padapter);
-- 
2.20.1


