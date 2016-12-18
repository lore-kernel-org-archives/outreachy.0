X-GM-THRID: 6252726867929858048
X-Received: by 10.46.9.12 with SMTP id 12mr1411575ljj.10.1482104369051;
        Sun, 18 Dec 2016 15:39:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.163 with SMTP id h35ls892773lji.46.gmail; Sun, 18 Dec
 2016 15:39:28 -0800 (PST)
X-Received: by 10.46.32.156 with SMTP id g28mr1311821lji.7.1482104368241;
        Sun, 18 Dec 2016 15:39:28 -0800 (PST)
Return-Path: <kamal.froj@gmail.com>
Received: from mail-wj0-x244.google.com (mail-wj0-x244.google.com. [2a00:1450:400c:c01::244])
        by gmr-mx.google.com with ESMTPS id s81si758784wmf.3.2016.12.18.15.39.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Dec 2016 15:39:28 -0800 (PST)
Received-SPF: pass (google.com: domain of kamal.froj@gmail.com designates 2a00:1450:400c:c01::244 as permitted sender) client-ip=2a00:1450:400c:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of kamal.froj@gmail.com designates 2a00:1450:400c:c01::244 as permitted sender) smtp.mailfrom=kamal.froj@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wj0-x244.google.com with SMTP id xy5so21502247wjc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Dec 2016 15:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=U8RdrZ5NERrMPHGOEyqkBWuiD30NC0KDzg/pvOwCB60=;
        b=uinwkbUU/cwnXuQEcWFf+nVN0fvqtLpuIn/a3s0EZCmdbRlSxSuaW8EP3kvmMiXEbK
         yXR0uHkQ/5CKzW8M8Fjn03PL/rR5AKVuKVrKnNYDATiZ6X0ttIlt6bso+JzY+N9B91O4
         VFe9cUI3mmpStLLYGZYG7PDH3yY+ugGtZzP+YLv9OWP1gbSS/tHGEQn5TKWNhHR3Bakm
         JSh2hvLpqpsxdyXhcHRK58OUSi5pCNCIRuIo+xhkatpotb7hxnw89yKskk+DE7NWt/Cr
         ek+kCG/D5GZgs4EEEe9aM59t/2c1iIWQVn8SJOB+TSMGncqUKXDMkACtdk5aLddk/ocq
         xvrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=U8RdrZ5NERrMPHGOEyqkBWuiD30NC0KDzg/pvOwCB60=;
        b=UFSMinAUCgcNpzr3Dwpcplk5kR/cYACHmotefaEH4AXidSdr7uivTmhwN1fs/WDQV+
         ecN9zEnw1xZx+iqJo/H9iByRCBgEWAXmD7s948QAqIgrLw9e3ckT2nXT/H85212jb7nc
         8TdRAM+kGMQh4cVfQOBiYdLn8oHo4K1SDpwJlJWS/PoQvHExbJrvUJotS0Q09/7FkA6Q
         JGHkPEgnU3VxZeXJngVE2jPJ7JFLIEwX4mINp+YpOMQOqX1owS7RZ2h+qYf5yCAcH4On
         VgVt2odMGNKJFQj3nFvbNm/o1FcVuFZ0RIINXVCfMQvedt9WYCXpChqiggamuxiuBw89
         o7nA==
X-Gm-Message-State: AIkVDXIEHhGrPHzLVHmIBFsXPgqok+t8nmuJVANxk+/rQ6Ukc/KjlOZMWlHPkKKD+iDkB1Ne9UMdATsCitafmg==
X-Received: by 10.194.22.41 with SMTP id a9mr12944916wjf.30.1482097582224;
 Sun, 18 Dec 2016 13:46:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.34.170 with HTTP; Sun, 18 Dec 2016 13:46:20 -0800 (PST)
In-Reply-To: <CADm1dMNv0gTgx509t9OjP4gyGVRKjKNk9XCYaF3oO8bxnzNAFw@mail.gmail.com>
References: <CADm1dMMeNa6DsCtB7LfWUOjGeMF8wtPiH=L5oe68POeiDCemtg@mail.gmail.com>
 <CADm1dMNv0gTgx509t9OjP4gyGVRKjKNk9XCYaF3oO8bxnzNAFw@mail.gmail.com>
From: kamal a <kamal.froj@gmail.com>
Date: Mon, 19 Dec 2016 00:46:20 +0300
Message-ID: <CALNN6H4CnC0UFjyd_NTiX5jrtMTKPz_B4368E2qX1n0FmtjMkA@mail.gmail.com>
Subject: =?UTF-8?B?RndkOiBVcyBjb25ncmVzcyBoZWFyaW5nIG9mIG1hYW4gYWxzYWFuIE1vbmV5IGxhdW5kcg==?=
	=?UTF-8?B?eSDZgti22YrYqSDYp9mE2YPZiNmG2LrYrNix2LMg2YTYutiz2YrZhCDYp9mE2KPZhdmI2KfZhCDZhNmE?=
	=?UTF-8?B?2YXZhNmK2KfYr9mK2LEg2YXYudmGINin2YTYtdin2YbYuQ==?=
