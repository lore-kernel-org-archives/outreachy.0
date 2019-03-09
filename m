X-GM-THRID: 6666274038276423680
Date: Sat, 9 Mar 2019 10:14:05 -0800 (PST)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <2ccb525d-0508-4abb-a25e-6afc4e6a4df8@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903091437490.2452@hadrien>
References: <20190309031718.GA18429@branx011-Vostro-430> <alpine.DEB.2.21.1903090734060.2558@hadrien> <9474be9e-9cd2-46a6-8b24-539b28e4a86c@googlegroups.com>
 <alpine.DEB.2.21.1903091437490.2452@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Fix assignment
 operator alignment
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1651_1528592068.1552155245520"
X-Google-Token: EO2EkOQFeuY4eiynJDo0
X-Google-IP: 2607:fea8:29a0:ff5:b095:76bf:1358:4cd8

------=_Part_1651_1528592068.1552155245520
Content-Type: multipart/alternative; 
	boundary="----=_Part_1652_1952027073.1552155245521"

------=_Part_1652_1952027073.1552155245521
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, March 9, 2019 at 8:38:38 AM UTC-5, Julia Lawall wrote:


On Sat, 9 Mar 2019, Branden Bonaby wrote: 

>   
>       Fixes confusing assignment operator alignment as highlighted by 
checkpath 
> 
>       > The commit message should be in the imperative.  Fix rather than 
Fixes. 
> 
>       > Fix is actually, not a very good word, because it doesn't 
describe what 
>       > you actually did. 
> 
>       > checkpath -> checkpatch 
> 
>       > I believe that checkpatch would also be warning about an ( at the 
end of 
>       > the line, and the change has preserved that problem.  Maybe a 
better 
>       > solution would be to leave the function call where it is and move 
the 
>       > argument up to the same line.  If it seems more readable that 
way, going 
>       > slightly over 80 characters could be OK.  One would have to see 
how it 
>       > looks. 
> 
>       > julia 
> 
>   
> thanks for the feedback. 
> the only thing is when I move the function call and its arguments to the 
same like like below it makes the line 103 characters long 
> msg1.channellist.data.data[i] = 
ieee80211_frequency_to_channel(request->channels[i]->center_freq); 

My suggestion was to leave the function name on the second line where it 
was.  You have to make some compromises. 

> I could do something like move each member in the argument under each 
other leaving the "->" at the end and then making a new line under it 

No, never do this. 

julia 

> but other than those two its probably better I leave that line alone 
since I don't want to break it. 
> what do you think? 
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
"outreachy-kernel" group. 
> To unsubscribe from this group and stop receiving emails from it, send an 
email to outreachy-kern...@googlegroups.com <javascript:>. 
> To post to this group, send email to outreach...@googlegroups.com 
<javascript:>. 
> To view this discussion on the web visit 
https://groups.google.com/d/msgid/outreachy-kernel/9474be9e-9cd2-46a6-8b24-539b28e4a86c%40googlegroups.com. 

> For more options, visit https://groups.google.com/d/optout. 
> 
>

I edited my patch into a second version but the message ID in my original 
message looks like its actually my machine
no clue why that's happening as I went through all the steps in the 
Kernelnewbies wiki and also steps here 
https://www.linux.com/news/fetching-email-mutt . So what I did was, I 
resent it using git send-email using the message ID 
of the forum post in the --in-reply-to section. Looks like the Patch v2 
sent to greg but doesn't appear here, so I don't think Greg
will actually look at it and you wouldn't see it here. Should I resend it 
using git send-email and make it a new post but under v2
since I know git send-email is working and actually giving me the correct 
Message-ID?

PS. I can send and receive emails through mutt which goes through my Gmail 
but all the emails from it has a message ID that ends in 
"@<my_machine_name>"

------=_Part_1652_1952027073.1552155245521
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Saturday, March 9, 2019 at 8:38:38 AM UTC-5, Ju=
lia Lawall wrote:<br>
<br>
<br>On Sat, 9 Mar 2019, Branden Bonaby wrote:
<br>
<br>&gt; =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Fixes confusing assignment operator alignment=
 as highlighted by checkpath
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; The commit message should be in the impe=
rative. =C2=A0Fix rather than Fixes.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Fix is actually, not a very good word, b=
ecause it doesn&#39;t describe what
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; you actually did.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; checkpath -&gt; checkpatch
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; I believe that checkpatch would also be =
warning about an ( at the end of
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; the line, and the change has preserved t=
hat problem. =C2=A0Maybe a better
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; solution would be to leave the function =
call where it is and move the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; argument up to the same line. =C2=A0If i=
t seems more readable that way, going
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; slightly over 80 characters could be OK.=
 =C2=A0One would have to see how it
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; looks.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; julia
<br>&gt;
<br>&gt; =C2=A0
<br>&gt; thanks for the feedback.
<br>&gt; the only thing is when I move the function call and its arguments =
to the same like like below it makes the line 103 characters long
<br>&gt; msg1.channellist.data.data[i] =3D ieee80211_frequency_to_<wbr>chan=
nel(request-&gt;channels[i]-&gt;<wbr>center_freq);
<br>
<br>My suggestion was to leave the function name on the second line where i=
t
<br>was. =C2=A0You have to make some compromises.
<br>
<br>&gt; I could do something like move each member in the argument under e=
ach other leaving the &quot;-&gt;&quot; at the end and then making a new li=
ne under it
<br>
<br>No, never do this.
<br>
<br>julia
<br>
<br>&gt; but other than those two its probably better I leave that line alo=
ne since I don&#39;t want to break it.
<br>&gt; what do you think?
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"nLzAxTsmCQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"nLzAxTsmCQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/9474be9e-9cd2-46a6-8b24-539b28e4a86c%4=
0googlegroups.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/9474be9e-9cd2=
-46a6-8b24-539b28e4a86c%40googlegroups.com&#39;;return true;" onclick=3D"th=
is.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/9474be9e-=
9cd2-46a6-8b24-539b28e4a86c%40googlegroups.com&#39;;return true;">https://g=
roups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>9474be9e-9cd2-46a6-8b24=
-<wbr>539b28e4a86c%40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br><div>&gt;</div><div><br></div><div>I edited my patch into a second vers=
ion but the message ID in my original message looks like its actually my ma=
chine</div><div>no clue why that&#39;s happening as I went through all the =
steps in the Kernelnewbies wiki and also steps here <br></div><div>https://=
www.linux.com/news/fetching-email-mutt . So what I did was, I resent it usi=
ng git send-email using the message ID <br></div><div>of the forum post in =
the --in-reply-to section. Looks like the Patch v2 sent to greg but doesn&#=
39;t appear here, so I don&#39;t think Greg</div><div>will actually look at=
 it and you wouldn&#39;t see it here. Should I resend it using git send-ema=
il and make it a new post but under v2</div><div>since I know git send-emai=
l is working and actually giving me the correct Message-ID?</div><div><br><=
/div><div>PS. I can send and receive emails through mutt which goes through=
 my Gmail but all the emails from it has a message ID that ends in &quot;@&=
lt;my_machine_name&gt;&quot;<br></div></div>
------=_Part_1652_1952027073.1552155245521--

------=_Part_1651_1528592068.1552155245520--

