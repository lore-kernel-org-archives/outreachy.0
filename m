X-GM-THRID: 6391984177458184192
Date: Tue, 28 Feb 2017 05:53:35 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <465dc1ff-b520-4ad1-862f-0fa268803f06@googlegroups.com>
In-Reply-To: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com>
Subject: Re: Problem with coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8084_289380110.1488290015215"
X-Google-Token: EN-B1sUFOIyjkBB36gQ0
X-Google-IP: 117.211.102.14

------=_Part_8084_289380110.1488290015215
Content-Type: multipart/alternative; 
	boundary="----=_Part_8085_347661107.1488290015215"

------=_Part_8085_347661107.1488290015215
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 Hello,

  I tried spatch command again with few other files and it ran 
successfully. (with the same ret.cocci file I sent)

  spatch --sp-file ret.cocci --no-includes 
~/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c > ret.out
  init_defs_builtins: /usr/lib64/coccinelle/standard.h
  HANDLING: 
/home/euri/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
  diff = 

   output of ret.out

   --- 
/home/varsha/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c
+++ /tmp/cocci-output-3058-919028-ddk750_chip.c
@@ -397,13 +397,11 @@ unsigned int sm750_format_pll_reg(struct
      * register. On returning a 32 bit number, the value can be
      * applied to any PLL in the calling function.
      */
-    reg = PLL_CTRL_POWER |
+    return PLL_CTRL_POWER |
 #ifndef VALIDATION_CHIP
         ((POD << PLL_CTRL_POD_SHIFT) & PLL_CTRL_POD_MASK) |
 #endif
         ((OD << PLL_CTRL_OD_SHIFT) & PLL_CTRL_OD_MASK) |
         ((N << PLL_CTRL_N_SHIFT) & PLL_CTRL_N_MASK) |
         ((M << PLL_CTRL_M_SHIFT) & PLL_CTRL_M_MASK);
-
-    return reg;
 }

   
   But nothing with dim2_sysfs.c file and even ret.out file is empty. But 
no errors this time.

  spatch --sp-file ret.cocci --no-includes 
~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > ret.out
  init_defs_builtins: /usr/lib64/coccinelle/standard.h
  HANDLING: 
/home/euri/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c
   
  Does coccinelle need driver to be compiled as a module? As hdm_dim2 
driver is not but sm750fb driver is compiled as a module. Does coccinelle 
require executable file to work?

  Thanks,
  Varsha

------=_Part_8085_347661107.1488290015215
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0Hello,<br><br>=C2=A0 I tried spatch command again wi=
th few other files and it ran successfully. (with the same ret.cocci file I=
 sent)<br><br>=C2=A0 spatch --sp-file ret.cocci --no-includes ~/git/kernels=
/staging/drivers/staging/sm750fb/ddk750_chip.c &gt; ret.out<br>=C2=A0 init_=
defs_builtins: /usr/lib64/coccinelle/standard.h<br>=C2=A0 HANDLING: /home/e=
uri/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c<br>=C2=A0 dif=
f =3D <br><br>=C2=A0=C2=A0 output of ret.out<br><br>=C2=A0=C2=A0 --- /home/=
varsha/git/kernels/staging/drivers/staging/sm750fb/ddk750_chip.c<br>+++ /tm=
p/cocci-output-3058-919028-ddk750_chip.c<br>@@ -397,13 +397,11 @@ unsigned =
int sm750_format_pll_reg(struct<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0* registe=
r. On returning a 32 bit number, the value can be<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 =C2=A0* applied to any PLL in the calling function.<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0*/<br>-=C2=A0=C2=A0=C2=A0 reg =3D PLL_CTRL_POWER |<br>+=C2=
=A0=C2=A0=C2=A0 return PLL_CTRL_POWER |<br>=C2=A0#ifndef VALIDATION_CHIP<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ((POD &lt;&lt; PLL_CTRL_POD_SH=
IFT) &amp; PLL_CTRL_POD_MASK) |<br>=C2=A0#endif<br>=C2=A0=C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0 ((OD &lt;&lt; PLL_CTRL_OD_SHIFT) &amp; PLL_CTRL_OD_MASK=
) |<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ((N &lt;&lt; PLL_CTRL_N_=
SHIFT) &amp; PLL_CTRL_N_MASK) |<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 ((M &lt;&lt; PLL_CTRL_M_SHIFT) &amp; PLL_CTRL_M_MASK);<br>-<br>-=C2=A0=
=C2=A0=C2=A0 return reg;<br>=C2=A0}<br><br>=C2=A0=C2=A0 <br>=C2=A0=C2=A0 Bu=
t nothing with dim2_sysfs.c file and even ret.out file is empty. But no err=
ors this time.<br><br>=C2=A0 spatch --sp-file ret.cocci --no-includes ~/git=
/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c=C2=A0 &gt; ret.=
out<br>=C2=A0 init_defs_builtins: /usr/lib64/coccinelle/standard.h<br>=C2=
=A0 HANDLING: /home/euri/git/kernels/staging/drivers/staging/most/hdm-dim2/=
dim2_sysfs.c<br>=C2=A0=C2=A0 <br>=C2=A0 Does coccinelle need  driver to be =
compiled as a module? As hdm_dim2 driver is not but sm750fb driver is compi=
led as a module. Does coccinelle require executable file to work?<br><br>=
=C2=A0 Thanks,<br>=C2=A0 Varsha<br></div>
------=_Part_8085_347661107.1488290015215--

------=_Part_8084_289380110.1488290015215--

