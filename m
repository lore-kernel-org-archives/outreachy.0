X-GM-THRID: 6618908371010453504
X-Received: by 2002:a25:b804:: with SMTP id v4-v6mr2192707ybj.79.1542382184258;
        Fri, 16 Nov 2018 07:29:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:180b:: with SMTP id 11-v6ls6444091yby.11.gmail; Fri, 16
 Nov 2018 07:29:43 -0800 (PST)
X-Received: by 2002:a25:9847:: with SMTP id k7-v6mr2242332ybo.78.1542382183478;
        Fri, 16 Nov 2018 07:29:43 -0800 (PST)
Received: by 2002:a81:538b:0:0:0:0:0 with SMTP id h133-v6msywb;
        Thu, 15 Nov 2018 06:27:20 -0800 (PST)
X-Google-Smtp-Source: AJdET5fCWLZ7T3klYBPgzdFKWKe82VlS/mbKI9KXXuudPex3sf1vx8+tQoeyNOsuOPv73ci39TQg
X-Received: by 2002:a25:74cf:: with SMTP id p198-v6mr362679ybc.89.1542292040240;
        Thu, 15 Nov 2018 06:27:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542292040; cv=none;
        d=google.com; s=arc-20160816;
        b=kUZuAXEKwZgj/ai0NpwJN0QlMJUEARohioBp3c6tND4Hd4vEWrtP6NM1vidyuEaVDn
         /ELKJtrKXI8gL838ebgwegSejloJiGur+B95KHskDQPp7dlhamWJuvTe0IQCLc/JQRqg
         k4TExBacXynV3c5k+6k/flQt0231vHElbCSJ61XT50Fl508r3UwJmp+pAKUWwwn+ApJn
         6vC1bKNB5pNXx4lJ/k2OgTdmFLsA6JWOifhgB6nS6mjsuvnbHVTxwWskjisn9NnKU4xM
         pPWBmFmYra524iSp/dAdo2TbZi3mvN74ucaMXtSAMhvUlR59jTsCpVwSIN9jQvCS3wnm
         Nqlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vbRMzQhQMiMNoRuiEMuLILH2SiYu8u/vk7E6aqqxkjo=;
        b=QL7qZSl43mb4NauirMYaM9NqyvIzFF8E6bpJtld+S0syxvMtk/nUI8V2DDzZZUYHIr
         EX9TggAaJN5BT3Or0yoch/D2eVtlaBGzYZwulM7LaGqE51bisBw3/2uSTH1S3ssyRgVk
         35/6KnIGhIfMltWYdcGMXZCQW/+uL7fIjFTZBNQ6U6Dh+bbnEQRf9spHWq0SdHjtF1ln
         r3Td1/bpNfCadgNqT3rZXwVSbfnFcCscnqnW/Es1ch2l7xD+Q9FexR+W7/EmJwNzfl8i
         TUzpfWVMQq4pFh0J6C0FxwrroRyYxbrtFUtl4EO3yY3++2+mVgTfYaWNQ50to53c+KFG
         3vuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dSJQefho;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <tfiga@chromium.org>
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id j21-v6si1237682ybg.5.2018.11.15.06.27.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 06:27:20 -0800 (PST)
Received-SPF: pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dSJQefho;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yb1-xb43.google.com with SMTP id h187-v6so8395085ybg.10
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 06:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vbRMzQhQMiMNoRuiEMuLILH2SiYu8u/vk7E6aqqxkjo=;
        b=dSJQefhobZVx+In1zu4oByaykN5fyjFGh3GGZotUzrTABGuEyNcZX9y24aHhtFmcJa
         sgkcClDRubN+Guadcl6tlipfwS+ZMpPVw5ok1X7AckhHvbv7caSfbP5L9oiEj06iKN2S
         IKxGkMv1c2007TYejt8/vAjViYg5SmkXuA9Ow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vbRMzQhQMiMNoRuiEMuLILH2SiYu8u/vk7E6aqqxkjo=;
        b=M945bSzCX8mgfFQf5T8ZgmQikWwv7C7VWer7R9jtTixVqTFhNXkSi0G+MCH3I7Ewz6
         z49tdRWFuYJP3cg0Ek4hVvqnydFccaghMk+k/OMBdieN4LtGqtNYDKEDQqpC+p0wSI2H
         90hLGIy5mGy5f+B/UqTDEjuX7kKrywH+pKaWEjS9ugidZykJ6xs4Nt56UyRZCYADYmFh
         7PsbcLuSKZBAnofi/g1bL7V0xrCIyqc+Ac704gu1NE/FkZO30rxKjEMSKDc3siS2a7UG
         waV9gjcqtN2ZbA3lqYOL1avHaGjSXsYSVep/bYCO+EPiMxanttmbGVJlqTwP08mHBdJ9
         rtrg==
