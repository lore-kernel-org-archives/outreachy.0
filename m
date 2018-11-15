X-GM-THRID: 6618908371010453504
X-Received: by 2002:a5d:4a4a:: with SMTP id v10-v6mr120230wrs.21.1542289216497;
        Thu, 15 Nov 2018 05:40:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3e47:: with SMTP id l68-v6ls127166wma.6.gmail; Thu, 15
 Nov 2018 05:40:15 -0800 (PST)
X-Google-Smtp-Source: AJdET5cuCbhO8cMOrc+/lEZ+0gJr2ydVMCoaNYw3ERhk1Bfqoyp0vhx+Qow6Uje4PfA6EmO3M2J2
X-Received: by 2002:a1c:9e47:: with SMTP id h68mr107098wme.18.1542289215537;
        Thu, 15 Nov 2018 05:40:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542289215; cv=none;
        d=google.com; s=arc-20160816;
        b=pGbALBTIQJztAjL/nuCQYkv6NTQVTHyg5MTNAM/CVflxItU31WqVf6nKi2C+iDUPSi
         2hoEZbigiHxuYRxfnkVeDVKEFPsQfo8NZr14kSAVgGpetiwdzOOEvTr4oGJOlAdrGkBW
         MQNs6GIEZhrtEIenpQlUN0h69O8y/PSakNiZXD67+M1UevCB193PnChRZbR7ioqstWG6
         BUraos6NJSFdQXUsKyydKbswzVPz9gLmRwlhp1heqkiC+IjjS3abemygzHwxcNONlaIe
         b4wdUpvG72bIJEE0HN11dYVcO6d/VosRrZxE4xla9CiZ9+kZKqaAJnami58NqyBRbZaw
         Hs9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=oEuRvugrafF+CVNbFY3TzZcx/aIsqW2BYmYiHho65pg=;
        b=fPJzv8ZRgvO6MxWth57x0DNzFUCiap08o9U2OlVt9kK8f2SLZ+LTuYq04DVicQykj5
         qeoo0DgK3WnNddIwio2hprsggsNBxvtX0ccEELWJMtx04fJDz7yqcqbugVUmIOWp9PEz
         tprQvBeYMRB8d0zdGvvTxKqfI9W1QJXad1Nbd1LntN0eVFmFjkSm12k+/ZY58RGlepA8
         eNYIpSgkqZFdGqSxJYjvl2QK0GNMHv7FbCvlV0haON8VlLW9n9tUP5G740PvOio5U7+e
         AbJ/qg5wbHZtduoGkKGKasOs9MHm/UkmbJL4prXqbYuQWsj5HAx1yK2XqMXGnbLsUD0e
         AMag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net. [194.109.24.24])
        by gmr-mx.google.com with ESMTPS id u13-v6si888446wrn.3.2018.11.15.05.40.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:40:15 -0800 (PST)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) client-ip=194.109.24.24;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:420:44c1:2579:69fd:c8e5:3116:c82c] ([IPv6:2001:420:44c1:2579:69fd:c8e5:3116:c82c])
	by smtp-cloud7.xs4all.net with ESMTPA
	id NHsRgfjyEg8oMNHsVg0aXD; Thu, 15 Nov 2018 14:40:15 +0100
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in
 vicodec
To: Tomasz Figa <tfiga@chromium.org>
Cc: dafna3@gmail.com, helen.koike@collabora.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>, outreachy-kernel@googlegroups.com
References: <cover.1541451484.git.dafna3@gmail.com>
 <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
 <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl>
 <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
 <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com>
 <a11ef1b7-5fd6-1a9a-f85e-e03d06e97b17@xs4all.nl>
 <CAAFQd5Cc8zPhbOfwU6=m=J1xHo-3UEYykeAg2g086iS3F3mGWQ@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <7704b4bb-beed-2c74-40d4-f674fb33d450@xs4all.nl>
