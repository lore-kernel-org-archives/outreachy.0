X-GM-THRID: 6250919415582294016
X-Received: by 10.129.4.201 with SMTP id 192mr11221632ywe.15.1455462541529;
        Sun, 14 Feb 2016 07:09:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.36 with SMTP id c33ls2277412qge.30.gmail; Sun, 14 Feb
 2016 07:09:00 -0800 (PST)
X-Received: by 10.129.125.215 with SMTP id y206mr11246993ywc.54.1455462540847;
        Sun, 14 Feb 2016 07:09:00 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x22f.google.com (mail-ob0-x22f.google.com. [2607:f8b0:4003:c01::22f])
        by gmr-mx.google.com with ESMTPS id ug8si662180igb.3.2016.02.14.07.09.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:09:00 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22f as permitted sender) client-ip=2607:f8b0:4003:c01::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22f as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22f.google.com with SMTP id wb13so182541083obb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=OaDkXSIQ+2mRSC9gzOoiISfss4FOFMqkaPrrL4WhHsk=;
        b=sEXJTEIkX3rF8kBxh9KeZu5lc1i3dTNbLa4Jxr8haMKrCipkqBCz+3MMaGBhfb2gbA
         /CD52DDapQAhJS7aTJ5PaiNals/cgePhPj18SqvHD6P6LSFuhJL/8ODCaSuQWiqIE5Az
         oFr5IqIGi3NVLMyCInEFo77jsUuwp8NS2l+z+xlnb7SPQoBu3gcIhAWwZd3VO0r3gvEG
         Vmjw0xCJuuDcm1RGyde6Q9F0kUwAj8y3/acz9ZVR32SsHS5pBSQyoZVuXlKfNPoS/TiQ
         paLD7gALvzvdhEeS1VEq+v5I6EoR6L2vzXP+i3ExxZcyVVVdHMhI8ghoaEkiptES2ACZ
         4/bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=OaDkXSIQ+2mRSC9gzOoiISfss4FOFMqkaPrrL4WhHsk=;
        b=mlWJwq8D1IYmVMi043hgHIZeZokQrvBEFRmx6H78IiqahNZJYFjIP8Nwvj4WJJCOfs
         110kXRvXYHQj0q08z4NJ+wbJOt4UOLJdbmCblbVXDxLVL9SvOvVHK/gXhpxpDNO2Cc0L
         gMN23QYyUDfTgF9qLNYDEqueP2eGuzPh71+HRKlknBiJYSZyAk5PEenS8IqRt0ilxOgJ
         ZoO88odJdtZWr7pV4MIXZGHiowXsGOXisZRA/Xi74qXfieAeSohrZRXpUv4sQDOy//mK
         u29CJfjf5LLfeaXBY02vopq0jVoSZ5v1ibzdEwgb5nFytEH97ugPPkrAR9fFN/B9mhO3
         iVkQ==
X-Gm-Message-State: AG10YORme/EZmZttNyp+wtzMryImgXDNbxQy5I6v78ZPhwXsI1Y0vbmGj604GjOMN2ZQGtuB0zL4Bx/YCzToJw==
MIME-Version: 1.0
X-Received: by 10.202.93.8 with SMTP id r8mr8553374oib.111.1455462540680; Sun,
 14 Feb 2016 07:09:00 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Sun, 14 Feb 2016 07:09:00 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602140827100.2039@localhost6.localdomain6>
References: <20160214041910.GA25485@janani-Inspiron-3521>
	<alpine.DEB.2.02.1602140827100.2039@localhost6.localdomain6>
Date: Sun, 14 Feb 2016 10:09:00 -0500
Message-ID: <CANnt6XnNYcWCBabrvQgmQ81LnLdW5Ph9jMj4ds90-2Sf=Ag43A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Include KERN_
 facility level for printk()
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113d469cb8a6fa052bbc47cf

--001a113d469cb8a6fa052bbc47cf
Content-Type: text/plain; charset=UTF-8

>       else
> > -             printk("Debug-level enabled\n");
> > +             printk(KERN_INFO "Debug-level enabled\n");
>
> You shouldn't add new uses of printk.  I would think checpatch would have
> complained about this.

Hi Julia, I made this change as there was a checkpatch warning about KERN_
facility level
not being there in the printk() statements.


> I don't know what kind of driver this is, but
> check whether pr_info, dev_info, or netdev_info would be appropriate.

This is a wireless device by Atmel. So I guess, netdev_info fits better.
Do I make that change instead? Let me know :)

Janani.

>   If
> neither of the last to can be used, pr_info is certainly possible.
>
> julia
>
> >
> >       return count;
> >  }
> > --
> > 2.5.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160214041910.GA25485%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a113d469cb8a6fa052bbc47cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te"><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><span class=3D"">
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(&quot;Debug-le=
vel enabled\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_INFO &quo=
t;Debug-level enabled\n&quot;);<br>
<br>
</span>You shouldn&#39;t add new uses of printk.=C2=A0 I would think checpa=
tch would have<br>
complained about this.=C2=A0</blockquote><div>Hi Julia, I made this change =
as there was a checkpatch warning about KERN_ facility level <br></div><div=
>not being there in the printk() statements. <br></div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">I don&#39;t know what kind of driver this is, b=
ut<br>
check whether pr_info, dev_info, or netdev_info would be appropriate.</bloc=
kquote><div>This is a wireless device by Atmel. So I guess, netdev_info fit=
s better.<br>Do I make that change instead? Let me know :)<br><br></div><di=
v>Janani. <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">=C2=A0 If<br>
neither of the last to can be used, pr_info is certainly possible.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return count;<br>
&gt;=C2=A0 }<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; 2.5.0<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160214041910.GA25485%40janani-Inspiron-3=
521" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/20160214041910.GA25485%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a113d469cb8a6fa052bbc47cf--

