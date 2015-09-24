X-GM-THRID: 6198081352243347456
X-Received: by 10.180.10.202 with SMTP id k10mr1468128wib.2.1443103745460;
        Thu, 24 Sep 2015 07:09:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.85 with SMTP id d82ls166087lfb.47.gmail; Thu, 24 Sep
 2015 07:09:04 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr6065662lbp.24.1443103744645;
        Thu, 24 Sep 2015 07:09:04 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-la0-x235.google.com (mail-la0-x235.google.com. [2a00:1450:4010:c03::235])
        by gmr-mx.google.com with ESMTPS id qc10si252679lbb.1.2015.09.24.07.09.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2015 07:09:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::235 as permitted sender) client-ip=2a00:1450:4010:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c03::235 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-la0-x235.google.com with SMTP id h2so63869053lah.0
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Sep 2015 07:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=IruwRtY6F2gMOwAoWonGoL6LVHGNYg6b3U7CCcbZdCo=;
        b=DXROpV4MJEyuml9WX7UJa0IYeCHOJdfFCIXquYN0hJF+XPNLzqz14jFN5eQy6ohB6i
         XLyb2aB7Sf50IOfxlz1ewMND5zrIcTIiH/7itsqBAUx36jUS3hVIXtbe7XnrAwYPZGPM
         UaDZ7mx5ILZ+iH2oZRPkRGSXR3+mEXuusRTfEgPL0TJSDxiTH7OIt3EZz3OZ5woZwFMA
         UCwowJA8ULqSkRXFMXr3yc8Vvu2QXfscrKD/0+LFOD5pcXDGU/YwlF1lW+agpzUS1TZ8
         itrnh6ASIQ91po2bQnCv3psbkhOlEQeNwcQTVqP3lt9xLxJpAbubB8AQPMDB9SxhiL3c
         8K1Q==
MIME-Version: 1.0
X-Received: by 10.153.8.138 with SMTP id dk10mr13652362lad.54.1443103744507;
 Thu, 24 Sep 2015 07:09:04 -0700 (PDT)
Received: by 10.25.153.140 with HTTP; Thu, 24 Sep 2015 07:09:04 -0700 (PDT)
In-Reply-To: <979eb3fd-be55-4cad-8c74-8bb99fa095c9@googlegroups.com>
References: <979eb3fd-be55-4cad-8c74-8bb99fa095c9@googlegroups.com>
Date: Thu, 24 Sep 2015 17:09:04 +0300
Message-ID: <CAEnQRZC99j+NDZe=dgfPhg3y+vfEwVq0eP2TCrEXokf6dXd0ng@mail.gmail.com>
Subject: Re: [Outreachy kernel] Problem with building the kernel
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Supriya Srivatsa <sup0508@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 24, 2015 at 5:01 PM, Supriya Srivatsa <sup0508@gmail.com> wrote:
> Hello.
> I am trying to build the kernel code. I am following instructions from the
> tutorial page.
> However, I have run into a problem.
> When I run the 'make' command, I land at the following errors and
> compilation is terminated.
>
>
>   CHK     include/config/kernel.release
>   CHK     include/generated/uapi/linux/version.h
>   CHK     include/generated/utsrelease.h
>   CHK     include/generated/bounds.h
>   CHK     include/generated/timeconst.h
>   CHK     include/generated/asm-offsets.h
>   CALL    scripts/checksyscalls.sh
>   HOSTCC  scripts/sign-file
> scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such file or
> directory
>  #include <openssl/bio.h>
>                          ^
> compilation terminated.
> make[1]: *** [scripts/sign-file] Error 1
> make: *** [scripts] Error 2
>
>
> I am not able to proceed and will be really grateful for guidance.
> Thank you. :)


You are missing the package that brings openssl/bio.h file. On a debian
based distribution, running:

$ apt get install libssl-dev

should fix the problem.

thanks,
Daniel.

