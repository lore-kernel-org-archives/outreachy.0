X-GM-THRID: 6618908371010453504
X-Received: by 2002:a25:e00f:: with SMTP id x15-v6mr347158ybg.19.1542290800637;
        Thu, 15 Nov 2018 06:06:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41cc:: with SMTP id o195-v6ls7506367yba.2.gmail; Thu, 15
 Nov 2018 06:06:39 -0800 (PST)
X-Received: by 2002:a25:c984:: with SMTP id z126-v6mr325454ybf.50.1542290799307;
        Thu, 15 Nov 2018 06:06:39 -0800 (PST)
Received: by 2002:a81:5f85:0:0:0:0:0 with SMTP id t127-v6msywb;
        Thu, 15 Nov 2018 05:43:31 -0800 (PST)
X-Google-Smtp-Source: AJdET5eooW7BgQdYotieTd4Se9C/WEcpwbtzFkGKOAqC+xrBdVxkI/8LzRRnK2Xv9loKAQSPlzLG
X-Received: by 2002:a25:d64c:: with SMTP id n73-v6mr283598ybg.75.1542289411453;
        Thu, 15 Nov 2018 05:43:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542289411; cv=none;
        d=google.com; s=arc-20160816;
        b=INWx6BYTzHxrixXdzbXBmwPd93ZUZRvYGg4BJAWFDmFJKtEGtEB/cNaJIh0C7rHN46
         oNTZAetlHvGD4ycPd+rJQxaOW8igIRxAfShevP+vkE3tiASanyuMONOxBmrPWEBu0B7l
         3VEhMyBwsIhpDqp1HP7CndoAAehVXlJhTwlKrGRLbYbhmfiTG6GMonjmPwJzcpXOys7n
         BIoVUXssDcyH6YnvQtF7WSRmJ/m6JyuEyLldfOe1UGhjjw0oMHr2uvREszulgc9PIyzf
         BMza7R1GzA93P6Hk2CgyKz9uPb45OrY74n4tEGDuArHyj61yhVVtfr+1UEj8XMf82hHu
         nUBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5PE3h0DhG+lsL6sEBLY1tzvGGwJDUcJ+1qIsCa+pOoU=;
        b=YocY4Se5Dk9UEJ1mq6vrQCBJ+qBiq4nbZ6ztQ3a1/aa2mrD8QzREoewRfcKuvSt/nb
         rsPd/AlG3G86f2mr8SdL7Sfr22bhrDK2y9hb2F8q5LMZKg/022BAKZA7pA2wiRJyOhaI
         8HwBJ9m7zwKByj8f318e9WnOq+zVFSJY/CPaYgXTBSMB99nS8+U8hauJKtuz5MwrqNS4
         LTlbDo12fiE0ZRq/TzoRhCzes8uZ9uo4RwZwXHoSSecWnaKTvVNDTHBzh8V9laE93ADh
         haP9kul2q44XyjzSb/fe7lMbwAQHp2N1jE1z0f3jKyHvpXYpaJ8cmNnBEqGK80ntPu9a
         1YtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XOYPHKln;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <tfiga@chromium.org>
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id n10-v6si163369ybp.4.2018.11.15.05.43.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:43:31 -0800 (PST)
Received-SPF: pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XOYPHKln;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yb1-xb42.google.com with SMTP id o204-v6so8335466yba.9
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 05:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5PE3h0DhG+lsL6sEBLY1tzvGGwJDUcJ+1qIsCa+pOoU=;
        b=XOYPHKln6Zgm8ll+BgFGaPGCpa6anDf2mJgp4soTXvGS5sav0MKKmOww8IS6CZGF4u
         jy/gZcNekRi915IE0x9WkwsunrOldh8p8TLzerHfGdj5MIFeP+77RLZshNxRXZo1q0t7
         unf7pvbSzCLi0r549vVd+2J3aeXzWrAJr82wg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5PE3h0DhG+lsL6sEBLY1tzvGGwJDUcJ+1qIsCa+pOoU=;
        b=BVkIUk5i//fXHI5W/nqvTNBcbtJRc9JcNxebBmpxR9L+23nnIKqiVGnTETpqWUZbsZ
         pj1t312CsCsK81Dto8rPz4jKiaiiYK7qnyfJWj0yVu+RvDZXg7YVHZaaxVHCTYOJgMC0
         DSABfB2holvUxf451pPngfhSDfUSfHxW7TG4rTpIZQHfW63J7mJwgV4DbFZ8GNQako7l
         L1GuKnguRN9kAZEV5j1zorglAAh4LS+Exx+L5PlNpI8EfWpQJ7yStWWjCOkQDVc4xH/S
         +Rz9HKcTBOJVg3kOR9ta0WgqbRq327vseDtmgnG3m6q/cuoLTB+5hpz2xSTH/h1/3Bdo
         rcDA==
X-Gm-Message-State: AGRZ1gJZTlbCAs2+f1/Tt5EWUYyJ9TITMbVFptVaNdNOdXhCQ5258zUT
	FP5zIUR0+NzeSvnpPl6BCqHeRovsJpY=
