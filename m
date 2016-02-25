X-GM-THRID: 6253602650868154368
X-Received: by 10.140.88.139 with SMTP id t11mr14044590qgd.21.1456416872025;
        Thu, 25 Feb 2016 08:14:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.136 with SMTP id b8ls511607qgb.96.gmail; Thu, 25 Feb
 2016 08:14:31 -0800 (PST)
X-Received: by 10.140.100.197 with SMTP id s63mr13985505qge.4.1456416871316;
        Thu, 25 Feb 2016 08:14:31 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id v197si572989ywa.1.2016.02.25.08.14.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 08:14:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id y89so3676739qge.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 08:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=gR3hDdQdPriXBrEKnVI0qcMpR5m5HErRhG5t5M2fqxM=;
        b=RWNDtI6sZ7R4cY2g6jmTDpl6g8cFFRIZbohUVuPMzvSkzmY1DzkDUixUWuiHJ6FULE
         WDJ3grszleUBvh3R0YGNWYZEmpbEMnPYO/tkWHDBk6Dx4AyMpvfoYUrl8uoYN4wrHKWH
         cGUAvasY1tzTSQF76QFeNavYWmrUcTxa6sq62V//dI8kisioJXL/PpbYkrDGZY8JJxMO
         7OdE1N61+LVJKpgbpxEuK9ZpnJNHVJIKC+/IYZUdk8lNfqyEOKunVp1lTBL4iAus5ta1
         raTXkuRH4LgQCUiDhssHqw3ZOyC3oOo7E/GaVxIJ3j1v84tcnLcE+1AJv8plqHmwzpZp
         TNjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=gR3hDdQdPriXBrEKnVI0qcMpR5m5HErRhG5t5M2fqxM=;
        b=TomtHNHKgECNQUj++OTEoxS8MXM8A2rLtzhqJ/YjD+/Cq5zPy5YSEo6vNZUdWcBdAM
         kMvQ9RwXef6y7c7/KVPh3G55dUr1s88VCmFmpIkyhj4YaUYnpDDVLTVWzyCXmK7V4ZAJ
         vwReI3KzEWEO85Bx9dVX3SXnWptUHvzi71PRBonPxEv9pWy8kgkPkLa1+X0b3i0fsdHv
         rU614mwxK0Q1eA/UinCbUXCadrhP1iWqRZ/98DKnLQV/9X7X3mf3FxVhThLssjuc8r9u
         CoX5rkXIElZcjJ8nXlffvzvL0iB0VU6wMYNLzchizwclWNTGkx3p36jyV/1+mJXDdm1Y
         +Qwg==
X-Gm-Message-State: AG10YOQmBk8VFDQCCYPoKKxv7Ni1yZmgQ8AdQdu/sK6Z5HmU+kbOwfn9ET+c9r2NX/eHWHiJTi5Ul0giwA4T5Q==
X-Received: by 10.140.19.79 with SMTP id 73mr19888135qgg.72.1456416871133;
 Thu, 25 Feb 2016 08:14:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Thu, 25 Feb 2016 08:13:51 -0800 (PST)
In-Reply-To: <20160221045241.GA10802@Karyakshetra>
References: <20160221045241.GA10802@Karyakshetra>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Thu, 25 Feb 2016 21:43:51 +0530
Message-ID: <CAFNHFT8DRRpk0BUbyJXp3Hon4Ji6ubRvOv6rPBsyBDDW6Q35EQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] staging: rtl8192u: Replace dedicated wq with system_wq
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Tejun Heo <tj@kernel.org>
Content-Type: text/plain; charset=UTF-8

Hello Tejun,

I have removed create_workqueue() usages in rtl8192u. Can you please
review this patch-set.

Thanks,
Bhaktipriya

On Sun, Feb 21, 2016 at 10:22 AM, Bhaktipriya Shridhar
<bhaktipriya96@gmail.com> wrote:
> This patchset removes create_workqueue() usages in rtl8192u.
> With conccurency managed workqueues, use of dedicated workqueues can
> be replaced with system_wq.
>
> Bhaktipriya Shridhar (2):
>   staging: rtl8192u: Use system_wq instead of dedicated priv_wq
>   staging: rtl8192u: Use system_wq and replace dedicated wq
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h      |  1 -
>  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c  | 21 +++++++++++----------
>  .../rtl8192u/ieee80211/ieee80211_softmac_wx.c       |  2 +-
>  drivers/staging/rtl8192u/r8192U.h                   |  1 -
>  drivers/staging/rtl8192u/r8192U_core.c              | 17 ++++++++---------
>  drivers/staging/rtl8192u/r8192U_dm.c                |  6 +++---
>  drivers/staging/rtl8192u/r819xU_phy.c               |  2 +-
>  7 files changed, 24 insertions(+), 26 deletions(-)
>
> --
> 2.1.4
>

