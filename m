X-GM-THRID: 6465297103156412416
X-Received: by 10.36.73.156 with SMTP id e28mr102691itd.7.1505339369188;
        Wed, 13 Sep 2017 14:49:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.140 with SMTP id f134ls3874236ita.16.canary-gmail; Wed,
 13 Sep 2017 14:49:28 -0700 (PDT)
X-Received: by 10.31.88.194 with SMTP id m185mr10474968vkb.83.1505339368419;
        Wed, 13 Sep 2017 14:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505339368; cv=none;
        d=google.com; s=arc-20160816;
        b=V75+5BwLJ0fWWAOPZ4hflFpPp+gs1Uff5n0ckib1IwFnk4bQw9l60X60rwJyFE6vLy
         UY6QSZrPnHQnAmk6pWwUiy5gxnTVD1e4D/YFgaIsne7/UUEhoQrVzwmJVL+z+UzHQD8v
         ZiPOFU4BQhCQDwfZ7TgaUkceCqe+gDfX9Cs9qs2WUIpzDfzTfK1PowUXz2OFV2Zi2vMp
         Op7RlIuFT50BrmMYTKzWLsvpsMbcOgeFy2Y/EK10VYiAhi3o4xV/J4VFTXlHqA83iDWr
         dBIYy9u7vobpCVgNk/eWmsM9qn4lGPLLUgn9fi9tjVt1jBE8Re2KODBYUFuJx8XGqiMi
         hjXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=qfqez58LR1yYiTwuHU2ORlQWjLmNHaZytDaLsh3Ptes=;
        b=y11RjrchnG44HcTNYu5uhCbygLtDM6nVleurAzWca4p/rNGxZtvAo4LCUaME04n2oh
         Rvys7eD8mLJepSss6PxwInvaYkXUe6PjOAR2PXxPF2Tf+SB2jF1QiJi9LXOwx+87CqnC
         iiCPsiHgvSr0GbPuJtHxCSdWgZRZm03RMzphWrEUQfAa/B6VQPia83UtuqAlnHJN/gHG
         0ryAzoJr84p29B7ONZNEQFHa33AyRtJpYyQa8YS9xezgPmYgnI1znm9bWWC75/7uXLVI
         MKvIFt4gGzQ9jfheErZj/SBTdhLl/O4+a7agwqgDm3O40+I4Azk8M6nr4tGIwFEbvvFD
         nFNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gp+29Nfz;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22e as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x22e.google.com (mail-yw0-x22e.google.com. [2607:f8b0:4002:c05::22e])
        by gmr-mx.google.com with ESMTPS id o190si1075335ywo.11.2017.09.13.14.49.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 14:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22e as permitted sender) client-ip=2607:f8b0:4002:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gp+29Nfz;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22e as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x22e.google.com with SMTP id v72so3483224ywa.3
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 14:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qfqez58LR1yYiTwuHU2ORlQWjLmNHaZytDaLsh3Ptes=;
        b=gp+29NfzO6eEpstuPy/vjBxTpRX1vEY/OhCEtBYU/bSyQg3oAmMIMKHALH91rek69G
         bMarDZTW554l18zRNsdFFiOz5LzpTVBv0rIAZDuGb0i9+FWlOQfY0a0LmiMUb/yoj3Ue
         U7cpt8zx8yupj7wZCbXFAjBZgeBZUt4+L2jCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qfqez58LR1yYiTwuHU2ORlQWjLmNHaZytDaLsh3Ptes=;
        b=V+d0ER4AdRNG4u/eYIB2iArncjaxgnxXoOeCBYlbH0wYtbaKW8r0j6cwLdmR/2UuST
         kLK94A7AqqaGjKbA3GCN6sJwrtwRHg3NcT8SkGomYE5x42uPMmoG2rPzzjHfiWpjOcm9
         G/GA/2wi8+xJ4a7gaV6+5MAb9xvC6juR8FM3QhB103wz96OyievwqbIfeiPiL5p9ySa+
         VTMkMHxMdOc73M8lFa20bKF9WNTBPSZD6U0jvnhFNvqnr/35p0abxMucVzI0ZXocMua8
         5243WL76ODCQ2syhu8YYSgCB/OHtK6eW4puV6FSjwNzUtLv1rWIzUsABCUHbxCHeDCYK
         XCjg==
X-Gm-Message-State: AHPjjUi3nZ0LRGZp2TFMMnTpxNn0/5YS/SamallJBBEkwmL+zwiJPiHQ
	bwjXhToSmdg/1f0zO+klxA==
X-Received: by 10.129.125.86 with SMTP id y83mr17699963ywc.173.1505339368104;
        Wed, 13 Sep 2017 14:49:28 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com. [209.85.214.44])
        by smtp.gmail.com with ESMTPSA id l190sm4984425ywd.70.2017.09.13.14.49.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 14:49:27 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id v19so573949ite.0
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 14:49:27 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB+IWbIrjjInxclkDqDDWW6rjufuNRFVq+1bqJjB+ww45/sqSWPx5u5iVUe/5+ceGyL/m5itivevP0Y2XWFfOw=
X-Received: by 10.36.213.212 with SMTP id a203mr243868itg.59.1505339366595;
 Wed, 13 Sep 2017 14:49:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.156.195 with HTTP; Wed, 13 Sep 2017 14:49:05 -0700 (PDT)
In-Reply-To: <20170913161235.GA3155@meghana-HP-Pavilion-Notebook>
References: <20170913161235.GA3155@meghana-HP-Pavilion-Notebook>
From: Sean Paul <seanpaul@chromium.org>
Date: Wed, 13 Sep 2017 17:49:05 -0400
X-Gmail-Original-Message-ID: <CAOw6vbJ9m1g6vaQt8TNDV-8PDnJx_WLS_b11uUa+K=JLKHhdcw@mail.gmail.com>
Message-ID: <CAOw6vbJ9m1g6vaQt8TNDV-8PDnJx_WLS_b11uUa+K=JLKHhdcw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] drm: Code cleanup
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Jani Nikula <jani.nikula@linux.intel.com>, dri-devel <dri-devel@lists.freedesktop.org>, 
	Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 13, 2017 at 12:12 PM, Meghana Madhyastha
<meghana.madhyastha@gmail.com> wrote:
> These patches fix the checkpath warnings and errors
> in drm_agpsupport.c
>
> changes in v2:
>  -Changed the commit subject prefix to follow the style used in drm.
>  -Combine multiple redundant if conditions to a single condition in
>   patch 3.
>
> Meghana Madhyastha (3):
>   drm: Move EXPORT_SYMBOL so that it immediately follows its function
>   drm: Replace "foo * bar" with "foo *bar"
>   drm: Remove assignment in if condition

Hi Meghana,
Thank you for your submissions!

Would you mind prefixing the subjects with drm/agpsupport instead of
just drm? I know the git log shows mostly drm:, but I think that's
more because the only time this file is touched is during subsystem
wide refactors/cleanups. While this may seem like a small nit,
narrowing down the affected file(s) in the subject really helps when
glancing at the log.

Sean



>
>  drivers/gpu/drm/drm_agpsupport.c | 45 ++++++++++++++++++++--------------------
>  1 file changed, 23 insertions(+), 22 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170913161235.GA3155%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.

