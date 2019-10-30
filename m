X-GM-THRID: 6749323707377778688
X-Received: by 2002:a63:8148:: with SMTP id t69mr31276298pgd.160.1572396534984;
        Tue, 29 Oct 2019 17:48:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9a02:: with SMTP id v2ls7160203plp.15.gmail; Tue, 29
 Oct 2019 17:48:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0S48fGsdUwAKaHpjA7PicGbGvBKI/Me77gedeR/ws4kIVdGctnv2pE/ooiT/dxXblkRMl
X-Received: by 2002:a17:902:fe8c:: with SMTP id x12mr1649467plm.55.1572396533699;
        Tue, 29 Oct 2019 17:48:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572396533; cv=none;
        d=google.com; s=arc-20160816;
        b=kT7H7mZx3p6l8UunHszavSINWpa9Sg/m9MFMypXGOI3HhLIFiVHETPTpLDOxCRH2p3
         ttPVFIGpsh8hJ87lOoigIQTUJ315kk9tkRltPolTCeSRq3n+eDs+iM1mD/PqoK6+TyqY
         9UP2mkF+dxJrCXPTrRJv21s8W+QFxEl6SrR/p/rKWgA7JSG6SXPY4Wlh8AZGA4n0thM6
         jYC4adQ7YTS0Xh1YGexorOVPp9LIOZBOfKP2FftkZtM+30t9etM0bLpmdRcAjsy7qkdI
         ElGezsJnAoamPiqx3lQ9bqkwtqj4FrcYcyAH3yYWTxoujkyPCm5XZoeE6KUm13nbc4SF
         IbsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=TbrrHS2ZX+v1PxHfdTzZWmteSZ8H4u5dwm0/x2DUJN4=;
        b=EzC5LN+mxZHXynQ2E596Zw64gibopLU7PRfxJvO2J/8OePkrX7j5edTig43YkhwtIW
         lGTJNm8D+b6bbGJagsgLZFNpo4qvc77nJkcCIFewLuYZOIov3bG39FFaS3NLyn9mIw8V
         pL+Dz/flgMtzAXXX++v0RzPv/j4ORCPdHLGbNTiEXaw1y8dRzi+tY+x7eSx1FnkwoRID
         rLSWesxWrjyDTv1B8HxCIbFoG0+SdBvvlvPfyW7ArNF2YEj2ICoUeLZPEPdXvZkUeGuR
         WeF9r37jsGsNRKSgRqSI0jBQKhxHzECybaV8TzSZjycfjQ/DCAueoTmvrdQMKYh697fu
         nRGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fIsug8LS;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id b17si22072plz.1.2019.10.29.17.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 17:48:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fIsug8LS;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa44.google.com with SMTP id j84so87484vkj.6
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 17:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=TbrrHS2ZX+v1PxHfdTzZWmteSZ8H4u5dwm0/x2DUJN4=;
        b=fIsug8LSstPUf3r37ItE+1xzKwx7dGpcvUkzb5wsIlt0p1R7NItcHgiQrWbFuEOjbX
         RVwgikuatnijUJvG+QC+Au4LLZz5Ma9LmZpNbBpKu8S/vhJcP/lMVbrtTAtA7RNTjHYd
         NYFqOGX5zDkeIMaKJ6RDoVFhSOBusw9E/89Pe8gaKzhLJ1EGyEneWrNsUi2tKW4Gyuqt
         EySz7raQalMCns7yjFGnX9nU3Wp1nU4uzIgv9wEia7yU8cqkGGBSrInn2EpCuAj4zxXL
         DEMUaQxepjNkmu4rOzJzuX6xH2FC2C/7eDC2llVoxj1S/vRJtRKy359MEgnm58qcRUE+
         zWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=TbrrHS2ZX+v1PxHfdTzZWmteSZ8H4u5dwm0/x2DUJN4=;
        b=qTk5wp/urMO8CfF2+3iJA2TTL+/MHPd3nTBUHmVR/xuAirY51h5ihJUHWVWLSwy1z7
         hTpg40Sg+aTGqyGg1IR/sZGOOt7L0RSiScxnCJ61l3WpLoa1uRpXPb5G3pJkiDn6O3nd
         vb+j4TUvnOPHtW09QF7YrXsO6bjpmfzgGCjBykRC9dGS/8YDZvSxbRUd4/Awx+FoAM0W
         IPXliQAWT4IWpMz+8T3tsfY/nBdLsue6Mg9ILlU18OholWVFpX3C+Trwqr3K3oZAc0bK
         hDCPJUZ49xm1dE+xuEykmEXApBKmpBOjKdwnPI2nGzMu++pWN0Tsq0ZFy1lQWIRi6Rpn
         xlBg==
X-Gm-Message-State: APjAAAUcfOOJUWyv1nHzmbXxNjCZjPi72zdfQQN9DpWIZjSp1whTrhHa
	hsH6eC3yzupe2Q0RuVa672A=
X-Received: by 2002:a1f:18ca:: with SMTP id 193mr13506723vky.66.1572396532872;
        Tue, 29 Oct 2019 17:48:52 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([138.59.18.103])
        by smtp.gmail.com with ESMTPSA id c64sm295525vsc.14.2019.10.29.17.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 17:48:52 -0700 (PDT)
Date: Tue, 29 Oct 2019 19:48:49 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v5 1/2] staging: rtl8723bs: Fix line over 80 characters
Message-ID: <6186e531d4cc59bed09329b2c9c4cac7352702bf.1572396117.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572396117.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572396117.git.jarias.linux@gmail.com>

Fix line over 80 characters by wrapping arguments in function call.

Suggested-by: Julia Lawall <julia.lawall@lip6.fr>.
Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V3:
	- Edit the commit message to properly use the Suggested-by
	  tag.
Changes in V2:
        - Edit the commit message to use the Suggested-by tag.


 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index c514cb735afd..0c2f3b2d4326 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -188,7 +188,9 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
 
-		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
+		ODM_CmnInfoUpdate(&pHalData->odmpriv,
+				  ODM_CMNINFO_BT_ENABLED,
+				  ((bBtDisabled == true)?false:true));
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


