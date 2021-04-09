X-GM-THRID: 6949230794774675456
X-Received: by 2002:a67:f40c:: with SMTP id p12mr12156663vsn.56.1617993878715;
        Fri, 09 Apr 2021 11:44:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:3158:: with SMTP id e24ls952654uam.11.gmail; Fri, 09 Apr
 2021 11:44:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwtjkRWWJhFQQfRKe7r9/AvunVzFyQkYXokKlC1cPjxe4mbJS4e1TitbkdjshtLzGMyZmdf
X-Received: by 2002:ab0:385a:: with SMTP id h26mr12023247uaw.75.1617993877757;
        Fri, 09 Apr 2021 11:44:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617993877; cv=none;
        d=google.com; s=arc-20160816;
        b=tQ5tvsrHuQNjciB+jJy14a2bWs7TCyY30WDGr8Xn7RUppID9PPz4lZriLhq8P7WiWN
         kahQbIE+DRcjW55OqMggSgcmF+J54AIxeHTkQQgoDqyZ4ewiKa8w5W9Eaaamqpa1Wy23
         HCKh5dCpGhDRD1+6cFXoQVllCM7QXazOoR4+Enhb8pkBPfzE4BUbPq1d6FsuDi3J6Ho8
         vXxtt176ZTCNVhNF8gFvLIU+DWkSXYqKZafRTilBoDSbVgxwQ2bcZ3CMTpNSmi/afova
         FkfueM3WS96Rj0CUFgo1aHMsvk+v0R5rjiGjGbhUpxqgemAhcObgPb5gKsgUcRtyjCCj
         Lccg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=/jVQn4FxU4fxpi2T0y4eI85ApJK3DaVIVyJkZkXHH7M=;
        b=hArHDzSwDquecdtCwAmhbbGrSKeJfT57T4JuIA6yUELp/RSLdPmvsL4L+AcqB6REh2
         RxWhwLXpHm2lmTcNiCvLlWOs20nGHf+3YwxCZFFN5by/oyqeBDndrgjsYMqFrBoLQE+X
         sxfuYAlu9hUFp/I8A0l06PoiQJmL4jkEXyCxWdNum5YW3tyA1VkXZXRpQrxZBTdKhyXn
         zkuBWBZmAT24m4/jN9u6QdAW5LwfQWsQEnmu0oNH2OYTeVd5mTiV1jRQGGTYFeQbkGi+
         9oYGsNeshlhBDzSuRtK6IeIlZZWlskYFfVYpf/rHsjWzZbgsVSH3RSjo37qE63mTG4hh
         7J5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kWyeTpw9;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id i8si244387vko.4.2021.04.09.11.44.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 11:44:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kWyeTpw9;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x432.google.com with SMTP id n38so4828832pfv.2
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 11:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=/jVQn4FxU4fxpi2T0y4eI85ApJK3DaVIVyJkZkXHH7M=;
        b=kWyeTpw99ycAvjxWhma3rw6GSVDwt9hQ+v7XDhhFgtY8JOeS/Mn/Mewk4QfQMhMNnI
         5dPlWaCOurOQ6J0ZhFlDB0uDF2goJ8f83VJEgUCEVy9xe3BiqVYYqAVIcTUyzBGOIfzX
         bf6c/V/SruMtrp4ARjZp6Ecd0CXQF6FZG6C6SuxYPtdYHnjVvri60Px+A42g2EfQp8pN
         G2Cc8H6CalMg9XOB2mEwr29jHtwlFJqXRi5rH7xduu6f6g9jnMlvx462AR//KfwRCqXq
         lb7XvuktdHfGtMBoF18mEwVPw2ezvKx1E2qrvkmV1b45HgDD8zKTl+5p08l5T+z/i7Ns
         hGRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=/jVQn4FxU4fxpi2T0y4eI85ApJK3DaVIVyJkZkXHH7M=;
        b=P2Fyjp+hEitVN+YWzdu1JehfZQ20Y7sbGDpwahH0k7SWc8CLxwHcC+LGROSfdscghb
         Dl1UdDGmLvNe5AGWgm2q/wZeALKUQmHmpkx9qiH7ESk2KagZn9nClYW1PFGIPv1Tx7Xa
         d+eZ0cHAA+IbhNRBt1zNsGQMxEyTjXh341hHW+28TdzFYlyI4FA30wyMBSvPPmCXu3+7
         F4IWO+TTw+dQvCu6ZKwmQrclPxWCVptqbdcuPO9FzBBkbMNljOycp5Nd+D5Rou2fiF/u
         vN1GNiNnAwKsTJTiWEErPfnOadnST71WMRK0cB+Ec5nJ/op7mhXE2FYUgdm1UA7oSZjV
         3JOg==
X-Gm-Message-State: AOAM531GVD26o/rjvfkdCzPErsA12CHRWz8Tp8j9tezwsrqwSKxuaymg
	Wk33pdvkF5G/7lQqfrrybqA=
X-Received: by 2002:a63:cf55:: with SMTP id b21mr15395836pgj.126.1617993877325;
        Fri, 09 Apr 2021 11:44:37 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id t205sm3263243pgb.37.2021.04.09.11.44.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 11:44:36 -0700 (PDT)
Date: Sat, 10 Apr 2021 00:14:28 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2 0/2] staging: media: zoran: aligned the code and block
 comment changes
Message-ID: <YHCgjJ1rSxlVxGGh@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes the cleanup style issues.

Changes from v1:- 
In [PATCH v2 1/2]:- No changes made/required.
In [PATCH v2 2/2]:- Aligned the code using tabs and spaces and
readjusted comment line.

Mitali Borkar (2):
media: zoran: add spaces around '<<'
staging: media: zoran: remove and add comments; align code

drivers/staging/media/zoran/zr36057.h | 293 ++++++++++++++------------
 1 file changed, 162 insertions(+), 131 deletions(-)


