X-GM-THRID: 6471963734455615488
X-Received: by 10.13.197.68 with SMTP id h65mr31310568ywd.54.1507059253094;
        Tue, 03 Oct 2017 12:34:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.237.4 with SMTP id w4ls668183ywe.19.gmail; Tue, 03 Oct 2017
 12:34:12 -0700 (PDT)
X-Received: by 10.129.79.200 with SMTP id d191mr30833959ywb.184.1507059252275;
        Tue, 03 Oct 2017 12:34:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507059252; cv=none;
        d=google.com; s=arc-20160816;
        b=cC0FShCXNyOXyroQY0ZlQWzOZzZuBfsXvrPJr1W3oah1/5y2+74SyfWCdalO15ixeA
         zcyGsnoRSRZjgzd7nyhhuFYAAbcu45ku13rsVJXBTDV9iB8QDuA2ALUpyc8kMeE2jVcD
         9vAIAZ9o/30XbI/L3eMzzzkxpeHzR236JFO8MTbJfTgcgjo1GRxvsueIFOiXR8JmivA/
         DFF4eeXVTjzfa4hDg0NUzy42xcfCSD+hhLXoZEWJoMi6byykBP9Mvq90V/XzOnlUL2by
         VBQFku2hvq4nsTUSTYvIAgh8bMyaJvDtDi/UzXsgl/9PKfkmda4as7fyo6//YoIhBmSr
         UFqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=yA656eAmgbwXqc5h5zrZPxROiKTOVqk5xeznP4kIkJk=;
        b=QmYiLOJurnn2VkD4QSkBm+pbHDvoPan7nGjxPg2/IQF+/pSpon5I2OKqsv6wpbZcrN
         P9UFt/L9gyVpCvVc4GO+jlgSDj6A5DtpHtJdvc/5QGVQAYDYoK/INYJD7EsekKC/mYSA
         39eAuyxDur3Twq/NDTTYDbnNwZw4sqHcbK/HA67B+1hr+3cHxo1JrhahP+apw2MrwfEI
         ++4zJx796gWSKG1xQIFic6Tp5Gg+6J7FW/6l0L5LUCmd0Lt4CJSy0qZ6rKxcNeax8QXJ
         bGd6pPiJ5v3G/UmCi49JHWyFJr9UAqJaynvnW/1eNZHtNWh831tGqZPGa05ZZILW8seL
         5hPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOU5qyzM;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::22e as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x22e.google.com (mail-qt0-x22e.google.com. [2607:f8b0:400d:c0d::22e])
        by gmr-mx.google.com with ESMTPS id a70si749369ywe.19.2017.10.03.12.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 12:34:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::22e as permitted sender) client-ip=2607:f8b0:400d:c0d::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UOU5qyzM;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::22e as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x22e.google.com with SMTP id o3so15089639qte.6
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 12:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=yA656eAmgbwXqc5h5zrZPxROiKTOVqk5xeznP4kIkJk=;
        b=UOU5qyzMpevJoJFZz3dEEDjM5V7ZSir0E0BA6vbcbTXO3hYRkewEFVK/KkOzdVdP/E
         PzjX7hf3DbX715xgtSDbFG5D6lHcFXkLriffuzMmSPX9NYI/1ljdbEP3YC1rEVxDF7vr
         mFdmyoPoMjH84sI6USw0fSYZns4AIU/eQpAZKSL7aMixV5P2D/oG+imDweqk4urL4P1S
         AOhOBEquz0tRK1qgNfxqUeJRsVYbj55/ARuKhB3nzto93VA6AejzkS8SnwTfhPn7xiQL
         aGgkzTV8YRUV5UFWHy0hCK0WAJMEeteb0oM4ao3wnpu8sY+AqFcKeBB/+Wk328cbhbs6
         XZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=yA656eAmgbwXqc5h5zrZPxROiKTOVqk5xeznP4kIkJk=;
        b=cyg78Q+G0gGDvT4Fj8v+iGIYKvJp2RGwhliGt/dAJJQLtg1OjkcEVmfZIBzyGYUpqH
         a24R3oxFabp0hkSRHvzNg1fMJPBZwcKP9CSkfax7dP50idBR/58KfgpN4a2T8R8Y22HU
         FYrxqymKWnM3SMP/CG5YvbinvXpdu5SE2nsAdN/twaTh+dFJAcRxVYvBKOnXHDXbY39I
         6DO0ZZy0mUhxYvx2jUsPIZ6dM33Q4ROh7YM3T0RgTTDwu2nbAL9rR2IpnFkFsS2JCDtP
         /0pSxIITqZk9O32ECJvESGicSgTOvA6J7RWAyBU9cfHP92VX7DLqvt32Boa/eu1coGRe
         jl+w==
X-Gm-Message-State: AMCzsaUIUEoEkZL3NwTgY43Qyyo4eQ4A1+OS5wKoZQbfC9Fry1wwqoff
	A7WRivFLDjw6SJ0zy+hJh4unp9qzTZyxLgZoJ7A=
X-Google-Smtp-Source: AOwi7QCpbdNDVOYVVSgUN2un5vveS3IjtwyCJlzcT1MpRXlEmF/jdXSg4b3Iepj3GszdDYl3II/Qnqv9bblCo1kfJkQ=
X-Received: by 10.200.4.169 with SMTP id s41mr23656694qtg.132.1507059252016;
 Tue, 03 Oct 2017 12:34:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.105.75 with HTTP; Tue, 3 Oct 2017 12:34:11 -0700 (PDT)
In-Reply-To: <20171003161947.GB25889@kroah.com>
References: <20171001152428.11054-1-georgiana.chelu93@gmail.com> <20171003161947.GB25889@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Tue, 3 Oct 2017 22:34:11 +0300
Message-ID: <CALta04ySyBDceTWZr6LRCwVSBsPsbCdKwyEZ_5v=tN7NGRSGRw@mail.gmail.com>
Subject: Re: [PATCH] Staging: rtl8723bs: Use kstrto<type> instead of single
 variable sscanf
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On 3 October 2017 at 19:19, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Sun, Oct 01, 2017 at 06:24:28PM +0300, Georgiana Chelu wrote:
>> Use kstro<type> instead of single variable sscanf to
>> convert a string to the appropriate integer type.
>> Also, check the return value.
>>
>> Issue found by checkpatch.pl script:
>> Prefer kstrto<type> to single variable sscanf
>>
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>> ---
>>  drivers/staging/rtl8723bs/os_dep/rtw_proc.c | 12 ++++++++----
>>  1 file changed, 8 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
>> index 92277457aba4..58eb50aa8098 100644
>> --- a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
>> +++ b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
>> @@ -70,7 +70,11 @@ static ssize_t proc_set_log_level(struct file *file, const char __user *buffer,
>>               return -EINVAL;
>>
>>       if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
>> -             sscanf(tmp, "%d ", &log_level);
>> +             int num = kstrtoint(tmp, 10, &log_level);
>> +
>> +             if (num != 1)
>> +                     return count;
>
> How would num ever be 1 here?  Did you test this?
>
> Look at the documentation for kstrtoint() please, I think this just
> broke things :(
>

I missed that kstrtoint and sscanf have different output on SUCCESS.
The return value should be 0 in case of success. I will send the second
version of the patch. Thank you!


Georgiana


> thanks,
>
> greg k-h

