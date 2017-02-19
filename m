X-GM-THRID: 6388489014907764736
Date: Sun, 19 Feb 2017 07:18:46 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: arushisinghal19971997@gmail.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Message-Id: <df1dbfa6-0823-4899-b1b7-4358b18575be@googlegroups.com>
In-Reply-To: <20170218165714.GA24078@kroah.com>
References: <20170218164002.GA7269@arushi-HP-Pavilion-Notebook>
 <20170218165714.GA24078@kroah.com>
Subject: Re: [PATCH] Staging: ks7010: There should be no spaces at the start
 of a line
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3777_623934050.1487517526756"
X-Google-Token: ENbupsUFKcn9cLQ1f3w0
X-Google-IP: 14.139.82.6

------=_Part_3777_623934050.1487517526756
Content-Type: multipart/alternative; 
	boundary="----=_Part_3778_863733054.1487517526756"

------=_Part_3778_863733054.1487517526756
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hi Greg
I think we cannot indent the text otherwise, the print statement will be 
different as it should be
Thanks

On Saturday, February 18, 2017 at 10:27:19 PM UTC+5:30, gregkh wrote:
>
> On Sat, Feb 18, 2017 at 10:10:02PM +0530, Arushi Singhal wrote: 
> > The following patch the checkpatch.pl warning: 
> > drivers/staging/ks7010/ks_hostif.c warning: please, no spaces at the 
> > start of a line 
> > 
> > Signed-off-by: Arushi Singhal <arushising...@gmail.com> 
> > --- 
> >  drivers/staging/ks7010/ks_hostif.c | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/ks7010/ks_hostif.c 
> b/drivers/staging/ks7010/ks_hostif.c 
> > index 819e08b5fa91..3b2e28749b63 100644 
> > --- a/drivers/staging/ks7010/ks_hostif.c 
> > +++ b/drivers/staging/ks7010/ks_hostif.c 
> > @@ -191,8 +191,8 @@ int get_current_ap(struct ks_wlan_private *priv, 
> struct link_ap_info_t *ap_info) 
> >          } 
> >          DPRINTK(4, "\n    Link AP\n"); 
> >          DPRINTK(4, "    bssid=%02X:%02X:%02X:%02X:%02X:%02X\n \ 
> > -   essid=%s\n    rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n   
>  channel=%d\n \ 
> > -   rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid[0], 
> ap->bssid[1], ap->bssid[2], ap->bssid[3], ap->bssid[4], ap->bssid[5], 
> &(ap->ssid.body[0]), ap->rate_set.body[0], ap->rate_set.body[1], 
> ap->rate_set.body[2], ap->rate_set.body[3], ap->rate_set.body[4], 
> ap->rate_set.body[5], ap->rate_set.body[6], ap->rate_set.body[7], 
> ap->channel, ap->rssi, ap->sq, ap->capability); 
> > +essid=%s\n    rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n   
>  channel=%d\n \ 
> > +rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid[0], ap->bssid[1], 
> ap->bssid[2], ap->bssid[3], ap->bssid[4], ap->bssid[5], 
> &(ap->ssid.body[0]), ap->rate_set.body[0], ap->rate_set.body[1], 
> ap->rate_set.body[2], ap->rate_set.body[3], ap->rate_set.body[4], 
> ap->rate_set.body[5], ap->rate_set.body[6], ap->rate_set.body[7], 
> ap->channel, ap->rssi, ap->sq, ap->capability); 
>
> So don't just remove the spaces, fix it correctly with the proper 
> indentation please. 
>
> thanks, 
>
> greg k-h 
>

------=_Part_3778_863733054.1487517526756
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hi Greg<br>I think we cannot indent the text otherwise=
, the print statement will be different as it should be<br>Thanks<br><br>On=
 Saturday, February 18, 2017 at 10:27:19 PM UTC+5:30, gregkh wrote:<blockqu=
