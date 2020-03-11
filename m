X-GM-THRID: 6803035551467307008
Date: Wed, 11 Mar 2020 12:32:26 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <d2f68b7d-972d-492e-abc5-915301ecc69b@googlegroups.com>
Subject: changes to a core file : Should all associated drivers be rebuilt
 as [M]
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1094_1656645584.1583955146148"
X-Google-Token: EMr5pPMFaXhFCPgFXbE0
X-Google-IP: 103.240.207.69

------=_Part_1094_1656645584.1583955146148
Content-Type: multipart/alternative; 
	boundary="----=_Part_1095_849991456.1583955146148"

------=_Part_1095_849991456.1583955146148
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,
If we make a change to a core file that appear to be common across more 
than one driver(s), should we be reconfiguring the kernel build to set all 
drivers as [M]?

Also, is this a correct change to the .config file:

from : # CONFIG_FB_TFT is not set
to     : CONFIG_FB_TFT=m


Thank you,
Deepak.

------=_Part_1095_849991456.1583955146148
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>If we make a change to a core file t=
hat appear to be common across more than one driver(s), should we be reconf=
iguring the kernel build to set all drivers as [M]?</div><div><br></div><di=
v>Also, is this a correct change to the .config file:</div><div><br></div><=
div>from : # CONFIG_FB_TFT is not set</div><div>to=C2=A0=C2=A0=C2=A0=C2=A0 =
: CONFIG_FB_TFT=3Dm<br></div><div><br></div><div><br></div><div>Thank you,<=
br></div><div>Deepak.<br></div></div>
------=_Part_1095_849991456.1583955146148--

------=_Part_1094_1656645584.1583955146148--

