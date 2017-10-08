X-GM-THRID: 6464167912849539072
X-Received: by 10.176.19.40 with SMTP id g37mr1351335uae.44.1507466657511;
        Sun, 08 Oct 2017 05:44:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.149.209 with SMTP id x200ls562305vkd.11.gmail; Sun, 08 Oct
 2017 05:44:16 -0700 (PDT)
X-Received: by 10.159.39.196 with SMTP id b62mr1429417uab.124.1507466656504;
        Sun, 08 Oct 2017 05:44:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507466656; cv=none;
        d=google.com; s=arc-20160816;
        b=iip6NqoM/mNMVB8p28tft+rqJRdxo7fqN/jL2HWLo43/9dYdVDiCFQoZQ2w2SdJxWE
         +iTlxloByrtk8yYaay9EEQYkJPS25Fl0JS68FAB2y3zhW3AwlZRFAS8UZmhWWoSuZN6/
         qMNMMPQbBQV4iX3tLoixFly/josXbngTw/2kEzjWc0q1aqO9sPDyDJQojyKywODKfojg
         j5QofNvDaZNaYpPwRMb4+4UwvbtVNX0y3J21f7wD+8vH0i6gu2rnJUlx1dPFcWbV0vaB
         pGm22OJNtfmHToMffBD5M4M9wLlXDeOVlT2DN0DPG5LsoDuthTw0K5YRM61NiGEWcl17
         frlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=oJQsbKaO7cF7PMuKd/Dpw1atiMd8W1jMu40aZL9m6rQ=;
        b=g1Zg8FP/oLzlsOURWOBYE9Xu+EratgC5EoTIzWdaf4/jqxBEPdhIdlVLoG2v1jWI2/
         IK9p3fZc9JyJDAFMx+KLDC9A4hH2tPKHWtaEKD4fkwwxqXRcCmirfhtmBzz0iMZ1CtMw
         HyN4a3qDxAtGQgRN8HRmhsr4jfD2AXITY8ooE+B1RAYNgnyE5gzV4Pj/izknsr5vrzKc
         XcuPi8VYYh1QHJOuE1DyrbnWUnpdmJ56lBnqfZnTVOZkj+xvw/fbsUMOy36oALnwxfaK
         rEHhulsogCvrIhaezpUhHNk80Bux1QJs15GuaGFofWYXJDqsMVcj3JfRt8VwaQYPAm5E
         Rphg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PpxYyHqi;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id n19si309213vkf.13.2017.10.08.05.44.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 05:44:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PpxYyHqi;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id b5so5367916vkf.1
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 05:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=oJQsbKaO7cF7PMuKd/Dpw1atiMd8W1jMu40aZL9m6rQ=;
        b=PpxYyHqiXX7oKZm0N00I0iwmmY41ayPwNBe4eXehqu0qh69hJ0x7oB4ybyKkylFA/C
         7lvu3CosO5KvxRsVIzt47DXAZfSsn94ON4tvRa0/GWPMU7YdQ77kjix6WETtNACKvEyo
         KYw0S/OcaM+8uj/orLNAZM1//i6Rz/bDtmen+bBSI37jlSqvkr4ReY95+WAkOY3YXF/C
         r3eqo5nwIF/TAPQDH46zQBzJvTin1r2mrdos8BOmxKQgNuvdOFhpQXmxyj1W/AgGeHp2
         Pfk9CNWyi3neUrcWKqycNRpaAy0YkgK4iAJnzq2DwnZ60crhAUEHLu1Ee04wk8i8Sd+G
         YHpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=oJQsbKaO7cF7PMuKd/Dpw1atiMd8W1jMu40aZL9m6rQ=;
        b=LbJ85YCk9OP/fWABOD7IxVVscdcIz3oboi0+S4urV/Vr1Dl94qoWiEhF0SRFTzNjh1
         SbpgDMc+uWCUb6R677GvAcAvDLS9rmiKMhmwdjCxOUFYSCivqMJpR7yhrbmQoHb4wf2n
         /qBF4RPYWpBwIEcH6vWpf4cAeyySND66DP6vvkETDoIrUll95DFVp41bOgPBC7XjJKMo
         j8LXchD+mnZoKL0kQ0ENef7DXLBRQTPx2vUOyruKg693fKyxpKhqXLoG7kE32/LJtkBl
         k6BDx+EXabHJeOe2/V3wKNsoumUD/4itGy4ah+yszT1THPKNlsryo8/Tu1PPFUexQfqh
         tklQ==
X-Gm-Message-State: AMCzsaWnzuBvBDHQSDeoOQHnAFcCyDfLzuQwNoXnpv4kvywee51sbNqD
	IO13Co6GMrRKcGKgu0rVH2BlnDw9duaaXU4Ldtd0dg==
X-Google-Smtp-Source: AOwi7QC0znAF56fc2FxFnta2R9SnKb3ZHM0/6JwM6APj1BMMwmYpij74GsrhSwVQD5m5mrL4K2bli/ThlV8JJwvXGSk=
X-Received: by 10.31.202.2 with SMTP id a2mr3092540vkg.58.1507466656208; Sun,
 08 Oct 2017 05:44:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.26 with HTTP; Sun, 8 Oct 2017 05:44:15 -0700 (PDT)
In-Reply-To: <20170912204113.GA20215@kroah.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>
 <1505223323-4038-1-git-send-email-harshasharmaiitr@gmail.com> <20170912204113.GA20215@kroah.com>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Sun, 8 Oct 2017 18:14:15 +0530
Message-ID: <CANMOCy334AZQzUTuNe2itCyV3MWj6D30q6WU_jTTf0dvNUvVeQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/10] staging: rtl8723bs: Add space after ','
To: Greg KH <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 13, 2017 at 2:11 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Sep 12, 2017 at 07:05:23PM +0530, Harsha Sharma wrote:
>> Space required after ','
>>
>> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
>> ---
>> Changes in v2:
>>  -Rebase against staging-testing and solve merge conflicts
>>
>>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
>>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> Where are the rest of the patches in this series, I only seem to have 2
> (patch 6 and patch 7 out of 10.)
>
> If you have to resend patches, please always do so as a unique series,
> If I have taken some of a previous series, please then send the new ones
> out as a totally unique series, as that is what they now are.
>
> Remember, make it totally obvious what I, as a maintainer, need to do
> here.  I have no memory of previous patch submissions, or what happened
> on something else somewhere else.  I deal with thousands of patches, and
> as such, have no short-term memory :)
>
Hi,
The other patches in this series have already been merged and only this one is
remaining, so should I still send whole patchset again or this patch can be
merged ?
Thanks for your time.

Regards,
Harsha Sharma

> thanks,
>
> greg k-h

