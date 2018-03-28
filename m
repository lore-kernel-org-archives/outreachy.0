X-GM-THRID: 6534171640869158912
X-Received: by 10.129.133.7 with SMTP id v7mr15633050ywf.231.1522222737071;
        Wed, 28 Mar 2018 00:38:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.120.1 with SMTP id t1ls297132ywc.41.gmail; Wed, 28 Mar
 2018 00:38:55 -0700 (PDT)
X-Google-Smtp-Source: AG47ELseS/Vc0RbSKRtbIfu7ji69+kpoepp63SOz2xFwDbCck/2iTnE2XWw5qdVILAM3NT0KzRUb
X-Received: by 10.13.197.6 with SMTP id h6mr18540010ywd.215.1522222735815;
        Wed, 28 Mar 2018 00:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522222735; cv=none;
        d=google.com; s=arc-20160816;
        b=sZkbwHeAr7aL9rD+fR3BshKKZuhogpVvYSjKaj1Sr2Bks1odQV3kpGnrIyjEkLMmg8
         QAFiV3CBa5SCtRteosAKiiR7DmiXbQxWMJL/Rcr5XOWTeFy9XPNKTI4NdUHplT1IFIoC
         OZrByPp/BFXL87Y58YXfuYAqBVhrTtwclUQ9YSWi5ndp7l8IYMqHZd5wuwk8TNFcQCMu
         eTRAXf4e86FIEshVBB+5kSVcxWzeU8qstNnGA+qdqBH0TQuRGBZTto4U/jDBmVNc6xqJ
         h3z1QO7FVER1JXBQEwJ5wA84ougjIGMGNx+/hf9fOj8V/QoBeKqXhq6gBzxThZcBWdZm
         tn5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=EDhLCMjE5SXJRN92QD2YiXQtHxI9xsDpJj2Gxr3fxN8=;
        b=mspRosqQByMW//4sXvYXtmVyOAP6GKw6rH3HWIp8oqAfdUXIfwOqw1eR/U8C/KtlGU
         Pi/ywaVVBesiIwTvD3x5Ge5TiJ4FUPL6+IgDIqizjzdj8sZPz5gTLSuR/xMV5Ouj82IO
         evoyN/wGNgNQrRPNxETexeUSTLSi19IQ26uSKWrfMLScE7BjGqvLh8kc/Q5kwUdq9tzF
         p0asbNgSlzHW7CoBaE/ipFQBNGJVc0UCqCRsl0FwgrhIKLq1BWmpWumBlvH4BUR8OYt3
         rinsW6titnqpIQ2eYNlmepXz+54oLkx1iJ4eWGRLaViaOv0/uqYO4o8GFBtHvQL9uxga
         qh0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=eGpOvIQb;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id d131si60925ywc.5.2018.03.28.00.38.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 00:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=eGpOvIQb;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x242.google.com with SMTP id d5so2354995iob.9
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Mar 2018 00:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=EDhLCMjE5SXJRN92QD2YiXQtHxI9xsDpJj2Gxr3fxN8=;
        b=eGpOvIQbnVoc/RPKzvOOAyxdBejxrLJk0bHYF8IULai6IUSxcPS4fkqKv+JrcfbmPh
         VnimgjzNfDdXpK3TVcN5znUGZuprBq/4+u27KhItqxRCTdZrfaeaKDmvdjPKo7J3n/s+
         Dss2eqWW1dssRjtDG8pl5ZPQutu/hJpuNFGRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=EDhLCMjE5SXJRN92QD2YiXQtHxI9xsDpJj2Gxr3fxN8=;
        b=dWx3H7G45Kn2twXPpGd0WM1hGwTT4gUhFY+XHYgSUNIRt2KKGHtl2/54R1vxdyc5Qx
         oLGLAkioAZ48JmEBQW4ngqAe5NtT0VghqsE2nqjxMCLA4htxuIH1DjkmcwEYWPGhl69T
         Q42nujYfXRdXizzUVqcGXn+CI2Rnl/awU/JeUycG71+yyT8mxzUkznPnqLgdrKAZjVoM
         /+e8lGp28HbMEDTFfSU0tNVWgrxqw74280y8C3sV1zCQkY99JeDThh8MlPkD5hltdzep
         0a9lwBHoNY5jh1T8RDEQoR0GB4vHvIHoIEn64f8QHSiIIsccfjudCHLCbmr82vcSYRIy
         jYqw==