To: bloggers_kg@googlegroups.com
Content-Type: multipart/mixed; boundary=047d7b5d8695e99e470543f5bb73
Bcc: outreachy-kernel@googlegroups.com

--047d7b5d8695e99e470543f5bb73
Content-Type: multipart/alternative; boundary=047d7b5d8695e99e420543f5bb71

--047d7b5d8695e99e420543f5bb71
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

WW91VHViZSB2aWRlb3Mgb2YNCg0KDQoNCiBVLlMuIENvbmdyZXNzIG1vbmV5IGxhdW5kZXJpbmcg
aGVhcmluZw0KDQoNCm9mDQoNClNhdWRpIEJpbGxpb25haXJlICAiIE1hYW4gIEFsIHNhbmVhIg0K
DQogd2l0aCAqYmFuayBvZiBBbWVyaWNhKg0KDQoNCmFuZCAgVGhlICBvd25lciBvZiBTYWFkIEhv
c3BpdGFsIGFuZCAgU2Nob29scw0KDQogaW4gdGhlIEVhc3Rlcm4gUHJvdmluY2UgaW4gKlNhdWRp
IEFyYWJpYSoNCg0KDQoNCmFuZCB0aGUgQ2hhaXJtYW4gb2YgdGhlIEJvYXJkIG9mIERpcmVjdG9y
cyBvZiBBd2FsIEJhbmsgIGluICpCYWhyYWluKg0KDQoNCldpdGggQXJhYmljIFN1YnRpdGxlcw0K
DQoNCg0KDQoNCirZhdmI2YLYuSDYp9mE2YrZiNiq2YrZiNioINin2YTYsNmKINi52LHYtiDYrNmE
2LPYqSDYp9iz2KrZhdin2Lkg2KfZhNmD2YjZhtis2LHYsyDYp9mE2KPZhdix2YrZg9mKICoNCg0K
KiDZhNmF2KrYp9io2LnYqSDZhti02KfYt9in2Kog2LrYs9mEINin2YTYo9mF2YjYp9mEINmI2YbY
tNin2LfYp9iqKg0KDQoNCg0KKtin2YTYs9i52YjYr9mKINmF2LnZhiDYudio2K/Yp9mE2YjYp9it
2K8g2KfZhNi12KfZhti5Kg0KDQoNCg0KKtmF2KfZhNmDINmF2LPYqti02YHZiSAg2YjYtNix2YPY
qSDYs9i52K8gINmI2YXYr9in2LHYsyDYs9i52K8g2KjYp9mE2YXZhti32YLYqSDYp9mE2LTYsdmC
2YrYqSDYqNin2YTYs9i52YjYr9mK2KkgICDZiNix2KbZitizINmF2KzZhNizDQrYp9iv2KfYsdip
INio2YbZgyDYp9mI2KfZhCDYp9mE2KjYrdix2YrZhtmKKg0KDQoNCg0KKtmF2KrYsdis2YUg2KjY
p9mE2YTYutipINin2YTYudix2KjZitipKg0KDQoNCg0KaHR0cDovL3d3dy55b3V0dWJlLmNvbS93
YXRjaD92PW1JQk5uUXZoVThzDQo=
--047d7b5d8695e99e420543f5bb71
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=3D"ltr"><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr"><font color=3D"#000000" face=3D"Times=
 New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:14pt">=C2=A0</span></p><font color=3D"#00=
0000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:14pt">YouTube <span>videos of</span></spa=
n></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;font-size:20pt"><span>=C2=A0</span></span></s=
pan></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;font-size:20pt"><span>=C2=A0</span><span>U.S. Congress</span>
<span>money</span> <span>laundering</span></span><span lang=3D"EN" style=3D=
"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;f=
ont-size:20pt"> </span><span><span lang=3D"EN" style=3D"color:red;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">hearing</span><=
/span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;font-size:20pt"></span></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;font-size:10pt"><br>
</span><span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;font-size:20pt">of</span></span><span lang=3D"E=
N" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
font-size:20pt"> </span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"><br>


</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:10pt"><br>
</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:20pt">Saudi <span>Billionaire</sp=
an><span>=C2=A0 </span>&quot; </span><span><span lang=3D"EN" style=3D"color=
:red;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">M=
aan</span></span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:20pt"> <span><span>=C2=A0</span>A=
l sanea</span></span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">&quot;</span>=
</p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:20pt"><span>=C2=A0</span>with </span><u><=
span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;font-size:20pt">bank of America</span></u><span lang=3D"EN" s=
tyle=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;font-size:20pt"> </span><span style=3D"color:rgb(51,51,51);font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"></span></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:10pt"><br>
</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:20pt">and <span>=C2=A0</span>The<=
span>=C2=A0
</span>owner of <span>Saad</span> Hospital and<span>=C2=A0 </span><span>Sch=
ools</span></span></p><font color=3D"#000000" face=3D"Times New Roman" size=
=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:20pt"><span>=C2=A0</span><span>in</span>
<span>the</span> <span>Eastern</span> <span>Province</span>
<span>in </span></span><span><u><span lang=3D"EN" style=3D"color:red;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">Saudi Arabia=
</span></u></span><span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"></span></s=
pan></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;font-size:10pt"><span>=C2=A0</span></span></s=
pan></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;font-size:20pt">and</span></span><span lang=
=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;font-size:20pt"> the <span>Chairman of the Board</span> <spa=
n>of</span> <span>Directors</span> <span>of</span> <span>Awal
Bank<span>=C2=A0 </span>in </span></span><span><u><span lang=3D"EN" style=
=3D"color:red;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-siz=
e:20pt">Bahrain</span></u></span><span><span lang=3D"EN" style=3D"color:rgb=
(51,51,51);font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:2=
0pt"> </span></span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"><br>


