X-GM-THRID: 6618908371010453504
X-Received: by 2002:a50:a702:: with SMTP id h2-v6mr113894edc.6.1542289713671;
        Thu, 15 Nov 2018 05:48:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:994d:: with SMTP id l13ls1003687edb.1.gmail; Thu, 15 Nov
 2018 05:48:32 -0800 (PST)
X-Google-Smtp-Source: AJdET5fBltQY3WuqnPJku0ZPKchXS+Ervx4mxpg62nUGV3ApC+o+/hIh/5L7KWmSTjumzO7jH7EQ
X-Received: by 2002:a50:cb87:: with SMTP id k7-v6mr105938edi.1.1542289712832;
        Thu, 15 Nov 2018 05:48:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542289712; cv=none;
        d=google.com; s=arc-20160816;
        b=k2v0gdQPOKMY3k9tUAiFSkFYJ43eO83eiw42Gj7Shk1ucR/um2G78q551vpFYbsDR+
         +7XG2td/NHpu37Lmo+oa7ylKDtAuHHV+8D8ldefGCOPsubgf6753beXZKuXtI8I21z3k
         KNJ/PUbbP8UpTVrmgb7R/pmOkX+vFEcLJi6TwCZ2oQdveEfcMTXbIq/6T/+ZqthFaKV9
         0nWHgkvG6UVbl5FU4ivASOWvTQ4F7wAHpnwG9rErOr2GBQebcfxs7C+zkiABT+u1fo2v
         yv4gBm/IIxno3cR6t/OgJjoBd8X2EtIoNCjoogmlLSlTiYXIKSTHDu8fxrr/OSH9vV6H
         PXtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=YhMtv/Xh/PjJHDh2Zym8fDcMGRneuVBysHe8/YrNByM=;
        b=CYmrKE9VMV3n1iYSrCeVT3vOK4sz3H73QxgyLNrlFknjotXisBS6rtvyuysDQx1JMR
         kpsQRe3yCtkuD6HPl002OXi1osJICD7tfDeIXINuCOzpWN2VMRu8ErrErLKkb9xivDzU
         eDt0s4naQfpw06SJSA2C4FGzKFYzgFWptcaE7XwLOR+wTmkluZf8HD+M8Izt5DgiAEVW
         IexJTF6qsv6X3PdLdBfm3DJE7G7pN7h6Zwf0pajH2aOdb8RiiDFE0GAJZKIwJ2K2LU6W
         vTsLev6VofsbsGhFInsOR83UJUdqKIDaW929OxkpGY8mvYc5LrZ25O7Bzfzo6DkNJ7qA
         gRzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net. [194.109.24.24])
        by gmr-mx.google.com with ESMTPS id a3si315132eda.0.2018.11.15.05.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:48:32 -0800 (PST)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) client-ip=194.109.24.24;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.24 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:420:44c1:2579:69fd:c8e5:3116:c82c] ([IPv6:2001:420:44c1:2579:69fd:c8e5:3116:c82c])
	by smtp-cloud7.xs4all.net with ESMTPA
	id NI0TgfodPg8oMNI0Wg0dDl; Thu, 15 Nov 2018 14:48:32 +0100
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
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <e7a7af27-53fa-3635-058b-0261fbea9ab0@xs4all.nl>
Date: Thu, 15 Nov 2018 14:48:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAAFQd5ACs-jwocSfc4gZaj4fVeOxZTG5rZA4zyQppwL2aKAL0w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfHAamIGNE44ar6516Dn9EAtKIr9zBFf4D9Regyj5PrcSxqAG2U068O+BGqc3TJYnlxB71SqG13cmUGfmx5llO7ZhD4x68eOqGNkG+ZET3+vD0EwAzNB7
 0OSRr3eD//UtFSYiGuE4rb5R/Gkj9U13UnKNxbOaudD7n5Gcj5QuRAg5KdqcHlpXAybyFLBNyHYZeeRFa9Hz1/UuXFqlQia2occev33KTwmylIMvSR33WLSn
 vLYz05+1PoETkMS1sZpTZih3CaP1hxNHajKUmTiE/vyanlzgWUAuDPJcTdSjmLA5ME837pSqnDLJ4QOVadTVt8QqH7fOcRAjYt0y85taQCo74frpwJMhPoDR
 ViYOM8MuMS5EHYboxPRge6Ch5dQZ6r1PZj52D6IsABJBR0ajItKDKVD69Wk3bfZBpOHLdugX

