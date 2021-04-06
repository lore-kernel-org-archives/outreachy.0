X-GM-THRID: 6947995427572547584
X-Received: by 2002:a17:907:1b06:: with SMTP id mp6mr33994666ejc.292.1617709426708;
        Tue, 06 Apr 2021 04:43:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:97c6:: with SMTP id js6ls9734731ejc.2.gmail; Tue, 06
 Apr 2021 04:43:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkHBbX/YT3n4xg8Tvrh/2UJcy2u+vOCUNOBhrguw48KFHwxOK10ng02mdpQm+LAsv2hOrg
X-Received: by 2002:a17:906:9515:: with SMTP id u21mr34305550ejx.86.1617709425244;
        Tue, 06 Apr 2021 04:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617709425; cv=none;
        d=google.com; s=arc-20160816;
        b=FKzO1QZj+B7jddBLJhxatNnERler2PIzoL9Wj5d+tAdNGf0fWiYU2FekKTu6Sk1sEt
         tN1oHSakHQs7iZqpAycnOW+Fch3jchkTdZu/Ju7xNJZhLckc++3XLtKU3Qv3LepkVYLX
         CnAhjBHlFN3el68Cci0L+eNvZHk2+RgiWFj2BIbEh1LsNf0n/YQUPf9fIM2zqCYhraTD
         X45eiuUj94huNDPJGo9CpidWsGl9YYdaWK8j8Y5HU7iqwRJ3cCBjVWxP6Wu/m+MJWjp3
         2/NropjvRa0p4EW4L8ZLF+lVE8lTVoOOUgdFJGZc+Sn09ahJ4Zbzk8PgNBi6u69cAENe
         29mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=fiBLuC1gzj2ls2HyWKhViI8KtJCaxzuMcUl0CY/vuso=;
        b=essVQhO7VDQwf8TbmD644C42J9AmAL7lZEbPlT9oNynb0YC2dn9mbvnkeU8iTdFk7g
         qPnAXqVIVArLfxJ/MD7Z2409yadn1aIbu3etg5upgR01HbAPOwl3l5UmMjPeE6rHNNik
         luBFnvjug+62CmEIwOflN4Q1wv416Ieeo/XPuswD1f54b0rjcTkPI5JRZ87cjeMaBd+c
         z4+CKE6weL+axbYRv84saP3JrvUswtt6biqRY4cGF8JeuQhiqhNLnWVb0b8L3CCEfmTt
         LvVqQnoZ8CV5X2teLbN1QF8xFmgsuueN9tOl7BkxougfM6Cso9MmmvjWGlLBYrHBmIv9
         uaCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h5BygVXj;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id df6si781704edb.3.2021.04.06.04.43.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 04:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h5BygVXj;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22a.google.com with SMTP id u20so16064649lja.13
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 04:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=fiBLuC1gzj2ls2HyWKhViI8KtJCaxzuMcUl0CY/vuso=;
        b=h5BygVXjkeyDOJLKFavSWMkkqBOorjsWN/yyfRrVjSdu65YdNZ2DlxJIlhB2ZU9isc
         OM9H68o1SrPrVLYhoUgxdj6NqaUSf6tqHiagb7C00A4fd1NpXkGFkO3MSxFyvUfwG1OB
         AIoVKYqamHeNPATkIaLbrWjuJaaJbnjo1fDBbIfYW0n8xSzAbA6SLh+GxHg6H7At4SkM
         sPYNoFGccduLxexSYkfkN4Edze83RL+SAMxFYom24zI6OfBp4l3FyEiqQp0vqOgshusP
         eq3mjhFyv/UEf8+2aC78gpsSVgmaHRyCt4nTaEtCFlaBmCexQe23bgytdpit4HP4tK4Y
         ygeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=fiBLuC1gzj2ls2HyWKhViI8KtJCaxzuMcUl0CY/vuso=;
        b=fuifzoktycjUYKdVvomGzrVjjuZ+V+gpbsJ4OJmeEKo/w2zuSoT+lvZWN0U5G5mdG6
         LNtioTQ+wozGSXK/QI3gSgn0UGJb66CIZccerWaZZE+907Fno3npZkK914cgX/mpuY9t
         AL+EmzhkZlPuk0Dso1Bbo7Z0oRbrbHh6U7KVHS4t8bwXyZ28APCVJD71L2sy2VsONWQu
         CCkq8r9hukZlyUMGA1vIDd8Ta9Igb6kdn2OCf3N3lyWSKV4ijBVeJPW3SixzSULebz14
         Tsr1k42ezmgH9CSlAEdkqVs5ZMujEXLnT3XctoXRBna+Cm32eA6Gqx7r/26XLVKt7vKD
         TQNg==
X-Gm-Message-State: AOAM532hkH6wb3gc0nv1vjLYHDEpCx+kOU/olHok7bvxcttPuhb53jGo
	2e2vk/SJc1SJ0H0Dy++dUNT96jpFmBwdUg==
X-Received: by 2002:a2e:9c8e:: with SMTP id x14mr19152814lji.312.1617709424591;
        Tue, 06 Apr 2021 04:43:44 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id y16sm2121267lfy.252.2021.04.06.04.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:43:44 -0700 (PDT)
Date: Tue, 6 Apr 2021 17:43:42 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] staging: rtl8712: rewrite comparisons and remove
 blank lines
Message-ID: <cover.1617708653.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset replaces NULL comparisons with boolean negation and
removes extra blank lines after an open brace.

Changes since v1:
	- more detailed descripton of the commit

Zhansaya Bagdauletkyzy (2):
  staging: rtl8712: Rewrite NULL comparisons
  staging: rtl8712: Remove extra blank lines

 drivers/staging/rtl8712/rtl871x_io.h   |  1 -
 drivers/staging/rtl8712/rtl871x_mlme.h |  1 -
 drivers/staging/rtl8712/rtl871x_recv.h | 11 +++++------
 drivers/staging/rtl8712/sta_info.h     |  1 -
 4 files changed, 5 insertions(+), 9 deletions(-)

-- 
2.25.1