X-Gm-Message-State: AGRZ1gL9xU4OsoRLgP92o+5cWMnovTnecBhQsNmdyU3HMAidDEay/Okh
	3iUPCewQuWOEKcrN0kYoMohqvfG5Qmc=
X-Received: by 2002:a25:6e87:: with SMTP id j129-v6mr5740096ybc.19.1542292039517;
        Thu, 15 Nov 2018 06:27:19 -0800 (PST)
Return-Path: <tfiga@chromium.org>
Received: from mail-yw1-f43.google.com (mail-yw1-f43.google.com. [209.85.161.43])
        by smtp.gmail.com with ESMTPSA id a12-v6sm15081155ywh.20.2018.11.15.06.27.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 06:27:18 -0800 (PST)
Received: by mail-yw1-f43.google.com with SMTP id h32so2659244ywk.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 06:27:17 -0800 (PST)
X-Received: by 2002:a81:3dc4:: with SMTP id k187-v6mr6025049ywa.415.1542292037431;
 Thu, 15 Nov 2018 06:27:17 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
 <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl> <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
 <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com>
 <a11ef1b7-5fd6-1a9a-f85e-e03d06e97b17@xs4all.nl> <CAAFQd5Cc8zPhbOfwU6=m=J1xHo-3UEYykeAg2g086iS3F3mGWQ@mail.gmail.com>
 <7704b4bb-beed-2c74-40d4-f674fb33d450@xs4all.nl> <CAAFQd5ACs-jwocSfc4gZaj4fVeOxZTG5rZA4zyQppwL2aKAL0w@mail.gmail.com>
 <e7a7af27-53fa-3635-058b-0261fbea9ab0@xs4all.nl> <CAAFQd5DF5acqQmvbGx16L2wzBsYVWDUhc-1nSimVUCdPSLPv+A@mail.gmail.com>
 <ae06c3ea-7573-c565-aa4e-3313bbb39913@xs4all.nl>
