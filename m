X-GM-THRID: 6402837556844560384
X-Received: by 10.28.20.205 with SMTP id 196mr157033wmu.7.1491664422370;
        Sat, 08 Apr 2017 08:13:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.70 with SMTP id y6ls979867ljd.8.gmail; Sat, 08 Apr 2017
 08:13:40 -0700 (PDT)
X-Received: by 10.25.195.206 with SMTP id t197mr5993506lff.11.1491664420683;
        Sat, 08 Apr 2017 08:13:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id p144si253738wme.2.2017.04.08.08.13.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Apr 2017 08:13:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id i3so1560487lfh.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Apr 2017 08:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=LE3bKazpVGEqvlsmt/o//3t+8527eobJ8GvH+GbTitc=;
        b=cfpKoAsG4ijd92zZkTAzQXsH9tGH7nmTTJVz2Px7N0LbG995qlxQPEw9a3D7HM43jb
         ttv9/nDn04OkX6l0EzjWCe6MRpfn2Zin5/xIgYV0xDuaPBTtXqbsSQ+O44XI+aSBUPbQ
         HxWzoKE+oy04QndK7GugJ4wYprMpM/oATnuABvHMvTICNld7GxcOkAXmwUwEvy6WCK/0
         SH9+01bm8iMaNkWMqtVe20Yh/BTYRtSMzEYcQ7tFhmuOpJ8bgWtcPfy3fvZCDQOrEUPZ
         FpRyEIWI4puwbc7JFlW6A+CnW26qUIPlYR8J7RugfJ9WWpBNTlLTXNMBzlI06fTE/v9V
         N4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=LE3bKazpVGEqvlsmt/o//3t+8527eobJ8GvH+GbTitc=;
        b=NIA0CHZ4pTI7TTJ4RgDHWbJJoLH7+mCzDL6mps6U7XWTU/tNwryEcxTQMY1cCpEtFk
         slZeaxLY2PdG1cCikE7xPPKTtKlGbkLf6kROMDZ7JsUPkfOjQTHhXf5i5Ma2gs4Uogd7
         dUQOMMUeHvDJza/ns9JDT8ALWbxAkLHVH+qEFBRKB+Q7CepSEvuzq26WuyQiY6vLCQIg
         dqwgZF87jApvuU5jP6jn5w0541Xiqy7Pooo8yrs8OQxpO2OtfAUHeYOm4PQscuqWSsjt
         LVh5qrLjxsqGklR7xCWYQ6sO2SXzSzong3WOgf7QB+DzcDAGQeOyfpT9E2rAm/xvM3BJ
         m8aA==
X-Gm-Message-State: AFeK/H2fX+x0COng6+oG5kSBv1A0hnnhXwY4KN8O5P7b4TtFU9LHSmDuEWHheiPTd4/w20xWn58IbsGJts+YWQ==
X-Received: by 10.46.15.9 with SMTP id 9mr13317783ljp.108.1491664420132; Sat,
 08 Apr 2017 08:13:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Sat, 8 Apr 2017 08:13:39 -0700 (PDT)
In-Reply-To: <20170407161507.GA9367@salvia>
References: <20170329083943.GA23844@arushi-HP-Pavilion-Notebook> <20170407161507.GA9367@salvia>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sat, 8 Apr 2017 20:43:39 +0530
Message-ID: <CA+XqjF-Uy45xHj94Ck2DCnPJ-ikVWih3darG83Dr_aBydqi+4w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] net: ipv6: netfilter: Format block comments.
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, "David S. Miller" <davem@davemloft.net>, 
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, James Morris <jmorris@namei.org>, 
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, Patrick McHardy <kaber@trash.net>, 
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
	netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f4030436012ce2dee7054ca92fd6

--f4030436012ce2dee7054ca92fd6
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 7, 2017 at 9:45 PM, Pablo Neira Ayuso <pablo@netfilter.org>
wrote:

