X-GM-THRID: 6883926801253400576
X-Received: by 2002:a37:5144:: with SMTP id f65mr14147632qkb.351.1603053320811;
        Sun, 18 Oct 2020 13:35:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:10b2:: with SMTP id h18ls4018786qkk.0.gmail; Sun,
 18 Oct 2020 13:35:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwygSntatTr2GTtrjYIgoPVCatW1oKBXvTK2NbceA6aLlW9JOVMYoWTyWbfEAtdYB2QJwI/
X-Received: by 2002:a05:620a:986:: with SMTP id x6mr13468577qkx.434.1603053319331;
        Sun, 18 Oct 2020 13:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603053319; cv=none;
        d=google.com; s=arc-20160816;
        b=IdDhIJDj2n5rb8APMZtxyIbzxWDEbPXv/5YNb8kD42iFzSdz6cPqH3RRpiRBk/PMKk
         oycZ/ii+QZqVNbjx9CywdW7o5UVOvHtjTRh1aADt7GyF4ZMdBG9a9T1wpzxMNXvuS/I0
         sACvcma0uZjUKkcICUw1shhwKNwvvA2/m3q6NOfHxpvkRCvHr2UypIvLMuIIQLXqYAzQ
         xgKjSfZYzQE0f9qCgnaJZOnWA9BWH8TPS6rZcAjHHwxijGrtrQglnijVWezLT1Ij6JwZ
         mTzFNqGNJ5XeImpwp88PgvQn6Lpso0rxWwfq0W5tVmeSNBQ4KhE+1LuptRpSxWfgCSzi
         s6cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=WVefePg1eFCOxY7w5IG6rcUnUZ2EIyeJRFSMB1MMyeA=;
        b=j9uPIVzfySV1ujdBXMWwoNNobZYdKpmLdksaQcGXW8IuL7dznZtLVdKs1nQd7pGHCE
         K4mqJZLSyjA5n7SzjAlQiGZ9Chn9I9QxP2EH05mUPKvl9vEAbo/27hQ9mbDdW6t8Htf+
         MOG/SBnfS7Sir0kWVnqY0V6QKE4VmQjf6tsn+DO8nfG1fOsSQHp1LMFX2bwCkWg3jA4d
         jV5sSa/i3LQBq5c2WCfyZYv7jVX7d9WROCvCcJ76QGIRfkw98zwJOpUPASD3HZhIA3Ef
         ZnVS+LnX/IEQ9x44yMlIo5A5kHln/WJMiuxwsJKfQiDB0CZx15dzmkBXCIx/xFeIjMD3
         YCpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.68 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com. [209.85.166.68])
        by gmr-mx.google.com with ESMTPS id v189si395303qka.7.2020.10.18.13.35.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 13:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.68 as permitted sender) client-ip=209.85.166.68;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 209.85.166.68 as permitted sender) smtp.mailfrom=helen.fornazier@gmail.com
Received: by mail-io1-f68.google.com with SMTP id k21so10605925ioa.9
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 13:35:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WVefePg1eFCOxY7w5IG6rcUnUZ2EIyeJRFSMB1MMyeA=;
        b=Mwf5RjUTmwn4vnV7CsqEDewOAGTXyClOrFalwQqrNqvQl4TJ5Ucy3D76/dpllYhqG9
         hnwVSmbbx3aXimqtQt6SDg00S+ZGSfVqeWqnGwgsZF6P3D9zczOyv6QKCxcM7w2r+P/p
         4BccjM9A0DdGUwM1/vedbcSgJu6KZtBfoxbo5maZQxBUtd2DolyQSEdufGRTlK3P1+9g
         B2t98zX5srjF4TXs6QWHuat6rJizNgxqty1KCZl+AaeurF4SQ35gKWgljDwG5W4vsOEu
         Go+GrWN5Kbe5m45gBAC7h/ybAUSA7qkTHoWR0h4cQ8wG1l0wlLAZ2ZQx9oaQLJB85do4
         jFpw==
