X-GM-THRID: 6336227865604915200
X-Received: by 10.129.136.198 with SMTP id y189mr2457273ywf.132.1475269191272;
        Fri, 30 Sep 2016 13:59:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.50.244 with SMTP id u107ls6256354otb.37.gmail; Fri, 30 Sep
 2016 13:59:50 -0700 (PDT)
X-Received: by 10.157.63.2 with SMTP id m2mr2308747otc.70.1475269190754;
        Fri, 30 Sep 2016 13:59:50 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x229.google.com (mail-qk0-x229.google.com. [2607:f8b0:400d:c09::229])
        by gmr-mx.google.com with ESMTPS id w124si1399591ywc.4.2016.09.30.13.59.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 13:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) client-ip=2607:f8b0:400d:c09::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x229.google.com with SMTP id z190so118455981qkc.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 13:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=p0QFNsO8hLx9M/yhC1L4r24enuGfuEm2biu0AW1/ZrA=;
        b=m+SaqzGAFFzs3BuDB5XJoOK4Rdp0VTX/rFodDIu0d46CIgyWr6vIMkfjuO+XgoN7tE
         fNIf6TxDPKKFpNgiGLT5kwJ1Q2QqtwLpthY66uLuK+VGHirTBms2RGo0bjWIbvdeUOaQ
         B6GLSb3AWQqyPG2R2AIEV1n+SoZy4urnkx654iJMFYZL2qHF6u1AB0P6qgy2Dx8XO3Oy
         iB5pGgTDQN4lnM+TH+S2qUz8t5XYVbDFJi+zgcczHRCrD622k7P+y7iD5CwbiWIx9aZN
         gua3lWVdVUcjvBWZDj37GsaKOjwJH9+2oYj5qOr7uSi1wJeP6bzvv69kcGPB3hHk8vAt
         nIcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=p0QFNsO8hLx9M/yhC1L4r24enuGfuEm2biu0AW1/ZrA=;
        b=jCpUbv5soukHP6QD95P2oJJfzbJe6uXmXh/mDMradvBYEJ7WzNE5kSvsk5xosk1StW
         kcgbAURoZcoH8+JuhHgjDmpzdT4n/4FDik8/yz6XlnLgha1sVQedxFgEF7EI4BTzF0qg
         kCDk7eJLg3yMyWRDghvijPku9sbv6ta4Q16abo9PFLCxbFbbUkuqx6GLYsIvlDDXhiIz
         +XEb+d1LfvH/2T7QqnyPHpDA2Y8sJxhGKUenqCrYFxbZu71YYNiX+UccexPzQPAQV/8Z
         VzYFKz3k1+hVz8+SqU0QCXyPCEu6PFQ4DiTBkSfNSQQfUWgSEl8uCvBBal17H5zOsNU2
         JC3g==
X-Gm-Message-State: AA6/9RmzFKZCoHhMTpyv38lOE/wEsuAPiMiOOLU4dFLcAfD3mNa/PExfTLwgLJy+8utX9YR+BzHPJFzbcy99dg==
X-Received: by 10.55.120.195 with SMTP id t186mr9148191qkc.118.1475269190541;
 Fri, 30 Sep 2016 13:59:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Fri, 30 Sep 2016 13:59:20 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609302238110.3399@hadrien>
References: <alpine.DEB.2.10.1609302238110.3399@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 1 Oct 2016 02:29:20 +0530
Message-ID: <CAOCi2DGkfPirL+4HMFNuttJih411a4QVxsbhwiKk7hVr3VEpyw@mail.gmail.com>
Subject: Re: [Outreachy kernel] outreachy
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=94eb2c05f9200cf609053dbfe0f9

--94eb2c05f9200cf609053dbfe0f9
Content-Type: text/plain; charset=UTF-8

Hi Julia,

My first choice is radix tree __alloc_fd mentored by Rik van Riel and
Matthew Wilcox.
My second nftables mentored by Pablo Neira Ayuso.

Thanks!
Gargi

On Sat, Oct 1, 2016 at 2:10 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> Hello,
>
> We are around the halfway mark of the application period.
>
> So that I can get an overview of the current interests of the applicants,
> could you send me a list of your current first and second project choices?
> It's OK to change your mind later, but I would like to know what everyone
> is thinking about now.
>
> Please do this even if you don't yet have many accepted patches.
>
> thanks,
> julia
>

--94eb2c05f9200cf609053dbfe0f9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julia,<div><br></div><div>My first choice is radix tree=
 __alloc_fd mentored by Rik van Riel and Matthew Wilcox.</div><div>My secon=
d nftables mentored by Pablo Neira Ayuso.</div><div><br></div><div>Thanks!<=
/div><div>Gargi</div></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Sat, Oct 1, 2016 at 2:10 AM, Julia Lawall <span dir=3D"ltr">&l=
t;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@li=
p6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<br>
<br>
We are around the halfway mark of the application period.<br>
<br>
So that I can get an overview of the current interests of the applicants,<b=
r>
could you send me a list of your current first and second project choices?<=
br>
It&#39;s OK to change your mind later, but I would like to know what everyo=
ne<br>
is thinking about now.<br>
<br>
Please do this even if you don&#39;t yet have many accepted patches.<br>
<br>
thanks,<br>
julia<br>
</blockquote></div><br></div>

--94eb2c05f9200cf609053dbfe0f9--