X-Gm-Message-State: AElRT7FtmfYF9vNWf33k1VaaNGi9a1F/i2tMi02A2AMJrFN+rh8cYV5C
	OfwWxtH6lwrCaAC/WMqBtpvxUQzzI79zL5v+CApiRg==
X-Received: by 10.107.44.199 with SMTP id s190mr49452088ios.123.1522222735425;
 Wed, 28 Mar 2018 00:38:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Wed, 28 Mar 2018 00:38:55 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803272303130.2383@hadrien>
References: <alpine.DEB.2.20.1803180739260.3299@hadrien> <e84b04f6-0288-4490-b3e3-8bf9166f3d4f@googlegroups.com>
 <CAO393ABtUKH6t6aZwSX0tPoDX7dQ5MggeWsN8t+Rhd1wnV6DBA@mail.gmail.com>
 <CAC4++KD6f+8As-7qxSHwp=m+hDZ85r_btf=cxtxSx75Hc7jTvw@mail.gmail.com> <alpine.DEB.2.20.1803272303130.2383@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Wed, 28 Mar 2018 13:08:55 +0530
Message-ID: <CAC4++KDxW2+O6q3byG+GFmu7adog7DcXqjwEGuKC5HCuz6J07g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: application
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shraddha Barke <shraddha.6596@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 28, 2018 at 2:33 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 28 Mar 2018, Nishka Dasgupta wrote:
>
>> On Wed, Mar 21, 2018 at 3:34 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>> >
>> >
>> > On Tue, Mar 20, 2018 at 9:54 PM, Nishka Dasgupta
>> > <nishka.dasgupta_ug18@ashoka.edu.in> wrote:
>> >>
>> >>
>> >>
>> >> On Sunday, March 18, 2018 at 12:13:08 PM UTC+5:30, Julia Lawall wrote:
>> >>>
>> >>> Hello,
>> >>>
>> >>> Currently three of the kernel projects have a deadline of March 22 and
>> >>> the
>> >>> Userfaultd project has a deadline of March 29.  In either case, the
>> >>> deadline is 4pm UTC.  You can find out what time that is in your area
>> >>> using the following link:
>> >>>
>> >>> https://www.google.com/search?q=4pm+UTC+to
>> >>>
>> >>> You make a separate application for each project you are interested in.
>> >>> If you are interested in multiple projects, please clearly indicate your
>> >>> preference between them.
>> >>>
>> >>> julia
>> >>
>> >>
>> >> Does this include the project "dri-devel aka kernel GPU subsystem"? Its
>> >> deadline is also listed as 29th on the outreachy website.
>> >>
>> >
>> > Yes, you should make a separate application for "dri-devel aka kernel GPU
>> > subsystem" project as well.
>> >
>>
>> May I list the same cleanup patches as contributions if I apply to
>> multiple projects?
>
> Yes, this is perfectly fine.

Thank you for the clarification!

Regards,
Nishka Dasgupta

> julia
>
>>
>> I will of course be ordering the projects according to my preference.
>>
>>  Thanking you,
>> Nishka Dasgupta
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups
>> >> "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an
>> >> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit
>> >> https://groups.google.com/d/msgid/outreachy-kernel/e84b04f6-0288-4490-b3e3-8bf9166f3d4f%40googlegroups.com.
>> >>
>> >> For more options, visit https://groups.google.com/d/optout.
>> >
>> >
>> >
>> >
>> > --
>> > Shraddha
>>

