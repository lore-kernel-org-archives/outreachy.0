X-GM-THRID: 6391984177458184192
X-Received: by 10.99.185.1 with SMTP id z1mr628410pge.40.1488284923470;
        Tue, 28 Feb 2017 04:28:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.105 with SMTP id r38ls914447otd.15.gmail; Tue, 28 Feb
 2017 04:28:43 -0800 (PST)
X-Received: by 10.157.56.155 with SMTP id p27mr674744otc.124.1488284923103;
        Tue, 28 Feb 2017 04:28:43 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-oi0-x236.google.com (mail-oi0-x236.google.com. [2607:f8b0:4003:c06::236])
        by gmr-mx.google.com with ESMTPS id z191si266186itc.0.2017.02.28.04.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 04:28:43 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c06::236 as permitted sender) client-ip=2607:f8b0:4003:c06::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c06::236 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x236.google.com with SMTP id f192so4878173oic.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 04:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=N5HLffQGbYCumBhYGauj+tyv5qbP2LnEbk8LJDAJAwI=;
        b=PdaWduEV0qJ+FCymcKgzFcoZE78h1V2uOcXvS9n8JcvqeWC0I8BMSiFvHYYhFYhwSq
         xoSIlpNks8ws8pT/vTNzDFm67pQ9q/JSpklrtUs0do+L2DxTFSWxxfTKFwJ+Arj/PJ3H
         FlpfUTFA7PFGMZS69HXzr7ZmWqUkpL8ZtNTuBtKeD4mnCNGxMCGl1XThHXr0TORHrkfn
         /jqtA3BJrtcPRCCNt84q3M4QfvgWQ+v2orA/HREQGLiZnTJ1ucPVOJBj0202JK8MjM3s
         gjIQw7+xcd0l89yZyKk1VGuRLPW9ZpHki+mnuu/boTtzjJRC8m6ierAXGt8JmEfUTvgI
         eMZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=N5HLffQGbYCumBhYGauj+tyv5qbP2LnEbk8LJDAJAwI=;
        b=ukby5HTFRNmWiQxsqEbOXIsP6n+jiDwQd2EGfafxPwoe+JbQpz0aBvC40x9G5n6933
         P6NyjEzYOk/abeIGqB8oETjZINfeBsg7KjaafOCHtY7aaxhmB57hEPqun40Hnx1X32DC
         a932XEEN6qXASGXCpczhD+w+/6FDynAeCUptP0+0ydf8ne9Gg63tQezb9xyjhUTo2CGf
         c+P3x9zrnlEVnW24pCwup+bZALRlOV//VQx7TmzYaoO5qbwzHsMLOy+/Gwcq2AtQow+V
         1Sodb6ws78x3XK3ro8IxCtQqV8ebWkU1feVz+kTUUjTGjF/+OfHLn53wBMlqQqIO3vHp
         HXag==
X-Gm-Message-State: AMke39kzApieqm5BpmP+jw2kWonBHLUFcM32gPTVrMAqsyp70IYnMQOevsmAfuJ4iECbJCfD1s2Z4Ob6lJjJYw==
X-Received: by 10.202.239.2 with SMTP id n2mr1094064oih.157.1488284922824;
 Tue, 28 Feb 2017 04:28:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.107.100 with HTTP; Tue, 28 Feb 2017 04:28:42 -0800 (PST)
In-Reply-To: <68311bc4-09a6-4baf-ab04-b0ce5916c4c9@googlegroups.com>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com>
 <c2f9d539-fe98-4541-b86c-f71555d44020@googlegroups.com> <alpine.DEB.2.20.1702280747380.2078@hadrien>
 <68311bc4-09a6-4baf-ab04-b0ce5916c4c9@googlegroups.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Tue, 28 Feb 2017 17:58:42 +0530
Message-ID: <CAK-LDbKHYUe_Hs79ie52FHtLFZG4rGb8kbds5EaQb2kMUEMqKA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 4:08 PM, Varsha Rao <rvarsha016@gmail.com> wrote:
>
>> This seems likely fine.  How did you get to this situation?  Did you
>> install it from your package manager or did you compile it on your
>> machine.  When you run spatch, does it work?
>>
>    I have installed using package manager.
>    when I run spatch, it gives following errors:
>
>    spatch --sp-file ret.cocci --no-includes
> ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
>
>   init_defs_builtins: /usr/lib64/coccinelle/standard.h
>   minus: parse error:
>   File "ret.cocci", line 10, column 0, charpos = 80
>   around = '',
>   whole content =

The file[ret.cocci] sent by you works perfectly fine for me without any parsing
error. Are you sure there is nothing else in the same file [ret.cocci]?

Parsing error is shown at the line 10 and file has 9 lines. Also, in your
first mail you seemed to have something else as an error. [Exception
failure]

>  [varsha@varsha coccinelle]$ spatch --sp-file ret.cocci --no-includes
> ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
>  init_defs_builtins: /usr/lib64/coccinelle/standard.h
>  HANDLING:
> /home/varsha/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c

If you have installed coccinelle from package manager then what is under
coccinelle directory? Have you cloned coccinelle code and have tried to
install it manually as well?

>  Thanks,
>  Varsha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/68311bc4-09a6-4baf-ab04-b0ce5916c4c9%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

