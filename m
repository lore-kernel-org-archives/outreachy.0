X-GM-THRID: 5368833900544
Date: Wed, 4 Mar 2015 00:15:33 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr
Message-Id: <095f0582-2d41-4895-ac6c-56be83756ad1@googlegroups.com>
In-Reply-To: <CAAJLE+333g9Da-s4CsiVqTXw4oRSmVp-kV9MV1j5MvBdXgLtmA@mail.gmail.com>
References: <cover.1425211235.git.navyasri.tech@gmail.com>
 <556953cddf889e94753d5fd09201cc94dbe201f6.1425211236.git.navyasri.tech@gmail.com>
 <alpine.DEB.2.10.1503010630450.2545@hadrien>
 <CAAJLE+333g9Da-s4CsiVqTXw4oRSmVp-kV9MV1j5MvBdXgLtmA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 09/12] staging: media: Use kcalloc,
 instead of kzalloc.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3105_2068516724.1425456933343"
X-Google-Token: EKX-2qcF11_T30QLG_Y0
X-Google-IP: 61.16.142.166

------=_Part_3105_2068516724.1425456933343
Content-Type: multipart/alternative; 
	boundary="----=_Part_3106_2095302632.1425456933343"

------=_Part_3106_2095302632.1425456933343
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 1, 2015 at 11:40:59 PM UTC+5:30, Navya Sri Nizamkari wrote:
>
>
>
> On Sun, Mar 1, 2015 at 6:04 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>> Could you redo with a much smaller commit message?  It would be reasonable
>> to put the whole semantic patch in the cover letter.  For the individual
>> patches, you can just put something that gives the idea, but perhaps
>> something that does not avoid all false positives, like the big one tries
>> to do.
>>
>> It could also be better to send separate series for kmalloc -> k{z,c}alloc
>> and kzalloc -> kcalloc.
>>
>> Finally, whne you introduce kcalloc, you may end up with some unneeded
>> parentheses in the argument list.  For example if the original code was
>> kzalloc ((a+b) * c, ...).  You should remove the parentheses in the result
>> (you can extend the semantic patch to do this).
>>
>> julia
>>
>
> Hi,
>
> I'll only keep the relevant changes from the coccinelle script for every 
> patch and send a new one.
>
> Thanks,
> Navya.
>

Hi,

When I break this patchset into two, one for kmalloc and other for kzalloc. 
Should I version them as v2? Or can I send as new patchsets? 

