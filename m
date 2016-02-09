X-GM-THRID: 6249299693524746240
Date: Tue, 9 Feb 2016 08:34:23 -0800 (PST)
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: janani.rvchndrn@gmail.com
Message-Id: <5c9c1fd4-25a0-4b6c-becb-e09ac2099861@googlegroups.com>
In-Reply-To: <20160209162326.GC28133@kroah.com>
References: <20160209210029.GA8305@janani-Inspiron-3521>
 <20160209162326.GC28133@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rdma: Use kcalloc
 instead of kzalloc
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_449_88927440.1455035664050"
X-Google-Token: EI-q6LUFqU6G6HLalL40
X-Google-IP: 72.231.208.13

------=_Part_449_88927440.1455035664050
Content-Type: multipart/alternative; 
	boundary="----=_Part_450_1123104877.1455035664050"

------=_Part_450_1123104877.1455035664050
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, 9 February 2016 11:23:28 UTC-5, gregkh wrote:
>
> On Tue, Feb 09, 2016 at 04:00:29PM -0500, Janani Ravichandran wrote: 
> > Use kcalloc rather than kzalloc when multiplied with size to prevent 
> > integer overflows. This change also makes code nicer to read. 
>
> But that's not what this patch does: 
>
> > 
> > Signed-off-by: Janani Ravichandran <janani....@gmail.com <javascript:>> 
> > --- 
> > Changes since v2: 
> >  * Moved GFP_KERNEL to the previous line as it fits there. 
> > 
> >  drivers/staging/rdma/hfi1/efivar.c | 3 +-- 
> >  1 file changed, 1 insertion(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/rdma/hfi1/efivar.c 
> b/drivers/staging/rdma/hfi1/efivar.c 
> > index b8711f3..e569f9f 100644 
> > --- a/drivers/staging/rdma/hfi1/efivar.c 
> > +++ b/drivers/staging/rdma/hfi1/efivar.c 
> > @@ -83,8 +83,7 @@ static int read_efi_var(const char *name, unsigned 
> long *size, 
> >          if (!efi_enabled(EFI_RUNTIME_SERVICES)) 
> >                  return -EOPNOTSUPP; 
> >   
> > -        uni_name = kcalloc(strlen(name) + 1, sizeof(efi_char16_t), 
> > -                           GFP_KERNEL); 
> > +        uni_name = kcalloc(strlen(name) + 1, sizeof(efi_char16_t), 
> GFP_KERNEL); 
>
> You aren't calling kzalloc :( 
>
> Did you make this patch on top of something else accidentally? 
>
Yes, Greg. That's what I seem to have done. Will send the correct one. I'm 
sorry. 

>
> thanks, 
>
> greg k-h 
>

------=_Part_450_1123104877.1455035664050
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, 9 February 2016 11:23:28 UTC-5, gregkh=
  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0=
.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, Feb 09, 2016 a=
t 04:00:29PM -0500, Janani Ravichandran wrote:
<br>&gt; Use kcalloc rather than kzalloc when multiplied with size to preve=
nt
<br>&gt; integer overflows. This change also makes code nicer to read.
<br>
<br>But that&#39;s not what this patch does:
<br>
<br>&gt;=20
<br>&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"javascript:" tar=
get=3D"_blank" gdf-obfuscated-mailto=3D"i8UIuAjjAAAJ" rel=3D"nofollow" onmo=
usedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.=
href=3D&#39;javascript:&#39;;return true;">janani....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes since v2:
<br>&gt; =C2=A0* Moved GFP_KERNEL to the previous line as it fits there.
<br>&gt;=20
<br>&gt; =C2=A0drivers/staging/rdma/hfi1/<wbr>efivar.c | 3 +--
<br>&gt; =C2=A01 file changed, 1 insertion(+), 2 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/rdma/hfi1/<wbr>efivar.c b/drivers/sta=
ging/rdma/hfi1/<wbr>efivar.c
<br>&gt; index b8711f3..e569f9f 100644
<br>&gt; --- a/drivers/staging/rdma/hfi1/<wbr>efivar.c
<br>&gt; +++ b/drivers/staging/rdma/hfi1/<wbr>efivar.c
<br>&gt; @@ -83,8 +83,7 @@ static int read_efi_var(const char *name, unsign=
ed long *size,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!efi_ena=
bled(EFI_RUNTIME_<wbr>SERVICES))
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -EOPNOTSUPP;
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0uni_name =3D kcal=
loc(strlen(name) + 1, sizeof(efi_char16_t),
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 GFP_KERNEL);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0uni_name =3D kcal=
loc(strlen(name) + 1, sizeof(efi_char16_t), GFP_KERNEL);
<br>
<br>You aren&#39;t calling kzalloc :(
<br>
<br>Did you make this patch on top of something else accidentally?
<br></blockquote><div>Yes, Greg. That&#39;s what I seem to have done. Will =
send the correct one. I&#39;m sorry. <br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;pad=
ding-left: 1ex;">
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_450_1123104877.1455035664050--

------=_Part_449_88927440.1455035664050--

