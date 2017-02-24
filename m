X-GM-THRID: 6390646039699783680
Date: Fri, 24 Feb 2017 10:24:58 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com
Message-Id: <32dfda0b-6ce2-40f2-bf35-789c0c31b4cc@googlegroups.com>
In-Reply-To: <20170224144809.GA8962@kroah.com>
References: <e34c38a0-18ca-4d80-ba2a-113d74689185@googlegroups.com>
 <20170224144809.GA8962@kroah.com>
Subject: Re: [Outreachy kernel] Questions regarding BUG macro.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1281_733126765.1487960698837"
X-Google-Token: EPr0wcUFXZ73l5Q5Vsk0
X-Google-IP: 117.192.133.132

------=_Part_1281_733126765.1487960698837
Content-Type: multipart/alternative; 
	boundary="----=_Part_1282_671202149.1487960698837"

------=_Part_1282_671202149.1487960698837
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Friday, February 24, 2017 at 8:18:17 PM UTC+5:30, gregkh wrote:
>
> On Fri, Feb 24, 2017 at 04:10:30AM -0800, Varsha Rao wrote: 
> > 
> > What is the functionality of unreachable() ? 
>
> It tells the compiler that it will never execute this. 
>
> > Isn't the do while loop unnecessary in the given definition ? 
>
> Not at all, why do you think it would be? 
>

   Since there are only two macro calls and no local variables are used, 
can't it be like this:
  
   #define BUG() (_BUG_OR_WARN(0), unreachable())

  I understand that  do while is used, when there are multiple statements. 
 

> > #define BUG()                                
> >     do {                                
> >         _BUG_OR_WARN(0);                    
> >         unreachable();                        
> >     } while (0) 
> > 
> > Found the above definition at staging/arch/avr32/include/asm/bug.h 
> > Also what is the difference between unreachable() and unlikely()? 
>
> unlikely is a hint to the compiler that the statement vare rarely 
> happens.  unreachable tells the compiler that this code will never be 
> run, due to something stopping the CPU before it can happen. 
>
> Never use either of these in your code unless you really know what you 
> are doing.  Never use unlikely() unless you can measure the difference 
> of it being used and not being used, because almost always humans get it 
> wrong, CPUs are very good at guessing what should happen. 
>
>     Thank you for the explanation.
 

> hope this helps, 
>
> greg k-h 
>

------=_Part_1282_671202149.1487960698837
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Friday, February 24, 2017 at 8:18:17 PM UTC+5:3=
0, gregkh wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fri, Feb 24=
, 2017 at 04:10:30AM -0800, Varsha Rao wrote:
<br>&gt;=20
<br>&gt; What is the functionality of unreachable() ?
<br>
<br>It tells the compiler that it will never execute this.
<br>
<br>&gt; Isn&#39;t the do while loop unnecessary in the given definition ?
<br>
<br>Not at all, why do you think it would be?
<br></blockquote><div><br>=C2=A0=C2=A0 Since there are only two macro calls=
 and no local variables are used, can&#39;t it be like this:<br>=C2=A0 <br>=
=C2=A0=C2=A0 #define BUG() (_BUG_OR_WARN(0), unreachable())<br><br>=C2=A0 I=
 understand that=C2=A0 do while is used, when there are multiple statements=
. <br>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;marg=
in-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; #define=
 BUG()=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0 do {=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 _BUG_OR_WARN(0);=C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 unreachable();=C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0 } while (0)
<br>&gt;=20
<br>&gt; Found the above definition at staging/arch/avr32/include/<wbr>asm/=
bug.h
<br>&gt; Also what is the difference between unreachable() and unlikely()?
<br>
<br>unlikely is a hint to the compiler that the statement vare rarely
<br>happens. =C2=A0unreachable tells the compiler that this code will never=
 be
<br>run, due to something stopping the CPU before it can happen.
<br>
<br>Never use either of these in your code unless you really know what you
<br>are doing. =C2=A0Never use unlikely() unless you can measure the differ=
ence
<br>of it being used and not being used, because almost always humans get i=
t
<br>wrong, CPUs are very good at guessing what should happen.
<br>
<br></blockquote><div>=C2=A0=C2=A0=C2=A0 Thank you for the explanation.<br>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">hope this helps,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_1282_671202149.1487960698837--

------=_Part_1281_733126765.1487960698837--

