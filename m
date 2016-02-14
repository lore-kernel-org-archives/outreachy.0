X-GM-THRID: 6251161839379415040
X-Received: by 10.50.225.103 with SMTP id rj7mr2363825igc.1.1455462082419;
        Sun, 14 Feb 2016 07:01:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.4.142 with SMTP id 136ls1294503ioe.10.gmail; Sun, 14 Feb
 2016 07:01:22 -0800 (PST)
X-Received: by 10.98.68.194 with SMTP id m63mr11453602pfi.7.1455462082124;
        Sun, 14 Feb 2016 07:01:22 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si2842331pab.0.2016.02.14.07.01.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:01:22 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id c10so6380054pfc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=WfZBmsK1otwwTdZ1g3oSLUaf4he1sFy1TOo8hvq0BBs=;
        b=tuAHvDLjeDxr4nkJrD7G/wH5wFJ9UB2+E88oAw2IhkyZhuqMxGfB7i3ATPX6hseTT6
         sV/hmUjIaOTVezFZGZktOz4sBkFm6Ad4A/YKYPuxTgvfgu156/sdeOOJLR88Vqf15mZV
         d6eJ+AmPI0Gr1C/4biQw8IWsRbxq8ENM+VOWrRhOgakTEAGiIkcKwRd/onMkK8s2SsoI
         kww2w3IQF3AH9YJn4oQ4AshcL7+4wD57fm+KWQpzsOnOGc8Oh2mGt0Sv17WGWeRTRSsa
         N66BRksVvg7p5wxVAENic9NvwBLlytGxvk7dTWTXdkoQaqcHjf1TVJr4vs7i+tJwsiK7
         E56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=WfZBmsK1otwwTdZ1g3oSLUaf4he1sFy1TOo8hvq0BBs=;
        b=MHC6LYhY0riZDoEc8ytCPCUnd8ApO7j2MkwmAJUzIuI1K2+fFBpZ613uH6M4au0mPh
         RyuVP6VzJUpn0IXZaesTKjt8ncMVXg8bLHiEDdswOBpMGIslvNl8scZGV3sak0m5/BAH
         S5NvYO30GDKXw12zcV6SMokLr4FfQ/gEOLMAP6/CyoGB/WFPkcDdgx7Y0FSLNqHxW62u
         omuouWJJp0MGXG6HyYUwGq4hd4UyTFFEvzM7jwh7JN6oJoyGJdsPjdXt9TMEPUbkwFVj
         SNWhsz2FxX/32wORwzauIdwcmURw/NJM9sUhRemGk8VQfYjiFqbThVcqfi3D2gMVrhOj
         ULrg==
X-Gm-Message-State: AG10YOQqn5diA3yR5k0lsIWL0OJTGT4Tl2m9B24R2ZzHvsP2PeBYSBXukI7H9b7Wu2UzpQ==
X-Received: by 10.98.66.75 with SMTP id p72mr17062847pfa.50.1455462082022;
        Sun, 14 Feb 2016 07:01:22 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.137.116])
        by smtp.gmail.com with ESMTPSA id l62sm32144312pfj.7.2016.02.14.07.01.18
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 07:01:21 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 20:31:12 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/2] Staging: rtl8188eu: core: Remove NULL test before vfree
Date: Sun, 14 Feb 2016 20:30:22 +0530
Message-Id: <c2c521e2570272a1749cef362817e6231000530e.1455461125.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455461124.git.bhumirks@gmail.com>
References: <cover.1455461124.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455461124.git.bhumirks@gmail.com>
References: <cover.1455461124.git.bhumirks@gmail.com>

The function vfree test whether the argument is NULL and return
immediately. SO NULL test is not needed before vfree.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 9c2e659..d9b9bf3 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -123,8 +123,7 @@ void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
 	rtw_free_mlme_priv_ie_data(pmlmepriv);
 
 	if (pmlmepriv) {
-		if (pmlmepriv->free_bss_buf)
-			vfree(pmlmepriv->free_bss_buf);
+		vfree(pmlmepriv->free_bss_buf);
 	}
 }
 
-- 
1.9.1


