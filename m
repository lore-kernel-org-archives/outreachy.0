X-GM-THRID: 6664617547649777664
Date: Mon, 4 Mar 2019 11:50:35 -0800 (PST)
From: idebleenasen@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <f28dc17c-9521-4f21-8ca5-a54d79adac81@googlegroups.com>
In-Reply-To: <CACw+u4ENfxYmSmGHaFMZ=rKjjNVvO3P=RezCF8dJEZOnp-xSCA@mail.gmail.com>
References: <CACw+u4ENfxYmSmGHaFMZ=rKjjNVvO3P=RezCF8dJEZOnp-xSCA@mail.gmail.com>
Subject: Re: Regarding undocumented string checkpatch.pl warning
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_660_318243026.1551729035813"
X-Google-Token: EIuD9uMFYAGNspsZiLk0
X-Google-IP: 117.211.86.109

------=_Part_660_318243026.1551729035813
Content-Type: multipart/alternative; 
	boundary="----=_Part_661_1442379396.1551729035814"

------=_Part_661_1442379396.1551729035814
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Tuesday, March 5, 2019 at 12:49:53 AM UTC+5:30, Debleena Sen wrote:
>
> I came across the following warning in drivers/staging/wilc1000/wilc_spi.c
>
> WARNING: DT compatible string "microchip,wilc1000-spi" appears 
> un-documented --check ./Documentation/devicetree/bindings/
>
> I referred to  ./Documentation/devicetree/bindings/  and checked /staging, 
> resource-names.txt, vendor-prefixes.txt but I could not find anything 
> related to microchip or wilc1000.
>
> On referring to ./Documentation/devicetree/bindings/spi  I found a text 
> file "microchip,spi-pic32.txt"  but I do not think its related to WILC1000 
> driver.
>
> What should I do to remove this warning? 
>

Wanted to add that I found another text file in drivers/staging/wilc1000 
itself named "microchip,wilc1000,spi.txt". I think this is the required 
file. Should I move/copy this file to ./Documentation/devicetree/bindings/ 
to remove the warning?

------=_Part_661_1442379396.1551729035814
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, March 5, 2019 at 12:49:53 AM UTC+5:30, Debleen=
a Sen wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">I=
 came across the following warning in drivers/staging/wilc1000/wilc_<wbr>sp=
i.c<div><br></div><div>WARNING: DT compatible string &quot;microchip,wilc10=
00-spi&quot; appears un-documented --check ./Documentation/devicetree/<wbr>=
bindings/</div><div><br></div><div>I referred to=C2=A0 ./Documentation/devi=
cetree/<wbr>bindings/=C2=A0 and checked /staging, resource-names.txt, vendo=
r-prefixes.txt but I could not find anything related to microchip or wilc10=
00.</div><div><br></div><div>On referring to ./Documentation/devicetree/<wb=
r>bindings/spi=C2=A0 I found a text file &quot;microchip,spi-pic32.txt&quot=
;=C2=A0 but I do not think its related to WILC1000 driver.</div><div><br></=
div><div>What should=C2=A0I do to remove this warning?=C2=A0</div></div></b=
lockquote><div><br></div><div>Wanted to add that I found another text file =
in drivers/staging/wilc1000 itself named &quot;microchip,wilc1000,spi.txt&q=
uot;. I think this is the required file. Should I move/copy this file to ./=
Documentation/devicetree/<wbr>bindings/ to remove the warning?</div></div>
------=_Part_661_1442379396.1551729035814--

------=_Part_660_318243026.1551729035813--

