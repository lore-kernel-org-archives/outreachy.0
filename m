X-GM-THRID: 1670193872896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,75ad403aeef5fe09
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.214.234 with SMTP id od10mr228879lbc.3.1424513655003;
        Sat, 21 Feb 2015 02:14:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.101 with SMTP id gt5ls252570wib.28.gmail; Sat, 21 Feb
 2015 02:14:14 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr192785wic.3.1424513654471;
        Sat, 21 Feb 2015 02:14:14 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x236.google.com (mail-la0-x236.google.com. [2a00:1450:4010:c03::236])
        by gmr-mx.google.com with ESMTPS id xl7si3139089lbb.1.2015.02.21.02.14.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 02:14:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::236 as permitted sender) client-ip=2a00:1450:4010:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lams18 with SMTP id s18so10548557lam.13
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 02:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=pmia4Aw26cZW0h2YIf1+s47/U6WcS633LYHOW+Tp3aM=;
        b=oBYkv3XUJXRXqp/OTTJYaUoWR8+blMJRtBNXPMHv5198ewLoOMtTsLuhU7V5d20yg+
         UjFTXhUWINfkq8QRrCNtdBy7SQfn0zkQtLfXAKrmxHPUHCjfcF2795K5YFPaDyJYTrQs
         g4jE12/EMoOoP3gVzZ+CZckPETweFuwd8p9BCn4oT6pmyFVcicgf5pi9VPgrDVs+tIeJ
         H/IGbf4YzZO7DHQCqsnNexkefloEv7vkSM52mcUEMwWkg6aZ8NxxbW1Y0IlmO3ZjU61e
         0LOLythpPnApwdnbpcsc/lSvuKIkIkdhu9vEVl+uCsvWJYWcIo861dmlMhGrai4+thug
         AkHA==
MIME-Version: 1.0
X-Received: by 10.112.40.1 with SMTP id t1mr1520092lbk.98.1424513654320; Sat,
 21 Feb 2015 02:14:14 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Sat, 21 Feb 2015 02:14:14 -0800 (PST)
In-Reply-To: <00d58ff1-b882-4fdf-84dc-17351729a6bf@googlegroups.com>
References: <1424509708-3190-1-git-send-email-ksenija.stanojevic@gmail.com>
	<alpine.DEB.2.02.1502211011420.2020@localhost6.localdomain6>
	<00d58ff1-b882-4fdf-84dc-17351729a6bf@googlegroups.com>
Date: Sat, 21 Feb 2015 11:14:14 +0100
Message-ID: <CAL7P5jJigBvJBwsaiRB=Mvn5LfbJVuBpamBMqCdLTGiy_dKedw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace printk()
 with pr_debug().
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
Content-Type: multipart/alternative; boundary=001a11336ff657f25a050f966e5c

--001a11336ff657f25a050f966e5c
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 21, 2015 at 11:04 AM, Ksenija Stanojevic <
ksenija.stanojevic@gmail.com> wrote:

>
>  On Saturday, February 21, 2015 at 10:12:15 AM UTC+1, Julia Lawall wrote:
>>
>> On Sat, 21 Feb 2015, Ksenija Stanojevic wrote:
>>
>> > For dynamic debugging pr_debug() metod is preferred over printk(),
>> which
>> > is the raw way to print something. Issue found by checkpatch.pl.
>>
>> This is a network driver.  See if it could be possible to use netdev_dbg
>> instead.
>>
>> julia
>>
>>
       Hi,
       It seems to me that only the first out of four functions that use
printk has a pointer to a device net structure, others don't. Therefore I
could only implement one netdev_dbg().
       I couldn't compile the code where all functions use net_dev()
function.



