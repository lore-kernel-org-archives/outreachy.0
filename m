X-GM-THRID: 6471275503571435520
X-Received: by 10.98.181.10 with SMTP id y10mr871139pfe.51.1506770038450;
        Sat, 30 Sep 2017 04:13:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.201.87 with SMTP id k84ls2595996pfg.14.gmail; Sat, 30 Sep
 2017 04:13:57 -0700 (PDT)
X-Received: by 10.99.101.131 with SMTP id z125mr968305pgb.151.1506770037316;
        Sat, 30 Sep 2017 04:13:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506770037; cv=none;
        d=google.com; s=arc-20160816;
        b=E86rRxf0N7nQep7B5TD/dQoeJ3WeDYwVldJUUNinRwDivdpI65VQlUTgeSI4D4V99v
         VRc950icdflGZAz8y3RJ61DFlQT/FX5qSHG0Pox/SpCscZvz4mmfB9Vu/MYBa8q/HxoZ
         3zDmQWXdWBnnUfwRQOcmvNXM3gl0KVTK5A1AImHPkRIaYBV1nk1w9g4omGMvQFaOoCrC
         Ch/I5uC8V9H3cX9QW2AYZvFSUg0BuxdiEJcjfFSeTexeLnH2exEuJ/csizEor2j9sfKw
         UAQUe62o3FDsh9FHhK9dDLVw2It6EF/stQmPBmUd9/u+1JhbWqkToBLBqJyJuuk2GKep
         Kl2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=Cs0zzGy3vmrQH/NTUS3XJLzwo2hXCywAH4EVxWZR/Yg=;
        b=pVkLv7vO4rSlVNlK7yNNJsRkI5XV12SmtBlR/q4MiHxX5uT1qCfdki8gAxLPoSy38j
         2f36jcXTBdWfkpVanOgm9F/5prCqy3i2kgCaCwfeU6Nqnh/x/xJUKSd6IDCvTdI3eMWj
         XRhZOLw8WFxeojW/o+hvHFsOTRb0vsiYPJoFgKRIaFOUIwDiVLbrBfj9x8pft6BUws1O
         v5KnAfglDHjfyJ6jcXFhrb+xf3E7cnT5foviZ26PKCp8vhemCuHXWxvQ5ggia5jS4jI9
         KEY6i9Whzi3YguXvNgfko8ZSXomNbXek0W1gud2SaxJGSOOCnOOFprLzoYS1dY7LI/fy
         LHGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GgLDl53j;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id l10si663210pfc.17.2017.09.30.04.13.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 04:13:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GgLDl53j;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id y192so1442909pgd.5
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 04:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cs0zzGy3vmrQH/NTUS3XJLzwo2hXCywAH4EVxWZR/Yg=;
        b=GgLDl53jRqo9vMjeSv6MHHv8O7+duzdgQAMtg0Mp7UrpGh44XiLVFqYomEaYxv0kHJ
         FZLbx1BesU+7zQfTCYCQgNydMRUCvaYheR1gSnq6VZBmC4DGJ5UM451yqBT3/p2/1hhv
         JnzObfyo5P5Yt7YEVgQ9nTDzpGjVGuTGmKAV0f9naC6wlzOARA3ee+KY5l8SrzLbp32T
         Xm1pJy+NRF5YMNN2nxkOlWtquvNvCg3Lf2vxc6gRgA2EDauNBDCWz1G2e9EMVTUw4l3P
         dENrrJwWB6DH4zM9vdEett9gWyraoV35TGGU9i7aGcDxU6m/CWhw9AVmhWn15juKwS7o
         edXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Cs0zzGy3vmrQH/NTUS3XJLzwo2hXCywAH4EVxWZR/Yg=;
        b=b6OL73WmP5Gm+pjdtiVbyF14r+JKvMUoGMJrTX+Yo6I2hjj0XupVoulRAA6KceVQiT
         ZzbZz9Me0jj0AIrzlFkShYq8fcuoDlA8OSCt3rspZpoG5REVHsosWPncKq+CVcwdcKFA
         KVYdWhimqNLD9NXHaTETP75frIQp066I4UDiFx3+2vUBY5yzMeg/k8MGKlJVmqm0w9xo
         yOOCA3u4zAF1+6WGw1JsGgYgzRHHpM0hfF3ug3BZ51AsjlYvwzDYCT3urc8n871DUXic
         9BvNlfGvMv8mi6sNo4k9K90OM2DAZ7ffkA27NM21pdBg4L6sQ/ScigaryKN3O9qV1n2M
         E2KQ==
X-Gm-Message-State: AHPjjUhqtiy5tp2t8+9Eyuf9Z/EAoEXutBjXf8F0GYOoCaZkGwhE0QCv
	MInuh9Ek5dSKg7PTPSagcEY=
X-Google-Smtp-Source: AOwi7QDORVxjtlA1yuSulEN1Ztxj4Yq6qeVq0R7ZrY2y4U3mFjWldBI6XKq0Jl2IZFLit1gn1aqS2g==
X-Received: by 10.159.194.132 with SMTP id y4mr9588324pln.85.1506770037052;
        Sat, 30 Sep 2017 04:13:57 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.61])
        by smtp.googlemail.com with ESMTPSA id 197sm2056896pge.26.2017.09.30.04.13.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 04:13:56 -0700 (PDT)
Message-ID: <1506770032.2078.1.camel@gmail.com>
Subject: Re: [PATCH v2] Staging: rtl8723bs: Remove unnecessary comments.
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: "Tobin C. Harding" <me@tobin.cc>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Sat, 30 Sep 2017 16:43:52 +0530
In-Reply-To: <20170930110657.GA25277@eros>
References: <1506758434-3193-1-git-send-email-shreeya.patel23498@gmail.com>
	 <20170930110657.GA25277@eros>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sat, 2017-09-30 at 21:06 +1000, Tobin C. Harding wrote:
> Hi Shreeya,
> 
> We don't usually add a period to the subject line for kernel patches.
> (reason: we only have about
> 52 characters for the commit brief description so best not to waste
> any).
> 
> On Sat, Sep 30, 2017 at 01:30:34PM +0530, Shreeya Patel wrote:
> > 
> > This patch removes unnecessary comments which are there
> > to explain why call to memset is in comments. Both of the
> > comments are not needed as they are not very useful.
> You may like to read Documentation/process/submitting-patches.rst
> (specifically
> section 2) for tips on writing your git log.
> 
>         Describe your changes in imperative mood, e.g. "make xyzzy do
> frotz"
>         instead of "[This patch] makes xyzzy do frotz" or "[I]
> changed xyzzy
>         to do frotz", as if you are giving orders to the codebase to
> change
>         its behaviour.
> 
> Good luck,
> Tobin.

Hello,

Thanks for correcting me :)
I'll do the necessary changes and will send as v3.