</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:10pt"><br>
<br>
</span><span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-size:14pt"=
><font face=3D"Times New Roman">With Arabic Subtitles</font></span></span><=
/p><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SY" style=3D"font-size:22pt" dir=3D"RTL"><font color=3D"=
#000000" face=3D"Times New Roman">=C2=A0</font></span></b></p><font color=
=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SY" style=3D"font-size:18pt" dir=3D"RTL"><font color=3D"=
#000000" face=3D"Times New Roman">=C2=A0</font></span></b></p><font color=
=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000"><font face=3D"Times New Roman"><b><span lang=3D"AR-S=
A" style=3D"font-size:20pt" dir=3D"RTL">=D9=85=D9=88=D9=82=D8=B9 =D8=A7=D9=
=84=D9=8A=D9=88=D8=AA=D9=8A=D9=88=D8=A8 =D8=A7=D9=84=D8=B0=D9=8A =D8=B9=D8=
=B1=D8=B6 =D8=AC=D9=84=D8=B3=D8=A9 =D8=A7=D8=B3=D8=AA=D9=85=D8=A7=D8=B9 =D8=
=A7=D9=84=D9=83=D9=88=D9=86=D8=AC=D8=B1=D8=B3
=D8=A7=D9=84=D8=A3=D9=85=D8=B1=D9=8A=D9=83=D9=8A </span></b><b><span style=
=3D"font-size:20pt"></span></b></font></font></p><font color=3D"#000000" fa=
ce=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span style=3D"font-size:20pt"><font color=3D"#000000"><font face=3D"Time=
s New Roman"><span>=C2=A0</span><span lang=3D"AR-SA" dir=3D"RTL">=D9=84=D9=
=85=D8=AA=D8=A7=D8=A8=D8=B9=D8=A9 =D9=86=D8=B4=D8=A7=D8=B7=D8=A7=D8=AA =D8=
=BA=D8=B3=D9=84 =D8=A7=D9=84=D8=A3=D9=85=D9=88=D8=A7=D9=84 =D9=88=D9=86=D8=
=B4=D8=A7=D8=B7=D8=A7=D8=AA</span></font></font></span></b></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font face=3D"Times New Roman"><b><span style=3D"color:rgb(84,141,212);font-=
size:10pt"><span>=C2=A0</span></span></b><b><span style=3D"color:red;font-s=
ize:10pt"></span></b></font></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SA" style=3D"color:red;font-size:18pt" dir=3D"RTL"><font=
 face=3D"Times New Roman">=D8=A7=D9=84=D8=B3=D8=B9=D9=88=D8=AF=D9=8A =D9=85=
=D8=B9=D9=86 =D8=B9=D8=A8=D8=AF=D8=A7=D9=84=D9=88=D8=A7=D8=AD=D8=AF =D8=A7=
=D9=84=D8=B5=D8=A7=D9=86=D8=B9</font></span></b></p><font color=3D"#000000"=
 face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span dir=3D"LTR"></span><span dir=3D"LTR"></span><b><span style=3D"color:re=