>
>> > Signed-off-by: Ksenija Stanojevic <ksenija.s...@gmail.com>
>> > ---
>> >  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 8 ++++----
>> >  1 file changed, 4 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>> b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>> > index 5533221..447af93 100644
>> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>> > @@ -66,7 +66,7 @@ void ieee80211_crypt_deinit_handler(unsigned long
>> data)
>> >          spin_lock_irqsave(&ieee->lock, flags);
>> >          ieee80211_crypt_deinit_entries(ieee, 0);
>> >          if (!list_empty(&ieee->crypt_deinit_list)) {
>> > -                printk(KERN_DEBUG "%s: entries remaining in delayed
>> crypt "
>> > +                pr_debug("%s: entries remaining in delayed crypt "
>> >                         "deletion list\n", ieee->dev->name);
>> >                  ieee->crypt_deinit_timer.expires = jiffies + HZ;
>> >                  add_timer(&ieee->crypt_deinit_timer);
>> > @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct
>> ieee80211_crypto_ops *ops)
>> >          list_add(&alg->list, &hcrypt->algs);
>> >          spin_unlock_irqrestore(&hcrypt->lock, flags);
>> >
>> > -        printk(KERN_DEBUG "ieee80211_crypt: registered algorithm
>> '%s'\n",
>> > +        pr_debug("ieee80211_crypt: registered algorithm '%s'\n",
>> >                 ops->name);
>> >
>> >          return 0;
>> > @@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_ops(struct
>> ieee80211_crypto_ops *ops)
>> >          spin_unlock_irqrestore(&hcrypt->lock, flags);
>> >
>> >          if (del_alg) {
>> > -                printk(KERN_DEBUG "ieee80211_crypt: unregistered
>> algorithm "
>> > +                pr_debug("ieee80211_crypt: unregistered algorithm "
>> >                         "'%s'\n", ops->name);
>> >                  kfree(del_alg);
>> >          }
>> > @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)
>> >                  struct ieee80211_crypto_alg *alg =
>> >                          (struct ieee80211_crypto_alg *) ptr;
>> >                  list_del(ptr);
>> > -                printk(KERN_DEBUG "ieee80211_crypt: unregistered
>> algorithm "
>> > +                pr_debug("ieee80211_crypt: unregistered algorithm "
>> >                         "'%s' (deinit)\n", alg->ops->name);
>> >                  kfree(alg);
>> >          }
>> > --
>> > 1.9.1
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> an email to outreachy-kern...@googlegroups.com.
>> > To post to this group, send email to outreach...@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/
>> msgid/outreachy-kernel/1424509708-3190-1-git-send-
>> email-ksenija.stanojevic%40gmail.com.
>> > For more options, visit https://groups.google.com/d/optout.
>> >
>
>

--001a11336ff657f25a050f966e5c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sat, Feb 21, 2015 at 11:04 AM, Ksenija Stanojevic <span dir=3D"ltr">=
&lt;<a href=3D"mailto:ksenija.stanojevic@gmail.com" target=3D"_blank">kseni=
ja.stanojevic@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><span><br>=C2=A0On Saturday, Febru=
ary 21, 2015 at 10:12:15 AM UTC+1, Julia Lawall wrote:</span><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><span>On Sat, 21 Feb 2015, Ksenija Stan=
ojevic wrote:
<br>
<br>&gt; For dynamic debugging pr_debug() metod is preferred over printk(),=
 which
<br>&gt; is the raw way to print something. Issue found by <a href=3D"http:=
//checkpatch.pl" rel=3D"nofollow" target=3D"_blank">checkpatch.pl</a>.
<br>
<br>This is a network driver.=C2=A0 See if it could be possible to use netd=
ev_dbg=20
<br>instead.
<br>
<br>julia
<br>
</span><br><span></span></blockquote></div></blockquote><div><br><span>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Hi,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 It seems to me that only the first out of four functions that use
 printk has a pointer to a device net structure, others don&#39;t. Therefor=
e
 I could only implement one netdev_dbg(). <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 I couldn&#39;t compile the code where all functions use net_dev()=
 function.</span><br><br>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><span>=20
<br></span>&gt; Signed-off-by: Ksenija Stanojevic &lt;<a rel=3D"nofollow">k=
senija.s...@gmail.com</a>&gt;
<br><div><div>&gt; ---
<br>&gt; =C2=A0drivers/staging/rtl8192u/<u></u>ieee80211/ieee80211_crypt.c =
| 8 ++++----
<br>&gt; =C2=A01 file changed, 4 insertions(+), 4 deletions(-)
<br>&gt;=20
<br>&gt; diff --git a/drivers/staging/rtl8192u/<u></u>ieee80211/ieee80211_c=
rypt.c b/drivers/staging/rtl8192u/<u></u>ieee80211/ieee80211_crypt.c
<br>&gt; index 5533221..447af93 100644
<br>&gt; --- a/drivers/staging/rtl8192u/<u></u>ieee80211/ieee80211_crypt.c
<br>&gt; +++ b/drivers/staging/rtl8192u/<u></u>ieee80211/ieee80211_crypt.c
<br>&gt; @@ -66,7 +66,7 @@ void ieee80211_crypt_deinit_<u></u>handler(unsig=
ned long data)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_ir=
qsave(&amp;<u></u>ieee-&gt;lock, flags);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ieee80211_cr=
ypt_<u></u>deinit_entries(ieee, 0);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!list_em=
pty(&amp;ieee-&gt;crypt_<u></u>deinit_list)) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0printk(KERN_<u></u>DEBUG &quot;%s: entries=
 remaining in delayed crypt &quot;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&quot;%s: entries remaining in de=
layed crypt &quot;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;deletion li=
st\n&quot;, ieee-&gt;dev-&gt;name);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ieee-&gt;crypt_<u></u>deinit_timer.expi=
res =3D jiffies + HZ;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0add_timer(&amp;<u></u>ieee-&gt;crypt_de=
init_timer);
<br>&gt; @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(<u></u>struc=
t ieee80211_crypto_ops *ops)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_add(&am=
p;alg-&gt;list, &amp;hcrypt-&gt;algs);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock_=
<u></u>irqrestore(&amp;hcrypt-&gt;lock, flags);
<br>&gt; =C2=A0
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0printk(KERN_DEBUG=
 &quot;ieee80211_crypt: registered algorithm &#39;%s&#39;\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&quot;ie=
ee80211_<u></u>crypt: registered algorithm &#39;%s&#39;\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ops-&gt;name);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
<br>&gt; @@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_<u></u>ops(str=
uct ieee80211_crypto_ops *ops)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock_=
<u></u>irqrestore(&amp;hcrypt-&gt;lock, flags);
<br>&gt; =C2=A0
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (del_alg)=
 {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0printk(KERN_<u></u>DEBUG &quot;ieee80211_c=
rypt: unregistered algorithm &quot;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&quot;<u></u>ieee80211_crypt: unr=
egistered algorithm &quot;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&#39;%s&#39=
;\n&quot;, ops-&gt;name);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(del_<u></u>alg);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ieee80211_crypto_alg *alg =3D
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(<u></u>struct ieee80211_crypto_alg *) ptr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del(ptr)<u></u>;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0printk(KERN_<u></u>DEBUG &quot;ieee80211_c=
rypt: unregistered algorithm &quot;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(&quot;<u></u>ieee80211_crypt: unr=
egistered algorithm &quot;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&#39;%s&#39=
; (deinit)\n&quot;, alg-&gt;ops-&gt;name);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(alg);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; --=20
<br>&gt; 1.9.1
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br></div></div>&gt; To unsubscribe from this group and stop receiving emai=
ls from it, send an email to <a rel=3D"nofollow">outreachy-kern...@<u></u>g=
ooglegroups.com</a>.
<br>&gt; To post to this group, send email to <a rel=3D"nofollow">outreach.=
..@googlegroups.<u></u>com</a>.
<br><span>&gt; To view this discussion on the web visit <a href=3D"https://=
groups.google.com/d/msgid/outreachy-kernel/1424509708-3190-1-git-send-email=
-ksenija.stanojevic%40gmail.com" rel=3D"nofollow" target=3D"_blank">https:/=
/groups.google.com/d/<u></u>msgid/outreachy-kernel/<u></u>1424509708-3190-1=
-git-send-<u></u>email-ksenija.stanojevic%<u></u>40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" rel=3D"nofollow" target=3D"_blank">https://groups.google.com/d/<u></u>=
optout</a>.
<br>&gt;</span></blockquote></div></blockquote><div>=C2=A0</div></div><br><=
/div></div>

--001a11336ff657f25a050f966e5c--

