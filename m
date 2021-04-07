X-GM-THRID: 6946280249577439232
X-Received: by 2002:a05:6512:693:: with SMTP id t19mr1609367lfe.205.1617783407774;
        Wed, 07 Apr 2021 01:16:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3d16:: with SMTP id d22ls1239620lfv.1.gmail; Wed,
 07 Apr 2021 01:16:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzzwOJCl1RE9xXskCGQM0fuL8nWQafXOHz+0XPz0cdo9pDfdtSFfPKBVAbB3CzmBUJ7whXH
X-Received: by 2002:a05:6512:3142:: with SMTP id s2mr1710204lfi.382.1617783406002;
        Wed, 07 Apr 2021 01:16:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617783406; cv=none;
        d=google.com; s=arc-20160816;
        b=DNJQ9W+L43QP9YQcjbUKYpCXFhiW81QdrWK5cHCYH5a7o/IXCNd7raGHPLUp8THLDg
         CHx7pC3dY4AIi1Q3VcGgyBnrQ4lynd3RVif28/9rsFq++1P96JE23dfMMrCfiMCSxVcC
         g9sNm2vom5joTFPCFihFQFukFVUeVSBqenMNkIeB/9KV6P8r+2KfS8+inlKqMN+4NQ7P
         jA52Z8aXr2hiexyxdElwunMb5QXslfrbQIB5DmGWwy+5VDxyoU0odUiwqVBwNflAGw5G
         nhn5Tu5SeR4++nATVPZUysxTOxXnIu8W0dCapLEoC2DnGilwr8Wq2N9Om5nV3cNA/vrn
         ettA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=08ty5XMhGnB8RzCvL3s99MFJ3i12qeELDKgvHCb3alg=;
        b=P4AI6YNGWiiWNSdqJLlAySZ7O0qvVnU4kfSA3lp7Wxx6qe1VaX0GcxjejrVxv11mpD
         UE6RdyB5dTO/fQWzN/9r9GIwikCmWrfbmIRmt45jWFX5nFwcZ0YNHocMO/TZnsVN+JUw
         XYdFcutSsEM3eZcTTh/nhc9V2IJJPRx6x3mwpf3IP4/MQmgTHbot+zgiXkef8znhhVHk
         Eib4+RivB6Xf1IpWvSwnuJJgiyfKmcucuOf3KZZItFQi424j6NxR5t4qyD4LmuZDoGrz
         SI1KGWsyyM9bRge3SyjGj/FoHcFeJm4224XG8JdZMjHJvYWRdM87dohNdU8ePG2YFUmS
         8y5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eVRrevos;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id q3si1912016lji.2.2021.04.07.01.16.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 01:16:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eVRrevos;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id x7so16912278wrw.10
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 01:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=08ty5XMhGnB8RzCvL3s99MFJ3i12qeELDKgvHCb3alg=;
        b=eVRrevosealGmpEoNAyoYJsbBI7Nyvx12R3FMBWRpy4rEupVe29sK9j3tGVPjll92f
         0eeq3u1eR8ttHywdNy6dHcO3qWIs4jQ/SRT9T2ex3xMwkVfnOr5Xr9Z/iz0PMPHaBZVT
         K9jdOOFxlhibKwBwEmSSBFccXSwnFRBRClDykK5C6N1Y/qfu7F3u0hIu1WLHnqN7QYsw
         Np4hS0YjkJKPP7DJBOn+jsb0TWAR8LPnilQNpC7niQiW2mmkLn45Rw8HCZsUDUiTBBPt
         ZmkWe6/EpRi0NcpJixpihyKcQckQvPyATEIhWiyBEYdnp5V4iAtp1sMhDZhuoTmgObPz
         x/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=08ty5XMhGnB8RzCvL3s99MFJ3i12qeELDKgvHCb3alg=;
        b=QiNMtka3ArY57yyl/afD5+68rSua6y/TlaL/2pcye8Zj2LKz2mfwl770gWGYvvJxph
         B/Jn43EyniSuc+6JrYX7yRFokluEeTgAISF+ZBGA4nose79OkCEYJjZEd/LXf58Vinu6
         235ox9jcUoRjaNwEjJ1FSNv15QkYrO1jSaVYK+2pqZumwAPvPbs2+7IfZoMPl6U+/wmQ
         fIq9fr7rjbsqsgct/eu0rAKZ2YmPpMZ7qQq2o9ceaBlMJEXDoI0X/Mm/JW2n5FdSf051
         4PfK0nbxT6MVvcUdDTnNeSOJ3bRP9AMWMwm7rvGuwuooHi6y2jFKP2jCv05wJ69T0ybc
         LRtA==
X-Gm-Message-State: AOAM532r6hBtoaTOj7cbC2tjb/SiFJV3l5GKbTUET0QuQ1Ng4xVeD1cu
	mwaAbbapXcIgTQe8PQv70Y83GFyBcMW5mA==
