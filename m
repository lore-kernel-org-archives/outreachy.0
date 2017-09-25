X-GM-THRID: 6469221009179279360
X-Received: by 10.159.55.229 with SMTP id q92mr5931679uaq.29.1506368477954;
        Mon, 25 Sep 2017 12:41:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.78.211 with SMTP id c202ls5830298oib.10.gmail; Mon, 25 Sep
 2017 12:41:17 -0700 (PDT)
X-Received: by 10.157.88.138 with SMTP id x10mr433040otg.188.1506368477026;
        Mon, 25 Sep 2017 12:41:17 -0700 (PDT)
Received: by 10.55.18.103 with SMTP id c100msqkh;
        Mon, 25 Sep 2017 01:27:08 -0700 (PDT)
X-Received: by 10.25.207.83 with SMTP id f80mr439724lfg.0.1506328028388;
        Mon, 25 Sep 2017 01:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506328028; cv=none;
        d=google.com; s=arc-20160816;
        b=GUFPQgDexzx+LZPqd5kXz0UN80yOzkD/ii2d/6u8g5xw8YwO5n1NRTMaVc9lTjm1ln
         WwcUzu97jKt6pQnvpVri9OvwZWPx8mRZDDhNqU9paOZhHR/DByK6g43wpKx3QCkwvhPl
         JKO4eREdOg45gSgh0Fkup+GByUA7cBDQOfMOmLBM7d57oQw7JIT1EmMi7LW7qGYIof/M
         GcLWMRawHeWMdgJjLVtFYvlb40Ah8UY5iRqJvww+9Hewb9FMULtLBndI4ru1iSHbFeAY
         9m+i3DCw4uPaKTndeLwTF1y7RbdT7XbmIncmYkMMzZlEGn0SB7lLGPaOTYCYPoE4L/RO
         vZvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=ZvNFENHw5gaWgh2IxvNPK6LpbJavjxN3ZJEX2exhL9c=;
        b=dXsu9C75qad6XRT6r25xEiryGcpuLKpbLvaa3hauAvOaLuyXHnvowO706VIHNeo93Z
         JWpDL9WXfQ30J4qS3cqmBfZFtFQmpk/Rywdf1fU61gHQlrmLiP2MRtND76O7Klfqw1Qu
         C1zE/bijZonu1LOOdWNSEOVoGXW9b3ociVXzuSd5j2U39J1IlfkbzPuCQPWVxmyP4LQT
         JTqg1zD6GyDmM+pvORUAWqoqXwOPeIIoIo/K/gnG44Ta8WcCwuwH+c4yIRB3IdTZRvcX
         wOr8PII5aDLYeVVv7P35ttnetm9Ys4taTZYOYb6BJ6ibZxeNILVgZ1tzR/ntH1/sv6nK
         2oQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOCGpnCI;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <allen.lkml@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id l133si466155wmb.3.2017.09.25.01.27.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 01:27:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.lkml@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOCGpnCI;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id b9so1428752wra.0
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 01:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ZvNFENHw5gaWgh2IxvNPK6LpbJavjxN3ZJEX2exhL9c=;
        b=ZOCGpnCIvkXXK+LcpwRcPfQUlFUvGmaem9Wk27B6GHfg2neOKDAjHkjCTH3fiibEfK
         p7xNiJ4LMV0pEljI0JLlUB+G64Fiuu6G8xQOlnnudyhTaXb+27guxncJQ/QQWbD5+LDq
         Ugl6yb4Og+ZBybWkf3FB4ZmUwX8GJ/XrdM8VoYrle6v8bXxR13LgaPlENOCha4coNg73
         FKv19en4yrgdSmInHFlymUMATnXAIV/tOV5ieBT5oTs1Sksf5kdEswRQKg9/6ekC+hOe
         QiYVvhDerRaiKloxul94PA9SVFk+T0RGR8oFzeCUD3uUKOktvepe3Q9+YxcbTaZeQ13A
         2zOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ZvNFENHw5gaWgh2IxvNPK6LpbJavjxN3ZJEX2exhL9c=;
        b=GmpigrHEjQ/hpKyiG+RjTkgh1qmlFw9P7Qa2+Nsd6PQ12CItsLlGyhOEniueNM7Sew
         2OoYLSEoorgEwTHVLjxmYuGHNaEV90l9PLxoQdb88deD2tseN+OhZXRtzzKIx8/0dYCt
         x+E2gdI5DlPSBnOOJYp/hGjDKUArKtggqS5+gKJNVfSYsgJofwEOOlK93IXSmut/En08
         eWL+oCLKApWtbqOpPCzH3PjKhqtYKpoR/Wl3fPOhnPa5VrSZxOUR3soZm/tShbEDHQR7
         5UYhWCsQFQCWZlCf7KEdXA+/4yy81KEBbtF/I6X74/jYrMRwlFUh/gu1qhUZ3UqypeYw
         H8tQ==
