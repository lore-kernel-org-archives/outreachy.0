X-GM-THRID: 6805867897863274496
X-Received: by 2002:a19:be03:: with SMTP id o3mr1758357lff.84.1584614624436;
        Thu, 19 Mar 2020 03:43:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:96d9:: with SMTP id d25ls416356ljj.11.gmail; Thu, 19 Mar
 2020 03:43:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu7ci9bKz8i2qbYBCHaSRB0jYRFxPCjWk6Ci3qLynHBk8rHtBjDrZfxBkV31th/8WzHfs6+
X-Received: by 2002:a2e:98c6:: with SMTP id s6mr1745869ljj.260.1584614622809;
        Thu, 19 Mar 2020 03:43:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584614622; cv=none;
        d=google.com; s=arc-20160816;
        b=d7sBOwLBOVMppeZk31EXHpJSgYtz4rfYVEaDtLMb3xwP3ri3wKupEVE3fYsvkVKW/0
         Vfz+VIsldtmPqFBZ2hHSgxOW3k2+lRZVdMB57o10AdjQ4PEHkxQoRNcAYTakmnfhcLv8
         z/frmDwln8QXR9/PqzNe2YIgJrOXXLxDrGwZ89w1qbQQfHpUZn1iVgJLhh3EOFuvbk0Z
         wVg69ivPcKWl7/dWhunxSm4NvniVCR/MNG1jxvSkxj3+O/XX1Qe/koy6FsPpmQkV/F0u
         0pJgffH4iV/I34xrMEzgjV4CA5xMX9vCVGcQ7DC9m30OAaEYHExtqHQiV1oVHCRyXTQf
         xrdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Vr2/qx16W61hXzC12MqvKelDCXfoQJnRW7yAHpS3EMA=;
        b=ShH2+4fZe4qP91tsKpFAOwBq94Qljw/x8m1yPzcquMKc+rheGiNHumYDykFrddPKl7
         e5uVvUZwUdyJyv4umNp8Ydkwf4+oChP970PUlzYG/IAlKA7moDKYg4iYQkFslrYL6xh9
         qMhnLTEwqwCG1w/dl3sCHb4skynyxHkTNm5cj2vU+mkZAyBdHcUhgHXYx72Os30aXXVe
         269H7lmeByu92il4f8/grtJfoWf/kwzRlETP69TILSkPDBfZRx++ff1d/ZjH8HcYTlzG
         JLIHkVKth3mvbXCTdTs70+yHt952BfHRhfrJHjkdXGKCMLpKpG7XxNItzuAotoS1AutI
         lPyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id v191si61735lfa.4.2020.03.19.03.43.42
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:43:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27256 invoked from network); 19 Mar 2020 10:43:41 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:43:41 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 4/7] staging: rtl8723bs: core: Correct a typo in comment
Date: Thu, 19 Mar 2020 16:12:54 +0530
Message-Id: <e80b4f51ae069def3c9ca65268f791d58322c4ee.1584519269.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584519269.git.vkor@vkten.in>
References: <cover.1584519269.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a typo in C comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove word "Fix" from subject line
 - Change "C comments" to "comments" in subject line
 - Change "C comments" to "comments" in body
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 30137f0bd984..8d2b4570622c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1193,7 +1193,7 @@ inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
 /*
 * rtw_pwr_wakeup - Wake the NIC up from: 1)IPS. 2)USB autosuspend
 * @adapter: pointer to struct adapter structure
-* @ips_deffer_ms: the ms wiil prevent from falling into IPS after wakeup
+* @ips_deffer_ms: the ms will prevent from falling into IPS after wakeup
 * Return _SUCCESS or _FAIL
 */
 
-- 
2.20.1


