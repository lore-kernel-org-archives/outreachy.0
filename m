X-GM-THRID: 6402003753150447616
Date: Mon, 27 Mar 2017 06:56:53 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, mawilcox@microsoft.com
Message-Id: <476ea4f3-64e1-4c7e-bbcb-36b5091cd8ef@googlegroups.com>
In-Reply-To: <d9905b6f-434e-4943-8c78-8a35bcddfe24@googlegroups.com>
References: <cover.1490581288.git.rvarsha016@gmail.com> <58d87c7c.c240630a.d8622.c768@mx.google.com> <alpine.DEB.2.20.1703270729300.2488@hadrien> <6874a8e7-7574-487b-9423-89bad7e1145a@googlegroups.com>
 <alpine.DEB.2.20.1703271003090.3387@hadrien>
 <d9905b6f-434e-4943-8c78-8a35bcddfe24@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] kernel: pid: Change function
 return value to bool.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3970_539276091.1490623013064"
X-Google-Token: EKW05MYFqnCrx31eRKo0
X-Google-IP: 117.192.145.34

------=_Part_3970_539276091.1490623013064
Content-Type: multipart/alternative; 
	boundary="----=_Part_3971_1036844488.1490623013064"

------=_Part_3971_1036844488.1490623013064
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


The return type can be bool but with the unsigned int casting the
differences. Then the change would make sense.

+static bool pid_before(int base, int a, int b)
 {
        /*
         * This is the same as saying
@@ -125,7 +125,7 @@ static int pid_before(int base, int a, int b)
         * (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT
         * and that mapping orders 'a' and 'b' with respect to 'base'.
         */
-       return (unsigned)(a - base) < (unsigned)(b - base);
+       return (unsigned int)(a - base) < (unsigned int)(b - base);
 }


Thanks,
Varsha Rao

------=_Part_3971_1036844488.1490623013064
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>The return type can be bool but with the unsigned int =
casting the<br>differences. Then the change would make sense.<br><br>+stati=
c bool pid_before(int base, int a, int b)<br>=C2=A0{<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 /*<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 * This is the same as saying<br>@@ -125,7 +125,7 @@ static int pid_b=
efore(int base, int a, int b)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 * (a - base + MAXUINT) % MAXUINT &lt; (b - base + MAXUINT) % MAXUINT=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * and that mapping ord=
ers &#39;a&#39; and &#39;b&#39; with respect to &#39;base&#39;.<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */<br>-=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return (unsigned)(a - base) &lt; (unsigned)(b - base);<br>+=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return (unsigned int)(a - base) &lt; (uns=
igned int)(b - base);<br>=C2=A0}<br><br><br>Thanks,<br>Varsha Rao<br></div>
------=_Part_3971_1036844488.1490623013064--

------=_Part_3970_539276091.1490623013064--