ote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left=
: 1px #ccc solid;padding-left: 1ex;">On Sat, Feb 18, 2017 at 10:10:02PM +05=
30, Arushi Singhal wrote:
<br>&gt; The following patch the <a href=3D"http://checkpatch.pl" rel=3D"no=
follow">checkpatch.pl</a> warning:
<br>&gt; drivers/staging/ks7010/ks_<wbr>hostif.c warning: please, no spaces=
 at the
<br>&gt; start of a line
<br>&gt;=20
<br>&gt; Signed-off-by: Arushi Singhal &lt;<a rel=3D"nofollow">arushising..=
.@gmail.<wbr>com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/ks7010/ks_<wbr>hostif.c | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/ks7010/ks_<wbr>hostif.c b/drivers/sta=
ging/ks7010/ks_<wbr>hostif.c
<br>&gt; index 819e08b5fa91..3b2e28749b63 100644
<br>&gt; --- a/drivers/staging/ks7010/ks_<wbr>hostif.c
<br>&gt; +++ b/drivers/staging/ks7010/ks_<wbr>hostif.c
<br>&gt; @@ -191,8 +191,8 @@ int get_current_ap(struct ks_wlan_private *pri=
v, struct link_ap_info_t *ap_info)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DPRINTK(4, &=
quot;\n =C2=A0 =C2=A0Link AP\n&quot;);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DPRINTK(4, &=
quot; =C2=A0 =C2=A0bssid=3D%02X:%02X:%02X:%02X:%<wbr>02X:%02X\n \
<br>&gt; - =C2=A0 essid=3D%s\n =C2=A0 =C2=A0rate_set=3D%02X,%02X,%02X,%02X,=
<wbr>%02X,%02X,%02X,%02X\n =C2=A0 =C2=A0channel=3D%d\n \
<br>&gt; - =C2=A0 rssi=3D%d\n =C2=A0 =C2=A0sq=3D%d\n =C2=A0 =C2=A0capabilit=
y=3D%04X\n&quot;, ap-&gt;bssid[0], ap-&gt;bssid[1], ap-&gt;bssid[2], ap-&gt=
;bssid[3], ap-&gt;bssid[4], ap-&gt;bssid[5], &amp;(ap-&gt;ssid.body[0]), ap=
-&gt;rate_set.body[0], ap-&gt;rate_set.body[1], ap-&gt;rate_set.body[2], ap=
-&gt;rate_set.body[3], ap-&gt;rate_set.body[4], ap-&gt;rate_set.body[5], ap=
-&gt;rate_set.body[6], ap-&gt;rate_set.body[7], ap-&gt;channel, ap-&gt;rssi=
, ap-&gt;sq, ap-&gt;capability);
<br>&gt; +essid=3D%s\n =C2=A0 =C2=A0rate_set=3D%02X,%02X,%02X,%02X,<wbr>%02=
X,%02X,%02X,%02X\n =C2=A0 =C2=A0channel=3D%d\n \
<br>&gt; +rssi=3D%d\n =C2=A0 =C2=A0sq=3D%d\n =C2=A0 =C2=A0capability=3D%04X=
\n&quot;, ap-&gt;bssid[0], ap-&gt;bssid[1], ap-&gt;bssid[2], ap-&gt;bssid[3=
], ap-&gt;bssid[4], ap-&gt;bssid[5], &amp;(ap-&gt;ssid.body[0]), ap-&gt;rat=
e_set.body[0], ap-&gt;rate_set.body[1], ap-&gt;rate_set.body[2], ap-&gt;rat=
e_set.body[3], ap-&gt;rate_set.body[4], ap-&gt;rate_set.body[5], ap-&gt;rat=
e_set.body[6], ap-&gt;rate_set.body[7], ap-&gt;channel, ap-&gt;rssi, ap-&gt=
;sq, ap-&gt;capability);
<br>
<br>So don&#39;t just remove the spaces, fix it correctly with the proper
<br>indentation please.
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_3778_863733054.1487517526756--

------=_Part_3777_623934050.1487517526756--

