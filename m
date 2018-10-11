X-GM-THRID: 6611156296380973056
X-Received: by 2002:a24:5517:: with SMTP id e23-v6mr5309724itb.1.1539280121965;
        Thu, 11 Oct 2018 10:48:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:8979:: with SMTP id u54-v6ls3928730jaj.3.gmail; Thu, 11
 Oct 2018 10:48:41 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60OZBclSSThtwv8En2PniofnVIwF+1bSLcBv+127N71kjwZ2cc8KyNf94hm1sgEygfNfnm4
X-Received: by 2002:a02:58c:: with SMTP id 12-v6mr2228515jal.19.1539280121309;
        Thu, 11 Oct 2018 10:48:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539280121; cv=none;
        d=google.com; s=arc-20160816;
        b=wyXDfk+Gv7OnelGgs7BiRbTQpf0/KDRYOFgUrpvoRg3NIx4slx5ZNMx+rNzxhqYvbW
         fl8vbEP2+H3kn2DJ2Svx/daipMWXa2A6eVYLPl3sJRs2OZv9oztZUZa9HEsBkfRhXJBS
         evDMvcNakeVDxatTZ8h/84ZFkLp/2p3Av6bGWFNEAT9BDqsCc7DamO9ZvvoP7dcTKo6X
         qpSIGtp5nqXzoloA/rD4ZUKEE8ErPPtoKyvh/yFaPNsFt1RCSSEh3lyOXanBSVcOKotm
         GDpLjs3spep6UYc/F4CGfs0EqPIHrJYYo4lAJIy7VGepwUDbRT7mo9xkvp1OUdJkxP1P
         y36Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=k/PNIci2yNDBcnKjOM9eRbST5hcDZezfOo9nJz63Y3s=;
        b=uhz+ZDo+VoRYR5W8HCEjlRcaYD8tgzVf5gOSGxiJBznXw2fUaSc05vr3aTHrrAzKkq
         ZRFFEaJiT/MtFM70SuqD9hzBDz5wHmudKVZn5++cnzs0wdnh3yEbCxfr1uYFzafB1Dli
         xg24lMmbql6X7M6TWXOxaz2A/gcYtPeXmd0N4oxkeVLrIf1bJHt7vAPpSex9+v8cblKl
         IbbvBA96z5oR6ic7wmzaa3TXryuKz2LGZB3Cg2xde8qCrowBW5WOk5sqoi2XKp5aMjpS
         CzLkfZlxNPQd3CC+Y6W05x7pts1PfvCydzIyQJU/8Grz0xPTgUJ/BHtJ1cjfCU0XnPcA
         tFkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VtgfFF+o;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id 199-v6si641817ita.2.2018.10.11.10.48.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 10:48:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VtgfFF+o;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id c8-v6so4573652plo.9
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Oct 2018 10:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=k/PNIci2yNDBcnKjOM9eRbST5hcDZezfOo9nJz63Y3s=;
        b=VtgfFF+oVJ8zxGqvEgOyG+RT+M1VI7NovUp8sqTOhElnhsWoulJHHe9QeFRuurNDP+
         Ay/6pUpuJJ2L4Gz8kVDvNeBuqiFcW8TA5XrlzTVTv3dExdUkvlai7Af3gQNxqLZuQAzj
         L8Ka75PqKCTa3wrOpmZYJJo7Rn3CfgtGX9jsrVv+FFc+CbhlDkGJ83kzRicN83GqbM4C
         g9BvMVZh3FK3fLRaTTVwvQ5N4eoaYjbqP5TxGLWawOIDftpHQiaEqS4fckOdI/ttpGvt
         3KdeiVUjNzLJyYNIkDpWhhqTM2beTNBwev5dOJDxgxD8KdCydxKWmlQGAwmPDZmSmvdc
         Y02Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=k/PNIci2yNDBcnKjOM9eRbST5hcDZezfOo9nJz63Y3s=;
        b=uVz4OpVyLOv8ErPxTrYvE+e38DexmX5unr0LfQN3mXmNfh3x2JRMKkma6e7/hIm2WE
         6O/Y8bjy/f0lx2d1CSAgWtINVaS/BKZkQvuuxGbTzB+bB8d+wJtTVsSDlGISjLIzqZyS
         IctNEO0sQw5QQi4FOLsgF6Dwx/R4mhrv+m0Hf2QZgDgxhHLuHB78Oy2YMbeR1T8nNUV1
         aP6Wn/08sMWefw8u8HKtueGnv6lWgKx0sGmd+fRpZbpkjVy0wD/YBK4+qPWwxy2aDzd1
         txlFgvWlQJUi5QZRPUgL/1rh/oIcjVDZQ7cJXgKzjs5FDBP92ZWIPU9HApcXfmIry1bl
         RGLQ==
X-Gm-Message-State: ABuFfoidaMhbj81Yp8OlBs8F12+37NFBKIvu5B34oZVyosadrRVeAZqD
	scvF65AFR//Ry37WErKFXzg=
X-Received: by 2002:a17:902:8646:: with SMTP id y6-v6mr2459951plt.86.1539280120891;
        Thu, 11 Oct 2018 10:48:40 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.199.59.255])
        by smtp.gmail.com with ESMTPSA id l71-v6sm22368607pgd.31.2018.10.11.10.48.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Oct 2018 10:48:40 -0700 (PDT)
Date: Thu, 11 Oct 2018 23:18:33 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
	hadess@hadess.net, hdegoede@redhat.com
Subject: [PATCH 3/3] staging: rtl8723bs: os_dep: Shift * to be adjacent to
 pointer name
Message-ID: <deb7888572fb02d8cbd80fcaf9d9cef69c550d88.1539278377.git.mamtashukla555@gmail.com>
References: <cover.1539278377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1539278377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Shift * to be adjacent to pointer name to follow Linux coding style.
Issue found with checkpatch.pl
ERROR: "foo * bar" should be "foo *bar"

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 243394e..28bfdbd 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -528,8 +528,8 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 	}
 
 	if (padapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) { /*  802_1x */
-		struct sta_info * psta,*pbcmc_sta;
-		struct sta_priv * pstapriv = &padapter->stapriv;
+		struct sta_info *psta, *pbcmc_sta;
+		struct sta_priv *pstapriv = &padapter->stapriv;
 
 		
-- 
1.9.1


