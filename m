X-GM-THRID: 7021853580963348480
X-Received: by 2002:a17:906:4310:: with SMTP id j16mr14800188ejm.48.1634903233041;
        Fri, 22 Oct 2021 04:47:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:5941:: with SMTP id g1ls4341883ejr.10.gmail; Fri, 22
 Oct 2021 04:47:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzCKOL8ETUXmn4JFoQPvqMBkbWTfYeRehYHCN2YPNgOzf+AC6S1bROrMorKZaDa+YzqpXaX
X-Received: by 2002:a17:907:3e22:: with SMTP id hp34mr14637762ejc.464.1634903231463;
        Fri, 22 Oct 2021 04:47:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634903231; cv=none;
        d=google.com; s=arc-20160816;
        b=lU2qXG1hboqtfXfk6ZRxCrMXdmm57TLwjaLnIrvesIB3DAw2SgCue5ZI5jDAU645bN
         pERUu0rQVna7QgZDhotm0Zx3eT3cfLg+7xqMTzCr45oNGEVs0wr9hLHVBbS3BiHPw1ZW
         65DkMM3xK4KT6cBqYbbUeGZkyBq2K9Uw2J0sWYiYAyiYAMdSabEM5T7JBC60TMhPSXFP
         aRe3HNOV7hoLFlY2ZanWjy6Q8sHcXsfoc8wvhamtS+tX/jvnV1WDlhHOuLFnR/+Jjpia
         5ex5V6R7ymuqqt1/K2yV4lpGkeZGhw4t2VNWNssPEeOKWh4TotQKujz70ARoJGgOISiS
         CHxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=t4Cy9ohriiGmBTdEfniJu/CEaDeRwPhyDAxiO98jLEo=;
        b=rJc9sXdUuDesQhKod55uxxjr3LfqTchfeyJ+DYBCx50COul9biIM5UlTHxEzNbWE2f
         5x6ZrgtYJcti3DkX0imx99d+nYPL5/tY5wK6ZanojgS9mAMf/HKJ85IP22TJsfr2wgZ6
         9SUCKGU2KKIz0SvuyVBS9K9I30jgAZshUScav20WJ5rANLgQs+X/3489X3WgMu0Y0Xxq
         FSLcmM47SUjTpN+ZFWzXA4cGY7S9ObVpT4IIozWVqsxd5oRIYdIGdWVrrZMfTwaXNnpf
         bZOS2LQVO/hZ4AAQTlFqPB+EiqBI0/mbIVt/6eakLsUk7i+YvegTBAAv8ghmtKTWTbvb
         DaBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=bKk533uf;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id bi21si87513edb.0.2021.10.22.04.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 04:47:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=bKk533uf;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id u13so1133741edy.10;
        Fri, 22 Oct 2021 04:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t4Cy9ohriiGmBTdEfniJu/CEaDeRwPhyDAxiO98jLEo=;
        b=bKk533ufU6iiuuZpomfqR91e1+Gp1BeUkkXUORXj57pDqd6hhxJ/aWJkXl0uRAoHyy
         RYIUxI/fY2iEHj7tuwXjpqDdZSsOTv6mqUO8OvPzAxMB+HmJ1+aqhtv83AoTv6maQsg6
         FjShq1lezZLutpJKpasMt8lwVlFIdUPtNm+QoyNIly+BckKA7AzNFlMSLJXRKRljBzvm
         RMLS1gP39iLAlSbv0ZciN5VMu2XbzsPxk7C4QJRXRQIzqnExBtwmWQ61tt6f0JNokwZm
         6HmR1Xp4B4cAGdNQN/6oK1K1d9PIFmwYiERkoJ8MdltTo2r5LXT6nK8wqSrPQWgDlSuC
         q4Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t4Cy9ohriiGmBTdEfniJu/CEaDeRwPhyDAxiO98jLEo=;
        b=n4TpSx9chqebyroxlqepkXX9AMk7ijHgduIDqpA+qB2xQw18bgl5uYlGbhs76bi7y2
         I9/FxwiGZKVrTPkgBxLWBe9AaUnk8KI10KQJiKYyxaERmWMuDI2EhPALKakA95Sh2xxk
         15icG6cBTdbXignHey1yQN8SQDAZWz94VXy1zrA11W2jGAOIENr8rLCm8lIVt+MZO/ao
         0WKtZ2MzpdwC7ccUAdDe3+seQT1XvsI0hcysFRcuHSjfBuguqhGrdIxFcSspKD95+31U
         7Fbp6kwK+EIboXdjqsb67lwyjHe32TwRH2aN225CaBFuRZSnLk/+oJARv1Y7SsEO1ZM9
         CHCQ==
X-Gm-Message-State: AOAM533yx/1P+2ZGwZ3Kmn7mHBkC27vH8fdqpp7sI9I+y7XmOm9NL/So
	J4kqO8MUc8pWVbKjuFJy4v0+htnyEN0=
X-Received: by 2002:a05:6402:402:: with SMTP id q2mr16462692edv.248.1634903231191;
        Fri, 22 Oct 2021 04:47:11 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-80-181-148-119.retail.telecomitalia.it. [80.181.148.119])
        by smtp.gmail.com with ESMTPSA id j1sm4307029edk.53.2021.10.22.04.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 04:47:10 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org, Kushal Kothari <kushalkothari285@gmail.com>
Cc: kushalkothari285@gmail.com, kush19992810@gmail.com, outreachy-kernel@googlegroups.com, fabioaiuto83@gmail.com, ross.schm.dev@gmail.com, marcocesati@gmail.com, straube.linux@gmail.com, philippesdixon@gmail.com, manuelpalenzuelamerino@gmail.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, mike.rapoport@gmail.com, kushalkotharitest@googlegroups.com
Subject: Re: [PATCH 0/4] v2 staging: rtl8723bs: core: Cleanup patchset for style issues in rtw_cmd.c
Date: Fri, 22 Oct 2021 13:47:09 +0200
Message-ID: <7977747.61zFHCMloo@localhost.localdomain>
In-Reply-To: <cover.1634899405.git.kushalkothari285@gmail.com>
References: <cover.1634899405.git.kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, October 22, 2021 1:37:34 PM CEST Kushal Kothari wrote:
> Kushal Kothari (4):
>   v2 staging: rtl8723bs: core: Remove true and false comparison
>   v2 staging: rtl8723bs: core: Remove unnecessary parentheses
>   v2 staging: rtl8723bs: core: Remove unnecessary space after a cast
>   v2 staging: rtl8723bs: core: Remove unnecessary blank lines
> 
> Changes from v1:
>   [PATCH 1/4]: Moved unnecessary parentheses change in PATCH 2/4
>   [PATCH 2/4]: Added the extra parentheses change from PATCH 1/4 here.
>   [PATCH 3/4]: No Changes
>   [PATCH 4/4]: Fix whitespace error.
> 
> 
> 
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 94 +++++++++---------------
>  1 file changed, 34 insertions(+), 60 deletions(-)
> 
> -- 
> 2.25.1
> 
Hi Kushal,

Version numbers ("v2" in this case) must be enclosed in square brackets, 
between "PATCH" and "n/N".

Thanks,

Fabio




