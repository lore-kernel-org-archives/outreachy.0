X-GM-THRID: 6672747924702625792
X-Received: by 2002:a62:56d1:: with SMTP id h78mr180099pfj.100.1553620194861;
        Tue, 26 Mar 2019 10:09:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls6047018plb.2.gmail; Tue,
 26 Mar 2019 10:09:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzUNobzfPu0k0H4v5MWSaC9Zroe0XfxxqLF0dIgpuvi2ssSXc04NASrtA0WIKRdhofQax4Q
X-Received: by 2002:a17:902:e20d:: with SMTP id ce13mr286411plb.100.1553620193946;
        Tue, 26 Mar 2019 10:09:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553620193; cv=none;
        d=google.com; s=arc-20160816;
        b=VMcg8HFQhbuPOQeKLMflsIDFI4nmZ2arNd4KUpTi79xJSxHiTYe/prrPchayfOy4vU
         pAmPkRnWIJuLj7wJNO7ZCAhDGlarZTixjitcqoXsYzjttEqZZUAo97JjoDCILercL/3j
         boKf2S1UPhxHSK2ucmZha77hK4D8tlyMgpy9zshV9tAbvuQtifYj4VEA7iomlNTEfO38
         uqhzbKHASY9x6/qXdg+6wFPMy9lTulxgTllqZrtuJCZDWgUCht0/DawM5uKq7M6+ZdoZ
         YuZvCk/kX0WP5Q9B4DEWyuiVFzmmhaMXmXGJkTzEPTf9xXaZRLCs3r8ldO07g8Wr6oMz
         SnrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=D2MOUROL/Ie/3gkI56lc3zDc7ZNuSOYd726itl/FbKk=;
        b=OZ51Z5kF1MwKm/VAj1HPGXMkbvs+WKPRRQ0hCENygSxsyxTjsitbgrgNRTmAH/9iF8
         VJwOUUEZk5hjtQMcCmLtNfrnrorYgszaPYnU+kArpEL5+HoeA5FUzl+KV7AqmQbOj2xJ
         1w5n0+WAx6qpea+0S0M0e6a4X43V9oJ1wot1FsMbp16c5fAJ0k2w1e3DSP8gh9j2cz8w
         lb0p7MjWBsS0GVAU1d6DXGO1BfoL5Ad5o86uZ9GYwV9z8Xv+cvOFAP9wMv2pLue1BD5q
         OGQYfBJAEEEuB/ZTaVG0v8p9dbgtNLWZRPzLtpmGpG63wtTbg5mJkTOhLH3j9fAqC3a9
         ORgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e4qL0UL/";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h2si843888plk.2.2019.03.26.10.09.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:09:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e4qL0UL/";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id r124so8553980pgr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 10:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=D2MOUROL/Ie/3gkI56lc3zDc7ZNuSOYd726itl/FbKk=;
        b=e4qL0UL/VCiaIpdH4Xs0JMDJXprmX6lXVrhOQenyn3SbACNM4z5IJP0sYHGLEJ75o7
         7VqPSXHef4bD/ZEYU1Pd4Y/CHQgK2zpKqnXAn+e5DRy+ibCka7gX8a/AxxowkemCRbG5
         GFAdZc3LhWK9ut14vAJO8AdBqokQ9d7toV5nem9OiOm1sYq+TwgZiuccbaIL9FwEoenx
         ZuCk7YMRnuC8jrrKQRWqdTjgdwdVBD0mp1wnXLdv+vxYcOVVDmmxw5K6bCsCyqrgZVhI
         CXhy2jz5bi+nF3/icVDMIgOruklfxtrtqdbTn6yFvGJBZbh21uufRivc3yusWjWBvojS
         Iveg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=D2MOUROL/Ie/3gkI56lc3zDc7ZNuSOYd726itl/FbKk=;
        b=NYsgHBCB+Bo3T4/74IgItW5b59YMHDaUd09/EyuAckWGZ+WhAzhQ/3UxP6xkhMorVy
         U6hJ/GYN+PfkpLYELgidsjgo/Usvm30FCyR14Iib83nf3FP9s/YUsRlT8eYY35hWo0+5
         yvZ0CETDT1l9vqY1Sj3eS/yd58tlP9x6oxGBErGM5gqKs/46EvNWb0MyClIPGWznxV1/
         BVVQSPJa/emeC6Dfl+ZikrdZuQcaix3WzhmCBBHcELI6ZEZoVcSFayXSC0RKQjEEMGQN
         nSSizLrYZS1lImKnxoUXAuSipSUD97ZUY/nQLejQyLQ+z3MpXOl4FAuAcr+79sS4j0qT
         wCwg==
X-Gm-Message-State: APjAAAXN6E5PRp7xEmQfQBWXZOf2Pqqxo5Z37dyriQ+tiO7BIzUyR8QT
	8JOm+5Pm84IK87x3E8/+Eip3J9DROmQ=
X-Received: by 2002:a62:4214:: with SMTP id p20mr31725188pfa.204.1553620193613;
        Tue, 26 Mar 2019 10:09:53 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.14])
        by smtp.googlemail.com with ESMTPSA id b63sm25119436pfj.54.2019.03.26.10.09.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:09:52 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: Remove typedef for struct.
Date: Tue, 26 Mar 2019 22:39:42 +0530
Message-Id: <20190326170942.19974-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.

Linux kernel coding style guidelines suggest not using typedefs for
structure.
The following Coccinelle semantic patch detects the cases for struct
type:

@tn@
identifier i;
type td;
@@

-typedef
 struct i { ... }
-td
 ;

@@
type tn.td;
identifier tn.i;
@@

-td
+ struct i

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 8aa536d79900..48b5088e1fef 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -296,7 +296,7 @@ struct cb_desc {
 #define ieee80211_wx_get_encode_ext	ieee80211_wx_get_encode_ext_rsl
 
 
-typedef struct ieee_param {
+struct ieee_param {
 	u32 cmd;
 	u8 sta_addr[ETH_ALEN];
 	union {
@@ -323,7 +323,7 @@ typedef struct ieee_param {
 			u8 key[0];
 		} crypt;
 	} u;
-} ieee_param;
+};
 
 
 // linux under 2.6.9 release may not support it, so modify it for common use
-- 
2.17.1


