X-GM-THRID: 6749323707377778688
X-Received: by 2002:a62:4e03:: with SMTP id c3mr15809741pfb.114.1572642153923;
        Fri, 01 Nov 2019 14:02:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:aa91:: with SMTP id d17ls1870946plr.2.gmail; Fri, 01
 Nov 2019 14:02:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqybRvRzPpdv2W0wqbNjZ9UAZxOVHfqjD/e21FzIzMRW2ncSqebqFno14cSTWyY8q2DGUF3o
X-Received: by 2002:a17:902:b58e:: with SMTP id a14mr14801888pls.0.1572642152452;
        Fri, 01 Nov 2019 14:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572642152; cv=none;
        d=google.com; s=arc-20160816;
        b=YyKkuiu4TIllAHvUzgtt20DKfrGUcPPCb3knjELZP7YS0BtoWRBfx8Yh5mqkbz9dBP
         Q1lJUeVhyrQ2JKTXtcCG6MbAjrX2Zu5HkFRMMHjKC8Jwlvf0r72Vx3a84SQdIj26CSGP
         OwkP1GZJ7FaaMJ8c48k9HWqnJfD4cwe5hUvkCthCogeNprQMNfYtPK8IcK+1RmbFsQ+x
         Fgvv/KKV27vxHf/IbFraxVVXg74EnNyVCeGuAy9rwwhxYIDfic5+p7KvbC7Awxp88EKX
         CqS1LgviTc03RggNbAIGmzH4JlngIwNoS/UXBpXJjWbhP/xgpi1l2nHBhLlGiojxG9AP
         S4iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=kThyjrac8JkMK1fYpZZms7oIdF+FOQtZLYI8lgVpweY=;
        b=DQcwc6w1LYTq3j7F23YOJDQADX05fS4lXzZGPx72lDCeJSg9YhMhkD9nQJ3cib6J61
         evjQ+dLBn1Ue2NCEqn2QNvulernrCdBhEOjBNNnW4PMqZ4b1W4cVxC4NdcPrWuGzzQSn
         255cNlYUj3lpb3ET6WaFNqFaGK98AnvnLyFwq5YpCZskgtcukS3IsRsipdxuolQDF6Qd
         34rni5AdkzeAHcZNGSU2E6ao+lw1UqOUDIDiz9hDyjIedfpMNU9/wq9Lbuaa8ZNbNuR7
         xJ+gUEp2z6tWydeEtbVJ5upwB9j/iXK26wkcIjUbR3CzrayYTfCVhHwo0KWP21zPCKEF
         pyKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oYQ6SorP;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q196si548995pfc.0.2019.11.01.14.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oYQ6SorP;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id q26so7824510pfn.11
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=kThyjrac8JkMK1fYpZZms7oIdF+FOQtZLYI8lgVpweY=;
        b=oYQ6SorPFwTgz0bV3H4TAFoz4z8r+dlfTBO/bGqSRlBAjogbVveHo9jHvoFBw4bKFc
         deLcIl2RzE0ozq/NaAat7Kg0H5E5yT1vpGpMYxpkuIKAyHcA4fse/8jbmmn99jb9NXnw
         6nN4/oQT16S/vaXj01jDepA9taszTLqcp0V+JvhvfcS/MyZaNuXrJthZTZdEDnBuUemd
         +rDaeAdnU73tXd8IhY9RLPdRrI2zLWWJgBqYml9AqYzn5IMOWdHcGA1LUZGjabHKc8EV
         aJAhUVG0epiu7/X1tu9ynVsNJWXA3BGB/GNu9WZjzhJrcAe3H+k5h2PatGqSOBKULcDY
         bpdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=kThyjrac8JkMK1fYpZZms7oIdF+FOQtZLYI8lgVpweY=;
        b=YaIjnDaWr11eL3w5vuVfAPScjFua1rwYle1oyoDOYEz8ImYMWYlqjSnGQ3XucTgjTB
         EzYc51kuI3xhQqP1UHL4eNbq/jzKBxY7gmArtiTYUvA8UYA25TtijZcKBhU23FkXMmgL
         jMX1z/1H/lL77KkQqQPGUkHb1MDjE4iNPK4lT0wfWYvL9w5xV3oFKGp+qQVL0DB/c8zD
         yJx6uS0ksUC5pThXwaDMr0KK3SKpkqki5kYTfIV55LjEs55YFU0znNHhnFhPqkQN+6QS
         wHpJWIDioEX+H3Bb4T9io7LUtzijKWSoTGpPhAuflqaEgUpzgnksKm32EyJXpmJRNZLx
         FfxA==
X-Gm-Message-State: APjAAAV2ZclAeawhaCY+qTg8k/GjFIPxYvTCb4wF/0ECJuL6sVpPblhb
	K7RyjGPY9LlhVLQkAC61zH0=
X-Received: by 2002:aa7:9582:: with SMTP id z2mr15950337pfj.0.1572642152240;
        Fri, 01 Nov 2019 14:02:32 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id 81sm8626736pfx.142.2019.11.01.14.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:02:31 -0700 (PDT)
Date: Fri, 1 Nov 2019 16:02:28 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v4 1/2] staging: rtl8723bs: Fix line over 80 characters
Message-ID: <61967dc169db6d343b9183361cd6c1ad7ad149fd.1572640293.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572640293.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572640293.git.jarias.linux@gmail.com>

Fix line over 80 characters by wrapping arguments in function call.

Suggested-by: Julia Lawall <julia.lawall@lip6.fr>.
Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
--
Changes in V4:
	- Changed the number of arguments before wrapping to make
	  the code more readable.
Changes in V3:
        - Edit the commit message to properly use the Suggested-by
          tag.
Changes in V2:
        - Edit the commit message to use the Suggested-by tag. 

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index c514cb735afd..a94462a48692 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -188,7 +188,8 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
 
-		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
+		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED,
+				  ((bBtDisabled == true)?false:true));
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


