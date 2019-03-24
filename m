X-GM-THRID: 6671538849653456896
Date: Sun, 24 Mar 2019 11:56:15 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <ac9b4fef-0466-4c7c-a2cb-bdb702bf1f59@googlegroups.com>
In-Reply-To: <20190324090101.GA32228@kroah.com>
References: <20190323105745.31401-1-vatsalanarang@gmail.com>
 <20190324090101.GA32228@kroah.com>
Subject: Re: [PATCH] staging: rtl8723bs: include: Replace 'int16_t' with
 's16_t'
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1292_1164304853.1553453775472"
X-Google-Token: EM-l3-QFELIMRb0BZWw0
X-Google-IP: 103.87.57.5

------=_Part_1292_1164304853.1553453775472
Content-Type: multipart/alternative; 
	boundary="----=_Part_1293_141704645.1553453775472"

------=_Part_1293_141704645.1553453775472
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 

> What warning?  What is "s16_t"?  Ick, that's not a "real" kernel type at 
> all. 
>
>  

> > -        int16_t power_limit; 
> > +        s16_t power_limit; 
>
> You might have just changed the type of this variable, are you _sure_ 
> about this? 
>
> greg k-h 
>
 I replaced int16_t with s16_t as it was there in checkpatch warning
sorry if its not a "real" kernel type
thanks,
Vatsala

------=_Part_1293_141704645.1553453775472
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">What warning? =C2=A0What is &quot;s16_t&quot;? =C2=A0Ick, that&#39;s =
not a &quot;real&quot; kernel type at
<br>all.
<br>
<br></blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int16_t power_l=
imit;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0s16_t power_limit=
;
<br>
<br>You might have just changed the type of this variable, are you _sure_
<br>about this?
<br>
<br>greg k-h
<br></blockquote><div>=C2=A0I replaced int16_t with s16_t as it was there i=
n checkpatch warning</div><div> sorry if its not a &quot;real&quot; kernel =
type</div><div>thanks,</div><div>Vatsala<br></div></div>
------=_Part_1293_141704645.1553453775472--

------=_Part_1292_1164304853.1553453775472--

