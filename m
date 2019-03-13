X-GM-THRID: 6667785986417623040
X-Received: by 2002:a24:1a17:: with SMTP id 23mr985073iti.9.1552464902153;
        Wed, 13 Mar 2019 01:15:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls49759itm.2.canary-gmail; Wed, 13
 Mar 2019 01:15:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwBGxSWIs1IWPwHNB40fY3J359+BHNkadvvnu+hZpZFz/E69H5uZg3l4/raMZlt8e6ughZt
X-Received: by 2002:a24:5c5:: with SMTP id 188mr1003497itl.3.1552464901346;
        Wed, 13 Mar 2019 01:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552464901; cv=none;
        d=google.com; s=arc-20160816;
        b=G23zyyryuv2EySqIElXtnyWhks+RSrDq3fQdXdlXDWflFLaiGVkphoYKmu5AnchR6I
         EcMcI8MH23iQVjFI6hnwMEd4XQEnCp0RiCm4Lf/L1nLW5zlVGO70kStb0+UKFgQnMSqU
         XzY0UPmoYm3urxFw/s05cOx+J0/VCNPFIVqLEK1kv35lBzm6yAI1D2ojvgCCW03WzGM+
         3tzD3C6cjxoqS6OwIrGT1y1hMSl4U5Y62y1XcNiAcbk2cqPRb/fH88FMMe7hFb4pj0R+
         y1ShrCXbfnXCvc4dyfZvTPpOwLtvVYPBs86V4TMdPyarJgxKsC/0dj6SD1iXGuz/zcSa
         2u2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Oo8sKs5oIjbsNJZXEib9im3YJjvr153hOv+pPbftAjI=;
        b=acXtq+BPrym2s+LvuI5GOUxyzJvQR+iuuoi42xqNfgQ4L+MWWrC731Dhp1aFUoaLB7
         PwXoGojgOfC5s1+aQV5tvKcTbe/WNK+dra4CjCVOKJUaHORZx98wdko+bP5bRjbNoprP
         sxURHFaTIw+6UXEDsVexkCIVJVKvZ64Tr5fD23a3Ye69wH3ednn81KY50tEZwVsOS3Ze
         IYX89NGJApHVOU8cwXDgYK9mzK4/fPIe5DzQ9xszNsc0z8UjN0cK/8GjArg/gZcjUFRf
         3dGcea/zu7K2pVQ+VYe5CQVSPiDuRrc6zAHhtJxxxbUGNRYm855g7AxY9N/K0hDIp1Qb
         grcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hEqgJpl7;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id f13si556250iok.3.2019.03.13.01.15.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 01:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hEqgJpl7;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id h8so967121pgp.6
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 01:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Oo8sKs5oIjbsNJZXEib9im3YJjvr153hOv+pPbftAjI=;
        b=hEqgJpl78NFXZIWjOctrHlRNJElmsSeDtBa7Le6qpBuHkuiyYcxugG1rWM+qERvXsj
         u9TKHZMJqlcWQzPfvzEiZaHlIhhJp6C6b3nVQ9k416ONyE+cipNI62M3qtRTDxH6wmW0
         E/PGP5Uwdq1bUDwbRtE3EVjUeRUvSaO0ULKR+PToZWxwmzKSyClnhLXHXuQU1vOwN8d0
         BdoGVRjfCJ+zhCDcVaZNHIhie2zafQRY4DeM9m5uovJY5OAxEHDl+v/VyU/1SOwz6jZU
         agaQOgN6q+fNVs8y2lVfYjxU0ABGpoaknXv00+CWVSadSlgyNGvc69b31755NipLDrRI
         buMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Oo8sKs5oIjbsNJZXEib9im3YJjvr153hOv+pPbftAjI=;
        b=qRIf+m8ms61efvPOdn45eBBWOYRAqa6wUgObn/DkcVRfrj/YdKmsWOrvaekXA3RADF
         aClfm0LSW45Fncayuzzj56HnWWICzqALr2reVkON5UqwEMM+KsAMUMcqSdNGqKx4I++O
         aeRiaGPbvWUzrdg1N0lMyKW01vSjtIJh4xxljDEAcLQfnPecCzY2qSdE9G3mREr+jGSe
         yJeIBMAjtSOAytLI6dG9CptmoWjBIIv5e5As1d7XElMOqKRAmUGcDh2ZgcbNrSyJi5SH
         kjsDfpnwcUuYwGRT+pTCntnd3kNXw8cHBVTRp+EzHNRHWYht4g/5+2xbv6fHhSiQZYKx
         9khw==
X-Gm-Message-State: APjAAAVCOuODHyoaF6dexcWkYhdUFll7YnSPLcE5tXVzNdzZMtQ3/bgd
	htl9EFZv/0LrOzmhrm4NqHc=
X-Received: by 2002:a63:7843:: with SMTP id t64mr39078234pgc.178.1552464900870;
        Wed, 13 Mar 2019 01:15:00 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id q62sm17684491pga.32.2019.03.13.01.14.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 01:15:00 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: gasket: Replace macro __ATTR with __ATTR_NULL
Date: Wed, 13 Mar 2019 01:14:53 -0700
Message-Id: <20190313081453.2097-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace macro __ATTR with __ATTR_NULL since the former one is
unnecessary for gasket_sysfs_attr array terminator. Also silence the
checkpatch.pl warning:
WARNING:Symbolic permissions 'S_IRUGO' are not preferred. Consider using
octal
permissions '0444'.

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index 151e8edd28ea..1d0eed66a7f4 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -40,8 +40,8 @@
  */
 #define GASKET_END_OF_ATTR_ARRAY                                               \
 	{                                                                      \
-		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
-		.data.attr_type = 0,                                           \
+		.attr = __ATTR_NULL,				\
+		.data.attr_type = 0,				\
 	}
 
 /*
-- 
2.11.0


