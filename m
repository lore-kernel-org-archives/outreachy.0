X-GM-THRID: 6666274038276423680
Date: Sat, 9 Mar 2019 04:10:13 -0800 (PST)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <9474be9e-9cd2-46a6-8b24-539b28e4a86c@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903090734060.2558@hadrien>
References: <20190309031718.GA18429@branx011-Vostro-430>
 <alpine.DEB.2.21.1903090734060.2558@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Fix assignment
 operator alignment
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1649_1830880499.1552133413197"
X-Google-Token: EKXajuQFbl3rxpfpmX40
X-Google-IP: 2607:fea8:29a0:ff5:ac12:25e5:5e18:5976

------=_Part_1649_1830880499.1552133413197
Content-Type: multipart/alternative; 
	boundary="----=_Part_1650_783186002.1552133413197"

------=_Part_1650_783186002.1552133413197
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 

> Fixes confusing assignment operator alignment as highlighted by checkpath 
>
> > The commit message should be in the imperative.  Fix rather than Fixes. 
>
> > Fix is actually, not a very good word, because it doesn't describe what 
> > you actually did. 
>
> > checkpath -> checkpatch 
>
> > I believe that checkpatch would also be warning about an ( at the end of 
> > the line, and the change has preserved that problem.  Maybe a better 
> > solution would be to leave the function call where it is and move the 
> > argument up to the same line.  If it seems more readable that way, going 
> > slightly over 80 characters could be OK.  One would have to see how it 
> > looks. 
>
> > julia 
>
>  
thanks for the feedback. 
the only thing is when I move the function call and its arguments to the 
same like like below it makes the line 103 characters long 
msg1.channellist.data.data[i] = 
ieee80211_frequency_to_channel(request->channels[i]->center_freq);

I could do something like move each member in the argument under each other 
leaving the "->" at the end and then making a new line under it
but other than those two its probably better I leave that line alone since 
I don't want to break it.
what do you think?

------=_Part_1650_783186002.1552133413197
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">Fixes confusing assignment operator alignment as highlighted by check=
path
<br>
<br>&gt; The commit message should be in the imperative. =C2=A0Fix rather t=
han Fixes.
<br>
<br>&gt; Fix is actually, not a very good word, because it doesn&#39;t desc=
ribe what
<br>&gt; you actually did.
<br>
<br>&gt; checkpath -&gt; checkpatch
<br>
<br>&gt; I believe that checkpatch would also be warning about an ( at the =
end of
<br>&gt; the line, and the change has preserved that problem. =C2=A0Maybe a=
 better
<br>&gt; solution would be to leave the function call where it is and move =
the
<br>&gt; argument up to the same line. =C2=A0If it seems more readable that=
 way, going
<br>&gt; slightly over 80 characters could be OK. =C2=A0One would have to s=
ee how it
<br>&gt; looks.
<br>
<br>&gt; julia
<br>
<br></blockquote><div>=C2=A0</div><div>thanks for the feedback. <br></div><=
div>the only thing is when I move the function call and its arguments to th=
e same like like below it makes the line 103 characters long <br></div><div=
></div><div>msg1.channellist.data.data[i] =3D ieee80211_frequency_to_channe=
l(request-&gt;channels[i]-&gt;center_freq);</div><div><br></div><div>I coul=
d do something like move each member in the argument under each other leavi=
ng the &quot;-&gt;&quot; at the end and then making a new line under it<br>=
</div><div>but other than those two its probably better I leave that line a=
lone since I don&#39;t want to break it.</div><div>what do you think?<br></=
div></div>
------=_Part_1650_783186002.1552133413197--

------=_Part_1649_1830880499.1552133413197--

