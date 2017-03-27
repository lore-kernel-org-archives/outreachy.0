X-GM-THRID: 6401417655470784512
X-Received: by 10.223.172.19 with SMTP id v19mr357175wrc.4.1490617122834;
        Mon, 27 Mar 2017 05:18:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.193 with SMTP id 184ls1368482wmf.21.canary-gmail; Mon, 27
 Mar 2017 05:18:42 -0700 (PDT)
X-Received: by 10.28.184.84 with SMTP id i81mr511321wmf.16.1490617122080;
        Mon, 27 Mar 2017 05:18:42 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id t131si33780wmf.1.2017.03.27.05.18.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 05:18:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id r36so6977711lfi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 05:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=xQDnHBzHyUcQgsgVU7rwYzPOYGXbuStvBW8paZeK6Y0=;
        b=TBi1e/VGlmDkSJGEdZyW1VuLietiiaB/viVZd7lRiuP2bp9ZWC3BCw2vXbhPiY7Kb8
         mhsNxL1xUBVnQ6Voe6wIOLYj9B3xHzEw1aktuTD7OGDfN7i8BL1T7aUV31gkOqu3X756
         r+cGNkIzDGyVRZCil0rW9fn3W0JcQg6hKMPcmTwHKhDldzdS+hGlkMmLDwx3TbI1omBC
         A/IwoAudKZV+3XVMMl2eH206lW6CopAV8QRdCUmeWypKv4whyqphzAZIm3+PYSz5xVgP
         m+81R5BUH7mRcetGmP336NLtep5ZdKrv5ZgBJ6m2rX2BwV7BIzLetsVSlgxZY3WdDo2X
         nk+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xQDnHBzHyUcQgsgVU7rwYzPOYGXbuStvBW8paZeK6Y0=;
        b=cyRZPp3KYn1Cupleu+0lmM4qg7E+NdsEkTv8cbXbhg8X0zfTMcXP5LKpYm3lUcg4du
         nj7ANIXUBM7q1O5L3T5gDt4IafwbK8vv7fQSV74a+GvGLW+GJgzGOFKYArZ0hvqHvosD
         +b3GsQdLrBPaxpBhGXo0x/iJXo+ht3KgwdLRbsK+SDjqHzRo1idJulVe58sWoKN19rKD
         A7SFc1Qgz5gFvmKHJ3imDD35aDpdhWyJbBdpjntG+WOe1+/eQVW3nbSXpwm5EtGhsPN6
         zz888bgqysXDak1xqiDSoiQbn0UYiuY/2x5A9OysaAb4Q0TTLBeikCcik5fohY4oyNCt
         Z9FA==
X-Gm-Message-State: AFeK/H2FTCO6anzm5y/Q62KSa5t2cQ/JNGUYdPKr5XRP45LWBLneTI9Tgx9bsDs1u1tU0lcyN+J0eCPkWs6suQ==
X-Received: by 10.25.15.198 with SMTP id 67mr9359535lfp.53.1490617121796; Mon,
 27 Mar 2017 05:18:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Mon, 27 Mar 2017 05:18:41 -0700 (PDT)
In-Reply-To: <20170327120827.GA15676@salvia>
References: <20170325124946.GA9109@arushi-HP-Pavilion-Notebook> <20170327120827.GA15676@salvia>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Mon, 27 Mar 2017 17:48:41 +0530
Message-ID: <CA+XqjF_4cXL58vnxgKmawuZ4F0ZqvU1KvAtRbJv_r1ArLTpExw@mail.gmail.com>
Subject: Re: [PATCH] net: netfilter: Remove multiple assignment.
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, "David S. Miller" <davem@davemloft.net>, 
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
	netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113f89e20a8c99054bb55813

--001a113f89e20a8c99054bb55813
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 27, 2017 at 5:38 PM, Pablo Neira Ayuso <pablo@netfilter.org>
wrote:

> On Sat, Mar 25, 2017 at 06:19:47PM +0530, Arushi Singhal wrote:
> > This patch removes multiple assignments.
> > Done using coccinelle.
> > @@
> > identifier i1,i2;
> > constant c;
> > @@
> > - i1=i2=c;
> > + i1=c;
> > + i2=c;
>
> You have to explain why this is bad.
>

It is against the kernel coding style and we have to avoid multiple
assignments to make the code more readable.
This error is found using Checkpatch.pl script.

Thanks
Arushi

--001a113f89e20a8c99054bb55813
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Mar 27, 2017 at 5:38 PM, Pablo Neira Ayuso <span dir=3D"ltr">&l=
t;<a href=3D"mailto:pablo@netfilter.org" target=3D"_blank">pablo@netfilter.=
org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"=
">On Sat, Mar 25, 2017 at 06:19:47PM +0530, Arushi Singhal wrote:<br>
&gt; This patch removes multiple assignments.<br>
&gt; Done using coccinelle.<br>
&gt; @@<br>
&gt; identifier i1,i2;<br>
&gt; constant c;<br>
&gt; @@<br>
&gt; - i1=3Di2=3Dc;<br>
&gt; + i1=3Dc;<br>
&gt; + i2=3Dc;<br>
<br>
</span>You have to explain why this is bad.<br></blockquote><div><br></div>=
<div>It is against the kernel coding style and we have to avoid multiple as=
signments to make the code more readable.<br></div><div>This error is found=
 using Checkpatch.pl script.<br></div><div>=C2=A0<br></div><div>Thanks <br>=
</div><div>Arushi <br></div></div><br></div></div>

--001a113f89e20a8c99054bb55813--