d;font-size:10pt"><span dir=3D"LTR"></span><span dir=3D"LTR"></span><font f=
ace=3D"Times New Roman"><span>=C2=A0 </span></font></span></b></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SA" style=3D"font-size:18pt" dir=3D"RTL"><font face=3D"T=
imes New Roman"><font color=3D"#000000">=D9=85=D8=A7=D9=84=D9=83 =D9=85=D8=
=B3=D8=AA=D8=B4=D9=81=D9=89<span>=C2=A0
</span>=D9=88=D8=B4=D8=B1=D9=83=D8=A9 =D8=B3=D8=B9=D8=AF <span>=C2=A0</span=
>=D9=88=D9=85=D8=AF=D8=A7=D8=B1=D8=B3 =D8=B3=D8=B9=D8=AF</font><u><span sty=
le=3D"color:red"> =D8=A8=D8=A7=D9=84=D9=85=D9=86=D8=B7=D9=82=D8=A9 =D8=A7=
=D9=84=D8=B4=D8=B1=D9=82=D9=8A=D8=A9 =D8=A8=D8=A7=D9=84=D8=B3=D8=B9=D9=88=
=D8=AF=D9=8A=D8=A9</span></u><font color=3D"#000000"> <span>=C2=A0</span><s=
pan>=C2=A0</span>=D9=88=D8=B1=D8=A6=D9=8A=D8=B3
=D9=85=D8=AC=D9=84=D8=B3 =D8=A7=D8=AF=D8=A7=D8=B1=D8=A9 =D8=A8=D9=86=D9=83 =
=D8=A7=D9=88=D8=A7=D9=84 </font><u><span style=3D"color:red">=D8=A7=D9=84=
=D8=A8=D8=AD=D8=B1=D9=8A=D9=86=D9=8A</span></u></font></span></b></p><font =
color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span dir=3D"LTR"></span><span dir=3D"LTR"></span><b><span style=3D"font-siz=
e:18pt"><span dir=3D"LTR"></span><span dir=3D"LTR"></span><font color=3D"#0=
00000"><font face=3D"Times New Roman"><span>=C2=A0 </span></font></font></s=
pan></b></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000"><font face=3D"Times New Roman"><b><span lang=3D"AR-S=
A" style=3D"font-size:16pt" dir=3D"RTL">=D9=85=D8=AA=D8=B1=D8=AC=D9=85 =D8=
=A8=D8=A7=D9=84=D9=84=D8=BA=D8=A9 =D8=A7=D9=84=D8=B9=D8=B1=D8=A8=D9=8A=D8=
=A9</span></b><b><span style=3D"color:rgb(84,141,212);font-size:16pt"></spa=
n></b></font></font></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000" face=3D"Times New Roman" size=3D"3">=C2=A0</font></p=
><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
a href=3D"http://www.youtube.com/watch?v=3DmIBNnQvhU8s" target=3D"_blank"><=
font color=3D"#0000ff" face=3D"Times New Roman" size=3D"3">http://www.youtu=
be.com/watch?<wbr>v=3DmIBNnQvhU8s</font></a></p>

<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000" face=3D"Times New Roman" size=3D"3">=C2=A0</font></p=
><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000" face=3D"Times New Roman" size=3D"3">=C2=A0</font></p=
><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font></div>
</div><br></div>
</div><br></div>

--047d7b5d8695e99e420543f5bb71--
--047d7b5d8695e99e470543f5bb73
Content-Type: image/jpeg; 
	name="=?UTF-8?B?2YXYudmGINin2YTYtdin2YbYuSDZhdi5INij2K3YryDYudmE2YXYp9ihINin2YTYr9mK2YYuanBn?="
Content-Disposition: attachment; 
	filename="=?UTF-8?B?2YXYudmGINin2YTYtdin2YbYuSDZhdi5INij2K3YryDYudmE2YXYp9ihINin2YTYr9mK2YYuanBn?="
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hhot99uk0