X-Received: by 2002:a25:ad56:: with SMTP id l22-v6mr6002576ybe.246.1542289410785;
        Thu, 15 Nov 2018 05:43:30 -0800 (PST)
Return-Path: <tfiga@chromium.org>
Received: from mail-yw1-f48.google.com (mail-yw1-f48.google.com. [209.85.161.48])
        by smtp.gmail.com with ESMTPSA id k190-v6sm6380949ywf.66.2018.11.15.05.43.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:43:29 -0800 (PST)
Received: by mail-yw1-f48.google.com with SMTP id v8-v6so8694580ywh.6
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 05:43:29 -0800 (PST)
X-Received: by 2002:a0d:fd82:: with SMTP id n124-v6mr5597943ywf.443.1542289409170;
 Thu, 15 Nov 2018 05:43:29 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
 <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl> <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
 <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com>
 <a11ef1b7-5fd6-1a9a-f85e-e03d06e97b17@xs4all.nl> <CAAFQd5Cc8zPhbOfwU6=m=J1xHo-3UEYykeAg2g086iS3F3mGWQ@mail.gmail.com>
 <7704b4bb-beed-2c74-40d4-f674fb33d450@xs4all.nl>
In-Reply-To: <7704b4bb-beed-2c74-40d4-f674fb33d450@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 15 Nov 2018 22:43:16 +0900
X-Gmail-Original-Message-ID: <CAAFQd5ACs-jwocSfc4gZaj4fVeOxZTG5rZA4zyQppwL2aKAL0w@mail.gmail.com>
Message-ID: <CAAFQd5ACs-jwocSfc4gZaj4fVeOxZTG5rZA4zyQppwL2aKAL0w@mail.gmail.com>
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in vicodec
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: dafna3@gmail.com, helen.koike@collabora.com, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 15, 2018 at 10:40 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 11/15/18 14:33, Tomasz Figa wrote:
> > On Thu, Nov 15, 2018 at 10:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >>
> >> On 11/15/18 14:04, Dafna Hirschfeld wrote:
> >>>
> >>>
> >>> On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org <mailto:tfiga@chromium.org>> wrote:
> >>>
> >>>     Hi Hans, Dafna,
> >>>
> >>>     On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
> >>>     >
> >>>     > On 11/15/18 12:14, Dafna Hirschfeld wrote:
> >>>     > >
> >>>     > >
> >>>     > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl> <mailto:hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>>> wrote:
> >>>     > >
> >>>     > >     Hi Dafna,
> >>>     > >
> >>>     > >     This patch series looks very nice!
> >>>     > >
> >>>     > > thanks:)
> >>>     > >
> >>>     > >     Can you repost this and add a CC to linux-media?
> >>>     > >
> >>>     > > I will
> >>>     > >
> >>>     > >     I'm happy to take this.
> >>>     > >
> >>>     > >     The TODO that is in the decoder code (what to do if the fwht bitstream
> >>>     > >     encodes fewer/more planes than the requested raw frame format) is
> >>>     > >     something that needs to be implemented later as part of making vicodec
> >>>     > >     compliant to the stateful codec specification.
> >>>     > >
> >>>     > > I tried to look in the docs what should be done in that case and didn't find.
> >>>     > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
> >>>     > > but this is only optional.
> >>>     >
> >>>     > You are referring to section 4.6.6, point 4 here:
> >>>     >
> >>>     > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
> >>>     >
> >>>     > Right?
> >>>     >
> >>>
> >>> Right,
> >>>
> >>>
> >>>     > It's optional only in the sense that if you already happen to know what
> >>>     > the stream contains, then you don't need to do it.
> >>>     >
> >>>
> >>> It still not clear to me what should be the behavior in case the user does give the CAPTURE format before the streaming starts
> >>> but then the actual encoded data that the user send is of different format. Can we trust the user to be consistent ?
> >>
> >> No, we can't trust users. At all :-)
> >>
> >> So the driver would have to act the same as if there was a resolution change.
> >>
> >> Tomasz, this is actually something to improve: it is not just resolution changes,
> >> but also incompatible capture formats. In this case, the stream contains RGB, but
> >> the capture format is YUV, and vicodec cannot convert from RGB to YUV.
> >>
> >> I think sending a SOURCE_CHANGE event makes sense. One thing though: this would
> >> take place at the very start of the decoding process, so step 2 in section 4.6.9
> >> (Dynamic resolution change) says "The decoder will then process and decode all
> >> remaining buffers from before the resolution change point.". But no buffers have
> >> been decoded yet, so should it queue an empty buffer with V4L2_BUF_FLAG_LAST set?
> >>
> >> It is probably the right thing to do.
> >
> > There is already a source change event specified to be signaled in the
> > Initialization sequence. It's defined to always happen after the
> > driver establishes the format. Given that, is there any change still
> > needed?
>
> Ah, you're right. It has to be documented that this happens as part of the
> pixel format documentation, right? So this should be added to the FWHT format
> doc once the proper behavior is implemented.

I wonder if it wouldn't be more consistent if we just made the driver
send this event even for streams that don't include format data in the
headers. In that case the driver would already have the information
about the format from the OUTPUT queue (and internal constraints), so
it could just signal the event instantly. WDYT?

Best regards,
Tomasz

