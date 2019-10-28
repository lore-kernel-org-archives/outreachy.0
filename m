X-GM-THRID: 6751575419230617600
X-Received: by 2002:a02:a505:: with SMTP id e5mr15041204jam.144.1572227011340;
        Sun, 27 Oct 2019 18:43:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9309:: with SMTP id l9ls2401579ion.3.gmail; Sun, 27 Oct
 2019 18:43:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0UXth+vGS8gix9zFZtWc8d9ZOnWHjuZ/CzwUwNdLhHq6CiYKGaFxXUoZJQyMoOkvgfvEf
X-Received: by 2002:a6b:b581:: with SMTP id e123mr6857231iof.67.1572227010389;
        Sun, 27 Oct 2019 18:43:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572227010; cv=none;
        d=google.com; s=arc-20160816;
        b=UNyFWs5BPQjok2yg1XXS5CNJ1GlUWZOtqz12Mt60q7rBplt9PVMekckxg+hubylQsR
         1u0ydXniYWbhXJEkGozGda/FQI3nOx16fYL9bKwlJeGmHLVTp2Vp+K09gUftrMDAWY/z
         J66Lrx8D5BOzoVrOAApLGXDKVIBnEES/F2FeOuxqhYPmENo+ofnJVHNw9xaMwl+9INb1
         k6A3emDT2mMN/ZrYN1uD7yIdhv13It5/Tm/ROJ73YWljMi4ABK6le4mmiwh3s9DzwZPt
         dMreWxKN74uryPPGx1KX3mMkv74KG9x6mFVpdQblgdZjZktukW8IAUA9pmnX1rqSjVkb
         nbHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=D5fXVTWKtDFjkuD7u67ySedM3tCvn1n1gYjPh+tJzpk=;
        b=LPaM4vocr5vR8BE0xItNqVxWgFP8Pmk44NDWZ3aDiPpMtKxBmMOfXbozSvasMAAN2N
         CBU6khJHQtnF02OHIQS4jpVNFuBh2mfvSxMuKJm6+9ZfmZDNfNjdPxRnkBE5kGRigEqb
         K5bF24FRls/3103G3eXmHqQc8fpSilTmg58aOGUFqcdUjP87kNyZ+8xQhQPwahaUlRN4
         LHg5x6/2A7vwYoJAzvk+APIZGnPDsacwtl4AfjjlBEErcB9+RrN2inNfvymLaSdNX6/+
         5w18NQZsV3HH6fSEUkw8fT2hiihP2JWSx3ZYnPHpV6bwmSi6NfZQwDPnMOnurollxMeB
         Qs/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MLR38LCR;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n6si294427iod.3.2019.10.27.18.43.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 18:43:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MLR38LCR;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id 3so5701968pfb.10
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 18:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=D5fXVTWKtDFjkuD7u67ySedM3tCvn1n1gYjPh+tJzpk=;
        b=MLR38LCRL+sj2NeDPp2nQptmZHR94Q42TDNgpUq6F7Lwfq+r3OwGx735uVQNahPvCA
         b1n3Px9eYoRE6vntkj8r0rkZnnDt36rFtQFwp/sXZYsdzaadsazROznC6RYaWjNHMcjB
         K6ZFrWp7bbi1ClNQDvo1xWzHkV8yNk6SYjH4Giv4QvNm23aiegY4EErwPoUj6GDKDeMU
         O7I56IPP6Yxn2fuRP4Mvvw42wlPdCRpcHicNwyfL13bMYFsYZCq6Z1Pcd3KVNBEOKlPG
         EIf1u5m43rgHZcyB6HHBThT5rp7OyiUECiBmJvjhImRaYCxwk4jkQCLz7OpcLHFkRTxb
         raPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=D5fXVTWKtDFjkuD7u67ySedM3tCvn1n1gYjPh+tJzpk=;
        b=ak6YwMq1+OeEq8uMduA9wdldxyKfo4xu4w0bFIcE/1CStBaznCi9QsCVylTlGXlAId
         6fJ8HI6+szggjnF5bKS2iKrG4qSzy38suA9VncXhH7EhBs90wxswtKzoCAhhsW2Ai8V0
         5y8pA3NJxIVxs2wD3KEWK/zy9j4fSwlRFGbfEK+K38jD8i8cVNmneMT8b9CIOsCXdh2M
         /F1sAT0EFYpIQqpcpUKB+/aGCg2aq6XO9Sc0O40yS0vS9xSQniOpIQ+yrMgJH6xf1FTJ
         Eh3rJmn+dVGW5XSy0cTJkvCtOp3qJauZ9fbqcfKLtOuNUmDX1+DumD+CT/5305SwI+g7
         hu4g==
X-Gm-Message-State: APjAAAU7CFzCDaVexHbU529pEfor+6twmVQaEcwjk0LbizTnG1xBZI2g
	9z6LPgpVfSYdSFjc1SJfxYWAnWdZi80=
X-Received: by 2002:a62:75cc:: with SMTP id q195mr17852803pfc.133.1572227009863;
        Sun, 27 Oct 2019 18:43:29 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id b24sm8739413pfo.4.2019.10.27.18.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 18:43:29 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 3/4] staging: sm750fb: Edit CamelCase in ddk750_power.h
Date: Sun, 27 Oct 2019 18:43:06 -0700
Message-Id: <f50a2566a5b645864e51d9c4aeb504a94640941d.1572226786.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572226786.git.jamal.k.shareef@gmail.com>
References: <cover.1572226786.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572226786.git.jamal.k.shareef@gmail.com>
References: <cover.1572226786.git.jamal.k.shareef@gmail.com>

Removes instances of CamelCase. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index 7002567a47d2..cd892f2b717f 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -3,10 +3,10 @@
 #define DDK750_POWER_H__
 
 enum dpms {
-	crtDPMS_ON = 0x0,
-	crtDPMS_STANDBY = 0x1,
-	crtDPMS_SUSPEND = 0x2,
-	crtDPMS_OFF = 0x3,
+	crt_DPMS_ON = 0x0,
+	crt_DPMS_STANDBY = 0x1,
+	crt_DPMS_SUSPEND = 0x2,
+	crt_DPMS_OFF = 0x3,
 };
 
 #define set_DAC(off) {							\
@@ -15,7 +15,7 @@ enum dpms {
 }
 
 void ddk750_set_dpms(enum dpms state);
-void sm750_set_power_mode(unsigned int powerMode);
+void sm750_set_power_mode(unsigned int power_mode);
 void sm750_set_current_gate(unsigned int gate);
 
 /*
-- 
2.17.1


