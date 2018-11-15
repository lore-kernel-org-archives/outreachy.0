X-GM-THRID: 6618908371010453504
X-Received: by 2002:aed:36ea:: with SMTP id f97mr433028qtb.60.1542290799694;
        Thu, 15 Nov 2018 06:06:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:111a:: with SMTP id b26ls8044899qkh.8.gmail; Thu, 15 Nov
 2018 06:06:39 -0800 (PST)
X-Received: by 2002:a37:8e05:: with SMTP id q5mr418778qkd.7.1542290799235;
        Thu, 15 Nov 2018 06:06:39 -0800 (PST)
Received: by 2002:a37:3803:0:0:0:0:0 with SMTP id f3msqka;
        Thu, 15 Nov 2018 05:23:17 -0800 (PST)
X-Google-Smtp-Source: AJdET5ewK5nBxYqFESeYb4QMNDE+SsC5RyqGc6VETdE4iFm1l1Hp30aX7u7ktcMGyLJINmM7HvEM
X-Received: by 2002:ac8:6cb:: with SMTP id j11mr346119qth.22.1542288197134;
        Thu, 15 Nov 2018 05:23:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542288197; cv=none;
        d=google.com; s=arc-20160816;
        b=afQmxnkjxVT+3yflUyXNlqGv+gkcmu6XiXseQY4ga6Gb1YnM2lqDbu5JDFhz0fizFu
         KWhPP/kRtpJa3FgckWyYmirqG9I6aU0xNWoczoSiqzt/Ofwged73pIzJjewJvfA9phGw
         GcAtijKQ8jLYtFTbCHcOtOMksYMuB/Eqy+aFBkNrURsGWX0mypD8lPmcT/qznIsIAqIe
         NXhzb10O/sHUq2cYNnnpDyW+TSoAxi1bThlym9OUfh+EE4GEummooyM8sfu4BLbJCeRb
         JBx5O+eOPyD6oCh4c3agLpKhUP+PV0EhGSvNEtGZZis68l6plzX8XL+neR/R2g7EcCgb
         fIOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IAHxfd1ghVm86dXTQ6iWOneJE+W4I+HZGIsO01FSvVc=;
        b=dh3ODrMZCKHf3ZVRK0Y5nTXLStJTwSZTYXIoDV52rc+iBF6BNYcC3NXYMZOZIQlHCH
         bVBGtMSydo/nKzyLHJsCO2YmxBS0TJPiUgK/ZdKHfiBfc/XsflBX3Q1GM7BelGVMnU8G
         BC3i90xONAvoSM/OMWk0HPAqftKqYWismRQniB78ZW4ope7XWkKS0AVSp4ioGlt4AziJ
         ebsbP00hs37P2fXvlOYpCwNKL1ZptJyFyZath/E2JnCha/HwojESliKZWWprjGVIQT2H
         lhb7db4cYwhxnHKvSe5w6gQorQuwgRhJvHbbMHcCpSyVIDL/d1GLcFb3UJLZuWeeAX9A
         8jdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VD7vJHLf;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::c34 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <tfiga@chromium.org>
Received: from mail-yw1-xc34.google.com (mail-yw1-xc34.google.com. [2607:f8b0:4864:20::c34])
        by gmr-mx.google.com with ESMTPS id s34si1180677qtk.1.2018.11.15.05.23.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:23:17 -0800 (PST)
Received-SPF: pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::c34 as permitted sender) client-ip=2607:f8b0:4864:20::c34;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VD7vJHLf;
       spf=pass (google.com: domain of tfiga@chromium.org designates 2607:f8b0:4864:20::c34 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw1-xc34.google.com with SMTP id z72-v6so8718923ywa.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 05:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IAHxfd1ghVm86dXTQ6iWOneJE+W4I+HZGIsO01FSvVc=;
        b=VD7vJHLfLqzvZ2HxQ2lgxjxWy+6A2PpT08O3V3bjpCrRtGtShKuO8ctl9hchzu1IP6
         jWdL70l8vY+k3TOo6MZXJ71AYqEZVz89Bwi+mAlDjbIxHleemW4pxGCd5KEVzEKgy+Jb
         AkEORWXGoS3hcfac70KQP25Vz+gBb2NdLYDA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IAHxfd1ghVm86dXTQ6iWOneJE+W4I+HZGIsO01FSvVc=;
        b=mSTtzeHgAWxk9EjM5K4WstwgKOW3yMu1+6iXJxkq8PuV+zgQTI+9Pwf/x//4ymPZ8l
         eiPvTlHr1cLniP0sA4Wb4ZZ8KPY80zHBseRhMZSbZuKNFSQ/Z7LhVMATpGENF7xAnZrd
         atCG9ppSgTINpAz8m7xOMhi4PoHwnXHCJPrXv1fzgulHzeJV80RgaUdulk7LYFTPYAnr
         0fnXNFdLuaw8YBLDQILY7gBX16LtgjlCU9DW2tsxHRZkcutpVvqlU8S8w4TEnLinbQtE
         7AS01HLssjD7ZW0zbgqHwUhUu6aWjBjk2ApVmyExgnuu/sZ8nr6+44zJrs7/XNxv4kni
         qTeA==
X-Gm-Message-State: AGRZ1gJF5Yjvg49beyUdCtAxQeXKhwaDh7GKgP3aDyTAaHX9Mtacft/S
	1CJUfCZ8vEd2TqdmR5fBVe/nlBWXrxk=
X-Received: by 2002:a81:7d0b:: with SMTP id y11mr3558020ywc.442.1542288196438;
        Thu, 15 Nov 2018 05:23:16 -0800 (PST)
Return-Path: <tfiga@chromium.org>
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com. [209.85.219.180])
        by smtp.gmail.com with ESMTPSA id j65-v6sm6795651ywg.52.2018.11.15.05.23.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:23:15 -0800 (PST)