/9j/4AAQSkZJRgABAgAAZABkAAD/7AARRHVja3kAAQAEAAAAPAAA/+4ADkFkb2JlAGTAAAAAAf/b
AIQABgQEBAUEBgUFBgkGBQYJCwgGBggLDAoKCwoKDBAMDAwMDAwQDA4PEA8ODBMTFBQTExwbGxsc
Hx8fHx8fHx8fHwEHBwcNDA0YEBAYGhURFRofHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8f
Hx8fHx8fHx8fHx8fHx8fHx8f/8AAEQgAhQDIAwERAAIRAQMRAf/EAIIAAAAHAQEBAAAAAAAAAAAA
AAIDBAUGBwgBAAkBAQAAAAAAAAAAAAAAAAAAAAAQAAIBAgQDBQQIBAMIAwEAAAECAxEEACESBTFB
BlFhIhMHcYEyFJGhQlJiIxUIscGCM3IkFtHhkqJDU7M08HNEJREBAAAAAAAAAAAAAAAAAAAAAP/a
AAwDAQACEQMRAD8AyxngPCtcAokurmVIklleRIF0Qq7FgiVJ0oCfCKmtBgC6nACqTgBKzqwYEhlI
KkcQRngHPet43Xf9zm3XeLl7zcbnSbi5kpqcqAorQAcBgGZqhiOVaDAcr34Dle/AdqcBypwHRXAC
FcAbHC7cBXAeaNhgJb6b+lvUvX25yWm1hILW3AN3fzBvKjrwUaR4nPJRgLxi/Z9swsCs2/XZv6ZT
LFEIgf8A6zViP68BVPqJ6BdZ9GWkm4kx7ptUX926tgweNfvSRNmF7SCQOeArE6sAHPAczwHKnAeq
cBypwDrtcezyWm4LfC4+d8pTtZg0GLzg41ifUQ2gx1ppzrgE8Ihj8wTRGTUhVKHSVfk3OtOzATTf
9k9N7Dp+KHbNxuN03uXRMt+qmG3AOTReS41AUNanxVB5UwAt2j9NP03p87db3C7jbBBv2pyY7mja
mYAnwn7PhypgOXUvp3uXXwvhZy7b0rNKsk+3wNmi/bSMmpVWP0YBk6vtOnY+oLr/AE28rbM8ha0S
Y6nRCahC32tPCuA5tXT99uFjuN7FLbw221wfMXDXEqxahWixxBvjkb7KjjgB9F9P7Hu188m/bn+m
bZCQZNEcks8pJ+GJUV6d7EZYC3rHqL0R2C3WKw2iS7ZRQyywR+Y9eJMl0yYAF76tem0iGJemIp14
lZWsVGrhQ6fMqMBX/V0vp1u6STbNtsuzX9KoqTwNbO1eDIWGn2p9GAg91YXdqqPKo0SV0OrKymnH
NScAQCezADSpPDAXH+3+DoB98uT1e2iEQn5YkVXXUfFkTwwDlt3pPsPV3qncW1nO0HShV7tZUosk
kSSiIIv3dTc+QwGqumekNj2Da4du2a1js7KEeCGMACp4sx4sx5sc8A+C2OmhHDgcAmvNsinhZJUD
xsCGUgEEHIgg4DJfrT+26+2d7rf+kY2u9vZ2luNpRayQKfETDT40H3aVA7RgM/MGHEYABr2YDmfZ
gOZ4D2AlfRWwWO8Xdyt5u9vtSW0JlHnqzPN+GJVyJHOpwEw230x2zc7Lbp23QpdS3Jj3G3WH+3bA
iksbE+JiK+EjARP1B2na9k6x3Ha9oe4fbrV1Fs12As2koG8VABxORpwwEe8xu3AeDtgBoxLLgFRS
aYR20Qd2nkRRGgLMzE0UBRmxzyGAuTZfQPqTc0ikv5otuhyCx3AeSUgUGUKGOJO4M1e3ATKw/bfs
VsEa43O6lfmIbe3iX3MFmOAXp6EdIiuq4vjkaA3Rjoa5f9JRgPS+hHTRja5Av/kwaSSi9DMKcSFO
qoHbywHLL0J6NtrnzXmkvwor8pexQSoSwoGUhEZqU7T3jAUN61v0wvWbWHT9rBbwbfEILtrZVVHn
1FmACgA6AQtcBBE44BZZyzeaiQk+Y5CqBlUk0GA0p6d9Iz7ZZWVxJI638Nu0LTh2UeXJJ5pUKKCm
rmcBoTpPcnubGNLj+8qgFuGun2qYCRhRgOaBgEd5ZRutaYDFP7hPRfcek+op972yFrjp/dXluR5S
M3yjVDSJKQCqpqeqt7sBS7oQcAERSHgK4A59tvUQO8TIhAIZhQUOYOAClk7qWVhQca4A+wJW7i72
UfXgL86YYKicuGArX1pYN6k7qR923/8AAmAg+AEMAOP419uAuT9vnT6XfUs+8yoHTaoC0OoAjzpf
AGzDZotTgNMQKFZmXIaFCgak7cgTVTWuAN8kMdVPaxTLPnqQ+/AeaQIpOohQKtpehpz8Mg7cBDtn
3bfL26e2mjs2hBLaYjJ5ulmrVtQ01pxAwFW+snqBvuwyzbdtF9PbWssflwyCNG1yaqSJHMfGixrn
wOfAjAZ7LFiWYksxqWOZJPEnAdFeQwE+9Gel/wBc6wikniMlntq/MygjwlwaRg/1Z+7Aass9tUot
ffgJJaSIiIYnKPEcjzHZgJPtW9RXKiGdljuh9gn4geBFcA6YDzAEEHhgGbfNut77aLuxuVD286PD
KhzBWRSpFO8GmA+dXVfTlx031Luex3Hil2+4eEORTUgNUb+pCDgGj+BzpgJTunqFf7h0bY9LPYWU
cNkwZtxSKt5LoqEVpSclUNwHHARUMwrQ0rxwArQ/5mI/jX+OAu3p+8A0iuAr71bk8zr/AHJ+1YP/
AApgIfngOjADj+Me3Aae/bxthg6Fu78rQ3tw5BJGawjQpHvDjAXBYsulwW0MpKMalCaE5814duAU
qg4lR/iC9lftRn+XZgCdxR2sZ1U6yykUVhIPFlwbPARrpbYY9qury4MjGS5fzJA5JFKUAGomnuwF
C/uU2a/sN52+Z3Dbbc+YbSKlDGwCmTOmeqvbgKv3W72G4tttXbbCS1uobcR7pLJL5iT3AJ/NjSg8
sacqVwCjpvqJ9jlvJEsbW/F7ayWjxXkfmoolFPMRar404qcBanofb7jZbBPvT+d+kreiGaOGFmkd
tKhHVwDVFZiGFOOA0BYXSzIdCMgWgOsUNeeQwC6EgkFjwyCjsGA88Mcd4sx1MSfzSCckPOnceeAl
Wzb8ryLY3FTIuUcxNdY7D34B9LDAIrxholHav8MBhD9wDJL6q74ypoKNCj89RWFPEOyowFbnAcwH
MB21/wDYj/xD+OAs3ab/AEMp4UwEV9RZvO6yv37RF/4lwEbwHGbSBlgBI1V1cKYDZvpZtcm1+m+0
2sqGGcWmuVDkQ8pLuDmudSDTvwEyszGHZlfSJlWQ0fTQ6ewDTgF4AU6iNPDxHL/nTLKnMcsAG7YJ
BrbMBgKtpcZGtAwz5fVgK9k6q3iZLmfbtvMkaswEsjrFrpUeHUymnLLAUb639V3O+bfs8V8pS8gu
bvTDq1qkKaEFGz1EuWBP4cBVC4Bx2Lap943mw2mDKa+njt0PZ5jBSfcM8BtOHYrHa+n7bZbCIRWN
qsduABkACBWv3ic69uAX2UGhGRV4GiAdmAU2CtJNJWnhNBThkMsAqeFnkJJIjCachzrXM4AD+ZHp
niOYOpKjs4HAOFn11CHEO5RG1c5CatYieHHivvwAesOtth6f2uTcdzvIre3RCylmFXy8KovFix4U
wGdepN76V3u6mk3ZrRbXcY2kNzdQMj+WuZdJFCtl8KkmhOWAoHcRYC/uBYFzYiRhbNL8ZjB8JbvI
wCXAewArVSbmIDiWAH04CX215DGRrmVBUipP3Tnw5YBi6lvYb7fLm6hbXFJoo3CulAvP2YBrpzwH
GTUMjgLb9F/SZd409Rb9Ef0WBq2du1R8zICPEeH5a/8AMe7Aab2uPXYScaGuYJI7xw7GHPlgDdlu
GMUcZY64qxsC4HwmgyfI5YB1zU1+HlqPg+llqp9/fgG/cpfMk8heKrQmigguPw5Gi/WcAzbtZhbV
4oYVpKpWRTkrCnPLngMi+qO/NvHWFyQAIduVdvgVRRaW9Q5A75C2AigwC/Yt5vNl3qy3ez0/NWEy
zw6xVSyHgw7DwwGg+jvWb/VD+VuVxFYTtLT9NjLFSgGrzFZqFm45V5YC7dnGu3WQnUzgNUcDQccA
tS2aJSwPHM+05nAEygEkMM+Yz92A9J41FKknJVUVJPYBgGje0sNuXXu94lo9KraKpmuCD2ouS/1H
AUF1R03F1F11JfLNK+xQCN6XJCsGpp8sRhnUamFcuWAbvWjc+lrzZbG3s7hButjKIflY0KjytNG5
U0qQKYCnzgOYD2AedpW1sLfcJLq0e5vHhC7dIrgJDJrBaR1oS/hBAoRgEtzvk1y8T3LK7w10FFC1
B5GmAQXV008zSkULUFPZlgCAzDngLE9JPS3cOs9yW6uw0PT9rIFurilDK1RWKP6fEeQwGs9t2nar
W1ghhRfKgjRYUoNKKqBgAnCgC5VwDzHpoEoKfCpAHYU7Pwj4VwDTtwMW8TxUJElHooU1qOxgMA8T
OtvA87KToUtpVSjPQfCtNSktw9+AopPXS1hfyLmwlbcJZmE1JY1VJGbxaix8KqWpWlMsA1dQetPV
l/DJbbFZR26hjH+oXDrIARkTGiDxdx4YCodx6PupQ9zbzma4cl5RJkzuc2IPaTgItIksUjRyAq6m
jKciCMAKNZCa6gAO04Ca+jtnHc9dW80iRS/JRSXKwzDUHZAANI7RqqMBsXaLvymjievjyT3js5Uw
EhYjRU505ccA2xrNe3xgtlLkZMRkK+3+eAJ6j3lNkU2O3OJd4cUnuqVECn7MYP2jgK+l2xJZGluH
aaZyS7MxJJPM9uAS3Ozbc4CtCpCmvAVr2jAU36v9H3tqw3q2VprNaJcUFTGOCMacuROAqozNyAwH
Y5GdtAHjYgJmAKk0zJwB0Vveve/KRIJbkyCFFjIcM5OkBSMjngHN5bAow+bbMUppOAZmVeAPvwAa
HAO3SvTl71Hv9ns1p4Zrt9JkIJEaDN5GpyVc8BtnpPpHatn2G02zbGZbWzjEaAihYj4nYdrNUnAO
JsVLUY0Jy1fVx9mWAW29q0Z1s+QYVPChLs1OK1ywCEwldzhkAGaFWGkNyDDIE4BxZ9c0UCA+Gssg
TUmQNFB1ZCrH6sBnH1i6Wtdj6llvYbdGsdwJnZApUEufHQniAan34BnjtYTBS3CmEqvlhAAMh4ae
3AFNCp0yDg1a/wCICv8ADAQ7rfY0ZRuVuPzUoLlBzQ5Bx7DkcBEXvJnCiRidIIXIcDgLH/brebZb
+qFmt+yIJ4J4rYvwM7LVFqfvUIHfgNWXMbfMpKppoJdQMuOAMl3qQR+Ug1SyeFAopmTpGfDjgHi4
vbfpfppSh131wNMTHMs/Ns/srgIBEkty7SyMzM5LO5zLMczgDHtCvKntwCWSEgnOvfgGnebYtZOG
QSR5F1IBVkJo6tyIKk4DNfqB0Xc9M7s5CltruXY2co5DiY2zyK19+AjFosj3USRxfMO7qEhoSXJO
S5Z54C8vTz01t9pdd03WJZN0c64YBUxW1fsqK+NxWleAwFKU7cB7TgPaMBof9v8A0WlhtQ6huYv8
7ugb5YtxW2Q0FOFPMbP2UwF87SNNmhzGAUSqFYO2cL5P3djYAJLxTCJjUNlG+Vfr59mADdIvgYge
FsgSDkwPEKAeFMBywkSUySV1eY1F4sNKDSoQE1JpnnwrgIZ6y7DDuXTZuWjLyWbh3NfEEJo1W9uY
AwFJ7Joex/LUoEHji5qK1r/TxwHp1Ku6DI11L2dv+0YBM0KT2roQGMkTIg4+JTl/AYCv9/2AWypf
WwrZz9n2HPFTgG3b57qxvYbu2fy54HWSMj7ymowF9Wvr3vu47WYRZxR7iimOWZQWXzDmCqt/DATT
0y6Z6pvorS83Z5RcXMnz1zPcVARNVURVPYoyGAkW+bkd53VpkYizgXyrcHgI1PxU/FxwCu2gEMca
gUd6kjspywHZlqdJFScARPbIfEMiOOAb7y10rqUVRqhhgIX1Z0xZb9sku3XS0WVawzDjHImSuPYe
PdgKz9KehZbLfLzc93j0ttkzWtqh+FpwPG4rxVVPHvwBvqD1/u4pZ7OZrbbpa13IK6fMEGhEMjAe
Adq8fZgKx0HswHhHVgK0wC7ZtnfdN4stsjNZb2eOAAcfGwU/Ua4DZlrYLaLDbW0Jjt7SERQqAaBV
AVRwPJcBIdsYCyiU86g9la078Asc6RQiqkUPYa4BJdEiILziYaT+Dt92AFcz+ZZNXVUUGlDQ6iQO
XbgENvOIJgMgjDSaUC0XsPJF7eZwCzc7SK/26W2lXwTRsmmlPCwIOhfs/wCI9mAy/OlxsXU0ts6/
lM7RzH7JYGnt5fXgD9wjVNMqGsbfCf5e7AIrNtKzAZeWxZT2BkNPrQYBr21oLkXu1zrqglAnhryW
T4qew4CJnbVsd3t0lOpFuYxpIyZfMGVe8YDTPTXRvTG2btfPHaKkksrSJJJ4gGHELX4aHAWXuO4G
z6S84sFnuUW2hI45AiRh7FrgIptEPhDEUAo5HefhX3DPAOimsik8q/XgOKdZZu3IYADKQrU/jgE8
iardxz7MAw3FqRZhvuyEDuqARgGpdsa73ayhZdVq7N565U8umpv+PSE9hOAmm7dO7Rveyy7VuVtH
NaSJpVCo/LNKK0f3CvKmAxV5kWtWIJWuaDjT24AvWakH6MBaf7d+mZd56/j3AL+TscTXL5VrK4Mc
Q+st7sBqlY5kJLGlTTMUGAOVk0BXXQeTD4cAaQaahmDz5YBPcDPzAKqBpkX8PPAEimhgakD8uWmR
Kn4WFO7AIGGqRwSB5dMzSmXw5cSPurz4nAONhPriaN8ipowbOp4jVTNm5kcMBRvrVtzWO/G5jhLp
coshAPi8xCA2fCtMyOWAjqap7cqMkcUJOfipkfowD3e2gi6Ttf8ASdtGd+uY2juJynnXZmShPlKw
fSho3ioNNfiGAgF001pvIm3KEWt2gmju4FoFWUEvoFCRStaUOAZt5+aO3vGiA3jss7cCQxzAFfur
gNQdFXlpd7XHf3ssSrcQRSszuoAkdBqWpPHUaUwCzqTcBe7hHYQD/LbeFtowOBYZyn3vl7sAohQR
RhBx+0e0njgO1Nag5BaU9p/3YAUZ8J788B7VmR3YAiQgQSezLAJHhEu2yIPizZfaDUfwwDTZH+1c
g0MUik/4Tk31HATJGFDThUge7AYW0U4YDvlivfgNVftw2ra9j9PH3hpVN3u07yXDorylI4SY44z5
atSmbEfiwFrbXu227mZ/kbiO4ELmOUITVWHJkYBl94wDwu3wvEKDQx5cj7uGARTbdPAxaOuk8QMx
9GATMx4snDIlf9mARsoSUDijeHsyOa/zGATrC0cstK1rVSMiaih08QD2seGABBIIrlWUjQwI8Jyp
XOh46R9p+JwEM9a9sWfp6K+pQ2kqlyFNfLkBQ+H7I1FeOZOAqPaLkXVkStfEqkE5EGlK092Ad9p9
RNu6Q6eNrDt8m47jLNK/mXEp8kg6dBenibTQ+GlO/AQbed93HqPcU3HcjG1zMQ03lqI41SMBUWmf
AADtwBTGMXZJrPIf7aj4nZh4m7AO84CQ9IbdFJvti86K72cq3ZiSugNGaoGJ458csBd20RMx8x/E
yjNjzZsycA66q5fScB5yRH3VwAtWmPjWgwBUT+KpwHLj4GHbgCEbTRR8IHiOAbIYwj3VvTg2XsYZ
YCQbfciTb4ZvvDP2jI/XgMT0wHgMBIekOvurej7trrYNwe0MhHnwGjwS6f8AuRNVT7ePfgJjtPX+
87x1VP1RH/8AztxvHVpxaMyoXVQjEAk5Np1aTXAXn0t613SxxWu+WouVyHzMNEkoRWrJ8J91MBY+
0dW9M7wAtlfRmVv/AM8v5cn/AAtSvurgF09jGzVZaHt/34Bp3TbWjgeWPMKK58cs+WWAarlgSrpT
80BTXgaZitPEaVPhGASyAlgTxqPxGvFe6oHBBkOeARdZ2wvuktygK62MDug41dBq/qavPgK92Azr
s95H800SvUeMN7T4hgGTqHJCnNJWFT2HANdvFceQJVBhhrpa5YZV+6vfgD4r1YAwhOkNnJL8Tse8
nAWF6ZxGU3F0B+WWWOLmSaamJPbngLmso/JtBX4jmfacAap7+/ADmyhTsJwBUjkUA7MALy9MYNc+
eAKmYlRXAE10RMa/EQBgEdz4NyB4CZBU964Aq23a4t1ksgsekOxjLkg+I15YDJgXPAd0GlRwwHGj
1LTASzoaqRsvEiQ/WBTAWJKVWNZw2hMlZuyp8Le4nADjuZWJiufyJRQpKprG+fFT9k/hOAkex+pf
U+xSiEXTXVoB/YnBkSn4TUsvuOAuCLqjzdvHz9q1pcuoLQ61dPEPsuOfcRgGmO5RECykhVyDcFpw
IqOHhwB8hRgKEFaHP4V01zpxCJWtScyMAmlngmhubIkFzHRlOVUZSK5fZFaaRmTgMwkm0vWRvC6S
6XByOpG0Nl78Ah6v0pKrf93xAd+Av39p1vbXnQm+w3UEdxD+qU8qVVkT/wBeP7LAjAWNvHo16W7y
Ga66etUkf/rWoa2cd4MJQfVgIduHpt010dJaWOyNOY5i80kdw6yaRqFKMFU5nt7MAqlYKiqMAEMK
ezAGTt4Yx2nAAI1S040wA5WGg+3AEStSNR3k4BJd6PLhDc3FDgCtyFJIJPusAfflgGu7ZEuLjXQh
lDU7x2fTgMwEcgM8B7QVJBHZlgPGPw15YB96OZ1v5QB4NFSeQINB/HATjcNwRdsaEjzJZlKJCOJy
zY9gHM4Buserbe2gSC4RrpocmnhBZAOS6vtUwBlsbHc7t5/PjjQEUgjNGI71IXTgL8227tb20trr
Y5/1CxiURzWkjlplZRQ1Zsw/c3HAHhjMX+WBTR/ctZAVIPep4e0YAZcFaRI9vJxZOK14V5g4AiNL
oBvmFEroxNvLH4ZEHEAkk5g88BQXqP0zPsu6NfyPrt7y4keJ9JBiZvEY2AqO3ScARa9I7v1sGXZJ
baSWyRGlSWUITryFBQ/dOA0T+3jo7celOldzsb+SKSae/wDPDQkkAGFFoagZgjAWTaV+YiHErE9S
MwdUmRB78BAOpb1b3qG6kBrFARBGeVI8m+licA1zNVq92XvwHUPIYA2auqEdhJ+gYAMZOsk4Dkze
A07cAVP8K5Z0/ngEd61JLZRx1CuA7uWo2xoK0FfowEb6ileJjKFZ2Va6IxVjWgoBzwGcTprgOile
/lgOZd9cBKOifI07xq/ufKp5AP3/ADRT68BI4v0/SfnvL01GrXWleWrur24B+g+V0Dyxb6acFI0n
6sAluf0zL5n5Pjlr0VHsr4sA+dE/PfrMv+nq/OeH5s/9Ix08PmU8NKcOeAsyspkT9QREvK+EQMzG
v4CVVqf/AA4BYa6k1fHXKn88AGXTU6BWX7I4Dur3YCpPUn9WKXH60Su3VX+z5bIG1eDRq0vX68BH
vSoWo6tn/Sy7j5M+ZUaBTzVoTQvnxoMBp3081fpFzmx/zDU1ih+BfbgHmL5kQN8rQzfKn5cNkuqp
01pXAVbDr0HXXXXx6uNamtf6sB1tVc+NRXAGx/EO3AGT186L2N/DAcir78AGWuke3PAAmpROFKYB
uvtfz9t92p4+zAH3/wD6sv8AgOAYd38zzx5VPN0rorwrU4D/2Q==
--047d7b5d8695e99e470543f5bb73--

