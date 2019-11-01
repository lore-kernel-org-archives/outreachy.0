X-GM-THRID: 6753896393761357824
X-Received: by 2002:a92:5b15:: with SMTP id p21mr14306617ilb.126.1572643318196;
        Fri, 01 Nov 2019 14:21:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7413:: with SMTP id s19ls1309656iog.2.gmail; Fri, 01 Nov
 2019 14:21:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqydK6SxC030acFD1J03ufDOXywUOBxjWIY6BaTJGYir4aC6JVPr2cuMb+nOBQuGmsTvcq4M
X-Received: by 2002:a05:6602:2547:: with SMTP id j7mr3106328ioe.77.1572643316792;
        Fri, 01 Nov 2019 14:21:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572643316; cv=none;
        d=google.com; s=arc-20160816;
        b=GSlmUHoyO55+k98B2xQ1nSq4Jx//q+s56QOcMwUGKnenztSxTHOR+yrEvLVdJ7oDhh
         9Rs9faMkAg9gH+Kx2L4FXLB11ZYlaaFPh3A3lM7iw8a5VkZcS0Vjv4B8lVI/LXYHJuwN
         DXCYLKJcw0Yp00g+Wos9+N4qULITULvPj4rJ1u78+1S8df6fxxVxWtv+hcTBx4s+NsQl
         vqLtBXAh5t4+ATctR+pfkqZXA8du4ZF5Vj2mGnlENodfuAdk7jdhmtymO7tJbZqqq1Kd
         LU3SycWLEZ/JhJaBPun1/CtZoNdBdJSxatMBRQe0oc85lgGsEoSmFurGSIHrGTzTtaKb
         gG/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=BBdjFvCxBCwXB0nsG7vCZN4qIRTNKB41R/JNuWTK3z4=;
        b=MHtI4iES4I6WWn0qRHQ8RLSvL72oFZbfKJGw44l2H1jQoH/o1xjQUPwBNFcb+QHzeE
         gAueWd9ovmATjTtiSfaDJ5Ws2+G/osScLcVuc57tEboxy+DXyJZwIJVCe16QgQUUUdLY
         FsxXRW4Q6P5BnJxwTS1um6+INeWv/or7chBQzFBDpMRzLC0oy+cn+JjhEfl/7jywJAds
         mtj74H0hDoyaXIp2SP4HdKY80KYj1A0rxnR42Q0SSCvttgJ9JML1MrUNV2Ysm19hAcrC
         V0v2lUL5EcYqikd0aKqPQ8P9xSpGKiJzBqLWZA9BCKqrXeumHB0dskMpCgU5uL1heUn0
         vdBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gm9ofFsI;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t64si537190ill.0.2019.11.01.14.21.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:21:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gm9ofFsI;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id e10so7215651pgd.11
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=BBdjFvCxBCwXB0nsG7vCZN4qIRTNKB41R/JNuWTK3z4=;
        b=gm9ofFsID7f2gLMiXPKDDi0s1RSuZ/RTTKk3NEgt5Sd9pjHUESbPy+O2E7jSMav5kK
         eykU36fo24BLUsLrJL3HshoHiOwBYJ7JZQelkV1Efm87D8Jf63FTYSUvE6WUkC9hBW9Y
         6HFb3TV2OOQ1SCAn2mOsEXz3NOilNL7mLUY1af453Y1KxlbMw4Hm+NIh2KdIfvaB5bIU
         p3nCX8q9mvkIlyweGyv0glFsYcxpgxXSxU1+onPfukhm1hqGLFnyJpTD6FastykSLauf
         HfqCyBaqLIm451vtggbSrBdc9mxotktCL5JZQ9wkQ1QfS4bh0iRlKbOVHtGbLm55mCY4
         rkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=BBdjFvCxBCwXB0nsG7vCZN4qIRTNKB41R/JNuWTK3z4=;
        b=ppvlhmyWNGRdtsxpvoDzZ+Xi9+qNROIq99XD9+grh0Tmc2hKwa0OlFHS42I0U4uIya
         rl8ANMOBGGSPRXhVwTfSFMTjl7kHaf6hLiSPBvfEHMrY7Y714w3zpwDt5ytIinzv9fp0
         gmIPYEpqnl39NPj1B7krttUEtkdoAsFuRWvMbXX+3dt2wJ/8Go5SoN1oeETFMTDpCbqX
         Rm/yWPi0SECtxMQn2UGnbnjjAGzw6XdmkcsM407GgdzC1LsCFY7U5GLlsngnsnCujeRC
         7XgJ6sLnCU91+159NTRTjGTgrt90s9O4Sz4Fml3pzlBrEtndnbmk2d4acTv6PnHOXB7X
         RQOw==
X-Gm-Message-State: APjAAAVRqcReHMr/dI3zDLkJb9YTqEINZbb9D+crb2g+MZrAascDxrsu
	4yV0jIMB8sofssXvsbh9dd0=
X-Received: by 2002:a63:5966:: with SMTP id j38mr15529736pgm.304.1572643316176;
        Fri, 01 Nov 2019 14:21:56 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id q15sm7207635pff.155.2019.11.01.14.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:21:55 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 1/8] staging: vc04_services: Remove unused structs
Date: Fri,  1 Nov 2019 14:21:39 -0700
Message-Id: <acc1e07a0b2c4e67ae417086087c9ce3d7f932f4.1572642845.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>

Removes unused opaque struct typedefs. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi_common.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index e7955cbaf26a..1fdbe038500a 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -112,12 +112,6 @@ struct vchi_msg_vector {
 	int32_t vec_len;
 };
 
-// Opaque type for a connection API
-typedef struct opaque_vchi_connection_api_t VCHI_CONNECTION_API_T;
-
-// Opaque type for a message driver
-typedef struct opaque_vchi_message_driver_t VCHI_MESSAGE_DRIVER_T;
-
 // Iterator structure for reading ahead through received message queue. Allocated by client,
 // initialised by vchi_msg_look_ahead. Fields are for internal VCHI use only.
 // Iterates over messages in queue at the instant of the call to vchi_msg_lookahead -
-- 
2.17.1


