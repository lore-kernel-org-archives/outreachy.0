X-GM-THRID: 6805874038364176384
X-Received: by 2002:a19:550c:: with SMTP id n12mr1808551lfe.11.1584616071280;
        Thu, 19 Mar 2020 04:07:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:43b7:: with SMTP id t23ls324191lfl.10.gmail; Thu, 19 Mar
 2020 04:07:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvLlUhyRdMO8LVfasY7YBgZVBJU3fWJY8vS1nVulmTkUTTFYB6Z8yp8NSNkB09LYBtKVLJ/
X-Received: by 2002:a05:6512:68b:: with SMTP id t11mr1845998lfe.214.1584616070011;
        Thu, 19 Mar 2020 04:07:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616070; cv=none;
        d=google.com; s=arc-20160816;
        b=HDVIOG0vTQ6JAO628QqjKCZV9O9w/kDYL/cGZWZLNuFr/bC+FQKQwF+7uwnaFhvZ45
         17imRE48QBlVfI1oSV/N5wAtbPQippSCntnQLDqL+RciVV4vJ5xBRur2aC/ra6MiO+kB
         zHdD8z7iH2Licd5U7romHuzgiFakyhbqp1aQRsHFvuwZxKSYEs+cpDsNA8VEFhkXV7AD
         uwEuCrMaVQK7XkGi0bbQFr7Z4Xl20Yrb323KhiwJsapUAeNDKdMFD4TWAU6gdWFD9kfP
         c27eyKwyh+w2DmfCDVLSmCWX4VZSsmGRQH7UCSkl8T2QBH+n+9qpGaH5pxGJNyOGMKaN
         voMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rcxNvuhuvWC+KlwvG1q1U/64YooWsFsRxeY4ye8NbkM=;
        b=QmEMfZJBEM4Dn4s6KjF5r4lE8OMglXNhdAhVk+b6n/dbL3uY5d5MXSGLZ6BgGuySGv
         xYZeKz7v3j+GruZZvTsQWJglh/8P5l3w2gfboVXuR6mvQOnYEznQz8terOyBPEccbHkS
         28J4B7d0zUZBD25Pf5+rUzjAoRkylc5sz5I17qtn7z7f41J8mCBwYaCz7ZlofEPfZod0
         1M+wIMS8hnp8fVTK5fi9o38JL9gIqFq49FTGymAlhIW1xRG4tV7kmIRK+3BFGljLGsZG
         YyKoCnsVr72xASM8ut3TJRfpXiv01F5EbuYxVkDVmRCaVkudvxWuH9pKKv+VF3d006LI
         4qGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id d12si88759lfi.2.2020.03.19.04.07.49
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27797 invoked from network); 19 Mar 2020 11:07:47 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:47 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 08/10] staging: rtl8723bs: hal: Correct typos in a comment
Date: Thu, 19 Mar 2020 16:36:51 +0530
Message-Id: <738abd9132fe15113f08fc6b7169082517105466.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
References: <cover.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a two typos in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/odm_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_types.h b/drivers/staging/rtl8723bs/hal/odm_types.h
index 28f42c9c3dd7..c79fc1813c3f 100644
--- a/drivers/staging/rtl8723bs/hal/odm_types.h
+++ b/drivers/staging/rtl8723bs/hal/odm_types.h
@@ -28,7 +28,7 @@ typedef enum _HAL_STATUS {
 
 
 /*  */
-/*  Declare for ODM spin lock defintion temporarily fro compile pass. */
+/*  Declare for ODM spin lock definition temporarily from compile pass. */
 /*  */
 typedef enum _RT_SPINLOCK_TYPE {
 	RT_TX_SPINLOCK = 1,
-- 
2.20.1


