X-GM-THRID: 6339053517033963520
Date: Thu, 13 Oct 2016 09:01:27 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Message-Id: <01860507-9188-40c8-be61-5b3a2b2baff0@googlegroups.com>
In-Reply-To: <CAK-LDbKjk7cshDw+o2=DhRnpkK8rBeT=xBrLc7-uiRAXgG28-g@mail.gmail.com>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien>
 <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com>
 <alpine.DEB.2.10.1610091553500.5891@hadrien> <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com>
 <alpine.DEB.2.10.1610112221080.3192@hadrien> <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com>
 <alpine.DEB.2.10.1610120710390.3282@hadrien> <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
 <alpine.DEB.2.10.1610131418560.3086@hadrien> <a2bc99d4-a161-429c-a7d6-4e9ba3a8b33b@googlegroups.com>
 <CAK-LDbKjk7cshDw+o2=DhRnpkK8rBeT=xBrLc7-uiRAXgG28-g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_191_555883487.1476374487696"
X-Google-Token: ENff_r8FQEgztEhhQo80
X-Google-IP: 117.209.239.75

------=_Part_191_555883487.1476374487696
Content-Type: multipart/alternative; 
	boundary="----=_Part_192_1273263427.1476374487696"

------=_Part_192_1273263427.1476374487696
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit




>What Julia is trying to say, is you are supposed to remove the whole 
definition, 
>not just a single line. Which means that you need to remove these 2 lines 
>[which is the Macro definition] : 

>#define bbvclearfoe(dwIoBase) \ 
>BBbWriteEmbedded(dwIoBase, 0xB1, 0) 


I understood her point.


>This can be easily seen by git grep. But Git grep shows just the first 
>line of the 
>definition. 


>If this is the 2nd time you are sending a patch for the same issue 
>then the patch should come out as a v2. 


No, it is not second time but I just posted the same patch.

>Also, I think there are some other macro(s) in the same file which are not 
used. 
>They should go away as well. 


I will remove them.


>On a side note, you are supposed to send the replies of mails in a 
>plain text as well. 

       

------=_Part_192_1273263427.1476374487696
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br> <br>&gt;What Julia is trying to say, is you are s=
upposed to remove the whole definition, <br>&gt;not just a single line. Whi=
ch means that you need to remove these 2 lines <br>&gt;[which is the Macro =
definition] : <br> <br>&gt;#define bbvclearfoe(dwIoBase)                   =
             \ <br>&gt;BBbWriteEmbedded(dwIoBase, 0xB1, 0) <br> <br><br>I u=
nderstood her point.<br><br><br>&gt;This can be easily seen by git grep. Bu=
t Git grep shows just the first <br>&gt;line of the <br>&gt;definition. <br=
>         <br><br>&gt;If this is the 2nd time you are sending a patch for t=
he same issue <br>&gt;then the patch should come out as a v2. <br> <br><br>=
        No, it is not second time but I just posted the same patch.<br> <br=
>&gt;Also, I think there are some other macro(s) in the same file which are=
 not used. <br>&gt;They should go away as well. <br> <br><br>     I will re=
move them.<br> <br><br>&gt;On a side note, you are supposed to send the rep=
lies of mails in a <br>&gt;plain text as well. <br> <br><div>=C2=A0 =C2=A0 =
=C2=A0=C2=A0 <br></div></div>
------=_Part_192_1273263427.1476374487696--

------=_Part_191_555883487.1476374487696--