X-Received: by 2002:a05:6000:18ab:: with SMTP id b11mr2787852wri.403.1617783405327;
        Wed, 07 Apr 2021 01:16:45 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ef5c:3f2a:a646:d6ec? ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id h9sm6818267wmb.35.2021.04.07.01.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 01:16:44 -0700 (PDT)
Subject: Re: [RESEND PATCH] staging: emxx_udc: Ending line with argument
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
 <YGy4LXHBrBb/r3dk@kroah.com> <4c7df741-4e73-2ac4-f0d8-c9513ae29c88@gmail.com>
 <YG1FI38zNbidjt9q@kroah.com>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <4d7ebe9c-8ebc-2fc9-10ed-6756ab42d5d7@gmail.com>
Date: Wed, 7 Apr 2021 09:16:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YG1FI38zNbidjt9q@kroah.com>
Content-Type: multipart/alternative;
 boundary="------------8C7772E3CA4C655390F16140"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8C7772E3CA4C655390F16140
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Em 07/04/21 06:37, Greg KH escreveu:
> On Tue, Apr 06, 2021 at 09:00:07PM +0100, Beatriz Martins de Carvalho wrote:
>> Em 06/04/21 20:36, Greg KH escreveu:
>>> On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
>>>> Cleans up check of "Lines should not end with a '('"
>>>> with argument present in next line in file emxx_udc.c
>>>>
>>>> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
>>>> ---
>>>>    drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
>>>>    1 file changed, 4 insertions(+), 7 deletions(-)
>>> Why is this a [RESEND] ?
>>>
>>> What happened to the first version?
>> Sorry, I didn't receive your review, and in kernelnewbies tutorial, they say
>> if not receive a response, may have missed the patch, so I resent it.
> Do you have a pointer to your previous patch in the lore.kernel.org
> archives anywhere?  I can't seem to find it.


I found this, it's what is you need?

https://lore.kernel.org/linux-staging/20210401195457.24512-1-martinsdecarvalhobeatriz@gmail.com/

>
>>> Also, your subject is odd, please look at the documentation for how to
>>> write good subject lines for patches.
>> Yes, I know. It was my second patch, and I was learning, and when I resent
>> it, I didn't know if I can change the subject.
> Of course you can always fix up things you know you did incorrectly,
> don't make others review stuff that you know is wrong, that just wastes
> everyone's time.


Thank you, I will start to do this from now.

>
> thanks,
>
> greg k-h
Beatriz Martins de Carvalho

--------------8C7772E3CA4C655390F16140
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Em 07/04/21 06:37, Greg KH escreveu:<br>
    </div>
    <blockquote type="cite" cite="mid:YG1FI38zNbidjt9q@kroah.com">
      <pre class="moz-quote-pre" wrap="">On Tue, Apr 06, 2021 at 09:00:07PM +0100, Beatriz Martins de Carvalho wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Em 06/04/21 20:36, Greg KH escreveu:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">Cleans up check of "Lines should not end with a '('"
with argument present in next line in file emxx_udc.c

Signed-off-by: Beatriz Martins de Carvalho <a class="moz-txt-link-rfc2396E" href="mailto:martinsdecarvalhobeatriz@gmail.com">&lt;martinsdecarvalhobeatriz@gmail.com&gt;</a>
---
  drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
  1 file changed, 4 insertions(+), 7 deletions(-)
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">Why is this a [RESEND] ?

What happened to the first version?
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">Sorry, I didn't receive your review, and in kernelnewbies tutorial, they say
if not receive a response, may have missed the patch, so I resent it.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Do you have a pointer to your previous patch in the lore.kernel.org
archives anywhere?  I can't seem to find it.</pre>
    </blockquote>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">I found this, it's what is you need?</font></p>
    <p><font size="-1"><a class="moz-txt-link-freetext" href="https://lore.kernel.org/linux-staging/20210401195457.24512-1-martinsdecarvalhobeatriz@gmail.com/">https://lore.kernel.org/linux-staging/20210401195457.24512-1-martinsdecarvalhobeatriz@gmail.com/</a></font></p>
    <blockquote type="cite" cite="mid:YG1FI38zNbidjt9q@kroah.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Also, your subject is odd, please look at the documentation for how to
write good subject lines for patches.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Yes, I know. It was my second patch, and I was learning, and when I resent
it, I didn't know if I can change the subject.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Of course you can always fix up things you know you did incorrectly,
don't make others review stuff that you know is wrong, that just wastes
everyone's time.</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Thank you, I will start to do this from now.<br>
    </p>
    <blockquote type="cite" cite="mid:YG1FI38zNbidjt9q@kroah.com">
      <pre class="moz-quote-pre" wrap="">

thanks,

greg k-h
</pre>
    </blockquote>
    Beatriz Martins de Carvalho<br>
  </body>
</html>

--------------8C7772E3CA4C655390F16140--

