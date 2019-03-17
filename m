X-GM-THRID: 6668974051336126464
X-Received: by 2002:a67:f75a:: with SMTP id w26mr6705733vso.29.1552782767764;
        Sat, 16 Mar 2019 17:32:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f7d8:: with SMTP id a24ls2693283vsp.6.gmail; Sat, 16 Mar
 2019 17:32:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyDsa5XoA7Jhi7XnIOCKEXU94fXMxoAch4/WKGMiMKAyrp58ScoWpGrSeUxmpBZkphmQZJC
X-Received: by 2002:a67:ed96:: with SMTP id d22mr6925532vsp.7.1552782767257;
        Sat, 16 Mar 2019 17:32:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552782767; cv=none;
        d=google.com; s=arc-20160816;
        b=zIdwmpsuimpt3hGgJE/Y9B/ltxRhy4VwHM6U11GuLL/MakQrf3ffFIXyHrTWf18f0q
         q8htvDCH43sTGxrGPPkEt1C0nzzWQ+SL3AIi2TMKksTEAwuUDdGeFmgN0xiukyRZvyJ0
         G7AVOVDIa6jGrhOuVLUC2VVaczXJs3qGydw+QK6tl51rr4EfU+a3eJgbPbARLv+1jHER
         7HdlKjFUM5hfOaMyLWq8MEdXRKLU3OLg4RLGxlK3RKgw/boxprvwWtq2YM0698rdDhnf
         vRD8hCNMukxI4Mj1ZQ7eqpLIRJO8ltISx4chNRArYXAwmg5Tueq+bDldbIMsjYZq3Wi1
         v/TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=L0A49xIB9+F2uECLi87kYMUhHjxgEQE1AtyouXS0Wu8=;
        b=VEywosTvlNovtMHgHBbeG/7JE35TjgAkYyHrm/0e567Bkp8W+YvT0i5AC8WVpiTEd4
         rPiJWuGCZQPqXLXGWgwxUVp5fYMEd2TuoMBxZxuoJ4f4qBR/7IO09iONnWzG4dYZ2YDQ
         pu9A81bc6oBoO6nC5YQfM4A6V0K9y9WXG8nD0CfpN3rgxlu9Tt+OIdqXSy5y+K2ZA4q2
         mccDhum45jxSvxLuhjf6IxN9JqjcElKSBkY1NRV5wJgEq9WzCLXCQji+dIkMatKY5iDA
         +gfFOQnmrFJ01aJKZ1KDW01OR6t39rQ8B4zM+KBUhyF369PHB0NeHdQcTMKjfSbafVmi
         S0bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cZSPaLAh;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id q85si347479vke.5.2019.03.16.17.32.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 17:32:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cZSPaLAh;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x231.google.com with SMTP id k11so10291049oic.7
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 17:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=L0A49xIB9+F2uECLi87kYMUhHjxgEQE1AtyouXS0Wu8=;
        b=cZSPaLAheCwoCz0Ey5v583P3F3CEj+dikq7FW0SPk//+idzzqtmKK7CczCUQ0nJk9K
         eL/1vRDVM4GA4l7A7qfSAyvexgiAb52QGw/nP4DU6J9eMWbcsYPAwXj39mWxrDyf+rxh
         tE+NYbSSTGKECdYKLTBenJfQqPAjGZ3gt9Bn2MXHhWLt3Y7Ry9Ll7zDQ8CMB7XP+g3PA
         S+VTexmeDDsHc2xcPBVHy0PrZQ3hdkAU2i3KfrLChZxZWa2PfCNCkzihmeYckpzNj3Ee
         8Afqy+Ito6/0+M6o8bUQy6YcXiSuK3XBKr2WJ3yPkcgaxLVOoDZ47NyxV2ywI+P8bmAe
         WT4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=L0A49xIB9+F2uECLi87kYMUhHjxgEQE1AtyouXS0Wu8=;
        b=G+aItaGmAuSE+yCtRcqQZrH4U4ggizI5f2St9bgHfey2dPyWG81A+C13CLjsRqPgW4
         D/Ks5m0DFRucoR+8TPZ8VfPZDVT0Iuya1PxGkEqOhZq9YUfqAbFfVKv+gpj+5GzezNGX
         lRVvmNDiBck/JDtSgLgRltDXu8dMoT4B0Lxp65YgRklrCe43yVCpZBGJFh3jf445/0qH
         sIsG0vtE07PgWP38R3MtLjAbBAb87TN9Y56XMZ9OXuwFRVrI403hHkufHS5dbWWWZNBi
         oriyLkBSADFZ0JWfbnDiYTkntso5oKnxpiheFkgdLqx74dTDsiHnCIGNI3Wg+ykkzwx9
         A+bw==
X-Gm-Message-State: APjAAAUgDIiHuauLpZ3rMaKUZC4oBvFvDQAFeEENoaCvXbhOvd8IQkm/
	Z88EBqXaKlbYH55BAKbWOOo=
X-Received: by 2002:a05:6808:5da:: with SMTP id d26mr4224336oij.21.1552782766976;
        Sat, 16 Mar 2019 17:32:46 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id x202sm2801406oix.25.2019.03.16.17.32.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 17:32:46 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 7/7] Staging: rtl8723bs: Add missing NULL check for kmalloc
Date: Sat, 16 Mar 2019 19:32:24 -0500
Message-Id: <9e935823819d846fd331aa188f69ce295deb4ca2.1552782299.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>

Include missing NULL check for kmalloc in function rtw_init_evt_priv.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 2890e12f6fb1..4ea6483f4634 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -213,6 +213,8 @@ int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 	pevtpriv->c2h_wk_alive = false;
 	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
 
+	if (!pevtpriv->c2h_queue)
+		return -ENOMEM;
 	return res;
 }
 
-- 
2.17.1


