X-GM-THRID: 6671816179609239552
X-Received: by 2002:ac8:1be6:: with SMTP id m35mr14941704qtk.258.1553403271785;
        Sat, 23 Mar 2019 21:54:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:227a:: with SMTP id o55ls1423549qtc.8.gmail; Sat, 23 Mar
 2019 21:54:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUXIZ7hESTO5n7n12hVlqbbgTl1ue1iRe3U9C66lLcwS0LSSqMWdLclEfRGQFZwCVHtW08
X-Received: by 2002:ac8:294c:: with SMTP id z12mr881546qtz.79.1553403271192;
        Sat, 23 Mar 2019 21:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553403271; cv=none;
        d=google.com; s=arc-20160816;
        b=DzCZ68qA03L6QI+63gUAsvlLF60+NEBF6XxETs+TDw8MBtFxjttFnFk9v5xTSZOkqP
         uTclrdTSwklhRUU4x0L9CsXfquJW4qAGaUin/zwJWIriiBF9Hsw1ff5CJLj6n2f5E07S
         INPC5MThFeLIPABFOP7qqoOF09kcoLySH4sQInjFqiT4/4bUpBmdX4myYoLLctkQhLJB
         yYvbsDBx16OcT+SBvKMTcyfEanAZqnd7/CbRm2i/ovUXKMZxRsvIOeDy5AoF1lL29AV9
         x+Kq7f2FCLg/bIegWUwPTqUKRXieBxVtDLl36RuVNCoRf6Bx/MQg46WQAjn8i+h/+16/
         vFgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=sppFRKwBcbMaBvAH9Aa9822jQ9QvONk3N/7NfNZZxw4=;
        b=wTTCqSArFkEMfHlELG4mVLqj+c5D5tBF4HmoBzDcyDFX2M3z1gmHaHR1zMuQazZryN
         JTmwTG0RHnzrgRSW6SLLVQJrXV3IKAm/xRSRAU4WqtpVMOhJ3VOzPYFysx/DKwqLQamG
         2MoIE6kLfsDvIG5XSKHEjH/Ad/VqaVGNZ/fzTxLy/8F7n8z53AZjQqXxuVScsNyJCzV7
         mbDJK9B6/RpSTnALcsTRj6KmH6XjQjHsrorJ9tImLCe30DBqspnCf1+jBSdVCoyz2Gun
         Xo4CDGW8bWtHWgTOrWQOqTcwUX6u82oRsvstmL2YvuY0H1iskbTlgxKN81vhUe1pgIeM
         jGng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="l3yB/2AL";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id h186si1027686qkc.1.2019.03.23.21.54.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 21:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="l3yB/2AL";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id l11so4167505pgq.10
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 21:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=sppFRKwBcbMaBvAH9Aa9822jQ9QvONk3N/7NfNZZxw4=;
        b=l3yB/2ALOOwAH0oCQWurKfzbj37Oa3LR8B/OkRQhCH4qm5eESo9A3dJ6xZRiHDnsg9
         7f2bnX7Ogn9yipMnFMmWv7n2EjJrStCH2ymymBXJ/L3x8m7DEV1z1vAHCGITwLvdY/jl
         Ykjj3TfcEgFTcOp9PDpAP9yQz5g4hOjc/CUb9SXeOktnSIeJbsZyvxrfzhtGak7trUAZ
         WKj2TVmlfFrhC2YcOTTQGFcdPHD45ioy/5z+LtEIl5OBYE8Duz0jcLNRb/9wWP2PqazI
         yTa68wElRokvjERwiFokf2JxIyrPyHKP71D6IseR8IiCo1lVJw/yuJ/nSwlDy2K7fmfJ
         Rn2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=sppFRKwBcbMaBvAH9Aa9822jQ9QvONk3N/7NfNZZxw4=;
        b=FYnTvUYCDjOvlcjni8/TA+tmrCBpu2FgjAAqQBouXEt6FOSYmQWj+Zk49riCGziAK+
         c9tdptXfk7V/55T4nsaCZzFKCdt/dfahSviTpo/TJ3dpg/TL/pSZW2DjWAxJuI+mZRkM
         3iMUEoPCqJBdih50V7AtxTshsTZH8QCCWf1Ru8+2aRSE+6R7ppqTUPqTEsZqtQfHs6VQ
         kUMhNpbXQhSnnJNplpsjSq+BmtklSbVUcrJ1Moh304qPqe6C3sRo3oNupffzkKHzLoAD
         KMkhV+33su2NJpq32bPl9SOnTG5qFntFRcXKiaaJKcnETssWw2+ceoubhIDjQXuVyh0k
         A9cw==
X-Gm-Message-State: APjAAAXCMLQEdWlJMUtZu73v7wy2G4NShF1DufYG+0qlseL4Eg57/lJY
	t3SO0Ag7iaCkCr7Zo6azb+9B/lBb
X-Received: by 2002:a63:614c:: with SMTP id v73mr17199540pgb.395.1553403270977;
        Sat, 23 Mar 2019 21:54:30 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.202.114])
        by smtp.gmail.com with ESMTPSA id b15sm34275913pfj.167.2019.03.23.21.54.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 21:54:30 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: 
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: rtl8712: avoid camelcase variable name 'backupTKIPCountermeasure'
Date: Sun, 24 Mar 2019 10:23:51 +0530
Message-Id: <78d3539092434900b454aaa676e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
References: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553403095.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase variable names to fix the style issue – ‘avoid
camelcase’.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/mlme_linux.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index 2463344..6323061 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -88,7 +88,7 @@ static struct RT_PMKID_LIST   backup_PMKID_List[NUM_PMKID_CACHE];
 void r8712_os_indicate_disconnect(struct _adapter *adapter)
 {
 	u8 backup_PMKID_index = 0;
-	u8 backupTKIPCountermeasure = 0x00;
+	u8 backup_TKIP_count_measure = 0x00;
 
 	r8712_indicate_wx_disassoc_event(adapter);
 	netif_carrier_off(adapter->pnetdev);
@@ -103,7 +103,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 		       &adapter->securitypriv.PMKIDList[0],
 		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		backup_PMKID_index = adapter->securitypriv.PMKIDIndex;
-		backupTKIPCountermeasure =
+		backup_TKIP_count_measure =
 			adapter->securitypriv.btkip_countermeasure;
 		memset((unsigned char *)&adapter->securitypriv, 0,
 		       sizeof(struct security_priv));
@@ -117,7 +117,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		adapter->securitypriv.PMKIDIndex = backup_PMKID_index;
 		adapter->securitypriv.btkip_countermeasure =
-					 backupTKIPCountermeasure;
+					 backup_TKIP_count_measure;
 	} else { /*reset values in securitypriv*/
 		struct security_priv *psec_priv = &adapter->securitypriv;
 
-- 
2.7.4


