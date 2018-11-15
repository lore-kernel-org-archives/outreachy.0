X-GM-THRID: 6618908371010453504
X-Received: by 2002:a9d:41b1:: with SMTP id p46mr442020ote.25.1542290800680;
        Thu, 15 Nov 2018 06:06:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ac0a:: with SMTP id v10ls5187468oie.0.gmail; Thu, 15 Nov
 2018 06:06:39 -0800 (PST)
X-Received: by 2002:aca:5e04:: with SMTP id s4-v6mr444321oib.31.1542290799343;
        Thu, 15 Nov 2018 06:06:39 -0800 (PST)
Received: by 2002:aca:bb0b:0:0:0:0:0 with SMTP id l11-v6msoif;
        Thu, 15 Nov 2018 05:33:56 -0800 (PST)
X-Google-Smtp-Source: AJdET5cuc+2HqnnMbXSPGT7RjTA9GlGYG5uIWhU6AZKYLoOGE1xHL/H/X7fYCyDY8CbnpRHMirgM
X-Received: by 2002:a63:180c:: with SMTP id y12mr265126pgl.68.1542288836702;
        Thu, 15 Nov 2018 05:33:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542288836; cv=none;
        d=google.com; s=arc-20160816;
        b=z13CwY9Horw6Z6Mjelf0DeUBwa7ABFaF+Q8E1fR3MxbZdBwReJLQZGJyA0reOXRtd5
         I/JS6Z58Nt2VojuXTjT/zaS2VeOr7KNsfIPLWOD6n74vqUuFTCAfw4/kEKWt2l1BL/E2
         vLOqZ+1aVHiO/Tmv+W33hdUvjMj7hUkon12506bdvkncFYwRcddmBLsIcE29A5Xr+IPH
         rUN54xYUTYfyUmBXiPs+JZ2W99sgkrpP8wYxfwjd4a82slq/avucEJwU+OAdC7/KbV69
         p4YdASYWCsjIUKoRqCWGnSUI57ObNmoNtWDpCzjnL8JSBUzmgMnlCk0ZxaSjVWexjKmL
         /YFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yam2TJdTXMQb1nymC7rcU1gpLzp3jXMh1bnZVcHPjQA=;
        b=kjgAZi66h9pmgKZTv+RV7k09Lh4QHKX4x3Jk+YHlQDNeFsFbYh4WwnrajM0M/G/edf
         AjbTTdZ5yl33RWPpSgsQPLvR9eavakrem/GTkJ5K5n95YxHr3h4va8FypqkMQBnHBhuQ
         utdSOhzqvCCfJ4uVpx0TMaG/7yeizk16JhvbuUjj8BHEHyX5DZV81FjP53xKv1Qmytph
         6Z4OeiGtH/vahZjhNvJ4vuTnqId2KIvy3otaeKQF/2gNlYW19faMfFJqODV9k+s1JCB3
         yCI/iJ8Sm6VumThfgTZxuybCiZsodQNzj0TFnECVqnEJNW1LMzlAcR/o0jFnjuf4UyTw
         k27Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L8FDvek9;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::c2e as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <tfiga@chromium.org>
Received: from mail-yw1-xc2e.google.com (mail-yw1-xc2e.google.com. [2607:f8b0:4864:20::c2e])
        by gmr-mx.google.com with ESMTPS id i12-v6si871959plt.5.2018.11.15.05.33.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:33:56 -0800 (PST)
Received-SPF: pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::c2e as permitted sender) client-ip=2607:f8b0:4864:20::c2e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L8FDvek9;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::c2e as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw1-xc2e.google.com with SMTP id z72-v6so8730513ywa.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 05:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yam2TJdTXMQb1nymC7rcU1gpLzp3jXMh1bnZVcHPjQA=;
        b=L8FDvek9s8EHwnGjNhp7XGZzwVlYaKu2zPHxUCVPCuZ9z5LheBW8PxWIr7lmIetDgT
         IFjEdiYx+uBWy4yCu6XhlJw6EEmekdBQeaSw8U9Qoe99NzinEt0N5BOrfLNnO8uuBtmu
         1XqaPhQKTSQfDF8rbSO4DaNX5cztHYAEc1rVI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yam2TJdTXMQb1nymC7rcU1gpLzp3jXMh1bnZVcHPjQA=;
        b=RB6bh0qIuqR5CDSfu7i3fJLyRMl/6KnjotoGVDtFwrfGOkNFvWLsZzj5Tbzfv7u/st
         dyDPg5/Z9+KL+cPy8pPOvM+h0OyKKzwDprik7oLeNXrZWyKA1ykLqkjeK6EuCjYb+1Qs
         v521f+1NLe1etP9kchZgjJtK/5kkzaxQnYabGIeC1bfN+9Gfd2lkT3l/30AXpM4bk+JG
         wDeIu/1j8I5R0kQTdKylN68iyvSl29x4PGwkHRK8Maa/Dca7vOrv4flG94415Du351lB
         sIaXNGMT3aPsFQ2Gk44NxfRDMUFSSmh+IxSbXOTh/CmlyTfyfbCp1oujLvj/zaKJAPzr
         h/rA==
