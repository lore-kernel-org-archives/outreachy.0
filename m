X-GM-THRID: 6468588291165782016
X-Received: by 10.129.129.7 with SMTP id r7mr6833488ywf.89.1506442314264;
        Tue, 26 Sep 2017 09:11:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.216.137 with SMTP id a131ls1626003ywe.8.gmail; Tue, 26 Sep
 2017 09:11:53 -0700 (PDT)
X-Received: by 10.129.118.79 with SMTP id j15mr7028430ywk.62.1506442313326;
        Tue, 26 Sep 2017 09:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506442313; cv=none;
        d=google.com; s=arc-20160816;
        b=n3nfvfGTOddbxlqKT9AYHt7kkQghqfNS5ghG7QuLPepnNsgvCae+TkI7t8IQVjwU8s
         UxaORYWIi/s/6DW9kf1rM9A5jytet/M6H6Q/TqayovXGfiZU7xBfF2fWC/gN4zOFDrBG
         ljbCAhJem3zYldLdY6ZoN3yjkh03qn4KhUrTk+WrTmdcW3HD3kDcbWfyoZJFozGng5i5
         gKr478VfcDsPXMKemwvubLUvxdBTUrSJaYCx8svsKwAGlTrLzKBG8xCgB6YQYmIqLdTD
         9bRQOBBVMwWYP8fVXwvK4Q77XeAkZKlcULsesm9Dqr0JT2+NEkm67NStMCYuqOWZQrwR
         0Bng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Du2idKaDH2/0GcvTkS2+JmL+x26F7f8oe59dXvbcYxQ=;
        b=u/Qh+dV3EG6HEm8KXDdVKDvOb2bzYomIPaJnW/R5gF3AW+9v+m7VS+v8Bw1tRMgQra
         x7QmXgk/S8WGqRW3OsuVULRAR2SZiiXl1ZZ8BeWBgAi8ZeyvxoTcqxZ87q201pe37JpQ
         xk+AIoBNuq4nlCWs0ueDOPAaMPU37PsmAMTXhvK1HtZs/4jL9IAdczan5aic9d31S7FC
         HcNIxqzmipJp/AXVK2RoDX8s1n2QH+CYzSH/i2MkmiWVea1jm9iiMds7U+ZifcehHm1x
         +O+4rHrinijBdMdQ5m9iOSz2rf+yKtqDoTfjmLQCqrX+hLCALSvrtdxe1jTv/SRzi/0Q
         shnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QqU+FNSB;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id w81si489981ywb.30.2017.09.26.09.11.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:11:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QqU+FNSB;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id u48so7344472qtc.4
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Du2idKaDH2/0GcvTkS2+JmL+x26F7f8oe59dXvbcYxQ=;
        b=QqU+FNSBwSEw0t/HcMt9OqDV1v5ToSjs32lgWPGWSp6D+xEqXjTojzsbiftidCbrt+
         zMmSu4bmOfFB7zSlroyrPX7jKHlOykLknJ+kphRGSU+16G1vzd3BL5t/GobJBOd003ky
         B2onhw5+cHrcnkMsSwr+lDMQoJqCKkjJ9KBtfFvlsbyU21NGCXxVHveDQE1yiqsjoB0U
         MdinxM84Dhpt2K0vC0Ab5HW5NPxsms0+U2RV6ImkZN25mCQoG7vLoZzJVZxvIzQaUT6d
         j9eiopHaIJGyfVPkNmHV97Jr/PyReNatr3Ymh4CnYUhhYE/QUcbaljmvRGWBVhDILuZ2
         emxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Du2idKaDH2/0GcvTkS2+JmL+x26F7f8oe59dXvbcYxQ=;
        b=slYDF2dO8Lt85Igtp2kLhch57CXsYsHDzrpIL3v6J9KV47eoqDxHO50LF9xQkaDDMD
         wLQOrw0vfuRVGWqjGHpb2Lm4zyopRCzBp77FLpTl3DqvbD+JEHt4NCMFntf3kiTalvF0
         FBpud6zLhdMinhvxFnyffAL1Fo63iG/hVGnr/SefTelOlHY+pYFvgwjxV/qrjmH2XAce
         1PHUkhaWmkTeeOwLQ/nrS1Wg2ykxxOBpt8O2ksiv8JqlUZMhSrJmB8fj4VFEVRDNrZTk
         YIUmNpNYtluYEJTL2CYWxwWuz+Lr7TAMXzc+K4/0D5R41p86ifSG5pfNfq27mAzg0T8+
         VUQA==
X-Gm-Message-State: AHPjjUgPe13/0+LeO6/TkNC7/cVogVOv2wnKuzk/XFZIdPpjzaLA86dg
	iYoima6tjFvy1nx2NcYe+EbQwauwEt1GMpNA6FM=
X-Google-Smtp-Source: AOwi7QAWNcEFH4xZOnJ+KEM2k5VgYiB/NUdhlwJAP8Ij7uvdEjYNiIzRAq+C1mmbRk6ZTnaDpT65qk6bI/BTe0GFcAA=
X-Received: by 10.200.12.11 with SMTP id k11mr17257684qti.105.1506442313063;
 Tue, 26 Sep 2017 09:11:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Tue, 26 Sep 2017 09:11:52 -0700 (PDT)
In-Reply-To: <20170926074138.GA26263@kroah.com>
References: <cover.1506092223.git.georgiana.chelu93@gmail.com>
 <8813107f1cbbc593f55422ef905c4d5cfb575206.1506092223.git.georgiana.chelu93@gmail.com>
 <20170926074138.GA26263@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Tue, 26 Sep 2017 19:11:52 +0300
Message-ID: <CALta04wLzH_mJvA0Vx4U_SpvKFOkg6JMHrirVrDT6eArBEu0_Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Staging: rtl8723bs: core: Code clean up
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On 26 September 2017 at 10:41, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Fri, Sep 22, 2017 at 08:04:52AM -0700, Georgiana Chelu wrote:
>> Clean the code to improve the coding style.
>>
>> Fix minor issues reported by checkpatch.pl:
>> * CHECK: Alignment should match open parenthesis
>> * CHECK: Logical continuations should be on the previous line
>> * WARNING: line over 80 characters
>
> That's a lot of different things to be doing all in one patch.  Please
> break this up into "one type of thing" per patch.
>
> And no, "fix all coding style issues" is not "one thing" :)
>

I will resend the patchset! Thank you!

Is the << "one type of thing" per patch>> requirement
because it is easy to follow the same change in a patch?

Have a nice day,
Georgiana

> thanks,
>
> greg k-h

