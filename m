X-GM-THRID: 6339053517033963520
Date: Tue, 11 Oct 2016 20:54:32 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Message-Id: <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1610112221080.3192@hadrien>
References: <20161008112506.GA12694@euri> <alpine.DEB.2.10.1610081940270.3259@hadrien> <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com> <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com> <alpine.DEB.2.10.1610091553500.5891@hadrien>
 <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com>
 <alpine.DEB.2.10.1610112221080.3192@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_716_1282928957.1476244472451"
X-Google-Token: EPjn9r8F3x3mmTumUck0
X-Google-IP: 117.237.178.166

------=_Part_716_1282928957.1476244472451
Content-Type: multipart/alternative; 
	boundary="----=_Part_717_903871790.1476244472451"

------=_Part_717_903871790.1476244472451
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> The above code is not a proper macro definition.  What is the actual 
> change that you made?  You can see this by doing git diff on the file. 
>   
>

    I have posted the patch by making the changes and  but git diff won't 
give information on from where it is imported . Since it is not macro 
definition , it has to be defined    
    somewhere. My question is how to locate the definition of it to remove 
the macro completely? For that I have tried using grep and gcc -dN -E but 
could not locate using them. 

    Varsha

------=_Part_717_903871790.1476244472451
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">The above=
 code is not a proper macro definition. =C2=A0What is the actual
<br>change that you made? =C2=A0You can see this by doing git diff on the f=
ile.
<br>=C2=A0
<br></blockquote><div><br>=C2=A0 =C2=A0 I have posted the patch by making t=
he changes and=C2=A0 but git diff won&#39;t give information on from where =
it is imported . Since it is not macro definition , it has to be defined=C2=
=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 somewhere. My question is how to loc=
ate the definition of it to remove the macro completely? For that I have tr=
ied using grep and gcc -dN -E but could not locate using them. <br><br>=C2=
=A0=C2=A0=C2=A0 Varsha<br></div></div>
------=_Part_717_903871790.1476244472451--

------=_Part_716_1282928957.1476244472451--

