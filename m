X-GM-THRID: 6618908371010453504
X-Received: by 2002:aed:227a:: with SMTP id o55-v6mr444098qtc.15.1542290799691;
        Thu, 15 Nov 2018 06:06:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5a0:: with SMTP id g32ls8170748qve.5.gmail; Thu, 15 Nov
 2018 06:06:39 -0800 (PST)
X-Received: by 2002:a0c:ae61:: with SMTP id z30mr461016qvc.11.1542290799235;
        Thu, 15 Nov 2018 06:06:39 -0800 (PST)
Received: by 2002:a37:817:0:0:0:0:0 with SMTP id 23msqki;
        Thu, 15 Nov 2018 04:09:38 -0800 (PST)
X-Google-Smtp-Source: AJdET5cacPfD0Kivb5drmR507curkH4UnbBxU5B3HiU//oIIF4au6n7cOad30Ji7Ta0wkKjSSnhK
X-Received: by 2002:a67:3ad3:: with SMTP id g80mr175823vsi.37.1542283778074;
        Thu, 15 Nov 2018 04:09:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542283778; cv=none;
        d=google.com; s=arc-20160816;
        b=gOldDbShTGquUHULBSUBawbYBcdh81WtcNvyUcf3wBjAelUb57AypWZYLgIIy1YmIM
         VllhfQmhpPXB81KSBrSFHkwk2OYKVqq/CUQLB2ZsYpuHpGLhggX0k8BNnHfs/sgmuOpx
         e5tmO1yEMNumZZGxIqmQsd6Osw+vtsPkPTjyvBeCMs6g/u0BYImIf2TdnyP2ZiV2itbF
         h89koikLbw0qaK+MI+Twk2OvLqacFumUC9tTDh5/W9nlTgD6impJQ+oh55mV9FT58rjy
         y28sqeVqtJq8JgEEVvra9TZ7ZzGx+ICvuLGSdQmAbKUQgmTiestPvtykltZpgAiNtAEY
         jNGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=N9LkwxyAYYnp/0O+B/O5G3JO4Hgosj+zEJe0B/2me3k=;
        b=dLSt82YzHBnn9mgFjUx4NzSHSJW+l0IZj8X9pyUGIt6TZ8uIDaG+CRZ8W3JN8rL1pa
         UpfCFKu+7eXC0kAzh58YMC5YCXxaupNRYrUQyayvlE6otutL3WZr4kUTPpqaTcpeyq+a
         4uEOEQqqH3EaTOuyIzuy06uDJMakHKjgmpvH46JCYrzpbTFTCFYXhWCB2kJVYstaPU0J
         KDRpiA4hMD5l1xd9MNe+ETg6LmptqskoH1iW10tDYz5pZjmiizmsuw1fs2W+jlAC2fGW
         G/Pu6mOGvXaSO4UKIfeK+zNlSghO3CiY61SwIGll9H9b7cbQAV/oODB4Urae4c8MFrci
         4LHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="O2HTN+K/";
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <tfiga@chromium.org>
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id t15si1475215ual.1.2018.11.15.04.09.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 04:09:38 -0800 (PST)
Received-SPF: pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="O2HTN+K/";
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yb1-xb44.google.com with SMTP id u103-v6so8250778ybi.5
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 04:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N9LkwxyAYYnp/0O+B/O5G3JO4Hgosj+zEJe0B/2me3k=;
        b=O2HTN+K/00LZxJabG3vnxqvw5dpdd5Gv5ryLuLiD4eL/PL2mfKX0h3wqesA4hnacX5
         Z9ytIHEHAMe2G5zhprK3MW+tgcsKIVbwWP9dxgsZKK4lC3CgU3kgOQpM4kee9eeIhZS5
         j+ulEPv0/syIumbJ2oHQ+jOnUd0kiU7NUZtDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N9LkwxyAYYnp/0O+B/O5G3JO4Hgosj+zEJe0B/2me3k=;
        b=o365F3aNi3vopJo9nJlrYCED4H+43KcZCAfoFWDQvEdZcW6mgLyf4U3I3UOeJQm4Je
         SQz63P7uRFmLoRiREYG8n8AzaodC0WDJLLXWuaZj59DFvhV54SjUo9t7jN/lODHO+8LT
         CsEpQiGLESRDFz+ec3847SATfETByQGEyoBvsvjLLiEySvMs47+RzKRcCThYsXTUFmIP
         fR5UUyOdBitGeau1XJTUkv+En9cvkvRJDpatT2UcHFqaqJVy1Ek9uxYgGf4FAKpplnUr
         Ewg1jqdIlPf3GWs9t3gow0D9Dizr2b0wcTPstE6ARoCAAMg+8nmdJHbrkLJnyfNP8Lzf
         HvEg==
X-Gm-Message-State: AGRZ1gLoRuQq9B1ZeLRv3a5k5Y2o84YuCGaCrSIKZFjwjRJEER8+ab7h
	Hjnm8jj2xGFVIDM27jSS+rg4elgkgh0=
X-Received: by 2002:a25:1a03:: with SMTP id a3-v6mr5331998yba.425.1542283777265;
        Thu, 15 Nov 2018 04:09:37 -0800 (PST)
Return-Path: <tfiga@chromium.org>
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id 80-v6sm5822554ywh.55.2018.11.15.04.09.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 04:09:36 -0800 (PST)
Received: by mail-yb1-f169.google.com with SMTP id i78-v6so8273195ybg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 04:09:36 -0800 (PST)
X-Received: by 2002:a25:9a46:: with SMTP id r6-v6mr5348667ybo.303.1542283775634;
 Thu, 15 Nov 2018 04:09:35 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com> <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl>
In-Reply-To: <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 15 Nov 2018 21:09:23 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
Message-ID: <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in vicodec
To: Hans Verkuil <hverkuil@xs4all.nl>, dafna3@gmail.com
Cc: helen.koike@collabora.com, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

Hi Hans, Dafna,

On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 11/15/18 12:14, Dafna Hirschfeld wrote:
> >
> >
> > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
> >
> >     Hi Dafna,
> >
> >     This patch series looks very nice!
> >
> > thanks:)
> >
> >     Can you repost this and add a CC to linux-media?
> >
> > I will
> >
> >     I'm happy to take this.
> >
> >     The TODO that is in the decoder code (what to do if the fwht bitstream
> >     encodes fewer/more planes than the requested raw frame format) is
> >     something that needs to be implemented later as part of making vicodec
> >     compliant to the stateful codec specification.
> >
> > I tried to look in the docs what should be done in that case and didn't find.
> > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
> > but this is only optional.
>
> You are referring to section 4.6.6, point 4 here:
>
> https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
>
> Right?
>
> It's optional only in the sense that if you already happen to know what
> the stream contains, then you don't need to do it.
>
> I'm CC-ing Tomasz Figa, since I think just describing a step as 'Optional'
> is too vague. Something like: 'If <condition>, then you need to perform
> this step' (or alternatively: 'If !<condition>, then you can skip this step'.

Just to clarify, the documentation is written from userspace point of
view. If something is optional for a userspace application, the
application can use it and the driver is expected to support it.

I'm okay replacing "Optional" with something more specific, like "If
the client does not need to change the default format", but I wonder
if it wouldn't effectively become "if the client does not need to
change the default format, or it wants to do it by probing a fixed
list of formats it supports by using S_FMT or TRY_FMT, or what not,
...".

Perhaps just explaining the meaning of "Optional" explicitly in the
"Conventions and notation used in this document" would be good enough?

Best regards,
Tomasz

