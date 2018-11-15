X-GM-THRID: 6618908371010453504
X-Received: by 2002:aed:3e88:: with SMTP id n8mr439136qtf.42.1542290799822;
        Thu, 15 Nov 2018 06:06:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3ee6:: with SMTP id o35ls4136169qtf.7.gmail; Thu, 15 Nov
 2018 06:06:39 -0800 (PST)
X-Received: by 2002:ac8:2aa5:: with SMTP id b34mr452790qta.36.1542290799228;
        Thu, 15 Nov 2018 06:06:39 -0800 (PST)
Received: by 2002:a37:a4c2:0:0:0:0:0 with SMTP id n185msqke;
        Thu, 15 Nov 2018 05:50:47 -0800 (PST)
X-Google-Smtp-Source: AFSGD/XtQuMFfnesaxOPunVVaXbbjZNjbmdlNIbFVJVAyruB45DfnsPjXRK/NFDkFq/qkf9SkOJN
X-Received: by 2002:aed:3b9c:: with SMTP id r28mr390489qte.46.1542289847041;
        Thu, 15 Nov 2018 05:50:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542289847; cv=none;
        d=google.com; s=arc-20160816;
        b=Q2CQwdif2pDuaPH6gfqJTMTgJUPDoEyEk5sS5lkTd9Kw2BsncI1d61oRcYc9Kq/nby
         CsBDHT7JRfD893ftXyS0F2o226TvLIJk9zkyuRmiTVxzYC81ouD4I05z4wVrBBm2gpgY
         Nv6hPP4AsAs6G+SA3lGTQg0Xsj2AM55slhJ1D89YhHXNr4T6XjAoqHfRIrLdfdFKuVlY
         hIvrA2KDfwor6gPpcdljaFqCIHcUwnjDSXbT1CWtllx/nixUf5NiKM0FmGJ/cfOYqasZ
         GeBw/zaMZZdu5hLfE3MhKbmsnwJIyj54+O62aOTaJqazbdj//M6tSOO1pzV+g31upFF4
         uq/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PxnHZfMwsToWP1AUxmKHnT9VrGeFHPoI/X0W74JdDF4=;
        b=LwlH+vqBgk6FiNHakn1TRyKQRA5ZKUPN9bQDoSE5NUQBViElJLa8yCAYhGLUYsbYHv
         fEyM0fTYE4DwsPkwyVAtVYg4ACXriCo8Vvk8pWayNXidOYt7tDamvEi3SBfyYf1t7X38
         q2ycdK1fS93D6V6K7fX6pZ4DLvidy83cVDO52U2PbN98oOlmMmmsiiYhlAX+51x50q1c
         MB5RSa1bwmNcz5GN8/w6VcHC6I3zrJL5FmDmBEHE8rP4ZPXJc3CEkAGxvRqFha3ehQvL
         RFlutdWr3yPqawLcXQEyc24mgs89EqSfM0lrIIoMFBJXKTmwtXBy6JGpD3JIR04/qw89
         4SeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z8rkf9+W;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <tfiga@chromium.org>
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id b25si20002qtq.2.2018.11.15.05.50.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:50:47 -0800 (PST)
Received-SPF: pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z8rkf9+W;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw1-xc43.google.com with SMTP id r199so1049973ywe.4
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 05:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PxnHZfMwsToWP1AUxmKHnT9VrGeFHPoI/X0W74JdDF4=;
        b=Z8rkf9+WGKyLSyUqBz9P3zoswvNvRBLTLqcDiSIxLXUp8wl6qn++NvrAFaM7pUsGjO
         +nlrP4WyvV6XmfJ4xzu3RZQaGJbe9iFIfbsBXtsz+y/8Il9scFXulz6Lr/qAw0YnFLZn
         OWjGfLSNqsVamjFx3Jnfvws+0Q/CDnVbRLX4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PxnHZfMwsToWP1AUxmKHnT9VrGeFHPoI/X0W74JdDF4=;
        b=CAiMHZi7KPy0b8ZvqKjQ7FCeATUluw3qsA/WvOSRNIiMdnODJoHaIpX0i8xedY/23t
         DtlqpQhx9r/xvEHa4+dOhZlD8ZJlF6dDrbc85eIe53qfdUNZ+CeogSHuhFMXt2Fiycw1
         u2aelg8/iM6cisj097EPA3Io96hUt/wI/3yQwOZBb42e11Zdv093Cv09PEs0MuItfJ3R
         hIDNknKre40aFsZGDsO8FSAzPND6xmb1HNOvyIKY7l8pDfaGpEESjNw4sxn54BR290Ae
         oAAp4FQyA1JVoSvrBP+ytVEmiYoHKDN61SL1QvXkFqYXNgq82BqIP8QFvozdsEJkk7iT
         y05w==
X-Gm-Message-State: AGRZ1gJ09+3+n4m79ZF8i0DRupGI2Xip5MqxLM5vQraqZrqXqGaK9uy6
	fzgg13MZsa1vkzZqbtaIsMVZPfw8gj4=
X-Received: by 2002:a81:8103:: with SMTP id r3-v6mr5626833ywf.403.1542289846406;
        Thu, 15 Nov 2018 05:50:46 -0800 (PST)
