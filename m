X-GM-THRID: 6467212349549838336
X-Received: by 10.36.53.208 with SMTP id k199mr798118ita.22.1505835783065;
        Tue, 19 Sep 2017 08:43:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.81.135 with SMTP id s129ls4526228ita.20.canary-gmail; Tue,
 19 Sep 2017 08:43:02 -0700 (PDT)
X-Received: by 10.36.31.142 with SMTP id d136mr775293itd.23.1505835782550;
        Tue, 19 Sep 2017 08:43:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835782; cv=none;
        d=google.com; s=arc-20160816;
        b=k85GLqWixJAS/4IzkbMLf9nyBMDBzi15sJJTmQ69mJucGRsRBsG7d7mvl5ytMktqSW
         9p6QjeZVZjQVHo1sTMoRh4Kpf6j3nlzv+zswkLOTVWNjityDOrqBgpt1sSSGYxJc7mT7
         3ovCzbVWN9cOk2LqiGKZ2V8dj6WCVJIpozx7FUz3WJpyP9BfjHp09NLC2RajE7dPhvLY
         14fK/NaCa4Qab802VtPHyV38lExNa9VOd7KSPedEKKAwvmWPkTXq3j2bJCeNBIlC+HDp
         enIznLCksIlv5YbICjP06w3vjEosdUdDN8Z07ZOIwrALeZlpz4XOa2WReTNEAc8xK9vh
         CUNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=83vq7v+i579IicWhjAwuJ9Rf41VD9MmIc+9Rc1R8NfM=;
        b=JQIBiF3+lUp06bkaYsRmXML5JpUaw3B/aGWbUcpRHEyBCLxn1w5kyoyqRv8b85Q4ka
         2zjADQ2f1B1lKdjmGz6IZX4sZOTI2NOUKZqmKdS+s/6F+3Vv1X62jmn/V4BesKxEiwCj
         cCcaE25n4KAm18iGGwXvXzdXSccgyhABZHUA7mb4eypmjuVLCAocmTxC+/SJZNnirpAc
         Z3RvDMPZk3klqU1Jh8o2Jdq+pECqFkIWQ7EFlNPhazynRSm70XQHBSLTHmTTXSMhS3oy
         Gtvb64VVa5K0kAcZN8vZlx6/DSWdmGKlyL99Hg5RMeDBhUZOEdW6Arc9vKCQlKcEbnwB
         3CfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oUQMVY49;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::22b as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x22b.google.com (mail-qt0-x22b.google.com. [2607:f8b0:400d:c0d::22b])
        by gmr-mx.google.com with ESMTPS id o65si456162ywf.4.2017.09.19.08.43.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:43:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::22b as permitted sender) client-ip=2607:f8b0:400d:c0d::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oUQMVY49;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::22b as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x22b.google.com with SMTP id l25so283qtf.13
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=83vq7v+i579IicWhjAwuJ9Rf41VD9MmIc+9Rc1R8NfM=;
        b=oUQMVY49z6R7izv4LTHNzppTCYTTNRNBRXp8ll4PiswFRw2fprbQCvk76DPuuhxSEK
         n85nYfMNZP761cEBf+hf08j1/sQjCIVfh28Okbuw12EAYz4XqgO40Lzw+aj1YcECcAgX
         4dnsmrohZkQNZQBrfKMdz1AoVzZEQLJvvOuMHD1YMh66VDB5kIeIJQDHFGxvrTD7YzCl
         ka070ahuI56kdsrgIxpmTnGhNmRmj1cTQaHEWWzpJ3cAK5jl/KSyZ/UoN3sZGOFcRNVx
         CRbvSCY9WODJan1h4Q8NkjxuQ1QPbqSdssEeyIcKIuulfAZSZuXX48C2dK0Yg6gFY9Gd
         0i4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=83vq7v+i579IicWhjAwuJ9Rf41VD9MmIc+9Rc1R8NfM=;
        b=T/caDCt6P3BLkAT3iDdSXQ5H7u9ckoKd0HlLkynQ/5VpErcb7l9qjhsX19IAdzywkM
         8HnINnRvYBKUffECg5e1nYBA1gM6SrZfKjzeNaFIy/pjlNO/GZ7GTc573j7o6TR7MbMB
         80cjeQJ/0eQODwMjOgVArfDFSw52ddFxO7Gbi/m37B53jyrn1ba9/htMOnbBYfl7pjfh
         8l+IjWYJlDtgzbOG6wFBu+yL40u3U2cDt9gmTHXnNEFNfqJQMtjBPCLy7MJVaU85WaFQ
         aSTScbVKlcVqDAxxkkm+muW6vQ9FTJzNDQRopy10szgVly3la3nwjXBvE5foxZYjql4A
         r19w==
X-Gm-Message-State: AHPjjUhtrtjZm2Q4aUlr6BZOnsaQxZTJ9c+6mepY17JXCLWAO9Z0aVAy
	4VYEkPECKmnli48/M5kmw62gsc71cMmaZJ9D8VK6+Q==
X-Google-Smtp-Source: AOwi7QDI4dUTXl8fE8eKFN65RRvmpHNc737t4YHeG0FAQw2ywj6ksnUI/Xay9GY6B3vFZ7Sqp6Jy7FUfc7SXZqk+/H8=
X-Received: by 10.200.12.11 with SMTP id k11mr2784590qti.105.1505835782277;
 Tue, 19 Sep 2017 08:43:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Tue, 19 Sep 2017 08:43:01 -0700 (PDT)
In-Reply-To: <20170919063516.GA7626@kroah.com>
References: <20170918200649.vpfscgyeuibkvifi@fireworks> <20170919061019.GB1628@kroah.com>
 <CALta04zm+not=rSAykTa43fvv=hPX8w3nA9SpsGWtkjjyEPWwA@mail.gmail.com> <20170919063516.GA7626@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Tue, 19 Sep 2017 18:43:01 +0300
Message-ID: <CALta04xbkXiTKsMmWvwsFdkCMaVWkG4a+4trEJ7p8tjqVVz0uA@mail.gmail.com>
Subject: Re: [PATCH] Staging: media: atomisp: pci: Fix style issues
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, mchehab@kernel.org
Content-Type: text/plain; charset="UTF-8"

On 19 September 2017 at 09:35, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
>
> A: No.
> Q: Should I include quotations after my reply?
>

I see what you did here. I will keep this advice in mind!

> http://daringfireball.net/2007/07/on_top
>
> On Tue, Sep 19, 2017 at 09:29:18AM +0300, Georgiana Chelu wrote:
>> Thank you for reviewing it! I am thinking to resend it as a
>> patch set because all the fixes are related to a single file.
>> Is it OK?
>
> Yes, a patchset would be great, and the correct thing to do here.
>
> thanks,
>
> greg k-h


Best regards,
Georgiana

