X-GM-THRID: 6746660387703226368
X-Received: by 2002:adf:db42:: with SMTP id f2mr7567847wrj.287.1570892474929;
        Sat, 12 Oct 2019 08:01:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cf01:: with SMTP id l1ls4063429wmg.0.gmail; Sat, 12 Oct
 2019 08:01:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwEkjQ8UGDthahCFqh6JKATwOy50z0rxXo1NMapo1NBBlpOBaOld7W/iW9EL2yZOC0DnGqo
X-Received: by 2002:a1c:f31a:: with SMTP id q26mr7884693wmq.68.1570892473871;
        Sat, 12 Oct 2019 08:01:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570892473; cv=none;
        d=google.com; s=arc-20160816;
        b=o/zidcxz0ONO9r2LH8OXRTzMdSeSoAdKuJ7GSx0yur6cXn2ejDEq4V+pnM+wX2M7WQ
         DXO2h6IPIz0+gU741Y69HMQTqrIDbWHXJvNk5DWeWAxKuCsL1ViigwSixT1M8ROyQfsi
         EEkuseSG5JjWHuIcDyWBLbh/bbX9/kP6+ReY2hpNr+Jix+8zocvS6MHlYIf1Vc1RTuz7
         UtRwz7dxMgzkBPxXwIXPxIj2n/mtmFzEVptP+e1fFAWQSgch1MtnS796TE6nSi2y+42e
         lZOGsE0gP2TCZKHoyHROfI6j5c/vob+cSQMT3Ka8gdEKHAT366FioXQltJnqc19RjOSt
         317g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=wVHcI9lSX8uaanGOnUjTf6lBkgZpFUQiHj5D28R77UI=;
        b=Rtj2m40DOWPROrPRQC1oGmOINErQIW5UG7RFbjc87+E3Xq2rH5yfm4saolU7JdI1IW
         Ki8IVyh+T4xEO2bL13+6Oxnpxcvdqi980c6dEElgRs5UUc2eMPTFcUMUGrDCbTalHwtC
         vwWDfmDNAqv9uDbbZr6u0ROcLMxVnuVa70CqJOllQ1GuyQcKbmzZfn4EarZPcBVkLRPL
         vngplwTIQh6Rl6TGANwz3y6R47+9LzlNrbDkdcjz9PVO/JA0fje9u9B3lB3AEADwfClg
         ocziJkK2L4zUt2FRgNz4apPQKo6sBTYd03JxPgc4T7zO7SQsOC5fypm6HlJ5Ex+uTwor
         QXMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z40kAoLX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x8si989753wmk.2.2019.10.12.08.01.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 08:01:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z40kAoLX;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id o18so14837503wrv.13
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 08:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=wVHcI9lSX8uaanGOnUjTf6lBkgZpFUQiHj5D28R77UI=;
        b=Z40kAoLXOa7xNeMlvgjV/XN8StTUUqzxN+pH0LjQpN9c4e/UkTuBbt26vsmjr5uqRj
         4YMMxQ+eHT22lGwozUzw8P9hyw97FaX7Qj4RhdbFgjkNoQ+pIv6HTrJHiBvhcCu6aW/R
         D304+7rWRCWMSCd6OtCCLA0qvDiwwaLzYQl5Dri6dTMVMkxn+Oazp+4NFKYLfYKT2tK+
         lWp1UUUol393Oqr2L+PNLOC71Uv7Zp9kxH+tsvMbj0WT+5kecjiuSvRA1DwcLUreVE9S
         ubLwyURpWBG8OLEjGEqYG45IMtXOxhkdKxGQR4XlPWRiMxBdY8+jq/bMJO4lwV2N2YfT
         Ukgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=wVHcI9lSX8uaanGOnUjTf6lBkgZpFUQiHj5D28R77UI=;
        b=edH1QdnKhIJgxBriSyPIlGY3Ykt1eeLr125Sx0/KsXfJirYECWdPWSais3LjgAP4Ww
         uVjwpUcSN8Fga+dtG3dfavnCi/LYm90+ujVelBVdld3pY9lH2NI0QwaP04p7bdfb1npt
         yvLeGA9aasfjwIAgnOZ1Fx85ELD3DtrZ0T75YKAfygSq3ENrlmr9zK1q3tWfk++7ie8O
         3gVVCckUvsYU7yjU9bHhDB4BYPMzvpfE6glhgBVV6nqkvP2Py7KKoG2RI0VDO7v0I/v5
         X6oxCsCRoiSQSCjjMqKrblvy4OHNxjP1O7fVY17ILoxnJTdVdeGS/WwOWJQPK561dptR
         wz/w==
X-Gm-Message-State: APjAAAWWfyubpXpGiszbEXvMEO+GERKfaoVUMJRw4wlpgg7D4O+rsz+Q
	EwdQfeNG8EnBlis6+J6gEg==
X-Received: by 2002:adf:bd8f:: with SMTP id l15mr17498773wrh.362.1570892473305;
        Sat, 12 Oct 2019 08:01:13 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.gmail.com with ESMTPSA id u2sm5154279wml.44.2019.10.12.08.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 08:01:12 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Sat, 12 Oct 2019 16:00:59 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net, 
    linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, 
    daniela.mormocea@gmail.com, dave.stevenson@raspberrypi.org, 
    hverkuil-cisco@xs4all.nl, mchehab+samsung@kernel.org, 
    bcm-kernel-feedback-list@broadcom.com, sbranden@broadcom.com, 
    rjui@broadcom.com, f.fainelli@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix warning
 of Logical continuations should be on the previous line
In-Reply-To: <alpine.DEB.2.21.1910112336440.3284@hadrien>
Message-ID: <alpine.LFD.2.21.1910121551090.15982@ninjahub.org>
References: <20191011212745.20262-1-jbi.octave@gmail.com> <alpine.DEB.2.21.1910112336440.3284@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed



On Fri, 11 Oct 2019, Julia Lawall wrote:

>
>
> On Fri, 11 Oct 2019, Jules Irenge wrote:
>
>> Fix warning of logical continuations should be on the previous line.
>> Issue detected by checkpatch tool.
>
> There seem to be several changes mixed together in this patch.
>
> Don't have a subject line that is identical to a line in the log message.
> The subject line should be short.
>
> Keeping the arguments of && on the same line, but breaking the line after
> a == doesn't seem to be a good idea.  It would be better to have the left
> argument of == on one line and the right argument on another, if that is
> needed.
>
> julia
>

Apology,
Yesterday was my bday, I was reckless.
I am resending now. Please do not hesitate to give me a feedback if 
possible.
Thanks
Jules