Date: Thu, 15 Nov 2018 14:40:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAAFQd5Cc8zPhbOfwU6=m=J1xHo-3UEYykeAg2g086iS3F3mGWQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfA1qjHBsEZVRGJylw+wOpTkQpob/9tDUSyzI6ylI3uzSxpR7O8siVVQIRpcZckb8mGXcMlyxty8QKGiOInAM7kcgsp56N/QvFOkf1KukNKZf/PMxUJUE
 5gWOyf7ETYqUGZe7UvMA86TNOrn7G9x7FNUvAASQuoSHeb/FDeEp76abURSekG6ZqgvvQGw/qMnxe87Hk5CDEZmeByyZCLJESnXGW49/Z1ScyAxTSaxDx5wK
 zAjklF+gMCrsxWDjnXJ3dzzROMJ4Rkx6aUw9RmgoCAb7jAVoZXVqoEapcx24M48RV9fJiKqllSH6NxxSBjWDcTG8r33XP5PIddRNDnYxfrfNve1JbmLrCAqT
 nlRvveO9UK/eXS1oTfyEKGPKB+E7wLYqu6kO97Rsr4k1758BreCchpY9L2Lt8RjXJixIQUHC

On 11/15/18 14:33, Tomasz Figa wrote:
> On Thu, Nov 15, 2018 at 10:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> On 11/15/18 14:04, Dafna Hirschfeld wrote:
>>>
>>>
>>> On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org <mailto:tfiga@chromium.org>> wrote:
>>>
>>>     Hi Hans, Dafna,
>>>
>>>     On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
>>>     >
>>>     > On 11/15/18 12:14, Dafna Hirschfeld wrote:
>>>     > >
>>>     > >
>>>     > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl> <mailto:hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>>> wrote:
>>>     > >
>>>     > >     Hi Dafna,
>>>     > >
>>>     > >     This patch series looks very nice!
>>>     > >
>>>     > > thanks:)
>>>     > >
>>>     > >     Can you repost this and add a CC to linux-media?
>>>     > >
>>>     > > I will
>>>     > >
>>>     > >     I'm happy to take this.
>>>     > >
>>>     > >     The TODO that is in the decoder code (what to do if the fwht bitstream
>>>     > >     encodes fewer/more planes than the requested raw frame format) is
>>>     > >     something that needs to be implemented later as part of making vicodec
>>>     > >     compliant to the stateful codec specification.
>>>     > >
>>>     > > I tried to look in the docs what should be done in that case and didn't find.
>>>     > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
>>>     > > but this is only optional.
>>>     >
>>>     > You are referring to section 4.6.6, point 4 here:
>>>     >
>>>     > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
>>>     >
>>>     > Right?
>>>     >
>>>
>>> Right,
>>>
>>>
>>>     > It's optional only in the sense that if you already happen to know what
>>>     > the stream contains, then you don't need to do it.
>>>     >
>>>
>>> It still not clear to me what should be the behavior in case the user does give the CAPTURE format before the streaming starts
>>> but then the actual encoded data that the user send is of different format. Can we trust the user to be consistent ?
>>
>> No, we can't trust users. At all :-)
>>
>> So the driver would have to act the same as if there was a resolution change.
>>
>> Tomasz, this is actually something to improve: it is not just resolution changes,
>> but also incompatible capture formats. In this case, the stream contains RGB, but
>> the capture format is YUV, and vicodec cannot convert from RGB to YUV.
>>
>> I think sending a SOURCE_CHANGE event makes sense. One thing though: this would
>> take place at the very start of the decoding process, so step 2 in section 4.6.9
>> (Dynamic resolution change) says "The decoder will then process and decode all
>> remaining buffers from before the resolution change point.". But no buffers have
>> been decoded yet, so should it queue an empty buffer with V4L2_BUF_FLAG_LAST set?
>>
>> It is probably the right thing to do.
> 
> There is already a source change event specified to be signaled in the
> Initialization sequence. It's defined to always happen after the
> driver establishes the format. Given that, is there any change still
> needed?

Ah, you're right. It has to be documented that this happens as part of the
pixel format documentation, right? So this should be added to the FWHT format
doc once the proper behavior is implemented.

Regards.

	Hans

