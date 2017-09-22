X-GM-THRID: 6468588291165782016
X-Received: by 10.28.136.12 with SMTP id k12mr185049wmd.10.1506085575648;
        Fri, 22 Sep 2017 06:06:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.207 with SMTP id m15ls1361622wrb.13.gmail; Fri, 22 Sep
 2017 06:06:14 -0700 (PDT)
X-Received: by 10.28.138.195 with SMTP id m186mr183582wmd.9.1506085574521;
        Fri, 22 Sep 2017 06:06:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506085574; cv=none;
        d=google.com; s=arc-20160816;
        b=EFR77X1CIBgyuVVrAgHzDWrJityd0Jz4qfA0sBu9sCeQBcxWLZFKf/poppk8x5YIL4
         IKuOoJSqTItPzAt2UKbqeCvMZQ//r72S0iHGKkDMd3hPoPu9eXUlUp5mFczxjlgUHW78
         JpRXKbl0UoBwDC0ox9RcRJCZej2/ePXW+1DlqMrGGMY8VAA498sZo5uGadIxklm2fT6k
         sno13RkElH2uRN+KHVU1qge32j7znn5kcb+jvUsA0olek6/RBIGhrZaMKuGZr3Fw9+xv
         OT2kAEAJBgoaiqPeiVAQUtv+JuyUw1bTNSj/di3ID2PwDPGq/We0Gx0TEUOS7spzjU8B
         lGaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=VnqXZuyA/B6ymv/raTw1UJxfhX+VqNzKc5U30kQ3T/M=;
        b=asmhVFhQT5I0xiwFk/yCbXaaf6iqbERGGoMpQgS0iyazsmTgSED/BzESeCx/e9ewvn
         V0l4nR2iq8Dp/1qH2hdOFBvpYNYF6pIqfjy4vgsWi0VaCAFZ2avAW+dIgGjnphHEl3k2
         SSON1M8LIBcSJxb6pphUna6xY9s0KwSkwt/3feREhCd+xKuSoKfXx7p61uTaR+OrkoJ7
         M1aUvib+yBy7eidCX20PxuzF7JpnkkiP7IG063oFW2+hyGPuQLI6ILvgTsvvLFzIL0VG
         A6lb7TPZOYgo5DTMWRYpqTqM7vh7A//DnNru5Jfd8inbsIiIpUiXbjXTt0WKqh5Fe7tS
         ZMWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brBbrICs;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id k18si142002wmd.1.2017.09.22.06.06.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 06:06:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brBbrICs;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id x17so1237804wmd.5
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 06:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VnqXZuyA/B6ymv/raTw1UJxfhX+VqNzKc5U30kQ3T/M=;
        b=brBbrICsRpvzpQTjbmJnYTdbZAxtSYrmoiaxEpY2Q9DS0pSJ1pWd/lkCC0f8P9LlaZ
         W6a/DONz/KGKsFnRyZ5fAdqewjQH2j02uYWuNTZwhwTUgwDbyyaqbrkcHXOgRV+Nj2FT
         8muMl5KaciGhnGDxTJZgUDqXPLkFDyDiB4fd9/UjzwGWTIs8xkbVxi772yTrh/0cOQgU
         7lPKzTa6PadM22nmHRzdRn2W8+KqVcdExRwf7dSl5jjgcmUjd+JiAplCxLmjX+YBJLsA
         XqLKlD17aVGm6nA4z2SFsnr0wAe/CnXGVJbP5rBDmR8bACTxjT8llwO+ezxfeJwR+kpz
         gX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VnqXZuyA/B6ymv/raTw1UJxfhX+VqNzKc5U30kQ3T/M=;
        b=fKavEREKLOWNY8TkuAzEPHQhpYSQvD/cfY/P5CBNmqAWl6FOXTHjWHROhRtWUu5rae
         zElaT3O6zwjh7uCfAsxy8vpvbLDlfGCP/wklgpfeO/9z747Zxa1Pesk3fhg4KLg6364O
         O9uZbJ5Gf333NSVjq/phey1Wlrxih8HmewuehkEWwd3pCcaQDJyuh4NV6piP/WeACHSZ
         o3fFgDunLd+iYYY4vO9DuvZ/UkbHtWCpaKnG2mGb1MSEsCx8b7aLwDTFqu0DzDrDsggW
         A5i5TNBiioV3snehYslHVGvtDtFozXjWQs6ZSN6XhdP+i9Av+XWGucRxCCWzNx0jxcC8
         X/WQ==
X-Gm-Message-State: AHPjjUhAGu/eVmWFfcK0U/IUErCzDwJgjRCVpqISjSe6AVMXYg1ksZiY
	6TSHo7oPMKJdn20nmTim2qRESHBW
X-Google-Smtp-Source: AOwi7QDWmbagcZwzpg3KRUKQa8kxIEBWZQwt09zfHNrekUO+8muIGL0IBTn1yBi4ufzp402LSwS8SQ==
X-Received: by 10.28.9.130 with SMTP id 124mr3403125wmj.65.1506085574123;
        Fri, 22 Sep 2017 06:06:14 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id a39sm5936814wrc.48.2017.09.22.06.06.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Sep 2017 06:06:13 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] Staging: rtl8723bs: core: Fix coccinelle warning
Date: Fri, 22 Sep 2017 06:05:16 -0700
Message-Id: <cover.1506084848.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix coccinelle "WARNING: Comparison to bool" and other minor
issues reported by checkpatch.pl.

Georgiana Chelu (2):
  Staging: rtl8723bs: core: Remove boolean comparison
  Staging: rtl8723bs: core: Code clean up

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 76 +++++++++++++++------------
 1 file changed, 41 insertions(+), 35 deletions(-)

-- 
2.7.4


