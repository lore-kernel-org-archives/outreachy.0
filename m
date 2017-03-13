X-GM-THRID: 6396343645329424384
X-Received: by 10.25.212.76 with SMTP id l73mr4333069lfg.13.1489410864921;
        Mon, 13 Mar 2017 06:14:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.8.73 with SMTP id g9ls1491254ljd.33.gmail; Mon, 13 Mar 2017
 06:14:24 -0700 (PDT)
X-Received: by 10.46.20.16 with SMTP id u16mr4473220ljd.23.1489410864318;
        Mon, 13 Mar 2017 06:14:24 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id b186si598627wme.1.2017.03.13.06.14.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 06:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id r36so11837099lfi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 06:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=xN3oQBwtSiq7Mqza4ruWFUMXdWeXxVmvhXLqiDqDDNs=;
        b=FjiC+KzG9L0wmJJNKOvwUgSKRgSpxXK3LqKWKjULnXaXLHua7qoAcW6YvwAoIYcQgo
         7gUihp/F5rQhZmKGdUg4NeUzJw1VfdbpRjb6mnenLcdNSL0X9bJk4qRoynobyKHl+72+
         AmJlPnFHf2FB4+uTq5dKMuTeHzp9lCV5P8UaowEXCg/307QlKFhqzOLjUyFyUFTdYDtp
         oZEP2pfGdL7Acv8j5q/Evd+WI0R5jCMrwr4sZwH6s5QF4HUYOfGrwk/Pd6Jxi4oSLQgG
         1DnJYt2uJNI/29dJ2mvSsuXN1HSGQ8PGzxqykILDTANQfDFnsIwjnT1W7aTwbmQRZ/EB
         Ykqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xN3oQBwtSiq7Mqza4ruWFUMXdWeXxVmvhXLqiDqDDNs=;
        b=DcEMtELfsFgjzf7FHDiPNf3T3dRkbIaeaBrXkIyE+qzefJWpZEAR18kKiQRntR2a91
         ZReEBMg8zMjnHklkecADyyx+2kULBwqUw8u3nOiiiK+qWlM1D5hMyzTXolrLKMli+ogE
         ipjUwhM6+gUitnS2u4tRglowqJahoalFgAkKPUyOn+eswNZQLvWxnxtRGgovhV0OR/lJ
         fgS8x5dc/iHHEyRtWTjgck4Vc0U1/ek+r9UOuem5d9+qLfIG7BUHhYwDYX5YZOYrjEZ5
         6RDF+1k/VmMxjvpbrG06tjngGSXRYowqB8s3UqLBDH58qqXK/vrr1Nay6CHCRZS8T0QG
         +knA==
X-Gm-Message-State: AMke39mYj0vl+hpfVf9eQCD7GpCXj1AzWb+oiBQdXDnvIRIPDOpSdO3nBAsRqnwkq2u7X+gbt1bwjZqZYBSUKQ==
X-Received: by 10.46.9.4 with SMTP id 4mr10266382ljj.23.1489410863822; Mon, 13
 Mar 2017 06:14:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Mon, 13 Mar 2017 06:14:23 -0700 (PDT)
In-Reply-To: <20170313125746.GD4187@mwanda>
References: <20170311204001.GA13301@singhal-Inspiron-5558> <20170313124144.GE4136@mwanda>
 <CALrZqyPRjhnpVswEDXqdiP=e+5Z5GKxUqomVXDExpa5thjGuPg@mail.gmail.com> <20170313125746.GD4187@mwanda>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Mon, 13 Mar 2017 18:44:23 +0530
Message-ID: <CALrZqyNS57uz5nKxVw-1msRvum1L0Qj8f=D5wPr8X1GVq25nZA@mail.gmail.com>
Subject: Re: [PATCH] staging: android: Replace strcpy with strlcpy
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, arve@android.com, riandrews@android.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 13, 2017 at 6:27 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Mon, Mar 13, 2017 at 06:17:22PM +0530, SIMRAN SINGHAL wrote:
>> On Mon, Mar 13, 2017 at 6:11 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>> > On Sun, Mar 12, 2017 at 02:10:01AM +0530, simran singhal wrote:
>> >> Replace strcpy with strlcpy as strcpy does not check for buffer
>> >> overflow.
>> >> This is found using Flawfinder.
>> >>
>> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> >> ---
>> >>  drivers/staging/android/ashmem.c | 3 ++-
>> >>  1 file changed, 2 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
>> >> index 7cbad0d..eb2f4ef 100644
>> >> --- a/drivers/staging/android/ashmem.c
>> >> +++ b/drivers/staging/android/ashmem.c
>> >> @@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
>> >>       if (unlikely(asma->file))
>> >>               ret = -EINVAL;
>> >>       else
>> >> -             strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
>> >> +             strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
>> >> +                     sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));
>> >                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>> > This isn't right.
>> >
>> > Also please do some analysis to see if it's a real bug or a false
>> > positive.  It is a false positive in this case.
>> >
>>
>> Dan,
>> I have already sent v3 of this in which I have used:
>> sizeof(asma->name) - ASHMEM_NAME_PREFIX_LEN
>
> Yeah.  I saw that.  It's fine, I suppose but you should have done more
> analysis to see if it was a real bug like Al and Greg suggested.  The
> changelog should say something like:
>
> "The destination buffer is 12345 bytes long but we're copying a 10000
> character string so it can overflow."  Occasionally, I will fudge a
> little bit on these changelogs to say that I have looked every where to
> determine the size of the source buffer and can't figure it out so this
> change makes it easier to audit.  But I try to figure it out generally.
>
> Really tools should be able to show that this code is safe.  They
> currently don't so far as I know, but they should.  It's a matter of
> waiting a year for Smatch to improve.
>

Thanks!

Will keep this in mind.

> regards,
> dan carpenter
>