> On Wed, Mar 29, 2017 at 02:09:43PM +0530, Arushi Singhal wrote:
> > Fix checkpatch warnings:
> > WARNING: Block comments use a trailing */ on a separate line
> > WARNING: Block comments use * on subsequent lines
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> >  net/ipv6/netfilter/ip6_tables.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/net/ipv6/netfilter/ip6_tables.c b/net/ipv6/netfilter/ip6_
> tables.c
> > index b8cb61c27aa1..ac69ce3bfa1e 100644
> > --- a/net/ipv6/netfilter/ip6_tables.c
> > +++ b/net/ipv6/netfilter/ip6_tables.c
> > @@ -51,14 +51,14 @@ void *ip6t_alloc_initial_table(const struct
> xt_table *info)
> >  }
> >  EXPORT_SYMBOL_GPL(ip6t_alloc_initial_table);
> >
> > -/*
> > -   We keep a set of rules for each CPU, so we can avoid write-locking
> > -   them in the softirq when updating the counters and therefore
> > -   only need to read-lock in the softirq; doing a write_lock_bh() in
> user
> > -   context stops packets coming through and allows user context to read
> > -   the counters or update the rules.
> > -
> > -   Hence the start of any table is given by get_table() below.  */
> > +/* We keep a set of rules for each CPU, so we can avoid write-locking
> > + * them in the softirq when updating the counters and therefore
> > + * only need to read-lock in the softirq; doing a write_lock_bh() in
> user
> > + * context stops packets coming through and allows user context to read
> > + * the counters or update the rules.
> > + *
> > + * Hence the start of any table is given by get_table() below.
> > + */
>
> This comment is obsolete and should go.
>
> We have no set of rules per CPU anymore.
>
Hi Pablo
So should I fix this by removing these comments.

Thanks
Arushi

--f4030436012ce2dee7054ca92fd6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Apr 7, 2017 at 9:45 PM, Pablo Neira Ayuso <span dir=3D"ltr">&lt=
;<a href=3D"mailto:pablo@netfilter.org" target=3D"_blank">pablo@netfilter.o=
rg</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HO=
EnZb"><div class=3D"h5">On Wed, Mar 29, 2017 at 02:09:43PM +0530, Arushi Si=
nghal wrote:<br>
&gt; Fix checkpatch warnings:<br>
&gt; WARNING: Block comments use a trailing */ on a separate line<br>
&gt; WARNING: Block comments use * on subsequent lines<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 net/ipv6/netfilter/ip6_tables.<wbr>c | 16 ++++++++--------<br>
&gt;=C2=A0 1 file changed, 8 insertions(+), 8 deletions(-)<br>
&gt;<br>
&gt; diff --git a/net/ipv6/netfilter/ip6_<wbr>tables.c b/net/ipv6/netfilter=
/ip6_<wbr>tables.c<br>
&gt; index b8cb61c27aa1..ac69ce3bfa1e 100644<br>
&gt; --- a/net/ipv6/netfilter/ip6_<wbr>tables.c<br>
&gt; +++ b/net/ipv6/netfilter/ip6_<wbr>tables.c<br>
&gt; @@ -51,14 +51,14 @@ void *ip6t_alloc_initial_table(<wbr>const struct x=
t_table *info)<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 EXPORT_SYMBOL_GPL(ip6t_alloc_<wbr>initial_table);<br>
&gt;<br>
&gt; -/*<br>
&gt; -=C2=A0 =C2=A0We keep a set of rules for each CPU, so we can avoid wri=
te-locking<br>
&gt; -=C2=A0 =C2=A0them in the softirq when updating the counters and there=
fore<br>
&gt; -=C2=A0 =C2=A0only need to read-lock in the softirq; doing a write_loc=
k_bh() in user<br>
&gt; -=C2=A0 =C2=A0context stops packets coming through and allows user con=
text to read<br>
&gt; -=C2=A0 =C2=A0the counters or update the rules.<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0Hence the start of any table is given by get_table() bel=
ow.=C2=A0 */<br>
&gt; +/* We keep a set of rules for each CPU, so we can avoid write-locking=
<br>
&gt; + * them in the softirq when updating the counters and therefore<br>
&gt; + * only need to read-lock in the softirq; doing a write_lock_bh() in =
user<br>
&gt; + * context stops packets coming through and allows user context to re=
ad<br>
&gt; + * the counters or update the rules.<br>
&gt; + *<br>
&gt; + * Hence the start of any table is given by get_table() below.<br>
&gt; + */<br>
<br>
</div></div>This comment is obsolete and should go.<br>
<br>
We have no set of rules per CPU anymore.<br></blockquote><div>Hi Pablo<br><=
/div><div>So should I fix this by removing these comments.<br><br></div><di=
v>Thanks<br></div><div>Arushi <br></div></div><br></div></div>

--f4030436012ce2dee7054ca92fd6--

