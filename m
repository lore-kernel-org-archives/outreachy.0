X-GM-THRID: 6618908371010453504
X-Received: by 2002:a2e:834f:: with SMTP id l15-v6mr75945ljh.19.1542291737538;
        Thu, 15 Nov 2018 06:22:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8ec8:: with SMTP id e8-v6ls1780661ljl.5.gmail; Thu, 15
 Nov 2018 06:22:16 -0800 (PST)
X-Google-Smtp-Source: AFSGD/UqbrDxVOzpFHc3zsmjLinogqMJC4BO1i6DVUN/PirXPyd5mEh6hBqA3X/r/UhfztKyWWqw
X-Received: by 2002:a2e:9d4b:: with SMTP id y11-v6mr79317ljj.20.1542291736230;
        Thu, 15 Nov 2018 06:22:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542291736; cv=none;
        d=google.com; s=arc-20160816;
        b=hnV5I7oA85Qf5tXsnMQzIdVC1urIH3sCpeFK6VLIzJEXlXRhLOpCbltCDhhXqy53kI
         epBY4pl1EEo50p3CsO8k8oLOYc42cqeWN7D4W+TF6PZsfDfusYUMsnee7hjorRAAhwaB
         E5Ipo1Ge2WoQrRmQ72wigybVNbsxzUILb25RKNOH9WkdP2wBoWCa9ENqak8VLF1H8yeQ
         kBPLFDp9ycaKTP469nC8AyIuktFYmJytCvTcrKfxpgc05hh5QpMd9r/bv9KpSElOFILg
         6fOULlH/O4MY3DeGFYITzhTXVyEzVv3Uv44MS4FYu9JISMOS3hgM/gyR1AtCVyWvmWni
         Yw5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=chKQJ91Ug8+pyWlvA0OyY+YlHTwHwF391m52PfRFLgE=;
        b=HR2ODUBNSzShQra4LQixJwNcrSQRyb0RzomdZKBff6vyhj0qoVLcDtkGpPyjVifRus
         GLbzZZWvvMVAKygZXlMSjTgb2wFN9IXjHFmF8u7+giz8yphzhkAbUmWjo6Cz4kPA8OjL
         X1gjORrDN2axlXh25DBxV2tBQxOz+AS0pJHdDBXPVEcO/NuWkVoVUfhi+hkPMgm31Vi3
         LQzyi6zw8bkN3Fm3Q/6ib5WSN1zOp5VeeIQvXdJhBXvAw5Uwkf3IMh+KRmq/NRU2vmPd
         OlnAzpqTC8BdenIPczzqEBYv74BkhqEhG/LcXCU0lnbdv55ROqpT6FE2g/aQHq2ErOug
         /TOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.26 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net. [194.109.24.26])
        by gmr-mx.google.com with ESMTPS id q10-v6si199717lji.4.2018.11.15.06.22.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 06:22:16 -0800 (PST)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.26 as permitted sender) client-ip=194.109.24.26;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.26 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [192.168.2.10] ([212.251.195.8])
	by smtp-cloud9.xs4all.net with ESMTPA
	id NIX6gPy7nQPpyNIX9go2oW; Thu, 15 Nov 2018 15:22:15 +0100
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
 <7704b4bb-beed-2c74-40d4-f674fb33d450@xs4all.nl>
 <CAAFQd5ACs-jwocSfc4gZaj4fVeOxZTG5rZA4zyQppwL2aKAL0w@mail.gmail.com>
 <e7a7af27-53fa-3635-058b-0261fbea9ab0@xs4all.nl>
 <CAAFQd5DF5acqQmvbGx16L2wzBsYVWDUhc-1nSimVUCdPSLPv+A@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <ae06c3ea-7573-c565-aa4e-3313bbb39913@xs4all.nl>
Date: Thu, 15 Nov 2018 15:22:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAAFQd5DF5acqQmvbGx16L2wzBsYVWDUhc-1nSimVUCdPSLPv+A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfJ+aePymsleDRRokLMcXE2D0jKply42OY3Ws2cBgBJIkTUuZE/FxkThHEQw0h4p6R+TuyC8KmaJP1z43J5IRCbpLE6chGb6vRNqDZNlgonx7tfWXOlSj
 ckarNmKwHCbCwuWMU04dJkwaAF7R/kgJYF728bMhaW+SIPUNYXhU8ZUJGOzXAwGKQNk3H53R6MQYK/4sQYEMw+VPDEUAOAHZ/3H1CLD1AXKyyPsuhRyXja5W
 1IAiq0Z1H8pvS3dJ0vL+uQXR1YrahKd+KSJ4KM4QeiEX/iMJKw8fAwcjI6DbwdwQn1rFwgrSmG6z0BOUGJTJsg==

