X-GM-THRID: 6805867897863274496
X-Received: by 2002:a5d:474c:: with SMTP id o12mr3597485wrs.156.1584615426312;
        Thu, 19 Mar 2020 03:57:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls764940wrd.5.gmail; Thu, 19 Mar
 2020 03:57:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv8g/d5drqvqhphnn2UCvsMlQKO7pNWMun/qvHKlSw6mtmVHmEuu6Zql5dwH6B1b1iJb5Nh
X-Received: by 2002:a5d:4c87:: with SMTP id z7mr3721376wrs.39.1584615425125;
        Thu, 19 Mar 2020 03:57:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584615425; cv=none;
        d=google.com; s=arc-20160816;
        b=uckkujrXfB4e2Fg4HAorv9CW1u83DHNyTtmlxLuINNqKkd5d6TRwfKi+8p9TQgP6AV
         DNK3JoyBkuQCiB3OBAjnm6NJpA/5AGE8ZrAAnFBdxpByhZLZM76SuZnPWbI+UZN0r9BZ
         nW0xjXKqs/VGSAy+w2w58/Vez+pwcNPLRwdJE8M18Mr8Orao/MKzX03Y3jZICZvf1tl+
         5JF/NCLphQ4BLa/12mc/r9U6wnjdTswMa50EA5LwLB/hNmN7wXYLWJLSycFn+/p3AUO+
         kY8BMu8jo2V1GLTnwsadoGBdpe0q/i8EpzaJw+lzS8nGpFycs+ukZpCWy75LzmKonsS8
         B7jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=utmB9c51+QQCMJSSs6/h01Yw1fD8RO0nQPnVWauzFtA=;
        b=SO0o8AYyKqkn+7FANADICCHTzgW4q7G189kU/XLw5RPRho4y3tRqQdt3xMxqrwvBFs
         pM4OP88D3SnSNkTcq+dAy84j3vw1wBB+HbZJnz5bEkKTT+ldBtMQDdWN1sgbUuWTmijk
         A1x2+i9IZh7yzOIpjn06JOW5+nWxXuKTXUVFQh4i+sUBC84TM03JQZyj6GCFraOvxTQS
         GAYyvfRPzeGWrCKwiI+ptuxpcT9hQoPyI8SRa0DDcEyX/32kwzqCmXG1aGs6xU8yxQGu
         1R0ULdzFyGwhRRNSkdW50YcbquDRjJClV2oPbsKsOl2vckyAAXMIphGIoMLgobl1PSQX
         jH6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id x12si103013wmk.1.2020.03.19.03.57.05
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:57:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27487 invoked from network); 19 Mar 2020 10:57:04 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:57:04 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/4] staging: rtl8723bs: os_dep: Correct typo in comment
Date: Thu, 19 Mar 2020 16:26:40 +0530
Message-Id: <b5bccd2b5b581c229eaf123382b242c2e9fca967.1584517384.git.vkor@vkten.in>
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
 drivers/staging/rtl8723bs/os_dep/osdep_service.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index f5614e56371e..4238209ec175 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -289,7 +289,7 @@ void *rtw_cbuf_pop(struct rtw_cbuf *cbuf)
 }
 
 /**
- * rtw_cbuf_alloc - allocte a rtw_cbuf with given size and do initialization
+ * rtw_cbuf_alloc - allocate a rtw_cbuf with given size and do initialization
  * @size: size of pointer
  *
  * Returns: pointer of srtuct rtw_cbuf, NULL for allocation failure
-- 
2.20.1


