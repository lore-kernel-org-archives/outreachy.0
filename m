X-GM-THRID: 6805867897863274496
X-Received: by 2002:a2e:920f:: with SMTP id k15mr1885002ljg.178.1584615430941;
        Thu, 19 Mar 2020 03:57:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls330113lfe.4.gmail; Thu, 19
 Mar 2020 03:57:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsISBzJL9LEEqgQ514q/ClrZFvaYDt61oaY+ZHhHyy6pY5SWCLlW+ONtdXN1fxcJ8/v3Jtw
X-Received: by 2002:ac2:51a3:: with SMTP id f3mr1815709lfk.170.1584615429691;
        Thu, 19 Mar 2020 03:57:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584615429; cv=none;
        d=google.com; s=arc-20160816;
        b=IYS/vTIJldaa6rrNUzcA8XhayELW/ttBbY25UKsXelZ15CqmVWaBdFjNKaa4rhjKCG
         NGb/0MappkGsqTxz6jEcqR8RUGkTLfazPXolfjuOTvAiiepfW1MbP4IjJW5qGPMMb59W
         cOtnSX2ecofT88wGpf9XQWMQbVsHvJbsvtv6pX8YA/nE88MzCT1XqHPBIFcp48GSCIYU
         UXn1t2ljqM7Kurc+OqrnIQKjWF64plYH+rg6N6t2Wnvo3h3hhWvYtvKsk5ueQ4NZK/IQ
         vMok1B4c0sDlYPT7S4Q404kSQDCtEID9HFDoBsZylOX6JcL51XZxCOjnH4SQ1Gqeum73
         Q2lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=6SiNlJIZRAgPXP90c6gLS/pEJ0XYew7FEV/CWEE3eQo=;
        b=srQKYEMQy/QsY0fl36QBExm245hV6PSsj5g7jcJ92qR8l2lieM2AElqid595ZjpC6i
         m8Wbtjp/4HJqTgWLQ/LxjfrSf3CkqUSlc44a/gG4ZW2unZ6xoa47HubxL4fVXSLwe3hO
         c8xOqjIk+D6OirnLhh/igZvKM4+zy6AX3NGhciBOHShuy9quGt6ORMjkaImEzCb4CDP3
         nWDihoWkcWdlkN4oGVEdkYu0aXWUk4otiSyAo4qk5mkBePyyQgFYGaEhT11bt1YoSsTY
         fXwH4iYq0r6KPUfchIQdPYxnnu0g4zfv9HU3O6CBMuBVrN6VSBs6Ppi9jn2dhleuXe/e
         X49g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id m11si78732ljj.2.2020.03.19.03.57.09
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:57:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27501 invoked from network); 19 Mar 2020 10:57:08 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:57:08 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 4/4] staging: rtl8723bs: os_dep: Correct typo in comment
Date: Thu, 19 Mar 2020 16:26:41 +0530
Message-Id: <580891abf87d5fd0f24bab225bc5b5d2981104ca.1584517384.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584517384.git.vkor@vkten.in>
References: <cover.1584517384.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove word "Fix" from subject line
 - Change "C comments" to "comments" in subject line
 - Change "C comments" to "comments" in body
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 22059bbbed9d..a6491f163272 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -101,7 +101,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 	struct mlme_priv*pmlmepriv = &padapter->mlmepriv;
 	int ret;
 
-	/* Indicat the packets to upper layer */
+	/* Indicate the packets to upper layer */
 	if (pkt) {
 		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
 			_pkt *pskb2 = NULL;
-- 
2.20.1