>  
>
>>
>> On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:
>>
>> > The semantic patch used for this change is:
>> >
>> > @@
>> > type T, T2;
>> > expression x;
>> > identifier f,f1;
>> > expression E1,E2,E3,E4;
>> > statement S,S1,S2;
>> > @@
>> > - x = (T)kmalloc(E1,E2)
>> > + x = kzalloc(E1,E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > if ((x!=NULL)&&...) {
>> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
>> > when != \(while(...) S1\|for(...;...;...) S1\)
>> > - memset((T2)x,0,E1);
>> > ...
>> > } else S2
>> > |
>> > - memset((T2)x,0,E1);
>> > )
>> > @@
>> > type T, T2;
>> > type T1;
>> > T1 *x;
>> > T1 *y;
>> > identifier f,f1;
>> > expression E2,E3,E4;
>> > statement S,S1,S2;
>> > @@
>> > - x = (T)kmalloc(sizeof(T1),E2)
>> > + x = kzalloc(sizeof(T1),E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > if ((x!=NULL)&&...) {
>> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
>> > when != \(while(...) S1\|for(...;...;...) S1\)
>> > - memset((T2)x,0,sizeof(*y));
>> > ...
>> > } else S2
>> > |
>> > - memset((T2)x,0,sizeof(*y));
>> > )
>> > @@
>> > type T, T2;
>> > type T1;
>> > T1 *x;
>> > T1 *y;
>> > identifier f,f1;
>> > expression E,E2,E3,E4;
>> > statement S,S1,S2;
>> > @@
>> > - x = (T)kmalloc(sizeof(T1)*E,E2)
>> > + x = kzalloc(sizeof(T1)*E,E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > if ((x!=NULL)&&...) {
>> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
>> > when != \(while(...) S1\|for(...;...;...) S1\)
>> > - memset((T2)x,0,sizeof(*y)*E);
>> > ...
>> > } else S2
>> > |
>> > - memset((T2)x,0,sizeof(*y)*E);
>> > )
>> > @@
>> > type T, T2;
>> > type T1;
>> > T1 *x;
>> > T1 *y;
>> > identifier f,f1;
>> > expression E2,E3,E4;
>> > statement S,S1,S2;
>> > @@
>> > - x = (T)kmalloc(sizeof(*y),E2)
>> > + x = kzalloc(sizeof(*y),E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > if ((x!=NULL)&&...) {
>> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
>> > when != \(while(...) S1\|for(...;...;...) S1\)
>> > - memset((T2)x,0,sizeof(T1));
>> > ...
>> > } else S2
>> > |
>> > - memset((T2)x,0,sizeof(T1));
>> > )
>> > @@
>> > type T, T2;
>> > type T1;
>> > T1 *x;
>> > T1 *y;
>> > identifier f,f1;
>> > expression E,E2,E3,E4;
>> > statement S,S1,S2;
>> > @@
>> > - x = (T)kmalloc(sizeof(*y)*E,E2)
>> > + x = kzalloc(sizeof(*y)*E,E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > if ((x!=NULL)&&...) {
>> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
>> > when != \(while(...) S1\|for(...;...;...) S1\)
>> > - memset((T2)x,0,sizeof(T1)*E);
>> > ...
>> > } else S2
>> > |
>> > - memset((T2)x,0,sizeof(T1)*E);
>> > )
>> > @ disable neg_if, mult_comm @
>> > type T, T2;
>> > expression x;
>> > identifier f,f1;
>> > expression E0,E1,E2,E3,E4;
>> > statement S,S1,S2;
>> > @@
>> > - x = (T)kmalloc(E0 * E1,E2)
>> > + x = kzalloc(E0 * E1,E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > if ((x!=NULL)&&...) {
>> > ... when != \(f1(...,x,...)\|<+...x...+>=E4\)
>> > when != \(while(...) S1\|for(...;...;...) S1\)
>> > - memset((T2)x,0,E1 * E0);
>> > ...
>> > } else S2
>> > |
>> > - memset((T2)x,0,E1 * E0);
>> > )
>> > // ---------------------------------------------------------------------
>> > // ---------------------------------------------------------------------
>> > // have to duplicate everything again to make a version with no braces
>> > //\(x->fld\|f(...,x,...)\|x=E\)
>> > @@
>> > type T, T2;
>> > expression x;
>> > identifier f;
>> > expression E1,E2,E3;
>> > statement S,S2;
>> > @@
>> > - x = (T)kmalloc(E1,E2)
>> > + x = kzalloc(E1,E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > - if ((x!=NULL)&&...) memset((T2)x,0,E1);
>> > |
>> > + if (!x)
>> > - if ((x!=NULL)&&...) memset((T2)x,0,E1); else
>> > S2
>> > )
>> > @ @
>> > type T, T2;
>> > type T1;
>> > T1 *x;
>> > T1 *y;
>> > identifier f;
>> > expression E2,E3;
>> > statement S,S2;
>> > @@
>> > - x = (T)kmalloc(sizeof(T1),E2)
>> > + x = kzalloc(sizeof(T1),E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y));
>> > |
>> > + if (!x)
>> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)); else
>> > S2
>> > )
>> > @@
>> > type T, T2;
>> > type T1;
>> > T1 *x;
>> > T1 *y;
>> > identifier f;
>> > expression E,E2,E3;
>> > statement S,S2;
>> > @@
>> > - x = (T)kmalloc(sizeof(T1)*E,E2)
>> > + x = kzalloc(sizeof(T1)*E,E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)*E);
>> > |
>> > + if (!x)
>> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(*y)*E); else
>> > S2
>> > )
>> > @@
>> > type T, T2;
>> > type T1;
>> > T1 *x;
>> > T1 *y;
>> > identifier f;
>> > expression E2,E3;
>> > statement S,S2;
>> > @@
>> > - x = (T)kmalloc(sizeof(*y),E2)
>> > + x = kzalloc(sizeof(*y),E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1));
>> > |
>> > + if (!x)
>> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)); else
>> > S2
>> > )
>> > @@
>> > type T, T2;
>> > type T1;
>> > T1 *x;
>> > T1 *y;
>> > identifier f;
>> > expression E,E2,E3;
>> > statement S,S2;
>> > @@
>> > - x = (T)kmalloc(sizeof(*y)*E,E2)
>> > + x = kzalloc(sizeof(*y)*E,E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)*E);
>> > |
>> > + if (!x)
>> > - if ((x!=NULL)&&...) memset((T2)x,0,sizeof(T1)*E); else
>> > S2
>> > )
>> > @ disable neg_if, mult_comm @
>> > type T, T2;
>> > expression x;
>> > identifier f;
>> > expression E0,E1,E2,E3;
>> > statement S,S2;
>> > @@
>> > - x = (T)kmalloc(E0 * E1,E2)
>> > + x = kzalloc(E0 * E1,E2)
>> > ... when != \(f(...,x,...)\|<+...x...+>=E3\)
>> > when != \(while(...) S\|for(...;...;...) S\)
>> > (
>> > - if ((x!=NULL)&&...) memset((T2)x,0,E1 * E0);
>> > |
>> > + if (!x)
>> > - if ((x!=NULL)&&...) memset((T2)x,0,E1 * E0); else
>> > S2
>> > )
>> > // ---------------------------------------------------------------------
>> > @@
>> > expression E;
>> > statement S;
>> > @@
>> > kzalloc(...)
>> > ...
>> > if (E) S
>> > - else { }
>> > // ---------------------------------------------------------------------
>> > // ---------------------------------------------------------------------
>> > @@
>> > expression E1,E2,E3;
>> > @@
>> > - kzalloc(E1*sizeof(E2),E3)
>> > + kcalloc(E1,sizeof(E2),E3)
>> > @@
>> > expression E1,E3;
>> > type T;
>> > @@
>> > - kzalloc(E1*sizeof(T),E3)
>> > + kcalloc(E1,sizeof(T),E3)
>> > @@
>> > expression E1,E2,E3,E4;
>> > @@
>> > - kzalloc(E1*E2*sizeof(E3),E4)
>> > + kcalloc(E1*E2,sizeof(E3),E4)
>> > @@
>> > expression E1,E2,E3;
>> > type T;
>> > @@
>> > - kzalloc(E1*E2*sizeof(T),E3)
>> > + kcalloc(E1*E2,sizeof(T),E3)
>> > @@
>> > expression E1,E2,E3,E4;
>> > @@
>> > - kzalloc(sizeof(E3)*E1*E2,E4)
>> > + kcalloc(E1*E2,sizeof(E3),E4)
>> > @@
>> > expression E1,E2,E3;
>> > type T;
>> > @@
>> > - kzalloc(sizeof(T)*E1*E2,E3)
>> > + kcalloc(E1*E2,sizeof(T),E3)
>> > @@
>> > constant E1;
>> > expression E2,E3;
>> > @@
>> > - kzalloc(E1*E2,E3)
>> > + kcalloc(E1,E2,E3)
>> >
>> > Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
>> > ---
>> >  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c 
>> b/drivers/staging/media/bcm2048/radio-bcm2048.c
>> > index 5382506..c68fa4a 100644
>> > --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
>> > +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
>> > @@ -1792,7 +1792,7 @@ static int bcm2048_get_rds_data(struct 
>> bcm2048_device *bdev, char *data)
>> >               goto unlock;
>> >       }
>> >
>> > -     data_buffer = kzalloc(BCM2048_MAX_RDS_RADIO_TEXT*5, GFP_KERNEL);
>> > +     data_buffer = kcalloc(BCM2048_MAX_RDS_RADIO_TEXT, 5, GFP_KERNEL);
>> >       if (!data_buffer) {
>> >               err = -ENOMEM;
>> >               goto unlock;
>> > --
>> > 1.9.1
>> >
>> > --
>> > You received this message because you are subscribed to the Google 
>> Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send 
>> an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/outreachy-kernel/556953cddf889e94753d5fd09201cc94dbe201f6.1425211236.git.navyasri.tech%40gmail.com
>> .
>> > For more options, visit https://groups.google.com/d/optout.
>> >
>>
>
>
------=_Part_3106_2095302632.1425456933343
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Sunday, March 1, 2015 at 11:40:59 PM UTC+5:30, Navya Sri Nizamkari wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir="ltr"><br><div><br><div class="gmail_quote">On Sun, Mar 1, 2015 at 6:04 PM, Julia Lawall <span dir="ltr">&lt;<a href="mailto:julia.lawall@lip6.fr" target="_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Could you redo with a much smaller commit message?&nbsp; It would be reasonable<br>
to put the whole semantic patch in the cover letter.&nbsp; For the individual<br>
patches, you can just put something that gives the idea, but perhaps<br>
something that does not avoid all false positives, like the big one tries<br>
to do.<br>
<br>
It could also be better to send separate series for kmalloc -&gt; k{z,c}alloc<br>
and kzalloc -&gt; kcalloc.<br>
<br>
Finally, whne you introduce kcalloc, you may end up with some unneeded<br>
parentheses in the argument list.&nbsp; For example if the original code was<br>
kzalloc ((a+b) * c, ...).&nbsp; You should remove the parentheses in the result<br>
(you can extend the semantic patch to do this).<br>
<br>
julia<br></blockquote><div><br></div><div>Hi,<br><br></div><div>I'll only keep the relevant changes from the coccinelle script for every patch and send a new one.<br><br></div><div>Thanks,<br></div><div>Navya.<br></div></div></div></div></blockquote><div><br>Hi,<br><br>When I break this patchset into two, one for kmalloc and other for kzalloc. Should I version them as v2? Or can I send as new patchsets? <br></div><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir="ltr"><div><div class="gmail_quote"><div></div><div>&nbsp;<br></div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div><div><br>
On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:<br>
<br>
&gt; The semantic patch used for this change is:<br>
&gt;<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; expression x;<br>
&gt; identifier f,f1;<br>
&gt; expression E1,E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(E1,E2)<br>
&gt; + x = kzalloc(E1,E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=NULL)&amp;&amp;...) {<br>
&gt; ... when != \(f1(...,x,...)\|&lt;+...x...+&gt;=<wbr>E4\)<br>
&gt; when != \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,E1);<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,E1);<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f,f1;<br>
&gt; expression E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(sizeof(T1),E2)<br>
&gt; + x = kzalloc(sizeof(T1),E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=NULL)&amp;&amp;...) {<br>
&gt; ... when != \(f1(...,x,...)\|&lt;+...x...+&gt;=<wbr>E4\)<br>
&gt; when != \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,sizeof(*y));<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,sizeof(*y));<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f,f1;<br>
&gt; expression E,E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(sizeof(T1)*E,E2)<br>
&gt; + x = kzalloc(sizeof(T1)*E,E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=NULL)&amp;&amp;...) {<br>
&gt; ... when != \(f1(...,x,...)\|&lt;+...x...+&gt;=<wbr>E4\)<br>
&gt; when != \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,sizeof(*y)*E);<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,sizeof(*y)*E);<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f,f1;<br>
&gt; expression E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(sizeof(*y),E2)<br>
&gt; + x = kzalloc(sizeof(*y),E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=NULL)&amp;&amp;...) {<br>
&gt; ... when != \(f1(...,x,...)\|&lt;+...x...+&gt;=<wbr>E4\)<br>
&gt; when != \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,sizeof(T1));<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,sizeof(T1));<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f,f1;<br>
&gt; expression E,E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(sizeof(*y)*E,E2)<br>
&gt; + x = kzalloc(sizeof(*y)*E,E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=NULL)&amp;&amp;...) {<br>
&gt; ... when != \(f1(...,x,...)\|&lt;+...x...+&gt;=<wbr>E4\)<br>
&gt; when != \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,sizeof(T1)*E);<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,sizeof(T1)*E);<br>
&gt; )<br>
&gt; @ disable neg_if, mult_comm @<br>
&gt; type T, T2;<br>
&gt; expression x;<br>
&gt; identifier f,f1;<br>
&gt; expression E0,E1,E2,E3,E4;<br>
&gt; statement S,S1,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(E0 * E1,E2)<br>
&gt; + x = kzalloc(E0 * E1,E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; if ((x!=NULL)&amp;&amp;...) {<br>
&gt; ... when != \(f1(...,x,...)\|&lt;+...x...+&gt;=<wbr>E4\)<br>
&gt; when != \(while(...) S1\|for(...;...;...) S1\)<br>
&gt; - memset((T2)x,0,E1 * E0);<br>
&gt; ...<br>
&gt; } else S2<br>
&gt; |<br>
&gt; - memset((T2)x,0,E1 * E0);<br>
&gt; )<br>
&gt; // ------------------------------<wbr>------------------------------<wbr>---------<br>
&gt; // ------------------------------<wbr>------------------------------<wbr>---------<br>
&gt; // have to duplicate everything again to make a version with no braces<br>
&gt; //\(x-&gt;fld\|f(...,x,...)\|x=E\<wbr>)<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; expression x;<br>
&gt; identifier f;<br>
&gt; expression E1,E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(E1,E2)<br>
&gt; + x = kzalloc(E1,E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,E1);<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,E1); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @ @<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f;<br>
&gt; expression E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(sizeof(T1),E2)<br>
&gt; + x = kzalloc(sizeof(T1),E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,sizeof(*y));<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,sizeof(*y)); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f;<br>
&gt; expression E,E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(sizeof(T1)*E,E2)<br>
&gt; + x = kzalloc(sizeof(T1)*E,E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,sizeof(*y)*E);<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,sizeof(*y)*E); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f;<br>
&gt; expression E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(sizeof(*y),E2)<br>
&gt; + x = kzalloc(sizeof(*y),E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,sizeof(T1));<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,sizeof(T1)); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @@<br>
&gt; type T, T2;<br>
&gt; type T1;<br>
&gt; T1 *x;<br>
&gt; T1 *y;<br>
&gt; identifier f;<br>
&gt; expression E,E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(sizeof(*y)*E,E2)<br>
&gt; + x = kzalloc(sizeof(*y)*E,E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,sizeof(T1)*E);<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,sizeof(T1)*E); else<br>
&gt; S2<br>
&gt; )<br>
&gt; @ disable neg_if, mult_comm @<br>
&gt; type T, T2;<br>
&gt; expression x;<br>
&gt; identifier f;<br>
&gt; expression E0,E1,E2,E3;<br>
&gt; statement S,S2;<br>
&gt; @@<br>
&gt; - x = (T)kmalloc(E0 * E1,E2)<br>
&gt; + x = kzalloc(E0 * E1,E2)<br>
&gt; ... when != \(f(...,x,...)\|&lt;+...x...+&gt;=<wbr>E3\)<br>
&gt; when != \(while(...) S\|for(...;...;...) S\)<br>
&gt; (<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,E1 * E0);<br>
&gt; |<br>
&gt; + if (!x)<br>
&gt; - if ((x!=NULL)&amp;&amp;...) memset((T2)x,0,E1 * E0); else<br>
&gt; S2<br>
&gt; )<br>
&gt; // ------------------------------<wbr>------------------------------<wbr>---------<br>
&gt; @@<br>
&gt; expression E;<br>
&gt; statement S;<br>
&gt; @@<br>
&gt; kzalloc(...)<br>
&gt; ...<br>
&gt; if (E) S<br>
&gt; - else { }<br>
&gt; // ------------------------------<wbr>------------------------------<wbr>---------<br>
&gt; // ------------------------------<wbr>------------------------------<wbr>---------<br>
&gt; @@<br>
&gt; expression E1,E2,E3;<br>
&gt; @@<br>
&gt; - kzalloc(E1*sizeof(E2),E3)<br>
&gt; + kcalloc(E1,sizeof(E2),E3)<br>
&gt; @@<br>
&gt; expression E1,E3;<br>
&gt; type T;<br>
&gt; @@<br>
&gt; - kzalloc(E1*sizeof(T),E3)<br>
&gt; + kcalloc(E1,sizeof(T),E3)<br>
&gt; @@<br>
&gt; expression E1,E2,E3,E4;<br>
&gt; @@<br>
&gt; - kzalloc(E1*E2*sizeof(E3),E4)<br>
&gt; + kcalloc(E1*E2,sizeof(E3),E4)<br>
&gt; @@<br>
&gt; expression E1,E2,E3;<br>
&gt; type T;<br>
&gt; @@<br>
&gt; - kzalloc(E1*E2*sizeof(T),E3)<br>
&gt; + kcalloc(E1*E2,sizeof(T),E3)<br>
&gt; @@<br>
&gt; expression E1,E2,E3,E4;<br>
&gt; @@<br>
&gt; - kzalloc(sizeof(E3)*E1*E2,E4)<br>
&gt; + kcalloc(E1*E2,sizeof(E3),E4)<br>
&gt; @@<br>
&gt; expression E1,E2,E3;<br>
&gt; type T;<br>
&gt; @@<br>
&gt; - kzalloc(sizeof(T)*E1*E2,E3)<br>
&gt; + kcalloc(E1*E2,sizeof(T),E3)<br>
&gt; @@<br>
&gt; constant E1;<br>
&gt; expression E2,E3;<br>
&gt; @@<br>
&gt; - kzalloc(E1*E2,E3)<br>
&gt; + kcalloc(E1,E2,E3)<br>
&gt;<br>
&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href="mailto:navyasri.tech@gmail.com" target="_blank">navyasri.tech@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;&nbsp; drivers/staging/media/bcm2048/<wbr>radio-bcm2048.c | 2 +-<br>
&gt;&nbsp; 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/media/<wbr>bcm2048/radio-bcm2048.c b/drivers/staging/media/<wbr>bcm2048/radio-bcm2048.c<br>
&gt; index 5382506..c68fa4a 100644<br>
&gt; --- a/drivers/staging/media/<wbr>bcm2048/radio-bcm2048.c<br>
&gt; +++ b/drivers/staging/media/<wbr>bcm2048/radio-bcm2048.c<br>
&gt; @@ -1792,7 +1792,7 @@ static int bcm2048_get_rds_data(struct bcm2048_device *bdev, char *data)<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;goto unlock;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;}<br>
&gt;<br>
&gt; -&nbsp; &nbsp; &nbsp;data_buffer = kzalloc(BCM2048_MAX_RDS_RADIO_<wbr>TEXT*5, GFP_KERNEL);<br>
&gt; +&nbsp; &nbsp; &nbsp;data_buffer = kcalloc(BCM2048_MAX_RDS_RADIO_<wbr>TEXT, 5, GFP_KERNEL);<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;if (!data_buffer) {<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;err = -ENOMEM;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;goto unlock;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span><font color="#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" target="_blank">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href="mailto:outreachy-kernel@googlegroups.com" target="_blank">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/556953cddf889e94753d5fd09201cc94dbe201f6.1425211236.git.navyasri.tech%40gmail.com" target="_blank">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>556953cddf889e94753d5fd09201cc<wbr>94dbe201f6.1425211236.git.<wbr>navyasri.tech%40gmail.com</a>.<br>
&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank">https://groups.google.com/d/<wbr>optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>
</blockquote></div>
------=_Part_3106_2095302632.1425456933343--

------=_Part_3105_2068516724.1425456933343--

