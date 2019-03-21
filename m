X-GM-THRID: 6670759463317667840
X-Received: by 2002:a67:f6cb:: with SMTP id v11mr973825vso.8.1553157219307;
        Thu, 21 Mar 2019 01:33:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7c4a:: with SMTP id x71ls1083266vsc.1.gmail; Thu, 21 Mar
 2019 01:33:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3VCBODcBg4pAebYKKiHQPB89vel0yAOJYjnhjOPlXwytEp3eG2wAdYgijv2egoS5pi1HA
X-Received: by 2002:a67:edc2:: with SMTP id e2mr953271vsp.35.1553157218475;
        Thu, 21 Mar 2019 01:33:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553157218; cv=none;
        d=google.com; s=arc-20160816;
        b=E9aEbkZLjZPEFCg936Y3xVYpaaYX1DKTMJeE16mlH78tVNDq6Psyin5Xie8W+wPzyk
         WSwQhvpldv04Orq9ROdDv9O8dKH6ZOGW262ybDuFHL9lAO7bsNQGxrY+CE209KXEJ1/o
         woS3gsNna1VKqV1LC72cy9a0N34rIgAeeixZ84TSnY+Y7rjSvfwlOVYyfZfHvPh75muM
         zxZcGopwHdWvcV0jVbIcz74s7KZA63sNcRzji5m/3LuzAJrSVPk5ccnazgbKxh5G6qPX
         Um9Kza2MDwZngOGFF0llNMpBZ56D5oVzK4SnyH22lHvGE+nDyu2Zqx6i+2M945YqOfog
         DUTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y1QHk2jFcnNnJRaLoIaAK6CHTslM4nCSAukNHafOx3M=;
        b=vI88qRmu4EE2wLF8LfkXHDQpQOuq+j3kiKE5dY/48DCbQY+M0Ca6QjNky8wNa4tT2u
         Q6f0Xj+2OCOOpY15rkhUMROMia7nYmLlwpS+2rKxW5XNZwKAk7YsZdhvUMH3Qhbb3N8w
         auEu2+dAz0jfAjayNHI7lXXPlhtUmURrRk8ZbGfY/znVRZ23sHaUbtA7+2Jxl/7Vv2u5
         MdhGkMyABdRlR33BMIfuoK8Emo6R+vq0pLwfgG+FWk9Nluxp7QpRQKvwf1lKmQ7vjkOt
         HYyqgdnmQnx2U3tbMhrtkc4K1CMrgClgTbJjLCFbLA14N+A6rTJaGkHVGPATriOyZvNb
         7inQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="n4/c07z5";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id j202si213567vkd.5.2019.03.21.01.33.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 01:33:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="n4/c07z5";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id 8so3849342pfr.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 01:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y1QHk2jFcnNnJRaLoIaAK6CHTslM4nCSAukNHafOx3M=;
        b=n4/c07z5Di+XUF4X0v3lQq45dL1+gq0EEzfcJLwMkQ6fLriHrXrz7uEPtzIiKDozq6
         hHidMKHkL5wJ2PcxfNYGE4D+Jn/M9rvM8ZpAyyzVyrngG+pOv74I5CIClz5h96I5K9rg
         5pDkWukXQUbTgN8444E6eVq9fSyqN3qWzVnEB5/SFPrMjz3c2T/4CdtaJj6D99AR8SCn
         d6E2Ac7o3HBZ/y7vj/4YvU8R0YX2sx9iUW8QwvRVrgmUQOSJ84oGy6abAYWUg4HcjMDX
         VDWW6fie+EniqoTs/kA4T2pw0wjcE6zTokObiB2L8t+kv/vll08OvhOwWqToYs0WkNig
         KNHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y1QHk2jFcnNnJRaLoIaAK6CHTslM4nCSAukNHafOx3M=;
        b=Q+g4XZsxMt6102mfH9lAzOocOi0UX17r8UAZABdwp+aPu6PT3uaD6G4E5OuyKPUkfk
         9c7S3nq0trnRdr6Ra5zUA1VTRGO11DZN6qH3/wQgy36AyBQ1RNTja2uuH7EDl02RbeRr
         Uj+/1W4QoAtZfCd9CkWkbaad2QLFawyMeFup78jtjKri/40QjqKpZ2Hdrtzo6OTTo4vL
         W0y6in5/FJqyb37oe8Wtub0tBAwgLjWhF5Ut9322Lw9JXk5pNo8N0zh2WP+n9zL+R49g
         lsyeaj/fw47VDkOrsMvL8zFylECZgx5KWWkq4XXhRPFVuCgY7mi9rcbk080zQXIaOou9
         2eTQ==
X-Gm-Message-State: APjAAAU6eMw8DIFBhcYremUfsKlx++xw8jzYeUY1y9k50N3/kVcwukWp
	QSEnkSbrnDbs77unzNWFEUQ5iEDe
X-Received: by 2002:a65:628f:: with SMTP id f15mr2260412pgv.410.1553157217777;
        Thu, 21 Mar 2019 01:33:37 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id r10sm4939651pfn.188.2019.03.21.01.33.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 01:33:36 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: mxx_udc: remove unused code
Date: Thu, 21 Mar 2019 14:03:03 +0530
Message-Id: <1553157183-2879-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove the code enclosed by #if 0 and its #endif because that code never
going to be run

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 540e4ca..212aded 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -8,13 +8,6 @@
 #ifndef _LINUX_EMXX_H
 #define _LINUX_EMXX_H
 
-/*---------------------------------------------------------------------------*/
-/*----------------- Default undef */
-#if FALSE
-#define DEBUG
-#define UDC_DEBUG_DUMP
-#endif
-
 /*----------------- Default define */
 #define	USE_DMA	1
 #define USE_SUSPEND_WAIT	1
-- 
2.7.4


