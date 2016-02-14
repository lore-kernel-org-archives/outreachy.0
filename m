X-GM-THRID: 6250792352904904704
X-Received: by 10.66.63.68 with SMTP id e4mr7870515pas.40.1455426059912;
        Sat, 13 Feb 2016 21:00:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.219.229 with SMTP id pr5ls818387obc.89.gmail; Sat, 13 Feb
 2016 21:00:59 -0800 (PST)
X-Received: by 10.182.102.38 with SMTP id fl6mr9366811obb.46.1455426059553;
        Sat, 13 Feb 2016 21:00:59 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id v197si1654657ywa.1.2016.02.13.21.00.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 21:00:59 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id y89so90799682qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 21:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=7fRns9T7vW2awUhXNkwG7BgMDLO9wFjVy6oYn5P05FY=;
        b=jNUD7AmEOVY1N5KDYVb3Oxq+QuwBBmfI2AALuVyZsp6Uer31tAs89DKI0f54UnWxpc
         30Yie3KrFLTf/Ovd5M1sjxF66GzXTpgiglYyUCu2Rh01iUEBYKpx6gUWvz8gDea/SR+x
         N6z8ZPyygfReIRQ8x9mAD79zSJplJdkmCdN29QQtLKi1r+4amxqcDZ9UUhENxCaz7YKX
         1D+ngiEiBYZXvfRVC/pd6+Fvd5kGmqATRap2H+1gF74TDdYA+aEazpFz3eayBPAoGNkj
         LHpk9qJbkKl+AlFfhIHp+dOlAFsZ+IIxGCIPYISTR1EwHWB2oy8mzKc7XuhgyZI+nEEx
         oPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=7fRns9T7vW2awUhXNkwG7BgMDLO9wFjVy6oYn5P05FY=;
        b=iSyc9M5Rv0qAhouC9XoLo6GGfMPo7M1V35aBP+Sy1TuK/9hQ9h1annBEst+eX17tue
         epb2vF8fAsvLdlDmDNUFOzg5OAbgPQqWERmpyBa0X9R8z/GD16xcagikGQa2MU3OLBPf
         2YJqzQAreUc2dknEi7EyHiMjfyN6R85lZlyz9ZHHk8sEE0WoGI+/eXOpfO+G6SU3ZDd+
         wNoh5O0m+ZComMicgEZPvVGNmN/7ekwXcqshjBnOiLW0XdsHoQ/Is+amevO+1FIeWcab
         V+3d3qPaMllrp9E5m6/kaJz7roWbw6UPrxPX7jt+BVOt9VxzvAzF0KPFi+1C/pyeHVhq
         Agcw==
X-Gm-Message-State: AG10YOQNaZWMDDJzpJA91MW2vKYYKJ82kP0b4AsjnCNvgcMUbYc6VAPD8SsSIsYTF9iJA4l1+1jkOtB1XueFSA==
MIME-Version: 1.0
X-Received: by 10.140.95.117 with SMTP id h108mr12183437qge.65.1455426059375;
 Sat, 13 Feb 2016 21:00:59 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sat, 13 Feb 2016 21:00:59 -0800 (PST)
In-Reply-To: <4143065.OBkRWe7lv3@wuerfel>
References: <20160213150641.GA26097@amitoj-Inspiron-3542>
	<4143065.OBkRWe7lv3@wuerfel>
Date: Sun, 14 Feb 2016 10:30:59 +0530
Message-ID: <CA+5yK5HTPxk9EtTgUki+47-1G0fhHL-t1YUvaeeha_Ltd=3F9Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Use IS_ERR_OR_NULL
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 14, 2016 at 1:26 AM, Arnd Bergmann <arnd@arndb.de> wrote:
>> -       if (root == NULL || IS_ERR(root)) {
>> +       if (IS_ERR_OR_NULL(root)) {
>>                 if (lmd.lsm)
>>                         obd_free_memmd(sbi->ll_dt_exp, &lmd.lsm);
>>
>
>
> There is almost always a bug if you have to use IS_ERR_OR_NULL().
>
> Please check if that is actually required here at all, any why
> the two cases should be handled the same way.
>
> Normally a function that can return an error pointer should
> never return a NULL pointer and vice versa, so a better fix
> would be to change the function that returned the root variable
> to have a consistent behavior.
>
>         Arnd

This is how the variable root is defined:

struct *inode root;
root = ll_iget(...)

and then we have the above statement.

ll_iget returns a *inode or NULL pointer

Similar for the second case in the above patch wherein instead of
having a variable root, *inode is used directly.

What would be the correct change here?

Amitoj

