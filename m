X-GM-THRID: 6803435195586314240
Date: Mon, 16 Mar 2020 07:55:50 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <9532228d-e601-4cb3-83f1-82d0a2dd5489@googlegroups.com>
In-Reply-To: <20200316144403.5b08bfdc@elisabeth>
References: <cover.1584314603.git.mh12gx2825@gmail.com>
 <5c8520a5c3da453460608deee9a25232d52f4513.1584314604.git.mh12gx2825@gmail.com>
 <20200316144403.5b08bfdc@elisabeth>
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: fbtft: Avoid potential
 precedence issues
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_304_388524708.1584370551038"
X-Google-Token: EPamvvMFEPv6Ok69_1o0
X-Google-IP: 103.241.225.138

------=_Part_304_388524708.1584370551038
Content-Type: multipart/alternative; 
	boundary="----=_Part_305_1675601745.1584370551038"

------=_Part_305_1675601745.1584370551038
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, 16 March 2020 19:14:18 UTC+5:30, Stefano Brivio wrote:
>
> By "carrying" the tag I really meant that you would, here (not in the 
> cover letter), add: 
>
> On Mon, 16 Mar 2020 05:12:32 +0530 
> Deepak R Varma <mh12g...@gmail.com <javascript:>> wrote: 
>
> > Put parentheses around uses of macro parameters to avoid possible 
> > precedence issues. Problem detected by checkpatch. 
> > 
> > Signed-off-by: Deepak R Varma <mh12g...@gmail.com <javascript:>> 
>
>         "Reviewed-by: Stefano Brivio <sbr...@redhat.com <javascript:>>" 
>
> after your Signed-off-by. Mind, however, that you should only do this 
> in case the reviewer tells you explicitly (I've seen it being done 
> implicitly, with myself and others, it's really not nice). 
>
> In any case, 
>
> Reviewed-by: Stefano Brivio <sbr...@redhat.com <javascript:>> 
>
> (will check the rest later). 
>
> -- 
> Stefano 
>
My apologies for any confusion. I learned it now. will take care going 
forward.

Thank you,
Deepak.

------=_Part_305_1675601745.1584370551038
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, 16 March 2020 19:14:18 UTC+5:30, Stefan=
o Brivio  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">By &quot;carry=
ing&quot; the tag I really meant that you would, here (not in the
<br>cover letter), add:
<br>
<br>On Mon, 16 Mar 2020 05:12:32 +0530
<br>Deepak R Varma &lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfusc=
ated-mailto=3D"YYplLS2gAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#=
39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#=
39;;return true;">mh12g...@gmail.com</a>&gt; wrote:
<br>
<br>&gt; Put parentheses around uses of macro parameters to avoid possible
<br>&gt; precedence issues. Problem detected by checkpatch.
<br>&gt;=20
<br>&gt; Signed-off-by: Deepak R Varma &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"YYplLS2gAwAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">mh12g...@gmail.com</a>&gt;
<br>
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;Reviewed-by: Stef=
ano Brivio &lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mai=
lto=3D"YYplLS2gAwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javas=
cript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;retu=
rn true;">sbr...@redhat.com</a>&gt;&quot;
<br>
<br>after your Signed-off-by. Mind, however, that you should only do this
<br>in case the reviewer tells you explicitly (I&#39;ve seen it being done
<br>implicitly, with myself and others, it&#39;s really not nice).
<br>
<br>In any case,
<br>
<br>Reviewed-by: Stefano Brivio &lt;<a href=3D"javascript:" target=3D"_blan=
k" gdf-obfuscated-mailto=3D"YYplLS2gAwAJ" rel=3D"nofollow" onmousedown=3D"t=
his.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;=
javascript:&#39;;return true;">sbr...@redhat.com</a>&gt;
<br>
<br>(will check the rest later).
<br>
<br>--=20
<br>Stefano
<br></blockquote><div>My apologies for any confusion. I learned it now. wil=
l take care going forward.</div><div><br></div><div>Thank you,</div><div>De=
epak.<br></div></div>
------=_Part_305_1675601745.1584370551038--

------=_Part_304_388524708.1584370551038--

