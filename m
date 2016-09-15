X-GM-THRID: 6330587655423655936
X-Received: by 10.157.23.171 with SMTP id j40mr7067204otj.41.1473960771686;
        Thu, 15 Sep 2016 10:32:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.145 with SMTP id i139ls1293606ioi.35.gmail; Thu, 15 Sep
 2016 10:32:51 -0700 (PDT)
X-Received: by 10.107.44.11 with SMTP id s11mr7724801ios.11.1473960771096;
        Thu, 15 Sep 2016 10:32:51 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id m82si332960ywm.2.2016.09.15.10.32.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 10:32:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id 11so1829024qtc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 10:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=v3fy1aV3f8PnRvVt3REEVuXYFVAKpKoBz68Ma/qy4r0=;
        b=zdG/NRNeE1/l1tkw/yERAZOGBRYopvAogG5ilNhCWRPGVgAaKvq5G5vlnL9e/GlbYM
         acQ0JJh3KBDXm+yjY1MOKsCZcoR7RJXbiP+NTyOPuIPgDmnqNAtzH0P2Ryzw2yurfx6p
         9gnkJQN1pdUyBPLNKKF9p8S1KrqJfZmZImm0pC1fU9AOJeHrAsGkqJhtYjIUIevw95vD
         YQHb1wubaJfqo/DA8UFA3UqVNUg5jjx7rv7du8jmGW5vdEDJfNEgc4Wqk47JHDlm9A5J
         FAkbOC3DNXjYLZysz/hbEbuwi4cqAxTwbea91rNg4f4vU+L9DyZn3e3RRAsauZDg9jzU
         kClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=v3fy1aV3f8PnRvVt3REEVuXYFVAKpKoBz68Ma/qy4r0=;
        b=bPTgKQCLu4jfcJgiCTRPotsD1weQv6MhMnnnvXRtYUiYKhqs9veEacrVkfo/VqSa7Z
         13fw//8rmsxqNMuow52Vi01ROGfjfe3Joi1KXJRQFLv0Sk4ST/CcC51TP6it82jcGcF3
         01wB3uTeVHw3K9ikPuBk1qKcWPxvgJQ0k8X8HBmqbLCEXp1OOEN7/jNxCBwwrETeKHRo
         UxEDRTi3ADqi9ju1nMv13OahDNUWjbLjwwKj8TsaLb5HgnIxaArOLB7Jltg0Me/gBLPW
         8c9/HZvc19CzqWv1yQz5sD7veoIW4GCs6nBAIwaVux5VWF70A3n5S2UBm02JCc+vganv
         q7aw==
X-Gm-Message-State: AE9vXwO0KpRjs2jwg5kixPPYha0usRoUQyZp6jdrdsCjXQvcrw1g+xivMNMPBnvlHADeM/8bBWeWrkJPS8qHbQ==
X-Received: by 10.200.52.124 with SMTP id v57mr10595922qtb.137.1473960770924;
 Thu, 15 Sep 2016 10:32:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Thu, 15 Sep 2016 10:32:50 -0700 (PDT)
In-Reply-To: <CAEnQRZAusM33K_=yzQS_=hxi+vJFEz2NOdmhbtyz2CSyknGwUw@mail.gmail.com>
References: <eb4ec0a3-54df-4a86-a7d5-85c77aea38c2@googlegroups.com>
 <20160915163855.GD30633@kroah.com> <CAAbeOSubG2DO2mzsudDyr2PcArn=W22JAF+20xFevff9L2SdRQ@mail.gmail.com>
 <CAEnQRZAusM33K_=yzQS_=hxi+vJFEz2NOdmhbtyz2CSyknGwUw@mail.gmail.com>
From: Anchal Jain <anchalj109@gmail.com>
Date: Thu, 15 Sep 2016 23:02:50 +0530
Message-ID: <CAAbeOSsVJn8Ed9B+acg1BRXRnmixDouk9z1ijGy5LnU2isSz1w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Doubts Regaarding the checkpatch.pl
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113ad82029fc1d053c8f3ce9

--001a113ad82029fc1d053c8f3ce9
Content-Type: text/plain; charset=UTF-8

> Can you give a real example for the CHECK? :)

like this

 CHECK: Unnecessary parentheses around padapter->mlmeextpriv
 CHECK: Please don't use multiple blank lines
 CHECK: Unnecessary parentheses around pstapriv->sta_hash_lock
 CHECK: Unnecessary parentheses around pstapriv->sta_hash_lock
 CHECK: Unnecessary parentheses around pmlmeext->mlmext_info
 CHECK: Concatenated strings should use spaces between elements


Thanks,

On Thu, Sep 15, 2016 at 10:44 PM, Daniel Baluta <daniel.baluta@gmail.com>
wrote:

> On Thu, Sep 15, 2016 at 7:53 PM, Anchal Jain <anchalj109@gmail.com> wrote:
> >
> >>I'm sorry, but I can not parse this, can you rephrase it?
> >
> > When we run checkpatch.pl on our staging directory then it shows
> > - Errors
> > - Warnings
> > - Checks
> >
> > So I want to know if we solve the check using checkpatch.pl tool then
> it is
> > consider in our patches
> > or Only those checks is consider which is solved using  cocci script
> because
> > this script also fixes those
> > checks
>
> Can you give a real example for the CHECK? :)
>

--001a113ad82029fc1d053c8f3ce9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; Can you give a real example for the CHECK? :)<br=
></div>=C2=A0<br>like this<br><div><br>=C2=A0CHECK: Unnecessary parentheses=
 around padapter-&gt;mlmeextpriv<br>=C2=A0CHECK: Please don&#39;t use multi=
ple blank lines<br>=C2=A0CHECK: Unnecessary parentheses around pstapriv-&gt=
;sta_hash_lock<br>=C2=A0CHECK: Unnecessary parentheses around pstapriv-&gt;=
sta_hash_lock<br>=C2=A0CHECK: Unnecessary parentheses around pmlmeext-&gt;m=
lmext_info<br>=C2=A0CHECK: Concatenated strings should use spaces between e=
lements<br><br><br></div><div>Thanks,</div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Thu, Sep 15, 2016 at 10:44 PM, Daniel Ba=
luta <span dir=3D"ltr">&lt;<a href=3D"mailto:daniel.baluta@gmail.com" targe=
t=3D"_blank">daniel.baluta@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><span class=3D"">On Thu, Sep 15, 2016 at 7:53 PM, Anchal =
Jain &lt;<a href=3D"mailto:anchalj109@gmail.com">anchalj109@gmail.com</a>&g=
t; wrote:<br>
&gt;<br>
&gt;&gt;I&#39;m sorry, but I can not parse this, can you rephrase it?<br>
&gt;<br>
&gt; When we run <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=
=3D"_blank">checkpatch.pl</a> on our staging directory then it shows<br>
&gt; - Errors<br>
&gt; - Warnings<br>
&gt; - Checks<br>
&gt;<br>
&gt; So I want to know if we solve the check using <a href=3D"http://checkp=
atch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> tool then i=
t is<br>
&gt; consider in our patches<br>
&gt; or Only those checks is consider which is solved using=C2=A0 cocci scr=
ipt because<br>
&gt; this script also fixes those<br>
&gt; checks<br>
<br>
</span>Can you give a real example for the CHECK? :)<br>
</blockquote></div><br></div>

--001a113ad82029fc1d053c8f3ce9--

