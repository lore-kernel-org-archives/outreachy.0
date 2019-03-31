X-GM-THRID: 6674450234072891392
X-Received: by 2002:a17:902:7444:: with SMTP id e4mr1021090plt.69.1554029377168;
        Sun, 31 Mar 2019 03:49:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8a85:: with SMTP id p5ls2724819plo.4.gmail; Sun, 31
 Mar 2019 03:49:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwmi2aBf2TM7UiJnWahE55rivaiVb29oylMibGQEctytRRsZfd8u9EyP9mItSwh9tw7JLMr
X-Received: by 2002:a17:902:2bc1:: with SMTP id l59mr1332421plb.17.1554029376520;
        Sun, 31 Mar 2019 03:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029376; cv=none;
        d=google.com; s=arc-20160816;
        b=ySdNhL+LcQk5Zokd61dGzVO7R5X0mEgFy/h/edkTEn1l5MwTnYJAVdnJgEIEaBKjew
         OEHB9MHwV7ht0il6wji2uLFxeRueET5eMTXqX+y90xDG1nrF4g9WeozQtM1Y8nK+udCg
         KbTXy8Utci1PhHSLTl5J9tPTOsewAz6Uu9KXhrC2PI2h9ugnfEMV1UCgXkFWDfk/jcv3
         oikdngbfrX8H1c3ikEGwZGbxcP2uGTANvYXzkD4rUZmmKpDabu58VxD198FK3J+vZrI6
         3mgA8+t804bXbRYtstO45kdL8cUo0yd3LUj8Vqyph92/KF9d0u3zQwP/0EKoys+xBQJY
         HumQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=HggGuUP9UtjiMsSkbEgBkLox0qaXkMwvhgnDLtJNWIg=;
        b=ja4bfhqgqKsLe3q673AwvRnEqHJRk00QJP07qHJjVzhAYZdPlFTrbufhG+Xc0FfehH
         ZEjEneq0CL0IJbAUdl7cj3jR+Uo3k3X6Id5ASuIz8vhejtZLEdD6DtPyyoNgF04VnpX3
         TcNwG93XP3HBi++otj3s307wDzKEQNxAFbk6zPGilwFj1qd/lrnVkmHLnKsm0rp2gNzq
         2xzzWTxwBg+kbLDfoU7aDKc8FQLWTPXb6e2C9zXEkaDvoqxtM31AdJUlKNLfAH0etied
         SRxBiHH5V7J6nB8CBckI7l5NSQhQpXsaHLSmVSuPo53lpMf8vSfxX/eyT0SZh4gp/0Ga
         FLKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c5KbwPKl;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id h2si589977plk.2.2019.03.31.03.49.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:49:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c5KbwPKl;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id z9so3291475pgu.10
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=HggGuUP9UtjiMsSkbEgBkLox0qaXkMwvhgnDLtJNWIg=;
        b=c5KbwPKlUlZ5Wwr3jcc3QAAyUiOg9Gr/lUrchWsynuxqJjJVGquvw0jTJX8vb6f2on
         W3o3T/kVd9zyphNtLj4hcOg9cf4HRoiWknbKa6aIN3nqC9jaena2VXqWsr0pWVI3LdnB
         MZmC1GKOQZHH9EdPuelRDozT3hUoimDHjb9Nqt08sIuUeuHFbK4y/LndXpMde1Uan5Ai
         FStI/x6+Id8cQ17kE6h1G/+3QdMNn4Hq5TpplSmaw1n3Ks4WF3GMGgB0B/ngIzIWfct0
         gcAEcuYXj1a8sgRAfk1+t6HkU55Dmq6BlRC5Z2kxKEn1tK0LkKLK8Upu+TGbYOdvHadY
         Q/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=HggGuUP9UtjiMsSkbEgBkLox0qaXkMwvhgnDLtJNWIg=;
        b=SNH+iqrYJulTFh8I6cTfL7AWMX8DqN7qpKrgjgrArhMZfY6WUN8rTMQRh3j0X+Yit4
         my2RpkxkfByddE+KGk4+hogRdob5g9CNK6Sirc5/MIAYW1irtzqdheOqcUlD2gpqRxi6
         IPY7Z1B4CalI/3zFsQJppKxkOrz8xpnkOAPUiykTnucrLAsGLh0We4+hRiE3FBseXU8m
         uMtYKO5RYdv5emAGD4ZTg+4l1lHhOUEFEgjvkSgdYTvsFmvNySEa1YwmcN3IzrBGxmrW
         fW3FWA7Q+Fap5SbLouEcn4BQ/AlNqY8giQMKbuHRMI9xU4LFcrUtzkCnN/3/Grf0mE0Z
         rQNw==
X-Gm-Message-State: APjAAAXRPXjAwcm/iErYH16CHE4S2pgdfk0tWdDGwHtZCZ4iJP0I4pnK
	QGgWz5TjJH4/FJ6po9MrsEayXJtV
X-Received: by 2002:a63:e050:: with SMTP id n16mr54871663pgj.210.1554029376017;
        Sun, 31 Mar 2019 03:49:36 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.49.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:49:35 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 7/9] staging: rtl8723bs: os_dep: ioctl_linux.c: space prohibited before semicolon
Date: Sun, 31 Mar 2019 16:18:42 +0530
Message-Id: <4e880e14bfbf26630408990f3c6bcf8b44975b18.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>

Remove space before semicolon.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 6020b0c..21b2065 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -987,7 +987,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
 			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
-			psecuritypriv->PMKIDIndex++ ;
+			psecuritypriv->PMKIDIndex++;
 			if (psecuritypriv->PMKIDIndex == 16)
 				psecuritypriv->PMKIDIndex = 0;
 		}
-- 
2.7.4


