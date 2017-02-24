X-GM-THRID: 6390646039699783680
Date: Fri, 24 Feb 2017 04:10:30 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <e34c38a0-18ca-4d80-ba2a-113d74689185@googlegroups.com>
Subject: Questions regarding BUG macro.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_520_1572892448.1487938230663"
X-Google-Token: ELbFwMUFURd_nWYXES80
X-Google-IP: 117.192.133.132

------=_Part_520_1572892448.1487938230663
Content-Type: multipart/alternative; 
	boundary="----=_Part_521_274827153.1487938230663"

------=_Part_521_274827153.1487938230663
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


What is the functionality of unreachable() ?
Isn't the do while loop unnecessary in the given definition ?

#define BUG()                                
    do {                                
        _BUG_OR_WARN(0);                    
        unreachable();                        
    } while (0)

Found the above definition at staging/arch/avr32/include/asm/bug.h 
Also what is the difference between unreachable() and unlikely()?



------=_Part_521_274827153.1487938230663
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>What is the functionality of unreachable() ?<br>Isn&#3=
9;t the do while loop unnecessary in the given definition ?<br><br>#define =
BUG()=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 do {=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 _BUG_OR_WARN(0);=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 unreachable();=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 <br>=C2=
=A0=C2=A0=C2=A0 } while (0)<br><br>Found the above definition at staging/ar=
ch/avr32/include/asm/bug.h <br>Also what is the difference between unreacha=
ble() and unlikely()?<br><br><br></div>
------=_Part_521_274827153.1487938230663--

------=_Part_520_1572892448.1487938230663--