X-Gm-Message-State: AHPjjUg9Xj98PPgoPhmuEhPnim5sfM2KB3DSKhIR537SThDpAZNLigsQ
	BaeflyV/tXWDBW2UPA/lHRXKrYvCJXe3SZe4oOk=
X-Google-Smtp-Source: AOwi7QB51YTuFgUIMP84Z59WOPtAhkrSNCJlkYt44940LRdicdcGvMjy9uuq/2JmG3jyASdt3LlL92unpvPui5d1pdo=
X-Received: by 10.25.208.9 with SMTP id h9mr1762712lfg.150.1506328028131; Mon,
 25 Sep 2017 01:27:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.179.26.6 with HTTP; Mon, 25 Sep 2017 01:27:07 -0700 (PDT)
In-Reply-To: <1506271437-23058-1-git-send-email-harshasharmaiitr@gmail.com>
References: <1506271437-23058-1-git-send-email-harshasharmaiitr@gmail.com>
From: Allen <allen.lkml@gmail.com>
Date: Mon, 25 Sep 2017 13:57:07 +0530
Message-ID: <CAOMdWS+W6re5C_kHTzZJHBuvHMkq97T00vFcd7KB2cQFnqGDtQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/tegra: Replace dev_* with DRM_DEV_*
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: thierry.reding@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

Harsha,

>
> @r@
> @@
>
> (
> -dev_info
> +DRM_DEV_INFO
> |
> -dev_err
> +DRM_DEV_ERROR
> |
> -dev_dbg
> +DRM_DEV_DEBUG
> )
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v2:
>  -Break line over 80 characters
>  -Changes in comments not required
>
>  drivers/gpu/drm/tegra/dc.c     |  53 +++++++-----
>  drivers/gpu/drm/tegra/dpaux.c  |  24 +++---
>  drivers/gpu/drm/tegra/dsi.c    |  68 ++++++++-------
>  drivers/gpu/drm/tegra/falcon.c |  16 ++--
>  drivers/gpu/drm/tegra/fb.c     |  22 +++--
>  drivers/gpu/drm/tegra/gem.c    |   8 +-
>  drivers/gpu/drm/tegra/gr2d.c   |  10 ++-
>  drivers/gpu/drm/tegra/gr3d.c   |  20 +++--
>  drivers/gpu/drm/tegra/hdmi.c   |  66 +++++++++------
>  drivers/gpu/drm/tegra/output.c |   8 +-
>  drivers/gpu/drm/tegra/rgb.c    |  12 +--
>  drivers/gpu/drm/tegra/sor.c    | 184 +++++++++++++++++++++++++----------------
>  drivers/gpu/drm/tegra/vic.c    |  15 ++--
>  13 files changed, 304 insertions(+), 202 deletions(-)
>
> diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
> index 4df3911..fbc9cc1 100644
> --- a/drivers/gpu/drm/tegra/dc.c
> +++ b/drivers/gpu/drm/tegra/dc.c
> @@ -1137,7 +1137,7 @@ static void tegra_dc_commit_state(struct tegra_dc *dc,
>

 One of the first things you'll probably need to do is to break this
huge patch into
smaller chunks. It becomes difficult to even review this patch(though
the change is
pretty straight forward.).

- Allen

