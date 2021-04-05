X-GM-THRID: 6947609304795971584
X-Received: by 2002:aca:1a01:: with SMTP id a1mr17647945oia.33.1617617734642;
        Mon, 05 Apr 2021 03:15:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:2421:: with SMTP id k1ls3577394ots.0.gmail; Mon, 05
 Apr 2021 03:15:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxyuJANmtkifn7/jVYsQExg7IhlQnuDyyDuwXfA1/TeyLT21rYz5wUy7/5XorsoMuJXZfC
X-Received: by 2002:a9d:62cd:: with SMTP id z13mr21796627otk.228.1617617733905;
        Mon, 05 Apr 2021 03:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617617733; cv=none;
        d=google.com; s=arc-20160816;
        b=p5wSyUb8TnWnWlPV87peORyboCNjVrbIHDIfZU3skZWoLJgw53x+BIGIFtM8jQcQPI
         83etWZQDFNJTGzktIxhFp8FTvVyankED7FbhK64nS+6u1enX83v3pTyoNy5xEkT/IwIF
         /PLYu1DzoLGQj8rX88Z8fnIqHiVeX9UDMpBwsXc3OzbUcMoPUSUVbYW244D/aPcTGlZi
         xkAcy/xMQCK9GFmL7TVAkQoAc/oIcDurZFU6R3bbeZox2KDWKB/zyDr+hJtjuT0bwvbk
         PXjmEwmhFAXvtOoLcJ99FrPKbrzDNe1OwenrTmijTPJn98oZLzcOgD1gwwWqMvHbDJJo
         k41A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4n9bNttMJw1HZfNz+VVCBOqJqTmZfAeAwi7/zxl2m8A=;
        b=bJrcrXL4z0eGPg+Z7rcLRiys9dqAksacvxtNoo4sybLTy2+/m/jH3xRjD0NRo4KMT1
         bbkFRhxG55DkBl9LJi/iBqgHjvr37A2yGzySpQy7KaS9qik6RZdW+evHjR5yCly9/OSc
         e9FukPw3/5CkKJosmxEnrG7/Emp0Na28COBTtTlJl5MeCYf3bHenugejuMZxcj3/p5gw
         1KSatDYbYMRdzQZkIcSy1mCQCVkckpI78BFJ7uznwbrzU9E+kX1kNuNuhVh33FqW61m9
         0Gkj1rfoTQHxcgPvN27woo3KcSWBpNRQrLG12jYEhNktV7Cc8hDOdKsfi9spDhz2fINx
         xezw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vt/R1ZyC";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id v12si1164859otj.0.2021.04.05.03.15.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:15:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vt/R1ZyC";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32b.google.com with SMTP id h6-20020a0568300346b02901b71a850ab4so10898837ote.6
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 03:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4n9bNttMJw1HZfNz+VVCBOqJqTmZfAeAwi7/zxl2m8A=;
        b=Vt/R1ZyC3ysa2YuX5Ig6Z9eBtNAYXbV+qrGCZLYJB84UgSn6g7uRZ+0enxnlimnfjX
         AKKFSH3yz2dMXIB9hFT+yj6T4twm1i0NLyZy3tiHhWY56NkcH9nozHVnb1Bi+ieZDa7Q
         MshOIEtn0DkFZMTj6DeivAL/sF5sBBh2iCN0VjY7IOi8SVm9SMtuHYBm0XAOIDE8LaGE
         1zk7iv1atS4vW3DIno5h4YyTJBqFTtfqAEQKVbhtSq9lmHyl3DYsxZF/e7Qdnjozsfpb
         DT2mRp3Wyji0K4Lb/d6BN8rT6TlUB1+aYifVgxJLXsRwVU3Px2XWcY914RZjWzM3cy7i
         f0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4n9bNttMJw1HZfNz+VVCBOqJqTmZfAeAwi7/zxl2m8A=;
        b=CwH4nTNiTNsP5eguJ6LI7xb1VsU+DvOYuC0kvWiJw9ofMrRR/b+0OAiD2ZOy7ROI9P
         uPUSUcKvgsTKfZLOwbMXhWF2RURT46pXr5F8qkyAUY9SNU3fDpubs4pUTO3wI3d3lGOJ
         zF+H6MUr/XUBzGT9M2PTLWYOgRh2cAChhxrK/F3E9yexCOWDtTwyqEd1zSXA7qQQLY5b
         WqVuj2z5WsMxv3MjCDHndFMtCIwtlZJLnmwg4DGjgIUa7B6fqqOS+7zRbYKnc1eXXIL2
         dHlDqIFns4pYslSkDOw5byEJVB8V/AlgQMs4HRt3rGTazqjSNVNBgRP/kG3ppFupGgU3
         b0+Q==
X-Gm-Message-State: AOAM533oPonIkpDM2yJs/uVvayeYhuXlGoNsYX26VKHyNW0JfqlIPebv
	daBAdFGsQjBhbe/No9SFzYIkV2NzWKREdVGo43s=
X-Received: by 2002:a05:6830:1c26:: with SMTP id f6mr21473700ote.53.1617617733690;
 Mon, 05 Apr 2021 03:15:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210405095213.19615-1-fmdefrancesco@gmail.com> <YGrgaPEwvRpFfdDc@kroah.com>
In-Reply-To: <YGrgaPEwvRpFfdDc@kroah.com>
From: FMDF <fmdefrancesco@gmail.com>
Date: Mon, 5 Apr 2021 12:15:17 +0200
Message-ID: <CAPj211tmd7AY2-nym6AVOg_kVFKDZzNQBZ7x-kwrFZRaCnfnxw@mail.gmail.com>
Subject: Re: [PATCH] staging: wfx: Replace udelay() by usleep_range() in bh.c
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, jerome.pouiller@silabs.com
Content-Type: text/plain; charset="UTF-8"

Thanks for your prompt reply. No, I don't know it for sure. I've just
read some drivers and found that often the maximum time is about 150%
of the minimum. I assumed (wrongly) that it was safe.

Can I leave usleep_range() with 200 usec for min and max time, as it
was with udelay(), and let the maintainer to take care of the numbers?

Kind regards,

Fabio

On Mon, Apr 5, 2021 at 12:03 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Apr 05, 2021 at 11:52:13AM +0200, Fabio M. De Francesco wrote:
> > Replace udelay() by usleep_range() in bh.c according to checkpatch
> > message: "CHECK: usleep_range is preferred over udelay"
> >
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >  drivers/staging/wfx/bh.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > index ed53d0b45592..07ef6732973d 100644
> > --- a/drivers/staging/wfx/bh.c
> > +++ b/drivers/staging/wfx/bh.c
> > @@ -315,7 +315,7 @@ void wfx_bh_poll_irq(struct wfx_dev *wdev)
> >                       dev_err(wdev->dev, "time out while polling control register\n");
> >                       return;
> >               }
> > -             udelay(200);
> > +             usleep_range(200, 300);
>
> Do you know that this range is safe to use?  This type of change needs
> to be tested on a device itself.
>
> thanks,
>
> greg k-h

