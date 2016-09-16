X-GM-THRID: 6330666006877306880
X-Received: by 10.157.41.182 with SMTP id n51mr221928otb.69.1474038292419;
        Fri, 16 Sep 2016 08:04:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.117 with SMTP id p108ls5976953ota.42.gmail; Fri, 16 Sep
 2016 08:04:52 -0700 (PDT)
X-Received: by 10.129.129.67 with SMTP id r64mr214573ywf.146.1474038292075;
        Fri, 16 Sep 2016 08:04:52 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x22c.google.com (mail-yw0-x22c.google.com. [2607:f8b0:4002:c05::22c])
        by gmr-mx.google.com with ESMTPS id p193si707070ywe.6.2016.09.16.08.04.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 08:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::22c as permitted sender) client-ip=2607:f8b0:4002:c05::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::22c as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x22c.google.com with SMTP id i129so90802755ywb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 08:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=gKX6V4xNYsnSp2sQxKBRZT4jCCf/DBHk3VtXNzROtRQ=;
        b=LSx0HQqTs0vPi8vUzJerKoxS7JHWdadPV6Jiqb66ypZqYtuZI0ti1yCwUuxbV0KwC3
         qm3CV/PWronuIMY9cWqXo9LRcsLYJJ/QcJsM4/lSpGgC4kUfr8TmKCn6HKm8GCvKgZri
         iQ4nijMTsuSkZj3k1UDQ7/osldJwSutEzFDj7LA9A9gsrXJeD1xH+5EPw2wBrgS6C15j
         9i1QZpr/hY9WNbJ2/vu0aG0Yv4eiOgFtwRtdNcXf870mW5Cwj7TCvGowfTsQJTZjTfIy
         PeWyDzXn3mcy5HVTCiEeD1x/whhdLbVrimVM1iGImRvnne+TkcgDqEi8l9i1mf90Ycks
         9M5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=gKX6V4xNYsnSp2sQxKBRZT4jCCf/DBHk3VtXNzROtRQ=;
        b=YSckYLuPtEX29yw5YavI/NMb0LVK6829U6uVKRKaWvuBKbbfV6OiISkljJAPHRnmBc
         SNhrHK9FZwY6XUJuxaUKzh7PiVqrMXKYcVSXSjc8/OyRsB66XNWyAi3mt9vTzn9CrjpE
         R63Mqi8pb8XhaAiVY1e2w8v6OaJ64kafvo4esamB31sGuGXxHWErau89jsbrVnK6s9C+
         KTT/ex7OlsdIioMm+D0bzMf4A+AsUsZgCt2di/1wM63uk0/FoWePpoJ8Xk5NWFtTu2sO
         pqKBEjeWItCgPA/sfUylhJEptKyiTOz8PfHbWHs3v/7Ny9sx4qO57YIWPS31JYdif2xJ
         +4Vg==
X-Gm-Message-State: AE9vXwOM6FokoTI8a/3CWOsoMx5M6aaBO9YzqXrNyTIJm10qVhdxH2UJJFnPL8hzHd2aMELYmGu7ovUyCYDg/w==
X-Received: by 10.129.177.3 with SMTP id p3mr14734100ywh.318.1474038291814;
 Fri, 16 Sep 2016 08:04:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.41.132 with HTTP; Fri, 16 Sep 2016 08:04:11 -0700 (PDT)
In-Reply-To: <1504c37e-2cec-ad89-935c-4e2416b45445@mev.co.uk>
References: <20160915205705.GA19018@sayli-HP-15-Notebook-PC> <1504c37e-2cec-ad89-935c-4e2416b45445@mev.co.uk>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Fri, 16 Sep 2016 20:34:11 +0530
Message-ID: <CAKG5xWist8AdsE5hNnfAuzz9yuWjz4pqCuxf3GxRtW3=6cuOjg@mail.gmail.com>
Subject: Re: [PATCH] staging: comedi: Use the BIT() macro instead of left
 shifting 1
To: Ian Abbott <abbotti@mev.co.uk>
Cc: outreachy-kernel@googlegroups.com, 
	H Hartley Sweeten <hsweeten@visionengravers.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 7:57 PM, Ian Abbott <abbotti@mev.co.uk> wrote:
> On 15/09/16 21:57, sayli karnik wrote:
>>
>> This patch replaces left shifts on 1 with the BIT(x) macro, as suggested
>> by checkpatch.pl.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>>  drivers/staging/comedi/drivers/ni_pcidio.c | 76
>> +++++++++++++++---------------
>>  1 file changed, 38 insertions(+), 38 deletions(-)
>>
>
> It looks mostly okay, but could you change the patch subject to mention the
> driver it is changing and repost?  Something like:
>
>   staging: comedi: ni_pcidio: Use the BIT() macro
>
Oh, but this patch is already added to the staging tree as per my
knowledge. Do I still send a new patch?

thanks,

sayli

> Thanks!
>
> --
> -=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
> -=(                          Web: http://www.mev.co.uk/  )=-