In-Reply-To: <ae06c3ea-7573-c565-aa4e-3313bbb39913@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 15 Nov 2018 23:27:05 +0900
X-Gmail-Original-Message-ID: <CAAFQd5D+_bPfEVmn77TX+MujwY8fsTzbGZyAqcQ1f1dCb_kcBQ@mail.gmail.com>
Message-ID: <CAAFQd5D+_bPfEVmn77TX+MujwY8fsTzbGZyAqcQ1f1dCb_kcBQ@mail.gmail.com>
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in vicodec
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: dafna3@gmail.com, helen.koike@collabora.com, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 15, 2018 at 11:22 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 11/15/2018 02:50 PM, Tomasz Figa wrote:
> > On Thu, Nov 15, 2018 at 10:48 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >>
> >> On 11/15/18 14:43, Tomasz Figa wrote:
> >>> On Thu, Nov 15, 2018 at 10:40 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >>>>
> >>>> On 11/15/18 14:33, Tomasz Figa wrote:
> >>>>> On Thu, Nov 15, 2018 at 10:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >>>>>>
> >>>>>> On 11/15/18 14:04, Dafna Hirschfeld wrote:
> >>>>>>>
> >>>>>>>
> >>>>>>> On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org <mailto:tfiga@chromium.org>> wrote:
> >>>>>>>
> >>>>>>>     Hi Hans, Dafna,
> >>>>>>>
> >>>>>>>     On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
> >>>>>>>     >
> >>>>>>>     > On 11/15/18 12:14, Dafna Hirschfeld wrote:
> >>>>>>>     > >
> >>>>>>>     > >
> >>>>>>>     > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl> <mailto:hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>>> wrote:
> >>>>>>>     > >
> >>>>>>>     > >     Hi Dafna,
> >>>>>>>     > >
> >>>>>>>     > >     This patch series looks very nice!
> >>>>>>>     > >
> >>>>>>>     > > thanks:)
> >>>>>>>     > >
> >>>>>>>     > >     Can you repost this and add a CC to linux-media?
> >>>>>>>     > >
> >>>>>>>     > > I will
> >>>>>>>     > >
> >>>>>>>     > >     I'm happy to take this.
> >>>>>>>     > >
> >>>>>>>     > >     The TODO that is in the decoder code (what to do if the fwht bitstream
> >>>>>>>     > >     encodes fewer/more planes than the requested raw frame format) is
> >>>>>>>     > >     something that needs to be implemented later as part of making vicodec
> >>>>>>>     > >     compliant to the stateful codec specification.
> >>>>>>>     > >
> >>>>>>>     > > I tried to look in the docs what should be done in that case and didn't find.
> >>>>>>>     > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
> >>>>>>>     > > but this is only optional.
> >>>>>>>     >
> >>>>>>>     > You are referring to section 4.6.6, point 4 here:
> >>>>>>>     >
> >>>>>>>     > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
> >>>>>>>     >
> >>>>>>>     > Right?
> >>>>>>>     >
> >>>>>>>
> >>>>>>> Right,
> >>>>>>>
> >>>>>>>
> >>>>>>>     > It's optional only in the sense that if you already happen to know what
> >>>>>>>     > the stream contains, then you don't need to do it.
> >>>>>>>     >
> >>>>>>>
> >>>>>>> It still not clear to me what should be the behavior in case the user does give the CAPTURE format before the streaming starts
> >>>>>>> but then the actual encoded data that the user send is of different format. Can we trust the user to be consistent ?
> >>>>>>
> >>>>>> No, we can't trust users. At all :-)
> >>>>>>
> >>>>>> So the driver would have to act the same as if there was a resolution change.
> >>>>>>
> >>>>>> Tomasz, this is actually something to improve: it is not just resolution changes,
> >>>>>> but also incompatible capture formats. In this case, the stream contains RGB, but
> >>>>>> the capture format is YUV, and vicodec cannot convert from RGB to YUV.
> >>>>>>
> >>>>>> I think sending a SOURCE_CHANGE event makes sense. One thing though: this would
> >>>>>> take place at the very start of the decoding process, so step 2 in section 4.6.9
> >>>>>> (Dynamic resolution change) says "The decoder will then process and decode all
> >>>>>> remaining buffers from before the resolution change point.". But no buffers have
> >>>>>> been decoded yet, so should it queue an empty buffer with V4L2_BUF_FLAG_LAST set?
> >>>>>>
> >>>>>> It is probably the right thing to do.
> >>>>>
> >>>>> There is already a source change event specified to be signaled in the
> >>>>> Initialization sequence. It's defined to always happen after the
> >>>>> driver establishes the format. Given that, is there any change still
> >>>>> needed?
> >>>>
> >>>> Ah, you're right. It has to be documented that this happens as part of the
> >>>> pixel format documentation, right? So this should be added to the FWHT format
> >>>> doc once the proper behavior is implemented.
> >>>
> >>> I wonder if it wouldn't be more consistent if we just made the driver
> >>> send this event even for streams that don't include format data in the
> >>> headers. In that case the driver would already have the information
> >>> about the format from the OUTPUT queue (and internal constraints), so
> >>> it could just signal the event instantly. WDYT?
> >>
> >> Can't we leave this open? Are there codecs where the stream doesn't have
> >> meta data? I'm not aware of any.
> >>
> >> I'm not sure if we need to mention codecs without embedded meta data at all.
> >>
> >> Perhaps just mention that such codecs are unsupported at the moment.
> >
> > That would indeed simplify things. I don't know too much about codecs
> > other than H.264 and VPx, so can't really tell if none of the codecs
> > we have FourCCs for would qualify as such, though...
>
> As far as I am aware, all of them do have metadata in the bitstream. So
> I'd just leave it out from the spec. Or perhaps leave a single mention
> that such codecs are not supported at the moment.

Sounds good to me. Would you be able to post a comment like this in a
reply to my patch? Thanks in advance.

Best regards,
Tomasz

