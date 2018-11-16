X-GM-THRID: 6622006698553901056
X-Received: by 2002:a37:b147:: with SMTP id a68mr3622596qkf.0.1542382198158;
        Fri, 16 Nov 2018 07:29:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b043:: with SMTP id l3ls8766920qvc.6.gmail; Fri, 16 Nov
 2018 07:29:57 -0800 (PST)
X-Received: by 2002:a0c:93ec:: with SMTP id g41mr3701500qvg.30.1542382197583;
        Fri, 16 Nov 2018 07:29:57 -0800 (PST)
Received: by 2002:a37:6793:0:0:0:0:0 with SMTP id b141msqkc;
        Fri, 16 Nov 2018 05:16:25 -0800 (PST)
X-Google-Smtp-Source: AFSGD/WI1LHazN4UTJ9T3T0IrqvD+ld41NG6j2sg5R0k2AvTdBy+L7niBTOIqMMbuHynQ5+LZj7B1Uw6zQ==
X-Received: by 2002:ac8:21ab:: with SMTP id 40mr47871qty.7.1542374184842;
        Fri, 16 Nov 2018 05:16:24 -0800 (PST)
X-Google-Thread-Subscription: Yes
X-Google-Web-Client: true
Date: Fri, 16 Nov 2018 05:16:24 -0800 (PST)
From: ioannis@kano.me
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <65babe95-ab4b-4001-8d70-348482770c00@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1811100026460.2679@hadrien>
References: <alpine.DEB.2.21.1811100026460.2679@hadrien>
Subject: Re: HELP WANTED: Fix -Wmissing-prototypes warnings (fwd)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1118_557828101.1542374184661"
X-Google-Token: EKiGu98FFN0o17z83ps0
X-Google-IP: 88.151.153.114

------=_Part_1118_557828101.1542374184661
Content-Type: multipart/alternative; 
	boundary="----=_Part_1119_832714140.1542374184662"

------=_Part_1119_832714140.1542374184662
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Friday, 9 November 2018 23:28:01 UTC, Julia Lawall wrote:
>
> For those who want to keep contributing... 
>
> julia 
>
> ---------- Forwarded message ---------- 
> Date: Fri, 9 Nov 2018 18:44:10 +0100 
> From: Borislav Petkov <b...@alien8.de <javascript:>> 
> To: kernel-...@vger.kernel.org <javascript:>, 
> driverd...@linuxdriverproject.org <javascript:> 
> Cc: wang...@zte.com.cn <javascript:>, Greg KH <gre...@linuxfoundation.org 
> <javascript:>> 
> Subject: HELP WANTED: Fix -Wmissing-prototypes warnings 
>
> Hi all, 
>
> gcc has a warning option 
>
>   -Wmissing-prototypes 
>
> which fires when a global function is missing a prototype declaration. 
> This warning is important as it catches cases when that global 
> function's prototype has been changed but its callers haven't been 
> updated. And they should be. 
>
> Currently, if enabled, this warning triggers ~1400 times for an 
> allmodconfig build and we would like to have 0 warnings and then add 
> that option to the main Makefile. 
>
> So helping out here would be lovely! 
>
> And it is very easy to do: you simply build the kernel with W=1: 
>
>         make -j<num_cpus+1> W=1 2>w.log 
>
> choose one -Wmissing-prototypes warning in the w.log build log and fix 
> it by including the header which has the function prototype. Or you 
> declare the function static. If that function prototype is missing, it 
> needs to be added, of course. 
>
> For every function, one should ask oneself, is it better to make the 
> function static and save ourselves the prototype and include file 
> dependency - that would be the preferred solution - or if not possible, 
> should one make the prototype visible by including the proper header so 
> that gcc sees the prototype. 
>
> This should be a good exercise for newbies who'd like to get involved 
> into kernel development. 
>

Awesome. I'll look into this. 

Thanks
Ioannis 

>
> Feel free to ask if there are any questions. 
>
> Thanks! 
>
> -- 
> Regards/Gruss, 
>     Boris. 
>
> Good mailing practices for 400: avoid top-posting and trim the reply. 
>

------=_Part_1119_832714140.1542374184662
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Friday, 9 November 2018 23:28:01 UTC, Julia Lawall  wro=
te:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;=
border-left: 1px #ccc solid;padding-left: 1ex;">For those who want to keep =
contributing...
<br>
<br>julia
<br>
<br>---------- Forwarded message ----------
<br>Date: Fri, 9 Nov 2018 18:44:10 +0100
<br>From: Borislav Petkov &lt;<a href=3D"javascript:" target=3D"_blank" gdf=
-obfuscated-mailto=3D"pJ-TXWLpBQAJ" rel=3D"nofollow" onmousedown=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javasc=
ript:&#39;;return true;">b...@alien8.de</a>&gt;
<br>To: <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"=
pJ-TXWLpBQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&=
#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true=
;">kernel-...@vger.kernel.<wbr>org</a>, <a href=3D"javascript:" target=3D"_=
blank" gdf-obfuscated-mailto=3D"pJ-TXWLpBQAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">driverd...@<wbr>linuxdriverproject.org<=
/a>
<br>Cc: <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"=
pJ-TXWLpBQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&=
#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true=
;">wang...@zte.com.cn</a>, Greg KH &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"pJ-TXWLpBQAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">gre...@linuxfoundation.org</a>&gt;
<br>Subject: HELP WANTED: Fix -Wmissing-prototypes warnings
<br>
<br>Hi all,
<br>
<br>gcc has a warning option
<br>
<br>=C2=A0 -Wmissing-prototypes
<br>
<br>which fires when a global function is missing a prototype declaration.
<br>This warning is important as it catches cases when that global
<br>function&#39;s prototype has been changed but its callers haven&#39;t b=
een
<br>updated. And they should be.
<br>
<br>Currently, if enabled, this warning triggers ~1400 times for an
<br>allmodconfig build and we would like to have 0 warnings and then add
<br>that option to the main Makefile.
<br>
<br>So helping out here would be lovely!
<br>
<br>And it is very easy to do: you simply build the kernel with W=3D1:
<br>
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0make -j&lt;num_cpus+1&g=
t; W=3D1 2&gt;w.log
<br>
<br>choose one -Wmissing-prototypes warning in the w.log build log and fix
<br>it by including the header which has the function prototype. Or you
<br>declare the function static. If that function prototype is missing, it
<br>needs to be added, of course.
<br>
<br>For every function, one should ask oneself, is it better to make the
<br>function static and save ourselves the prototype and include file
<br>dependency - that would be the preferred solution - or if not possible,
<br>should one make the prototype visible by including the proper header so
<br>that gcc sees the prototype.
<br>
<br>This should be a good exercise for newbies who&#39;d like to get involv=
ed
<br>into kernel development.
<br></blockquote><div><br></div><div>Awesome. I&#39;ll look into this.=C2=
=A0</div><div><br>Thanks</div><div>Ioannis=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc so=
lid;padding-left: 1ex;">
<br>Feel free to ask if there are any questions.
<br>
<br>Thanks!
<br>
<br>--=20
<br>Regards/Gruss,
<br>=C2=A0 =C2=A0 Boris.
<br>
<br>Good mailing practices for 400: avoid top-posting and trim the reply.
<br></blockquote></div>
------=_Part_1119_832714140.1542374184662--

------=_Part_1118_557828101.1542374184661--

