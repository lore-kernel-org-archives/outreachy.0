X-GM-THRID: 6618908371010453504
X-Received: by 2002:a5d:4dd0:: with SMTP id f16-v6mr127318wru.10.1542288590688;
        Thu, 15 Nov 2018 05:29:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b109:: with SMTP id a9-v6ls117835wmf.1.gmail; Thu, 15
 Nov 2018 05:29:49 -0800 (PST)
X-Google-Smtp-Source: AFSGD/XK/XTbu3/fhTyX6SXUPJ/f6CZ7QihBETXqeDy1C2DNQUUkxxSqYDKAErOshuk7nRKGduc9
X-Received: by 2002:a1c:7e8c:: with SMTP id z134-v6mr93808wmc.7.1542288589850;
        Thu, 15 Nov 2018 05:29:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542288589; cv=none;
        d=google.com; s=arc-20160816;
        b=hMXJkQ800Rmg69WfUADUxpZ9khCu6Er+8jFbQAIpRXgAzXsCv/w1L95tuafHOYR79k
         hTRBORmU7vsmTUh1x3HFcr1srGmJJmH7aaK8pUpFQ+r0Rag/e1z3I17VDdd86OcS5fvs
         CIFTLWYGNUAoPsEjnk8XE2DP2RlYQqqLDV3L6T52nLkIQIFlHI4hN5Dko3FWta4CnL4j
         RSz/Ml7Rhr1Z/kCydjun1XKXoMJWuo5EvpfZi0HOxYet5n+pePDD7iiY2KwdIq+EkY0v
         iArU87R+shDRpGrxWmxknS9DDfk7Epy+wq1wnp7ureaKfCXp9pa9fw0XcqlVwOwS1ucT
         83UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=gog38b7EizmQxV87+DQXJvaufi4wbf238amnDz9sH74=;
        b=MYhc1BV3D+EQp6PVaz6STnCAvNvVCwNjnCP/n38gnEJsnfI+JdWRWv4/M6Tgk915YS
         pewiKH5dDdN5/HyJsxtlnfwXwb/2V3j9jWqzhEbwCRLA4+DTT1D2TqrV2bqDJumjLTi6
         U+PtZs+UrVMM2sFNStNR5DdEAHW6INO6Co3AO4DansMV4telR5wNPjXSxSApHrhYwdfX
         Ly8cBhDCjlkl/09nOVXRdsSX+X+0qBd7vmZLPoMYHebgZu7JzmG5GgQMRcDXB1SKZMLq
         wUQ41LcjyoqEb65iirLkCISN9Ys4EMN4ZADIegfnLFggMEcrNFp4UUh3LfUqBSLIf5ph
         W9Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net. [194.109.24.28])
        by gmr-mx.google.com with ESMTPS id z129-v6si445977wmc.0.2018.11.15.05.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:29:49 -0800 (PST)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) client-ip=194.109.24.28;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:420:44c1:2579:69fd:c8e5:3116:c82c] ([IPv6:2001:420:44c1:2579:69fd:c8e5:3116:c82c])
	by smtp-cloud7.xs4all.net with ESMTPA
	id NHiLgfe8Eg8oMNHiPg0XCO; Thu, 15 Nov 2018 14:29:49 +0100
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in
 vicodec
To: Dafna Hirschfeld <dafna3@gmail.com>, tfiga@chromium.org
Cc: helen.koike@collabora.com, mchehab@kernel.org,
 outreachy-kernel@googlegroups.com
References: <cover.1541451484.git.dafna3@gmail.com>
 <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
 <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl>
 <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
 <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a11ef1b7-5fd6-1a9a-f85e-e03d06e97b17@xs4all.nl>