On 11/15/2018 02:50 PM, Tomasz Figa wrote:
> On Thu, Nov 15, 2018 at 10:48 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> On 11/15/18 14:43, Tomasz Figa wrote:
>>> On Thu, Nov 15, 2018 at 10:40 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>>>
>>>> On 11/15/18 14:33, Tomasz Figa wrote:
>>>>> On Thu, Nov 15, 2018 at 10:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>>>>>
>>>>>> On 11/15/18 14:04, Dafna Hirschfeld wrote:
>>>>>>>
>>>>>>>
>>>>>>> On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org <mailto:tfiga@chromium.org>> wrote:
>>>>>>>
>>>>>>>     Hi Hans, Dafna,
>>>>>>>
>>>>>>>     On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
>>>>>>>     >
>>>>>>>     > On 11/15/18 12:14, Dafna Hirschfeld wrote:
>>>>>>>     > >
>>>>>>>     > >
>>>>>>>     > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl> <mailto:hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>>> wrote:
>>>>>>>     > >
>>>>>>>     > >     Hi Dafna,
>>>>>>>     > >
>>>>>>>     > >     This patch series looks very nice!
>>>>>>>     > >
>>>>>>>     > > thanks:)
>>>>>>>     > >
>>>>>>>     > >     Can you repost this and add a CC to linux-media?
>>>>>>>     > >
>>>>>>>     > > I will
>>>>>>>     > >
>>>>>>>     > >     I'm happy to take this.
>>>>>>>     > >
>>>>>>>     > >     The TODO that is in the decoder code (what to do if the fwht bitstream
>>>>>>>     > >     encodes fewer/more planes than the requested raw frame format) is
>>>>>>>     > >     something that needs to be implemented later as part of making vicodec
>>>>>>>     > >     compliant to the stateful codec specification.
>>>>>>>     > >
>>>>>>>     > > I tried to look in the docs what should be done in that case and didn't find.
>>>>>>>     > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
>>>>>>>     > > but this is only optional.
>>>>>>>     >
>>>>>>>     > You are referring to section 4.6.6, point 4 here:
>>>>>>>     >
>>>>>>>     > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
>>>>>>>     >
>>>>>>>     > Right?
>>>>>>>     >
>>>>>>>
>>>>>>> Right,
>>>>>>>
>>>>>>>
>>>>>>>     > It's optional only in the sense that if you already happen to know what
>>>>>>>     > the stream contains, then you don't need to do it.
>>>>>>>     >
>>>>>>>
>>>>>>> It still not clear to me what should be the behavior in case the user does give the CAPTURE format before the streaming starts
>>>>>>> but then the actual encoded data that the user send is of different format. Can we trust the user to be consistent ?
>>>>>>
>>>>>> No, we can't trust users. At all :-)
>>>>>>
>>>>>> So the driver would have to act the same as if there was a resolution change.
>>>>>>
>>>>>> Tomasz, this is actually something to improve: it is not just resolution changes,
>>>>>> but also incompatible capture formats. In this case, the stream contains RGB, but
>>>>>> the capture format is YUV, and vicodec cannot convert from RGB to YUV.
>>>>>>
>>>>>> I think sending a SOURCE_CHANGE event makes sense. One thing though: this would
>>>>>> take place at the very start of the decoding process, so step 2 in section 4.6.9
>>>>>> (Dynamic resolution change) says "The decoder will then process and decode all
>>>>>> remaining buffers from before the resolution change point.". But no buffers have
>>>>>> been decoded yet, so should it queue an empty buffer with V4L2_BUF_FLAG_LAST set?
>>>>>>
>>>>>> It is probably the right thing to do.
>>>>>
>>>>> There is already a source change event specified to be signaled in the
>>>>> Initialization sequence. It's defined to always happen after the
>>>>> driver establishes the format. Given that, is there any change still
>>>>> needed?
>>>>
>>>> Ah, you're right. It has to be documented that this happens as part of the
>>>> pixel format documentation, right? So this should be added to the FWHT format
>>>> doc once the proper behavior is implemented.
>>>
>>> I wonder if it wouldn't be more consistent if we just made the driver
>>> send this event even for streams that don't include format data in the
>>> headers. In that case the driver would already have the information
>>> about the format from the OUTPUT queue (and internal constraints), so
>>> it could just signal the event instantly. WDYT?
>>
>> Can't we leave this open? Are there codecs where the stream doesn't have
>> meta data? I'm not aware of any.
>>
>> I'm not sure if we need to mention codecs without embedded meta data at all.
>>
>> Perhaps just mention that such codecs are unsupported at the moment.
> 
> That would indeed simplify things. I don't know too much about codecs
> other than H.264 and VPx, so can't really tell if none of the codecs
> we have FourCCs for would qualify as such, though...

As far as I am aware, all of them do have metadata in the bitstream. So
I'd just leave it out from the spec. Or perhaps leave a single mention
that such codecs are not supported at the moment.

Regards,

	Hans

