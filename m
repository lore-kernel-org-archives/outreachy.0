X-GM-THRID: 6805867897863274496
X-Received: by 2002:adf:eec7:: with SMTP id a7mr3387712wrp.405.1584614618437;
        Thu, 19 Mar 2020 03:43:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls747870wrc.7.gmail; Thu, 19 Mar
 2020 03:43:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuPl3Tb1spMB/gSyzRKnohmhlBZGGliziA4iboq2ImqkqodVhzzaAyx2cZUgc2dUL70txNK
X-Received: by 2002:a5d:5710:: with SMTP id a16mr3509988wrv.5.1584614617365;
        Thu, 19 Mar 2020 03:43:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584614617; cv=none;
        d=google.com; s=arc-20160816;
        b=VlSEbWZ5xLtF4ymVHYE0mvJMD7ELd6UJ4tsHHjGcVjX0ODKixgBkq+mMHENGdT3XPC
         ehIRsUTfS7kkiwy0V2tQM+4UJpWjSI0sizy0iy8ryy2b+0wqs7ryu2FGLyPsMNYSygka
         muB/FKjQEEENKyPysKyYMSl57RHJPiREcybfOfLgx/JGPk7itrxooNhPxzIPQpqRAlYS
         DGFQ5D1ZxLCR4Il3OG9Tlj3iPEILBQwun5N+CPZUJK+xAg7teSn0C+3bV+z9GcTwty4q
         S0nZtra/givn70MURgCMdL/U/RCPDesxdKg5eVYioicYT2moT/SrlFRshbtf5HD4OOOj
         N92A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=1dvZdaj1ZX+bieCjDErdw1gd9OQ5EHgkdVtXYWkxizo=;
        b=RmQtJB5TXv1TfyfCRl50b9T9af05uY9w858GSp90jk24QSJmRmiO9LE/x6tKmN5Gsi
         qLUOl4XXYNqtVnMbKu6Mq/OqkTo5bqJkFiFacr1feUVr7Ii6SfDaDW2/T4fJbCqLphSe
         NOwgK3TzAyzFXaMD+JWrGo1QK1FU8GLVH7WNuHALUG3J9kpOD7GMQkDVoYtr3LtKn27b
         FVX+hcS0CiOi2GBHf3FkLVNwKvVn2CfjiE5Zvx8DU8upMBysaSFMvOWUpMKYtMmXaky+
         MNpWSAT0BWj+J9faTDuv+6ER5+MLEjcTHx+/nLeJBBmtP3vE+NXvBrMctp47m5VvVHlw
         58/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id q205si105389wme.4.2020.03.19.03.43.37
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:43:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27244 invoked from network); 19 Mar 2020 10:43:36 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:43:36 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/7] staging: rtl8723bs: core: Correct typo in comment
Date: Thu, 19 Mar 2020 16:12:53 +0530
Message-Id: <48ab1646462ce67646a865210bd2583ea6421275.1584519269.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584519269.git.vkor@vkten.in>
References: <cover.1584519269.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a single typo in comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove word "Fix" from subject line
 - Change "C comments" to "comments" in subject line
 - Change "C comments" to "comments" in body
---
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index eb08569db5ea..3af587ab394a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -439,7 +439,7 @@ u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
 
 		if ((*pold_state == Ndis802_11Infrastructure) || (*pold_state == Ndis802_11IBSS)) {
 			if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
-				rtw_indicate_disconnect(padapter); /* will clr Linked_state; before this function, we must have chked whether  issue dis-assoc_cmd or not */
+				rtw_indicate_disconnect(padapter); /* will clr Linked_state; before this function, we must have checked whether  issue dis-assoc_cmd or not */
 			}
 	       }
 
-- 
2.20.1


