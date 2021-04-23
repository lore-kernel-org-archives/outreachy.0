X-GM-THRID: 6954403981420396544
X-Received: by 2002:a19:550b:: with SMTP id n11mr3371876lfe.213.1619198896104;
        Fri, 23 Apr 2021 10:28:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c8:: with SMTP id 191ls3236143ljf.10.gmail; Fri, 23 Apr
 2021 10:28:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw6IsiMCVOOqCFsJbsR2zjAZgUXCXzCtiNmaFRRXxtjGr0UFbukKAow7Oyx8PrYIN9AG9OU
X-Received: by 2002:a2e:9659:: with SMTP id z25mr3432521ljh.188.1619198894390;
        Fri, 23 Apr 2021 10:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619198894; cv=none;
        d=google.com; s=arc-20160816;
        b=Lssv3Y26J2EGKsuTebnRvnJs/RDWbWKVHjRSfXSbn++VIyCPE4SdDla6qN70jL7UMO
         Y2XLj8eVDKf1+QIXRLzbY6Cu6++byQwyZodNrvmw/t8A8ASYuKe3Xb44IWWlFXGnHcEh
         OJ9si8i6Azsp7ajIMzCbdMy4x9ckfjWKRqC9A1YeCDpcIbkmD4c49mVvy7C1BqlU2OXN
         9lJzP+dfQKMcydMNjZGaHCjI5zr3dZC6c448aAVcnH7Aqxg9hwSZsPGR3vASpbORCpo9
         FruTwE+L5CsiFmA/vpcAQMWSSyNvYTWXWTkPkR0RnGUSqXqr2UmIRgVQuY23UP0GGH9O
         LxDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vm6d0KcIu0t6T+Evhmfekn8AqJkughcW21P6+DZKTMY=;
        b=f5jIjOLBqGr/udpD4v8XWvnazbE01TxTHO8R/id+Gsc1lLLXNqmUVktTlOnVLq4r5W
         uPD+S5zSlFwDuyccYgJjMIwDFfTK281iSnAgLo4+X/dqwCpZ9c0ozZA+fQB2LRp7DD7C
         HGtxU9Dzilhgkc6wRAD9o4KosPXqcmDfiWRgBnM78At4LqYLep4nv61aX7pF4nZiifbu
         fxnsC2hudvEcvmEC0rKsCx5/MGOZXtA8D4xn9HMr4n1KCMoGAZcGi91cHoqC33s0Dv0K
         W1gu+QLk082akQGnL+Cime/OgqDBBsV35O5rLxYUEmOdx2evTw6F8olvO5iH/B6bRcWM
         /iGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OxNiS3+u;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id y11si692184lfg.8.2021.04.23.10.28.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 10:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OxNiS3+u;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x634.google.com with SMTP id r20so25240881ejo.11
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Apr 2021 10:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vm6d0KcIu0t6T+Evhmfekn8AqJkughcW21P6+DZKTMY=;
        b=OxNiS3+uC9apRfK5dtzc+8/bjxa2LiPl72qGSczu3Tkfoa7FNnb0y182R9kglWI9t/
         tQSJldjfb6d2IVFNLSGegL/yTbeaM+Se9lUm8uE61Tj4yBL4TKq+86H0gL54AmBtPjnx
         yJnaG2w4S4aB4yUAjTYJ3jHiNtN7wFdnHWNBLPKRT6FhM+DSRBXZLdzl0Y5S0hVeCGTG
         J19PL4FsoAk4p97NxTzy/2kcXda8BzWMvNe3prVBx1sgS5yXnm8jcEce4dgQSlJnYhgL
         FevyhVSuL/YMWNXZKD1aTPYcjWZxGfr6ZYB2LoGYGi40eaWhn8EyYxV5a1Zqp1ITTj2Y
         2Ozg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vm6d0KcIu0t6T+Evhmfekn8AqJkughcW21P6+DZKTMY=;
        b=MF/lX/CqLvEst0uf5otXd5BAbvDie1m5Sc+ECMM2GZF14qug1hyFYizyWkGyEnwS94
         CLYuQsnuREt9jPnLgDQKr3p8cC9Rw0r4apa4v7syPRzRMq0Z0Ca/3gmynn9wXW70K5/Y
         rdNu8GOekNbgUCe+w8OshKg1sKTYdpJDC6aTxkdnLNV/ujy+m32l5AeEsPR1wFkXT4yK
         VKGyUvVowZNkunap9/fZ9h4n+tBdjDQKJ9DOVEQ7XWZOIzkJ7znxrhQTCu5+6BL3lwqv
         mTjf36KR8NcCpXNwGpn8q3FvMUEmU4A2zV51tSZMz99pseOEC6F1MsNQJl6cRpTfjEL1
         GCEA==
X-Gm-Message-State: AOAM532SvSNhTsYBlAB7/lpTXMY58puk4FVbqvi4v45R8CZ/yBVUGupW
	7sDy76XaVH9hV6mYZvbmdy+1oeHpnj0QsA==
X-Received: by 2002:a17:906:314f:: with SMTP id e15mr5400621eje.30.1619198893974;
        Fri, 23 Apr 2021 10:28:13 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id g22sm4410077ejz.46.2021.04.23.10.28.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 10:28:13 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Mitali Borkar <mitaliborkar810@gmail.com>
Subject: Re: [Outreachy kernel] Help regarding contribution url
Date: Fri, 23 Apr 2021 19:28:12 +0200
Message-ID: <2951802.hGJHBBm5eE@linux.local>
In-Reply-To: <ee642783-e5ed-466d-8ad1-0bb856e353fbn@googlegroups.com>
References: <ee642783-e5ed-466d-8ad1-0bb856e353fbn@googlegroups.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="ISO-8859-1"

On Friday, April 23, 2021 7:19:15 PM CEST Mitali Borkar wrote:
> Hello,
> I was recording my contribution, in contribution url field, when I added
> both staging and media drivers patches link, it said Enter a valid url.
> When I added either of the url, it got accepted. May I know how to add both
> urls?
> 
> Thanks
Hello Mitali,

You have to record a contribution at a time. If you want to record your 
second, third (and so on) contribution, you just have to click anew on the 
green button "Record a contribution". Each time you use it, fill the form and 
save. You'll see your list of contributions grow.

Regards,

Fabio




