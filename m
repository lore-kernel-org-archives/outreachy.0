X-GM-THRID: 6391852583766458368
X-Received: by 10.25.67.70 with SMTP id m6mr468103lfj.21.1488309429434;
        Tue, 28 Feb 2017 11:17:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.71 with SMTP id 68ls198667ljf.34.gmail; Tue, 28 Feb 2017
 11:17:08 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr466241lfe.18.1488309428942;
        Tue, 28 Feb 2017 11:17:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id h62si832411wme.2.2017.02.28.11.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:17:08 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id z127so1703880lfa.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 11:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=WDoK1T+0CLrOFBDjUcpWT3iu+3SMSDtYsnQy2dQT4pg=;
        b=VhZzPm7Ad2jgIOujPYPdqqBfMDXTfm+U7G3HhOb/+wHGsfgp+zMSnZtjBUea6REed5
         OB7NV2RlzpFUR+w5VcLRSckN4z5Z24GyhqN9vt2rzcVLdkjMwG9YspImhuARhRNLSpX0
         f5n34NJHNTIhG4DHrWTqrQ4MAXyeHTcsLiMPMD/FFDHsIczK2AKqnD5ciVEgoBS5/M/r
         j2dzx0dK6vD9Q/PogXxHT2VopY5qaWGvTIdviVe9jFN8aT45aTBrg4qhv4j1/jfqlJc8
         FPW0SBpcNQ+dPe796ZYMd63TE6Y5i2faCwb7x4SwWyvsGnQB0EcRiHcsei/6t+UiARJJ
         BQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=WDoK1T+0CLrOFBDjUcpWT3iu+3SMSDtYsnQy2dQT4pg=;
        b=E0vA4agVg8NxgFDJdJpGi4v94OLy1D19DjF82Dz8sRDAZkRaJ1ZvereA5/vsifrR63
         WNSibLA9QelXGYqxH1eJ5jAV5LCboDvTF+VptyQ6/ZmlolpvudPuzcBCvEZZhIL6kpCm
         hj2q8gLkgYqBV4j3gP0+7bvJyqbYOcfePRh2jMvGO5zwiDGLIicIo1fcQnmJd33R1wYz
         aLt4aB2NY5MCUZVo2LZVhK7rEWkUtA5ecChtQ6EGZLyR8TEHiziigF/jKztPkozvW+dD
         s8RGbJKKSx6hiMrZEZ0JB9dKJCEtSJf+pTJ0PhDrFyIOZ8vYRQYgbzXEP1mQ+7x7W4dO
         +/Tw==
X-Gm-Message-State: AMke39mPDvRVMmwkPTsxK/Z4ZlKyWv9C8lJjNCOxErHc6dpiJZopVGej4L3r1RXucpYRiUolpEu9u4orfb/N6Q==
X-Received: by 10.46.20.72 with SMTP id 8mr1421198lju.23.1488309428476; Tue,
 28 Feb 2017 11:17:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Tue, 28 Feb 2017 11:17:08 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702272216140.2127@hadrien>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
 <1488219268-3006-3-git-send-email-singhalsimran0@gmail.com> <alpine.DEB.2.20.1702272216140.2127@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 1 Mar 2017 00:47:08 +0530
Message-ID: <CALrZqyPqNUCdbEpQT2KkGS8F8Up6d_Uc56YHVLxf_QDFghooWw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: rtl8712: Remove
 unnecessary else after return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 2:49 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 27 Feb 2017, simran singhal wrote:
>
>> This patch fixes the checkpatch warning that else is not generally
>> useful after a break or return.
>>
>> This was done using Coccinelle:
>> @@
>> expression e2;
>> statement s1;
>> @@
>> if(e2) { ... return ...; }
>> -else
>>          s1
>
> One might be surprised that the following code was detected using the
> above semantic patch, because in the code below there is no return in the
> if branches.  Actually, as a special feature, when one has an if branch
> that ends in return, Coccinelle will skip through any gotos and see if the
> return is matched afterward.  Indeed it is a common pattern to have
>
> if (...) {
>    foo(x);
>    bar(y);
>    return -ENOMEM;
> }
>
> But the code can also be cut up as eg
>
> if (...) {
>    ret = -ENOMEM;
>    goto out;
> }
> ...
> out:
>    foo(x);
>    bar(y);
>    return ret;
>
> To avoid having to write multiple patterns for these cases, Coccinelle
> will just jump through the return in the second case, allowing the same
> pattern to match both of them.
>
Julia, Thanks for explaination. Its really helpful.

But I think there is no problem in removing else.
Because it will execute this

 padapter->dvobjpriv.inirp_init(padapter);

when if condition will not satisfy.

> julia
>
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/staging/rtl8712/os_intfs.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
>> index 8836b31..3062167 100644
>> --- a/drivers/staging/rtl8712/os_intfs.c
>> +++ b/drivers/staging/rtl8712/os_intfs.c
>> @@ -411,8 +411,7 @@ static int netdev_open(struct net_device *pnetdev)
>>                       goto netdev_open_error;
>>               if (!padapter->dvobjpriv.inirp_init)
>>                       goto netdev_open_error;
>> -             else
>> -                     padapter->dvobjpriv.inirp_init(padapter);
>> +             padapter->dvobjpriv.inirp_init(padapter);
>>               r8712_set_ps_mode(padapter, padapter->registrypriv.power_mgnt,
>>                                 padapter->registrypriv.smart_ps);
>>       }
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488219268-3006-3-git-send-email-singhalsimran0%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