X-Gm-Message-State: AOAM531FQ0tl/VI4LaabmxIg9UjdivI6VCr1XK4GnxfbRpzgfbRcMurZ
	kbE2gT94CxnQswpK429dHimGYjEuZ5+BoQ==
X-Received: by 2002:a05:6638:446:: with SMTP id r6mr9042962jap.60.1603053318604;
        Sun, 18 Oct 2020 13:35:18 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com. [209.85.166.43])
        by smtp.gmail.com with ESMTPSA id z19sm9173964ioz.4.2020.10.18.13.35.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 13:35:18 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id n6so10538755ioc.12
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 13:35:17 -0700 (PDT)
X-Received: by 2002:a5d:9842:: with SMTP id p2mr8724359ios.113.1603053317641;
 Sun, 18 Oct 2020 13:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1602767114.git.sylphrenadin@gmail.com> <233169195737b5f3afd429d8b6572f3b531168cb.1602767114.git.sylphrenadin@gmail.com>
 <825f5868-49f4-509d-638d-5fcab59c8f1a@mev.co.uk> <20201018195136.GA73063@ubuntu204>
In-Reply-To: <20201018195136.GA73063@ubuntu204>
From: Helen Koike <helen@koikeco.de>
Date: Sun, 18 Oct 2020 17:35:06 -0300
X-Gmail-Original-Message-ID: <CAPW4XYZzXN27YCjRZDZwSdbnwSoNjuN60B8qZNDUXWZnV_9ixg@mail.gmail.com>
Message-ID: <CAPW4XYZzXN27YCjRZDZwSdbnwSoNjuN60B8qZNDUXWZnV_9ixg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [Outreachy][PATCH 3/3] staging: comedi:
 Replace snprintf() with scnprintf()
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Ian Abbott <abbotti@mev.co.uk>, Sumera Priyadarsini <sylphrenadin@gmail.com>, 
	outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>, 
	hsweeten@visionengravers.com
Content-Type: text/plain; charset="UTF-8"

Hi Deepak and Ian,

On Sun, Oct 18, 2020 at 4:51 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
>
> On Fri, Oct 16, 2020 at 10:14:46AM +0100, Ian Abbott wrote:
> > On 15/10/2020 20:18, Sumera Priyadarsini wrote:
> > > The show() methods should return the number of bytes printed into the
> > > buffer which is the return value of scnprintf(). snprintf() returns the
> > > potential number of bytes that could be written which may be greater
> > > than the actual length to be written.
> > >
> > > Replace snprintf() with the safer scnprintf() in comedi_fops.c.
> > >
> > > Issue found with Coccinelle.
> > >
> > > Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> >
> > The patch is fine, but there are a couple of problems.
> >
> > 1) Patches for "staging" should be Cc'ed to devel@driverdev.osuosl.org .
>
> Hi Ian,
> Does this apply to ALL drivers under "staging" or only the comedi series
> drivers?

You can find this answer in the MAINTAINERS file :)
Check here:
    https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/MAINTAINERS#n16640

get_maintainer.pl basically reads the content of MAINTAINERS file to inform you
who you should send the patch.

But the tutorial[1] uses "--nol" option in get_maintainer.pl script (which
removes mailing lists from the output).

[1] https://kernelnewbies.org/FirstKernelPatch#Submit_a_patch

Which I suppose is because "the maintainers of staging/vc04_services would
prefer not to be CCd on Outreachy patches", but I guess this only applies to
staging/vc04_services.

I would like to confirm that only staging/vc04_services should use --nol,
so we can improve the tutorial.

Regards,
Helen

>
> Thank you,
> Deepak.
>
> >
> > 2) It appears to be part of a patch series, but I have no clue about the
> > other patches in the series because I haven't seen them.  The patch doesn't
> > look like it depends on any other patches in a series, so it should be a
> > standalone patch, not part of a series.
> >
> > --
> > -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> > -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> > -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> > -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/825f5868-49f4-509d-638d-5fcab59c8f1a%40mev.co.uk.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201018195136.GA73063%40ubuntu204.