On 11/15/18 14:43, Tomasz Figa wrote:
> On Thu, Nov 15, 2018 at 10:40 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> On 11/15/18 14:33, Tomasz Figa wrote:
>>> On Thu, Nov 15, 2018 at 10:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>>>
>>>> On 11/15/18 14:04, Dafna Hirschfeld wrote:
>>>>>
>>>>>
>>>>> On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org <mailto:tfiga@chromium.org>> wrote:
>>>>>
>>>>>     Hi Hans, Dafna,
>>>>>
>>>>>     On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
>>>>>     >
>>>>>     > On 11/15/18 12:14, Dafna Hirschfeld wrote:
>>>>>     > >
>>>>>     > >
>>>>>     > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl> <mailto:hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>>> wrote:
>>>>>     > >
>>>>>     > >     Hi Dafna,
>>>>>     > >
>>>>>     > >     This patch series looks very nice!
>>>>>     > >
>>>>>     > > thanks:)
>>>>>     > >
>>>>>     > >     Can you repost this and add a CC to linux-media?
>>>>>     > >
>>>>>     > > I will
>>>>>     > >
>>>>>     > >     I'm happy to take this.
>>>>>     > >
>>>>>     > >     The TODO that is in the decoder code (what to do if the fwht bitstream
>>>>>     > >     encodes fewer/more planes than the requested raw frame format) is
>>>>>     > >     something that needs to be implemented later as part of making vicodec
>>>>>     > >     compliant to the stateful codec specification.
>>>>>     > >
>>>>>     > > I tried to look in the docs what should be done in that case and didn't find.
>>>>>     > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
>>>>>     > > but this is only optional.
>>>>>     >
>>>>>     > You are referring to section 4.6.6, point 4 here:
>>>>>     >
>>>>>     > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
>>>>>     >
>>>>>     > Right?
>>>>>     >
>>>>>
>>>>> Right,
>>>>>
>>>>>
>>>>>     > It's optional only in the sense that if you already happen to know what
>>>>>     > the stream contains, then you don't need to do it.
>>>>>     >
>>>>>
>>>>> It still not clear to me what should be the behavior in case the user does give the CAPTURE format before the streaming starts
>>>>> but then the actual encoded data that the user send is of different format. Can we trust the user to be consistent ?
>>>>
>>>> No, we can't trust users. At all :-)
>>>>
>>>> So the driver would have to act the same as if there was a resolution change.
>>>>
>>>> Tomasz, this is actually something to improve: it is not just resolution changes,
>>>> but also incompatible capture formats. In this case, the stream contains RGB, but
>>>> the capture format is YUV, and vicodec cannot convert from RGB to YUV.
>>>>
>>>> I think sending a SOURCE_CHANGE event makes sense. One thing though: this would
>>>> take place at the very start of the decoding process, so step 2 in section 4.6.9
>>>> (Dynamic resolution change) says "The decoder will then process and decode all
>>>> remaining buffers from before the resolution change point.". But no buffers have
>>>> been decoded yet, so should it queue an empty buffer with V4L2_BUF_FLAG_LAST set?
>>>>
>>>> It is probably the right thing to do.
>>>
>>> There is already a source change event specified to be signaled in the
>>> Initialization sequence. It's defined to always happen after the
>>> driver establishes the format. Given that, is there any change still
>>> needed?
>>
>> Ah, you're right. It has to be documented that this happens as part of the
>> pixel format documentation, right? So this should be added to the FWHT format
>> doc once the proper behavior is implemented.
> 
> I wonder if it wouldn't be more consistent if we just made the driver
> send this event even for streams that don't include format data in the
> headers. In that case the driver would already have the information
> about the format from the OUTPUT queue (and internal constraints), so
> it could just signal the event instantly. WDYT?

Can't we leave this open? Are there codecs where the stream doesn't have
meta data? I'm not aware of any.

I'm not sure if we need to mention codecs without embedded meta data at all.

Perhaps just mention that such codecs are unsupported at the moment.

Regards,

	Hans

