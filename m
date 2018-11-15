X-GM-THRID: 6618908371010453504
X-Received: by 2002:a2e:9d4b:: with SMTP id y11-v6mr22259ljj.20.1542283117397;
        Thu, 15 Nov 2018 03:58:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:42c5:: with SMTP id h66-v6ls1319483ljf.7.gmail; Thu, 15
 Nov 2018 03:58:36 -0800 (PST)
X-Google-Smtp-Source: AFSGD/XA7OhU40AohEV06V5uVN7o6OKAfU1gZngm7Mc2Gev621t3j/sO2aN8vDsaOgwwfF0NgH1u
X-Received: by 2002:a2e:5bdc:: with SMTP id m89-v6mr23297lje.14.1542283116461;
        Thu, 15 Nov 2018 03:58:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542283116; cv=none;
        d=google.com; s=arc-20160816;
        b=Bo1OHCdwJ/R46tZvnFgyHgpu5+PpA+2g79fSqkUNHYXO7Eq15txbxE+pMLXnop/t/f
         dUgsip6v6JI17B6Cxea64sohZJmQDXI5Gweir/t0jqSOXqMKF9z41SwqMRyB3X4jXkoI
         g83AL3hP7l9WntIbofbcpAMKwT1pkyc4rG3xtLDS9Mhx4jOXW26S1fWhfR1PG17NSh86
         fH1lHKLjyk8VQLpa7z2KEaZGZO5hfjITWIq9JL9nvKTwVMKKGHBI2dOlP7npsKf80Ddm
         OQhsGCSTBCCV26T7N/ZKTrxwR1uzFPAMF0uIiGYBP/ld98tVOCqugfRsMb5SJI/0AnT3
         E/xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=TPjacD3AJFGfycGZikxRHHLv9nniuNqn/U50U6e0Fv0=;
        b=AFYXQeVOib1on0i0OY4j9CbUtgBp3kPcn2OXBFR24xdmZqegIF9rIFo5G1gL7S+Kgo
         sGqvJDKofWda6xW/nUpTO5tbac/m/eUI44eaKvNBPBOQTDBhYxU+c6cALKgA8Q+7ahjT
         dttE3CFCMp+zZeRrmADcnfI+rp+CNDELnNSVfSB2olFouhRSAXxDW7ne7Vdcz+vhfX6R
         2EmtR3Wio5IkJK1TaMZCoQZw7RRIwRfhe9g14sCOIA8bOrZqcdToDkXgPZaZewYgEQNu
         0kFfpNo4YWNr8OcbDLA8PayQsdXArcHLYOANTjD708ICrHQ8VLxYslDJTl3aUGawl7dF
         uo1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb3-smtp-cloud9.xs4all.net (lb3-smtp-cloud9.xs4all.net. [194.109.24.30])
        by gmr-mx.google.com with ESMTPS id 134si810087lfa.1.2018.11.15.03.58.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 03:58:36 -0800 (PST)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as permitted sender) client-ip=194.109.24.30;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:420:44c1:2579:94da:698d:8319:4499] ([IPv6:2001:420:44c1:2579:94da:698d:8319:4499])
	by smtp-cloud9.xs4all.net with ESMTPA
	id NGI4gO9CPQPpyNGI7gnNif; Thu, 15 Nov 2018 12:58:35 +0100
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in
 vicodec
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: helen.koike@collabora.com, mchehab@kernel.org,
 outreachy-kernel@googlegroups.com, Tomasz Figa <tfiga@chromium.org>
References: <cover.1541451484.git.dafna3@gmail.com>
 <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl>
Date: Thu, 15 Nov 2018 12:58:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfASP9jbprrukPVUik11Y0cXWaucRNxRPNYUQauZd8XkKLRsVS3Res9QWga0GvOrSsar+lFunzrsJTW9johJDmaEglrDjT9aERxH4wy2SXx2t/zqNZ7rD
 5FmVkCdkRiSv7A3wM+CvGlPun7FVRZhzLkJWPRmNB39R1F77CCCoqCPjZrqQvAuYbs9gMheLVIS6/Rveu4YetK34HMGC+GoxYLjHHhYiCSgazgAkHMniYJ30
 9sxfZESErygMvCWkTp6JwLc/Z+L/S/CnLz2zNQgkyEgHE1gt+gyG8o3aLtpHly/2oLxVr5btnUmBZnrCZV2uAScfg52dChi223pRW8TxvhYSJFI88Xhriqqx
 5svQPsoQhjXNM+wPAGw4gKgxFcxDlG6Qky9HfUVz6azvMJSWyyHDD9JNUYCFk202Uz3zfEM3

On 11/15/18 12:14, Dafna Hirschfeld wrote:
> 
> 
> On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl <mailto:hverkuil@xs4all.nl>> wrote:
> 
>     Hi Dafna,
> 
>     This patch series looks very nice!
> 
> thanks:) 
> 
>     Can you repost this and add a CC to linux-media?
> 
> I will
> 
>     I'm happy to take this.
> 
>     The TODO that is in the decoder code (what to do if the fwht bitstream
>     encodes fewer/more planes than the requested raw frame format) is
>     something that needs to be implemented later as part of making vicodec
>     compliant to the stateful codec specification.
> 
> I tried to look in the docs what should be done in that case and didn't find.
> The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT buffers
> but this is only optional.

You are referring to section 4.6.6, point 4 here:

https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html

Right?

It's optional only in the sense that if you already happen to know what
the stream contains, then you don't need to do it.

I'm CC-ing Tomasz Figa, since I think just describing a step as 'Optional'
is too vague. Something like: 'If <condition>, then you need to perform
this step' (or alternatively: 'If !<condition>, then you can skip this step'.

Regards,

	Hans

