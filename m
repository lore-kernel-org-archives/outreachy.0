X-GM-THRID: 6749323707377778688
X-Received: by 2002:a17:90a:9f8a:: with SMTP id o10mr10250018pjp.91.1572396558248;
        Tue, 29 Oct 2019 17:49:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6904:: with SMTP id j4ls7163449plk.9.gmail; Tue, 29
 Oct 2019 17:49:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyUbyusXuVjkJ7+bFBVs7I8FoRXQf7nN5CdsiL4LZC6Wyug/2oVNGYSar+IF7O22qw2L5CG
X-Received: by 2002:a17:902:b485:: with SMTP id y5mr1592448plr.292.1572396557095;
        Tue, 29 Oct 2019 17:49:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572396557; cv=none;
        d=google.com; s=arc-20160816;
        b=KDbzUArkB5bMfxvNyS5dlvdCGzB0Ps1kwUx26tA9FNRmFA+JsusXSecRFNc1t79Krr
         jiWPbuODJ757IF16zeIzzC/z/BI+E9QDf0XW2+s0Zo6raLVTwzPdDFDqJk1HRT3RAo97
         uFqoV29bSLvgz7zNyMAvJkKiCVWYDAcuav82ii/mA/nS3Rh7EK/0PmjwIlftyls3HpcV
         TNLF6GMnc/VZu6AaB5rhcsmzAjWDWvwh7RdyU1SQr4LJ2KIMuub4/DnR48xoJ9WXthng
         f8sPqpihLR/V/AFmiy8/E+teRUB1UIvA7BXqpLrDDpZwfBQ+UUo6qOK6xYHCNew8a+KW
         dYNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5wCijf2u2I0X+YpmD/xQD7D4qMasRIDQA/7uN5bUGG0=;
        b=lBHUXQsyMTUtGO2ipHf9mjniS5PMeAAzKAsvmXeOlQvd6dgG5bgF9gWa1p3zIX8UUr
         ufi4eaafsrzIrrlL9coPB5mmq/5DX2L/M5yZS1SQ1tRTSznJlT40hPP/mt/QzCyMrN8m
         YSXvY8nKDNsXbrgKB4p2ltrRcTj9B0RfIAV17bcStG+RGQlJs0RpAspppI3gkb+7la/1
         hlhFVdqUrq4jYuUMLSXbwKmNfoYZ7E69/q+wcrwCPsznI2bTs/DEDOwP1eKfbIVoKK21
         BtZUeak8XeHzJ0XWMzdRhRwwviyQ2SGg6gkAoI4BM5olW3Qza3hR36FTenf6RkAaQEjG
         Jv9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohZbF8tc;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id g12si29810pfi.5.2019.10.29.17.49.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 17:49:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohZbF8tc;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x941.google.com with SMTP id o4so122902uat.13
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 17:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=5wCijf2u2I0X+YpmD/xQD7D4qMasRIDQA/7uN5bUGG0=;
        b=ohZbF8tct+BdSsZzKG6ckRtd4wHxE8XLITLHgZ2VR6SbPNT3SypNsJbdJwXJ1WSM01
         RIyujbhCsSTEejJvUuA0ecoKyXF5r48CO9VnkQJQGTd82dpIdO+uQO9knJ1FOzK1Btyn
         ytBeDJxuLRZ0CDXbr/tr6eZiYE1Uv59XB0ZgrneKhU7ybrfGdWzIIkyByTsw/n+v0lex
         PRxG+gCBxyVakYlXZkdIDT8XxwcHHGksKu6qhvW3tXQDJQi/MD+mtSqgK0Rsx0ywjxO+
         Zo3pwttHItz+Y/kbMPrdUGHCI2fIPJgKaVwuk7N945xKuZg8gyQCWKNDOhDG2Zu4dsTE
         CQRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=5wCijf2u2I0X+YpmD/xQD7D4qMasRIDQA/7uN5bUGG0=;
        b=ePvkNtyZ2XREK+78tetvLxkkVDCdVB4PBzkrBOsZOO+oRY2D/YRh/5mlWGDvPtj+re
         1Odb0mbmdcu4awkQu9DpT2WVai2fqlqi67Xkab8/HNAuSHMk7rPbifNaTd0joymYvQ4y
         5r8HFOpq1bAbussLf8U6BwIxU6RkyZ4l/eczszYGHyA5443OIiWq0gTk7axAPDUBCtFC
         ymGyO55xR6xAxuxbS9Rb0ZgkdtuAR55G4kNhuGplU4Wy5ZSbdqrXMRaOrQFQAGOBUQYS
         vW8kNEcogR3P7ytsdVslC01Me7WNHaSgUa2gL2T7SWsXoag92xd8jqmEqqKpuvDfVlDZ
         DM8A==
X-Gm-Message-State: APjAAAWAwY9XOhJmhbngr59pjHeRidCljWSiReopunUyT32NCSjowkUM
	Q0fsThublQNGt0E5u3i65phKPQuVe3pNbg==
X-Received: by 2002:ab0:5a41:: with SMTP id m1mr13323849uad.85.1572396556276;
        Tue, 29 Oct 2019 17:49:16 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([138.59.18.103])
        by smtp.gmail.com with ESMTPSA id r25sm262799vsa.31.2019.10.29.17.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 17:49:15 -0700 (PDT)
Date: Tue, 29 Oct 2019 19:49:13 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v5 2/2] staging: rtl8723bs: Simplify boolean expression
Message-ID: <786c20736f58c090484a4b6ca00502e76f80b0cf.1572396117.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572396117.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572396117.git.jarias.linux@gmail.com>

Simplify expression that it's inverting a boolean value.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V2:
        - Edit the commit message to use the Suggested-by tag.

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 0c2f3b2d4326..6f341d52afb6 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -190,7 +190,7 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		ODM_CmnInfoUpdate(&pHalData->odmpriv,
 				  ODM_CMNINFO_BT_ENABLED,
-				  ((bBtDisabled == true)?false:true));
+				  !bBtDisabled);
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


