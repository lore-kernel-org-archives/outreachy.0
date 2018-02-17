X-GM-THRID: 6523503828984135680
Date: Sat, 17 Feb 2018 04:46:35 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <f8e55043-fbe6-4046-baee-c3ca4e8d3c8e@googlegroups.com>
Subject: fixing warning "else is not generally useful after a break or
 return"
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_6678_1455307276.1518871595574"
X-Google-Token: EKvIoNQFiWVEkrDs2Zc0
X-Google-IP: 87.71.142.168

------=_Part_6678_1455307276.1518871595574
Content-Type: multipart/alternative; 
	boundary="----=_Part_6679_967376382.1518871595574"

------=_Part_6679_967376382.1518871595574
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,
I see this warning "else is not generally useful after a break or return":

#532: FILE: drivers/staging/vt6655/rxtx.c:532:
+                       return buf->duration_a;
+               } else {

So the standard is to remove the "else" line when it is not necessary ? 

In the function s_uFillDataHead 
<https://elixir.bootlin.com/linux/v3.4/source/drivers/staging/vt6655/rxtx.c#L712> there 
are more "else" statements that are redundant, for example this 
<https://elixir.bootlin.com/linux/v3.4/source/drivers/staging/vt6655/rxtx.c#L786> one 
since the "if" it relates to always returns. 

So all redundant "else / else if" should be removed ?

Thanks,
Dafna

------=_Part_6679_967376382.1518871595574
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I see this warning &quot;else is not ge=
nerally useful after a break or return&quot;:</div><div><div><br></div><div=
>#532: FILE: drivers/staging/vt6655/rxtx.c:532:</div><div>+=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return=
 buf-&gt;duration_a;</div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0} else {</div></div><div><br></div><div>So the standard is to =
remove the &quot;else&quot; line when it is not necessary ?=C2=A0</div><div=
><br></div>In the function <a href=3D"https://elixir.bootlin.com/linux/v3.4=
/source/drivers/staging/vt6655/rxtx.c#L712">s_uFillDataHead</a>=C2=A0there =
are more &quot;else&quot; statements that are redundant, for example <a hre=
f=3D"https://elixir.bootlin.com/linux/v3.4/source/drivers/staging/vt6655/rx=
tx.c#L786">this</a>=C2=A0one since the &quot;if&quot; it relates to always =
returns.=C2=A0<br><div><br></div><div>So all redundant &quot;else / else if=
&quot; should be removed ?</div><div><br></div><div>Thanks,</div><div>Dafna=
</div></div>
------=_Part_6679_967376382.1518871595574--

------=_Part_6678_1455307276.1518871595574--

