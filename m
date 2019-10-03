X-GM-THRID: 6743623075363815424
X-Received: by 2002:adf:ce83:: with SMTP id r3mr6189616wrn.219.1570124521428;
        Thu, 03 Oct 2019 10:42:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c772:: with SMTP id x18ls237860wmk.1.canary-gmail; Thu,
 03 Oct 2019 10:42:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxCDN8zjI8mTOjITKPBQVy3D2EXZjl3y4rkUHdD6gYmHTrt5uBY8dcZ7sVTzoTE+ojuAJV7
X-Received: by 2002:a7b:c188:: with SMTP id y8mr8219901wmi.51.1570124520523;
        Thu, 03 Oct 2019 10:42:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570124520; cv=none;
        d=google.com; s=arc-20160816;
        b=i3C7RHBjryQP12p2ti2TAiRpHcOtxIV9gEPRvqBbWPxOItxuEzqLKRgI7vTNeWYQ/j
         UHGzDV2kw7iBtzsvVm7Cb4NBzFfk8SAOUYDj6B+MeGNDyPIkVtkvll6uJFkXRa+iVX8j
         +d+aWmd5YDLUg88dwh3MhKssoL/T3FfLXnvrpeq7iCODHeYCqs8BUCvIBhgEjgrxog84
         XH3uOg1PW+MbtpTZPXko2VJWRdN8J16XRmCRS8ak+teVCVccPNRZHrCaEPhulIovjjQ6
         B/eVO6ZGj+bU/FQjNAn7/mFimhjQma/N0m1VUlSd565bONtLTUFk91JAUS/TQDtLN2oP
         vJAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bO3ZdNu5tVRKKQKHGhxon6Z3iu8hCzdsoFXDrjpasug=;
        b=f941nJwbBFkTwK9QQExSblceXcWLYSHFPGZu83+dx1hM/ADqkR+uf4k60s9Iff9bUJ
         ZsM7oLgaFMgUaG720sBvt7mvEX2MKH3BDz/1cm8VPb4H4kMQpzVjy4OSwOwl7CoTOv8/
         2sv6M57+roaDpA/jv3Cvnvi1iAbqO6p2WDskKXkmvlU3EvDlc9N4cEwxaJAalS+mLtl8
         5Ee8FZUSVHJ4zgIdK9j60mzVh0OU3BL7H1b4UTKCbNjn/RuF36OeAWth46xjJ7GVp3IN
         NEj9EuNVgtW6zwZF7J+fmTdLHNlbcgktxrdjoIboDDUrGaa4P6xUzjInEpxwLHr9rc9m
         G9NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WY+CTP/F";
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id 5si729862wmf.1.2019.10.03.10.42.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:42:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WY+CTP/F";
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x141.google.com with SMTP id w67so2505461lff.4
        for <outreachy-kernel@googlegroups.com>; Thu, 03 Oct 2019 10:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bO3ZdNu5tVRKKQKHGhxon6Z3iu8hCzdsoFXDrjpasug=;
        b=WY+CTP/FSuU/NikEZbQDmJzd3sNHTFPfZRKXyAamw9mQLreljzVWAmi4Saw2YlvdQr
         bzZs0aLSb09a6qrG+bLRIcwtWNgZEoXdytVesPjip87pWEgJpRKnjFVQ39L/oCLyHeFy
         wmSo4QJbWXo5/Zcd0QZDUH76V7CRTI//8ml3nCHWL7qNQ4qHXOYFGbERjW0TDFsdpT70
         orMJrnLcoiDIuClgyMs9yyvK8tYHRquENrmjgCBq0nBLoAqAUcBq8fCTNsa2ubKeHwBK
         4rZPLC1I4ijtQZHGetiQz3rmrtZ5iS4n9rzvnccTyARqDFSWUtYXdgkUzg5c0QIclg6F
         OuGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bO3ZdNu5tVRKKQKHGhxon6Z3iu8hCzdsoFXDrjpasug=;
        b=cqRMp8j951F1U2VLgNR8SeFOewx2/+pI52+I40fAIWChny8dZ9x64u7rXpTT8HEVu2
         o3emZiYK7nc9DdV0BDR1cZRNRoW5gKCmHmPcZr6wXl1S4zCirkTRaj3XX4rnRRLDEUg7
         ZVvdqtIL+MdVgklnvbUN2sNFxC+r8M8ISltnui07kMXyG0OugBEOJZ/rgWZloorHvPeX
         KPJQwsIkzBCc98BVOlz8RVS2VkequrRGl0VV4Ny4MfoR1htDPAgaT+IxYT3ImaZl+e/P
         x1ZGYE0xV2p2eMY2us9EF34gJr3yJRfDU7lb7sC432XF7XA9fN/en+9u309N+qgkI7sX
         1bZg==
X-Gm-Message-State: APjAAAWo7MgTPo4z0btObyFbZOivMQR++EaxNKjoKWrQpliweFvY1FYY
	xcY5Fi5zyr316zc5MV2X/t/ZOk/BAlOnIV4lhJiMne2R
X-Received: by 2002:a19:c80b:: with SMTP id y11mr6769239lff.184.1570124519977;
 Thu, 03 Oct 2019 10:41:59 -0700 (PDT)
MIME-Version: 1.0
References: <1570122078-23942-1-git-send-email-nachukannan@gmail.com> <adbee5e1-f2ab-778f-4682-e84b61f48611@gmx.net>
In-Reply-To: <adbee5e1-f2ab-778f-4682-e84b61f48611@gmx.net>
From: Nachammai Karuppiah <nachukannan@gmail.com>
Date: Thu, 3 Oct 2019 13:41:47 -0400
Message-ID: <CAMOCsdvK85=mJfUx4kZFVgJPV2=amX8-Sfita4ikfZNtVXFJGA@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_services: Avoid NULL comparison
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Eric Anholt <eric@anholt.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 3, 2019 at 1:19 PM Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Nachammai,
>
> Am 03.10.19 um 19:01 schrieb Nachammai Karuppiah:
> > Remove NULL comparison. Issue found using checkpatch.pl
> >
> > Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> > ---
> could you please add devel@driverdev.osuosl.org to CC?
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > index 17a4f2c..a2268d5 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > @@ -628,7 +628,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
> >               }
> >       }
> >
> > -     return (service != NULL) ? 0 : -1;
> > +     return (service) ? 0 : -1;
>
> Do you think the braces are still necessary in this case?
>
> Btw a quick find -type f | xargs grep "!= NULL" within the
> vc04_services/interface reveals more occurences. Would be nice to fix
> them all and for once.

Will get rid of the braces.
Sure, I will remove all NULL comparisons in vc04_services/interface
and update this patch.

Thanks,
Nachammai
>
> Thanks
> Stefan
>
> >  }
> >  EXPORT_SYMBOL(vchi_service_open);
> >

