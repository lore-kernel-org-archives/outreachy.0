X-GM-THRID: 6805874038364176384
X-Received: by 2002:a2e:9284:: with SMTP id d4mr1772193ljh.226.1584616064816;
        Thu, 19 Mar 2020 04:07:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8997:: with SMTP id c23ls435357lji.7.gmail; Thu, 19 Mar
 2020 04:07:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtbc9LVJ8PqhfoUWBHOUrVqAdrSLnKgr7hEfrO1O50/cT8IZx7VY85CYpMhN98o9TZgUE3N
X-Received: by 2002:a2e:8608:: with SMTP id a8mr1798192lji.59.1584616063568;
        Thu, 19 Mar 2020 04:07:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616063; cv=none;
        d=google.com; s=arc-20160816;
        b=dMsHhJKGRYcSbKOqRWMjH3Fqfk6gM7F1gcpfNQ06ggJDnzVgyrDMghHxTd7SqzfI+P
         k/I9yXkuoF7hVQT7iabB+lWG4ISxdMjoJU06covEppg7ta1CV9D4WZhhq59B6nJPmJeH
         BvMZDxlZwLM9sIYcYCnd07uzKwpQ+ibQkL9uNC6PfR6BOgxdtJdizqDAOm2MgD9pyWba
         u4i+AiuL1mg1nYoJ1YDMxrjiBO/5TIe/61ZjswhptjSAAQAJbIJuy4y1U1V8hHf081YN
         m1G5bEvwfHd3oWdznDEF1P/R/xpMzx9oH0b2PPmY4CkPXRemUoH8LRH0H7NGDS+1QjFD
         +SWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=6zqlg2sYMsR70GPwmlopY+GoKM7/rFPck9NNDN8YvJw=;
        b=D+iYQkduuJmwOkmQu6Xc+by8G+1bBr6aQOc6LgDYFUippbcIyveGu5EdQulcV2LBV/
         oG4pIYqTKCtUSMJfdC6+c0MW5mJtLnQLj+o0TZmagmZNrznyGE6o5XQnSNr4C6e98eLd
         vNCGUB7TI/AQ8mfxQwqMh7qDMF6lXSuBL7/9edsXh52PMrJOa4yWfZ/81rp8li9nDZ8b
         l6JI9MmMEEDcOGOkfsIZsRwLFSo6Q5YirOgmaLjiWJv0jrNHfYwusFdMpB/+JRJBTRH1
         /LCwfuBH4Cb6lUviENZaSqnYm7MlxdA7U4YeYd7ZGQzL4fhyIKsqolFuoz/r2TvDZN5Z
         KWeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id e4si63913ljn.1.2020.03.19.04.07.43
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27781 invoked from network); 19 Mar 2020 11:07:42 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:42 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 07/10] staging: rtl8723bs: hal: Correct a typo in a comment
Date: Thu, 19 Mar 2020 16:36:50 +0530
Message-Id: <38f2c1d5d7c27cc975b603c6c814c819c8d1d831.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
References: <cover.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a single typo in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/odm_debug.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.h b/drivers/staging/rtl8723bs/hal/odm_debug.h
index 3e58cb806c8c..a7381173d1a3 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.h
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.h
@@ -13,7 +13,7 @@
 /* Define the debug levels */
 /*  */
 /* 1.	DBG_TRACE and DBG_LOUD are used for normal cases. */
-/* So that, they can help SW engineer to develope or trace states changed */
+/* So that, they can help SW engineer to developed or trace states changed */
 /* and also help HW enginner to trace every operation to and from HW, */
 /* e.g IO, Tx, Rx. */
 /*  */
@@ -34,7 +34,7 @@
 #define ODM_DBG_SERIOUS				2
 
 /*  */
-/* Abnormal, rare, or unexpeted cases. */
+/* Abnormal, rare, or unexpected cases. */
 /* For example, */
 /* IRP/Packet/OID canceled, */
 /* device suprisely unremoved and so on. */
-- 
2.20.1