X-Gm-Message-State: AGRZ1gIITs6c6pMtOIkmuY6B9S2R6TJQlx9tI0XCrYygqCPt/svp9qZ4
	xzhZZNDYNtve2PetDIPk3LtATbgz7GE=
X-Received: by 2002:a0d:da46:: with SMTP id c67-v6mr5666453ywe.235.1542288835790;
        Thu, 15 Nov 2018 05:33:55 -0800 (PST)
Return-Path: <tfiga@chromium.org>
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id l185-v6sm6902487ywb.93.2018.11.15.05.33.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:33:54 -0800 (PST)
Received: by mail-yb1-f182.google.com with SMTP id 131-v6so8313092ybe.12
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 05:33:54 -0800 (PST)
X-Received: by 2002:a25:9a46:: with SMTP id r6-v6mr5662968ybo.303.1542288834112;
 Thu, 15 Nov 2018 05:33:54 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
 <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl> <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
 <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com> <a11ef1b7-5fd6-1a9a-f85e-e03d06e97b17@xs4all.nl>
In-Reply-To: <a11ef1b7-5fd6-1a9a-f85e-e03d06e97b17@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 15 Nov 2018 22:33:41 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Cc8zPhbOfwU6=m=J1xHo-3UEYykeAg2g086iS3F3mGWQ@mail.gmail.com>
Message-ID: <CAAFQd5Cc8zPhbOfwU6=m=J1xHo-3UEYykeAg2g086iS3F3mGWQ@mail.gmail.com>
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in vicodec
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: dafna3@gmail.com, helen.koike@collabora.com, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 15, 2018 at 10:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 11/15/18 14:04, Dafna Hirschfeld wrote:
> >
> >
> > On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org <mailto:tfiga@chromium.org>> wrote:
> >
> >     Hi Hans, Dafna,
> >
> >     On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
> >     >
> >     > On 11/15/18 12:14, Dafna Hirschfeld wrote:
> >     > >
> >     > >
> >     > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl> <mailto:hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>>> wrote:
> >     > >
> >     > >     Hi Dafna,
> >     > >
> >     > >     This patch series looks very nice!
> >     > >
> >     > > thanks:)
> >     > >
> >     > >     Can you repost this and add a CC to linux-media?
> >     > >
> >     > > I will
> >     > >
> >     > >     I'm happy to take this.
> >     > >
> >     > >     The TODO that is in the decoder code (what to do if the fwht bitstream
> >     > >     encodes fewer/more planes than the requested raw frame format) is
> >     > >     something that needs to be implemented later as part of making vicodec
> >     > >     compliant to the stateful codec specification.
> >     > >
> >     > > I tried to look in the docs what should be done in that case and didn't find.
> >     > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
> >     > > but this is only optional.
> >     >
> >     > You are referring to section 4.6.6, point 4 here:
> >     >
> >     > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
> >     >
> >     > Right?
> >     >
> >
> > Right,
> >
> >
> >     > It's optional only in the sense that if you already happen to know what
> >     > the stream contains, then you don't need to do it.
> >     >
> >
> > It still not clear to me what should be the behavior in case the user does give the CAPTURE format before the streaming starts
> > but then the actual encoded data that the user send is of different format. Can we trust the user to be consistent ?
>
> No, we can't trust users. At all :-)
>
> So the driver would have to act the same as if there was a resolution change.
>
> Tomasz, this is actually something to improve: it is not just resolution changes,
> but also incompatible capture formats. In this case, the stream contains RGB, but
> the capture format is YUV, and vicodec cannot convert from RGB to YUV.
>
> I think sending a SOURCE_CHANGE event makes sense. One thing though: this would
> take place at the very start of the decoding process, so step 2 in section 4.6.9
> (Dynamic resolution change) says "The decoder will then process and decode all
> remaining buffers from before the resolution change point.". But no buffers have
> been decoded yet, so should it queue an empty buffer with V4L2_BUF_FLAG_LAST set?
>
> It is probably the right thing to do.

There is already a source change event specified to be signaled in the
Initialization sequence. It's defined to always happen after the
driver establishes the format. Given that, is there any change still
needed?

Best regards,
Tomasz

