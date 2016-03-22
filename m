X-GM-THRID: 6264811554202451968
X-Received: by 10.31.174.2 with SMTP id x2mr19433121vke.13.1458669334483;
        Tue, 22 Mar 2016 10:55:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls4531570qge.15.gmail; Tue, 22 Mar
 2016 10:55:33 -0700 (PDT)
X-Received: by 10.176.7.38 with SMTP id h35mr4609651uah.14.1458669333635;
        Tue, 22 Mar 2016 10:55:33 -0700 (PDT)
Return-Path: <deutschluz@gmail.com>
Received: from mail-ig0-x231.google.com (mail-ig0-x231.google.com. [2607:f8b0:4001:c05::231])
        by gmr-mx.google.com with ESMTPS id ph8si25825852igb.0.2016.03.22.10.55.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 10:55:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c05::231 as permitted sender) client-ip=2607:f8b0:4001:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of deutschluz@gmail.com designates 2607:f8b0:4001:c05::231 as permitted sender) smtp.mailfrom=deutschluz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x231.google.com with SMTP id av4so109727890igc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 10:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=oLY0wSIBfdgxByV2ua82YaWMHoF1A2RiS8NsWBvuVgQ=;
        b=hPxwtXv088a4oTpUmUSNQXXFgsHv2iUzUvCJXG6hAOyJ5peqpi8dJmvXhUXG5MDA4p
         luCOX4oNF+S+3Zi6AV4fG17zV/mxpk0VpD3+THPZcV0JI0kLSGYtrilfYJhtdA65uqWE
         9yqmCFibF8dgdIgNwSF9RKzo/4mLoCpSjn15Q1wJgaZOUW3zdfnCVk+jzi2+pseOAq5V
         6kbmL77LNlNkdE+9Z6/glu0lRLLvwZunhoh0Mv3xZxwjIbKxw6GdS7wcB+2zWvOhYucE
         5YBngggz0Zrn5cZJaKlcAQN5xrWKfTWzc19QJmpOWQkugODOY4jhR7M0+YbH6k4j6FrQ
         PEhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=oLY0wSIBfdgxByV2ua82YaWMHoF1A2RiS8NsWBvuVgQ=;
        b=KW3GzSx0GgbrnqT8j/XvlCh1jLfkataqcYAO60ZEaFajcgmPAygTrBuWv8HWkw6QeN
         xhI5r2MWm4waGC/usXBUD6ns6mzGF1uFfxb/gHH8NfwNxb1uuPrCDBmnpjRhxg8MHkpT
         pZxNGn8NFZYh02RYpHyae2JIpf7e1p5E+RaqlDHuZI/1U7KI//zsbCN3nOxa+5jnwhHE
         RU0wtdpa7S5czOYgynPptKr0DT6iGnUr44L8c2+QnNNEuR/5mNYM++2876Y4aVNfxBWs
         a48Typ79xQB8IB2Egkf8yG6hYrXTWbApzUqYFd9OJ6n/lsdVJ7BaUjZ8pXftxlfFnvYX
         94AA==
X-Gm-Message-State: AD7BkJI0l+wf0SCYLvx6e8BVD07h7AKTL+yVaJeoDpw1fxAUhAvXhr9LAJLxougs00Y2ylHR81nccXAwV6H86Q==
MIME-Version: 1.0
X-Received: by 10.50.137.35 with SMTP id qf3mr20191786igb.92.1458669333262;
 Tue, 22 Mar 2016 10:55:33 -0700 (PDT)
Received: by 10.79.92.199 with HTTP; Tue, 22 Mar 2016 10:55:33 -0700 (PDT)
In-Reply-To: <d9277fb8-c95f-43db-8ad3-8bd2cff65129@googlegroups.com>
References: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com>
	<397c302a-e876-4b6b-9e99-fb7f0f946457@googlegroups.com>
	<20160322161408.GA2151@d830.WORKGROUP>
	<d9277fb8-c95f-43db-8ad3-8bd2cff65129@googlegroups.com>
Date: Tue, 22 Mar 2016 10:55:33 -0700
Message-ID: <CAGLzxAp3S0ZZMRkvNU8WVBEWu4KjyrnXVHaD6Nii0H4euid4sw@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: add more information to Kconfig
From: Angel Orejel <deutschluz@gmail.com>
To: sveta.orlik.code@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11c3c908743799052ea6ebd6

--001a11c3c908743799052ea6ebd6
Content-Type: text/plain; charset=UTF-8

Hello Ladies,
I just fixed my submission. I hope it goes through ok. Thank you for your
precious time :)

On Tue, Mar 22, 2016 at 9:22 AM, <sveta.orlik.code@gmail.com> wrote:

> I've just seen a strange font and so decided it may be HTML.
> (I use Google Groups web interface for reading).
> Did not get into the text.
>

--001a11c3c908743799052ea6ebd6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ladies,<div>I just fixed my submission. I hope it go=
es through ok. Thank you for your precious time :)</div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Mar 22, 2016 at 9:22 A=
M,  <span dir=3D"ltr">&lt;<a href=3D"mailto:sveta.orlik.code@gmail.com" tar=
get=3D"_blank">sveta.orlik.code@gmail.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"ltr">I&#39;ve just seen a strange font a=
nd so decided it may be HTML.<br>(I use Google Groups web interface for rea=
ding).<br>Did not get into the text.<br></div></blockquote></div><br></div>

--001a11c3c908743799052ea6ebd6--