Date: Thu, 15 Nov 2018 14:29:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfDzzemQv/9sIznGo0ETkF8F84P5WBu45NL46FzIjKX5nzmem07jvro4fqZLUizsd4U+R7/lQhQWWHreBVC7pxQUTgVhjr5SJnIYl43GC0LU+q66219aZ
 1qrLieOvirTsmDEjtWw2NdBbhejSEMTlDFZyCMv5ssLE2xQK1tvV5s+I55Ukcx5v78shKQwdwK9LDE0c3kuJuB4MmPBAi6nGoDf35C1s+58gFfLzS1MSgHt2
 Cm/O3S6Q9OEfy6lI6sI2imdz0GG9STzFI2jgPfw/fQGAJer/qEYplVGQhqhxqYi1E4VDx0bj6QRY+Odtkts8sSJTBwg2FezuvutHunSrLvrHcMMreEYxeU7y
 qDjWQxtysNSeTcrTvCUrEzcUQPN0B418VZLJticbsdMsr2GPhcAhyVHKmOpnR3oVmwM96seA

On 11/15/18 14:04, Dafna Hirschfeld wrote:
> 
> 
> On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org <mailto:tfiga@chromium.org>> wrote:
> 
>     Hi Hans, Dafna,
> 
>     On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
>     >
>     > On 11/15/18 12:14, Dafna Hirschfeld wrote:
>     > >
>     > >
>     > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl> <mailto:hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>>> wrote:
>     > >
>     > >     Hi Dafna,
>     > >
>     > >     This patch series looks very nice!
>     > >
>     > > thanks:)
>     > >
>     > >     Can you repost this and add a CC to linux-media?
>     > >
>     > > I will
>     > >
>     > >     I'm happy to take this.
>     > >
>     > >     The TODO that is in the decoder code (what to do if the fwht bitstream
>     > >     encodes fewer/more planes than the requested raw frame format) is
>     > >     something that needs to be implemented later as part of making vicodec
>     > >     compliant to the stateful codec specification.
>     > >
>     > > I tried to look in the docs what should be done in that case and didn't find.
>     > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
>     > > but this is only optional.
>     >
>     > You are referring to section 4.6.6, point 4 here:
>     >
>     > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
>     >
>     > Right?
>     >
> 
> Right,
>  
> 
>     > It's optional only in the sense that if you already happen to know what
>     > the stream contains, then you don't need to do it.
>     > 
> 
> It still not clear to me what should be the behavior in case the user does give the CAPTURE format before the streaming starts
> but then the actual encoded data that the user send is of different format. Can we trust the user to be consistent ?

No, we can't trust users. At all :-)

So the driver would have to act the same as if there was a resolution change.

Tomasz, this is actually something to improve: it is not just resolution changes,
but also incompatible capture formats. In this case, the stream contains RGB, but
the capture format is YUV, and vicodec cannot convert from RGB to YUV.

I think sending a SOURCE_CHANGE event makes sense. One thing though: this would
take place at the very start of the decoding process, so step 2 in section 4.6.9
(Dynamic resolution change) says "The decoder will then process and decode all
remaining buffers from before the resolution change point.". But no buffers have
been decoded yet, so should it queue an empty buffer with V4L2_BUF_FLAG_LAST set?

It is probably the right thing to do.

Regards,

	Hans

> 
> Dafna
>  
> 
>     > I'm CC-ing Tomasz Figa, since I think just describing a step as 'Optional'
>     > is too vague. Something like: 'If <condition>, then you need to perform
>     > this step' (or alternatively: 'If !<condition>, then you can skip this step'.
> 
>     Just to clarify, the documentation is written from userspace point of
>     view. If something is optional for a userspace application, the
>     application can use it and the driver is expected to support it.
> 
>     I'm okay replacing "Optional" with something more specific, like "If
>     the client does not need to change the default format", but I wonder
>     if it wouldn't effectively become "if the client does not need to
>     change the default format, or it wants to do it by probing a fixed
>     list of formats it supports by using S_FMT or TRY_FMT, or what not,
>     ...".
> 
>     Perhaps just explaining the meaning of "Optional" explicitly in the
>     "Conventions and notation used in this document" would be good enough?
> 
>     Best regards,
>     Tomasz
> 


