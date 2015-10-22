X-GM-THRID: 6208409681994448896
X-Received: by 10.182.50.138 with SMTP id c10mr12594675obo.38.1445516822162;
        Thu, 22 Oct 2015 05:27:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.148 with SMTP id x20ls1529368qgx.34.gmail; Thu, 22 Oct
 2015 05:27:01 -0700 (PDT)
X-Received: by 10.13.230.14 with SMTP id p14mr12265089ywe.2.1445516821752;
        Thu, 22 Oct 2015 05:27:01 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id y206si468969ywd.6.2015.10.22.05.27.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:27:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x230.google.com with SMTP id y65so52462989qkc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 05:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KIIIdXPXxrGDetF0+QdmAaslp6TijvBzRFMB0of/8js=;
        b=vQ+/UUM5RTDjSX+vXYrTTCW1QV+8rRH41DNadfU94UKSIQcaBNvGS6fjywJlNZNgzt
         MEGawnU1IU1NJzvju3VVNaEeYWNtLolBBLHYCWgdm7qztyJQ1HaFirWrlkV+HzVtudir
         alrciYIir9aqm8MjcBZcAeaC5POaj3x9s2myiUFxYFcbkx5RZjzKhI1ZNzfJaQsNC4Mg
         26h8twF8+e2ISYz/v0/wY0tnx+fkvPzkPsrJ2roWdXzY3GpTs0Cjodnu8OUx8uHduYly
         LwxgUJYF7/PWpEfhHJtjgVJ1Jc73HfKkRt9jWgguEJK5smvn+ZTC7BgKS8VxqNUNJYBz
         r1MA==
MIME-Version: 1.0
X-Received: by 10.55.207.3 with SMTP id e3mr17964607qkj.32.1445516821608; Thu,
 22 Oct 2015 05:27:01 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Thu, 22 Oct 2015 05:27:01 -0700 (PDT)
In-Reply-To: <9825222.84loh1CGZJ@wuerfel>
References: <20151022100014.GA13736@amitoj-Inspiron-3542>
	<6283563.jJXPJxPvGx@wuerfel>
	<CA+5yK5Fw8VKJorr5PoZbOwRkWVE-K7w0NDGaCr6APxT1nFBXXw@mail.gmail.com>
	<9825222.84loh1CGZJ@wuerfel>
Date: Thu, 22 Oct 2015 17:57:01 +0530
Message-ID: <CA+5yK5F6gF-JhJp0ymfYupQLmcG4vT71+Q1Kqng9=3vF3QUWBQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] ide: Replace timeval with ktime_t
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 5:55 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thursday 22 October 2015 17:53:34 Amitoj Kaur Chawla wrote:
>>
>> > Please always add y2038@lists.linaro.org to Cc with these patches. If
>> > you want to send more of the same, you can also subscribe to the list
>> > at https://lists.linaro.org/mailman/listinfo/y2038.
>> >
>>
>> I thought that ccing would be done after your review. Should I do it
>> from the first version only in the future?
>
> The y2038 list is a bit special, I'd like you to Cc that one from the
> start for all y2038 patches, but only Cc the maintainers after the
> review.
>
> The reason for that difference is that there are other people on the
> y2038 list (outside of outreachy) that are also learning here, and
> it is good if everyone can read and comment on everyone else's patches.
>
>         Arnd

Okay. Will keep in mind for future patches.

Thanks,
-- 
Amitoj

