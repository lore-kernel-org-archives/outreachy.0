X-GM-THRID: 6670497613364592640
Date: Sun, 24 Mar 2019 00:18:19 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <535b66f8-2483-4e21-a70f-f7311e7ca622@googlegroups.com>
In-Reply-To: <4a288836-4582-46b9-b70f-ccf117b15243@googlegroups.com>
References: <20190324065855.7685-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.21.1903240807200.2526@hadrien>
 <4a288836-4582-46b9-b70f-ccf117b15243@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core:
 rtw_recv.c: Modify return type suggested by Coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1195_1975683445.1553411899546"
X-Google-Token: ELve3OQFPTvirApdDps0
X-Google-IP: 123.201.77.18

------=_Part_1195_1975683445.1553411899546
Content-Type: multipart/alternative; 
	boundary="----=_Part_1196_186634680.1553411899547"

------=_Part_1196_186634680.1553411899547
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 24, 2019 at 12:43:33 PM UTC+5:30, sanjana9...@gmail.com 
wrote:
>
>
>
> On Sunday, March 24, 2019 at 12:37:55 PM UTC+5:30, Julia Lawall wrote:
>>
>>
>>
>> On Sun, 24 Mar 2019, Sanjana Sanikommu wrote: 
>>
>> > The last two lines in the function could 
>> > be compressed into one. Avoid usage of local variable. 
>>
>> The commit message is misleading because at least in the first case, what 
>> is changed is not the last two lines of a function. 
>>
>
>   Sure, I would change commit message.
>

      This patch is already in the tree. Please ignore this patch.
Thank you   

> Sanjana 
>
>>
>> julia 
>>
>> > 
>> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com> 
>> > --- 
>> > Changes in v2: 
>> > Test build the patch 
>> >  drivers/staging/rtl8188eu/core/rtw_recv.c | 6 ++---- 
>> >  1 file changed, 2 insertions(+), 4 deletions(-) 
>> > 
>> > diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c 
>> b/drivers/staging/rtl8188eu/core/rtw_recv.c 
>> > index 90eb1a025051..606a9f51508a 100644 
>> > --- a/drivers/staging/rtl8188eu/core/rtw_recv.c 
>> > +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c 
>> > @@ -1859,8 +1859,7 @@ static int process_recv_indicatepkts(struct 
>> adapter *padapter, 
>> >                          /*  including perform A-MPDU Rx Ordering 
>> Buffer Control */ 
>> >                          if ((!padapter->bDriverStopped) && 
>> >                              (!padapter->bSurpriseRemoved)) { 
>> > -                                retval = _FAIL; 
>> > -                                return retval; 
>> > +                                return _FAIL; 
>> >                          } 
>> >                  } 
>> >          } else { /* B/G mode */ 
>> > @@ -1879,8 +1878,7 @@ static int process_recv_indicatepkts(struct 
>> adapter *padapter, 
>> >                          RT_TRACE(_module_rtl871x_recv_c_, 
>> _drv_notice_, ("@@@@ %s- recv_func free_indicatepkt\n", __func__)); 
>> > 
>> >                          RT_TRACE(_module_rtl871x_recv_c_, 
>> _drv_notice_, ("recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", 
>> padapter->bDriverStopped, padapter->bSurpriseRemoved)); 
>> > -                        retval = _FAIL; 
>> > -                        return retval; 
>> > +                        return _FAIL; 
>> >                  } 
>> >          } 
>> > 
>> > -- 
>> > 2.17.1 
>> > 
>> > -- 
>> > You received this message because you are subscribed to the Google 
>> Groups "outreachy-kernel" group. 
>> > To unsubscribe from this group and stop receiving emails from it, send 
>> an email to outreachy-kern...@googlegroups.com. 
>> > To post to this group, send email to outreach...@googlegroups.com. 
>> > To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/outreachy-kernel/20190324065855.7685-1-sanjana99reddy99%40gmail.com. 
>>
>> > For more options, visit https://groups.google.com/d/optout. 
>> > 
>>
>
------=_Part_1196_186634680.1553411899547
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 24, 2019 at 12:43:33 PM UTC+5:30,=
 sanjana9...@gmail.com wrote:<blockquote class=3D"gmail_quote" style=3D"mar=
gin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><=
div dir=3D"ltr"><br><br>On Sunday, March 24, 2019 at 12:37:55 PM UTC+5:30, =
Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0;marg=
in-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
<br>On Sun, 24 Mar 2019, Sanjana Sanikommu wrote:
<br>
<br>&gt; The last two lines in the function could
<br>&gt; be compressed into one. Avoid usage of local variable.
<br>
<br>The commit message is misleading because at least in the first case, wh=
at
<br>is changed is not the last two lines of a function.
<br></blockquote><div><br></div><div>=C2=A0 Sure, I would change commit mes=
sage.</div></div></blockquote><div><br></div><div>=C2=A0 =C2=A0 =C2=A0 This=
 patch is already in the tree. Please ignore this patch.</div><div>Thank yo=
u=C2=A0 =C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=
=3D"ltr"><div>Sanjana=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0;margin-left:0.8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a rel=3D"nofollow">sanjana9.=
..@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes in v2:
<br>&gt; Test build the patch
<br>&gt; =C2=A0drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c | 6 ++----
<br>&gt; =C2=A01 file changed, 2 insertions(+), 4 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c b/driv=
ers/staging/rtl8188eu/<wbr>core/rtw_recv.c
<br>&gt; index 90eb1a025051..606a9f51508a 100644
<br>&gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c
<br>&gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_recv.c
<br>&gt; @@ -1859,8 +1859,7 @@ static int process_recv_indicatepkts(<wbr>st=
ruct adapter *padapter,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0/* =C2=A0including perform A-MPDU Rx Ordering Buffer Control */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if ((!padapter-&gt;bDriverStopped) &amp;&amp;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0(!padapter-&gt;bSurpriseRemoved)<wbr>) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0retval =3D _FAIL=
;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0return retval;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0return _FAIL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else { /* =
B/G mode */
<br>&gt; @@ -1879,8 +1878,7 @@ static int process_recv_indicatepkts(<wbr>st=
ruct adapter *padapter,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0RT_<wbr>TRACE(_module_rtl871x_recv_c_, _drv_notice_, (&quot;@@@@ %=
s- recv_func free_indicatepkt\n&quot;, __func__));
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0RT_<wbr>TRACE(_module_rtl871x_recv_c_, _drv_notice_, (&quot;recv_f=
unc:bDriverStopped(%d) OR bSurpriseRemoved(%d)&quot;, padapter-&gt;bDriverS=
topped, padapter-&gt;bSurpriseRemoved));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>retval =3D _FAIL;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>return retval;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>return _FAIL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups.co=
m</a>.
<br>&gt; To post to this group, send email to <a rel=3D"nofollow">outreach.=
..@googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190324065855.7685-1-sanjana99reddy99=
%40gmail.com" rel=3D"nofollow" target=3D"_blank" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190324065855.7=
685-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190324065855.7=
685-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.google=
.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190324065855.7685-1-<wbr>sanjana9=
9reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" rel=3D"nofollow" target=3D"_blank" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div></blockquote></div>
------=_Part_1196_186634680.1553411899547--

------=_Part_1195_1975683445.1553411899546--