Received: by mail-yb1-f180.google.com with SMTP id w17-v6so8320897ybl.6
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 05:23:15 -0800 (PST)
X-Received: by 2002:a25:9a46:: with SMTP id r6-v6mr5622758ybo.303.1542288194952;
 Thu, 15 Nov 2018 05:23:14 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
 <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl> <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
 <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com>
In-Reply-To: <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 15 Nov 2018 22:23:02 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DH_NmyQXdiVTy9MT4iCLNNdWOf1vXCzwyfB1GVqX=Xvw@mail.gmail.com>
Message-ID: <CAAFQd5DH_NmyQXdiVTy9MT4iCLNNdWOf1vXCzwyfB1GVqX=Xvw@mail.gmail.com>
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in vicodec
To: dafna3@gmail.com
Cc: Hans Verkuil <hverkuil@xs4all.nl>, helen.koike@collabora.com, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 15, 2018 at 10:05 PM Dafna Hirschfeld <dafna3@gmail.com> wrote:
>
>
>
> On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org> wrote:
>>
>> Hi Hans, Dafna,
>>
>> On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>> >
>> > On 11/15/18 12:14, Dafna Hirschfeld wrote:
>> > >
>> > >
>> > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
>> > >
>> > >     Hi Dafna,
>> > >
>> > >     This patch series looks very nice!
>> > >
>> > > thanks:)
>> > >
>> > >     Can you repost this and add a CC to linux-media?
>> > >
>> > > I will
>> > >
>> > >     I'm happy to take this.
>> > >
>> > >     The TODO that is in the decoder code (what to do if the fwht bitstream
>> > >     encodes fewer/more planes than the requested raw frame format) is
>> > >     something that needs to be implemented later as part of making vicodec
>> > >     compliant to the stateful codec specification.
>> > >
>> > > I tried to look in the docs what should be done in that case and didn't find.
>> > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
>> > > but this is only optional.
>> >
>> > You are referring to section 4.6.6, point 4 here:
>> >
>> > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
>> >
>> > Right?
>> >
>
> Right,
>
>>
>> > It's optional only in the sense that if you already happen to know what
>> > the stream contains, then you don't need to do it.
>> >
>
> It still not clear to me what should be the behavior in case the user does give the CAPTURE format before the streaming starts
> but then the actual encoded data that the user send is of different format. Can we trust the user to be consistent ?

This is a very good point. Generally the first step of the "4.6.6.
Capture setup" section is to query the format and it's mandatory for
the client. So when the driver determines the supported formats
(possibly after parsing the bitstream headers), it will reset the
CAPTURE format to whatever suitable default and signal a source change
event. If the client ignores this and doesn't check the real format,
it's buggy and correct operation shouldn't be expected.

Best regards,
Tomasz

>
> Dafna
>
>>
>> > I'm CC-ing Tomasz Figa, since I think just describing a step as 'Optional'
>> > is too vague. Something like: 'If <condition>, then you need to perform
>> > this step' (or alternatively: 'If !<condition>, then you can skip this step'.
>>
>> Just to clarify, the documentation is written from userspace point of
>> view. If something is optional for a userspace application, the
>> application can use it and the driver is expected to support it.
>>
>> I'm okay replacing "Optional" with something more specific, like "If
>> the client does not need to change the default format", but I wonder
>> if it wouldn't effectively become "if the client does not need to
>> change the default format, or it wants to do it by probing a fixed
>> list of formats it supports by using S_FMT or TRY_FMT, or what not,
>> ...".
>>
>> Perhaps just explaining the meaning of "Optional" explicitly in the
>> "Conventions and notation used in this document" would be good enough?
>>
>> Best regards,
>> Tomasz