Return-Path: <tfiga@chromium.org>
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id 200-v6sm8167802ywq.97.2018.11.15.05.50.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:50:45 -0800 (PST)
Received: by mail-yb1-f174.google.com with SMTP id t13-v6so8360177ybb.8
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 05:50:45 -0800 (PST)
X-Received: by 2002:a25:9944:: with SMTP id n4-v6mr5926438ybo.114.1542289844439;
 Thu, 15 Nov 2018 05:50:44 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
 <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl> <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
 <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com>
 <a11ef1b7-5fd6-1a9a-f85e-e03d06e97b17@xs4all.nl> <CAAFQd5Cc8zPhbOfwU6=m=J1xHo-3UEYykeAg2g086iS3F3mGWQ@mail.gmail.com>
 <7704b4bb-beed-2c74-40d4-f674fb33d450@xs4all.nl> <CAAFQd5ACs-jwocSfc4gZaj4fVeOxZTG5rZA4zyQppwL2aKAL0w@mail.gmail.com>
 <e7a7af27-53fa-3635-058b-0261fbea9ab0@xs4all.nl>
In-Reply-To: <e7a7af27-53fa-3635-058b-0261fbea9ab0@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 15 Nov 2018 22:50:32 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DF5acqQmvbGx16L2wzBsYVWDUhc-1nSimVUCdPSLPv+A@mail.gmail.com>
Message-ID: <CAAFQd5DF5acqQmvbGx16L2wzBsYVWDUhc-1nSimVUCdPSLPv+A@mail.gmail.com>
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in vicodec
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: dafna3@gmail.com, helen.koike@collabora.com, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 15, 2018 at 10:48 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 11/15/18 14:43, Tomasz Figa wrote:
> > On Thu, Nov 15, 2018 at 10:40 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >>
> >> On 11/15/18 14:33, Tomasz Figa wrote:
> >>> On Thu, Nov 15, 2018 at 10:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >>>>
> >>>> On 11/15/18 14:04, Dafna Hirschfeld wrote:
> >>>>>
> >>>>>
> >>>>> On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org <mailto:tfiga@chromium.org>> wrote:
> >>>>>
> >>>>>     Hi Hans, Dafna,
> >>>>>
> >>>>>     On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
> >>>>>     >
> >>>>>     > On 11/15/18 12:14, Dafna Hirschfeld wrote:
> >>>>>     > >
> >>>>>     > >
> >>>>>     > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl> <mailto:hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>>> wrote:
> >>>>>     > >
> >>>>>     > >     Hi Dafna,
> >>>>>     > >
> >>>>>     > >     This patch series looks very nice!
> >>>>>     > >
> >>>>>     > > thanks:)
> >>>>>     > >
> >>>>>     > >     Can you repost this and add a CC to linux-media?
> >>>>>     > >
> >>>>>     > > I will
> >>>>>     > >
> >>>>>     > >     I'm happy to take this.
> >>>>>     > >
> >>>>>     > >     The TODO that is in the decoder code (what to do if the fwht bitstream
> >>>>>     > >     encodes fewer/more planes than the requested raw frame format) is
> >>>>>     > >     something that needs to be implemented later as part of making vicodec
> >>>>>     > >     compliant to the stateful codec specification.
> >>>>>     > >
> >>>>>     > > I tried to look in the docs what should be done in that case and didn't find.
> >>>>>     > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
> >>>>>     > > but this is only optional.
> >>>>>     >
> >>>>>     > You are referring to section 4.6.6, point 4 here:
> >>>>>     >
> >>>>>     > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
> >>>>>     >
> >>>>>     > Right?
> >>>>>     >
> >>>>>
> >>>>> Right,
> >>>>>
> >>>>>
> >>>>>     > It's optional only in the sense that if you already happen to know what
> >>>>>     > the stream contains, then you don't need to do it.
> >>>>>     >
> >>>>>
> >>>>> It still not clear to me what should be the behavior in case the user does give the CAPTURE format before the streaming starts
> >>>>> but then the actual encoded data that the user send is of different format. Can we trust the user to be consistent ?
> >>>>
> >>>> No, we can't trust users. At all :-)
> >>>>
> >>>> So the driver would have to act the same as if there was a resolution change.
> >>>>
> >>>> Tomasz, this is actually something to improve: it is not just resolution changes,
> >>>> but also incompatible capture formats. In this case, the stream contains RGB, but
> >>>> the capture format is YUV, and vicodec cannot convert from RGB to YUV.
> >>>>
> >>>> I think sending a SOURCE_CHANGE event makes sense. One thing though: this would
> >>>> take place at the very start of the decoding process, so step 2 in section 4.6.9
> >>>> (Dynamic resolution change) says "The decoder will then process and decode all
> >>>> remaining buffers from before the resolution change point.". But no buffers have
> >>>> been decoded yet, so should it queue an empty buffer with V4L2_BUF_FLAG_LAST set?
> >>>>
> >>>> It is probably the right thing to do.
> >>>
> >>> There is already a source change event specified to be signaled in the
> >>> Initialization sequence. It's defined to always happen after the
> >>> driver establishes the format. Given that, is there any change still
> >>> needed?
> >>
> >> Ah, you're right. It has to be documented that this happens as part of the
> >> pixel format documentation, right? So this should be added to the FWHT format
> >> doc once the proper behavior is implemented.
> >
> > I wonder if it wouldn't be more consistent if we just made the driver
> > send this event even for streams that don't include format data in the
> > headers. In that case the driver would already have the information
> > about the format from the OUTPUT queue (and internal constraints), so
> > it could just signal the event instantly. WDYT?
>
> Can't we leave this open? Are there codecs where the stream doesn't have
> meta data? I'm not aware of any.
>
> I'm not sure if we need to mention codecs without embedded meta data at all.
>
> Perhaps just mention that such codecs are unsupported at the moment.

That would indeed simplify things. I don't know too much about codecs
other than H.264 and VPx, so can't really tell if none of the codecs
we have FourCCs for would qualify as such, though...

Best regards,
Tomasz

