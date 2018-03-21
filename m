X-GM-THRID: 6535331829048672256
X-Received: by 2002:a19:a9c6:: with SMTP id s189-v6mr1282375lfe.11.1521625687121;
        Wed, 21 Mar 2018 02:48:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.137 with SMTP id u131ls387918lja.10.gmail; Wed, 21 Mar
 2018 02:48:05 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvNs8ZDkza1HfdRZT+SQzZyy6eMKXvBasCecjApKLv5TG01WkAmXTNhul5iIx9dPKMy/pUr
X-Received: by 10.46.146.23 with SMTP id k23mr1139436ljg.26.1521625685645;
        Wed, 21 Mar 2018 02:48:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521625685; cv=none;
        d=google.com; s=arc-20160816;
        b=pcHyedEkoVyzVtHm6pdCMMCVp0mq+RnxAphazXkfYyf01EP3g/DsTQhCRuf+d1iKV5
         8V7J6iqsK5nBrPbNAzqeY24xwM8dH7dpr4vni/KDYTgxNTMymKvmIHCM3AiXIq0/KJxS
         axV9r1W6JgZRKBsWUvrVUbqnnAJ+B9uOpCR+nKOo6f2iVgmRg44gdipB5lqWmH6ObrFc
         LQoGrfxVpMlonvrlsLa0V/d/UJyMyovEArQgyTr649xzBEJ2SWujJJeCzuD12efj4O+S
         V3pEahz25r6Ql6q0PIwUMCNg9MaxHGyEwIe0uyt6S/wJH0dn2Y7uPc5b0YTgTrHGPPnP
         0ssQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=gJpfwF5d6+pmM8T5fhQMwPEtjvQ04SuEihNzYAh8HjQ=;
        b=0XbkKZnqV8/Davrleq9YRilt04gobrZ5yQyNJEVWesk7xnFJD88kbdvUWj4ZoORZeo
         wlFsQxBncDZ7si9azT+KuvjsWA2jQ6ycQJP1rqXwrxWwhaJ3RIwObdT2ocHUdsmjrkoZ
         4MUdMs+FqytcqK2VfH+vbKMQtrd9jgJk15Lgw06j2tG7v7P2bIkwqZhks1tL/rnwticz
         Od2AOWD1yML2jFbPegeHj4Pz+Wq2xNhpgknWi1dVVtVqPUZuyVjk2++WI/M24OmtM/k2
         H5ahE8myK/+bR21u1I9KlVE6h5kxyAbsig7Zu8iLFtvF2QPVc+KGhL/vywISzkls7OVO
         0V/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Av3lTsC8;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x22a.google.com (mail-lf0-x22a.google.com. [2a00:1450:4010:c07::22a])
        by gmr-mx.google.com with ESMTPS id s12si124411lje.3.2018.03.21.02.48.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Mar 2018 02:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) client-ip=2a00:1450:4010:c07::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Av3lTsC8;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22a.google.com with SMTP id z143-v6so6884278lff.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Mar 2018 02:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=gJpfwF5d6+pmM8T5fhQMwPEtjvQ04SuEihNzYAh8HjQ=;
        b=Av3lTsC8nOJ1OKrw0LzCgqSDzq5/hvIDkiVxx1WEIVn1jt/PWTL74UdNhDSIaBDW0m
         vzhiFAYYNX7nMPpGLHwuA0WfXk7IH7jWDO320oqr+j+Ts0KozCYUENCujQy69CtJ+YG/
         H48UX8m1T+qR8SwvFQbQaRrel+GFT8rMP7VF5r+tpnapkWuNNnm+dtlSOzBfwBPf7Wt2
         34cEnyA0h8dK2in0FGC7br1MeNERbc9Q+dqy1ZV1RDyMfDUe32XULWUIzXFLZWy6daj1
         ioqnYQ+qsUu765iyHrANn2WrvKvlFnesQFO6CEmfAjXHuNSPBawl6ADpLPktq80KLECF
         UTxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=gJpfwF5d6+pmM8T5fhQMwPEtjvQ04SuEihNzYAh8HjQ=;
        b=XAbwlFSz5HYeJhXKGuu6ZJ4uy+YhUROy9FAQCY626GOnYJWqrsFQ8urTYH23fO1nl9
         J58htbULUeoNogNy+xbqMlw9J1/cjg/Ksc3feVzlVv80Mvyc843hX53pj/qPTIYsUUWy
         HS6YN4voqaurA/vDZqe50ziQUejIxKwGE9GeOxpXLMXEjFGdKJJglpHY2Eki71S7of9w
         FeA4CntqZK2Y8Bw11aC4FayeIDcVWVCcIUqAxoxrbRsLoHiWbkiKnZpX8zXdHSjwXDUq
         r78YC2tV5PZas6b0QpqH075820is/zyDSRMDZgh5b9+EBCvqqpz1/+rTGuWgejYz7EML
         8ZdQ==
X-Gm-Message-State: AElRT7EQNolAqWehb1p8ap3YKJWc6qbKMcHqDXlrKN5tajvz8vqR0U54
	HDpiJogNZLYYHiIPHppkm5FqYF6Hny6+yTATjys=
X-Received: by 10.46.133.79 with SMTP id u15mr939630ljj.25.1521625685350; Wed,
 21 Mar 2018 02:48:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1a8f:0:0:0:0:0 with HTTP; Wed, 21 Mar 2018 02:48:04
 -0700 (PDT)
In-Reply-To: <20180321094422.GA18335@seema-Inspiron-15-3567>
References: <20180321094422.GA18335@seema-Inspiron-15-3567>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Wed, 21 Mar 2018 15:18:04 +0530
Message-ID: <CA+XqjF_N+4geKvAO3D1mbaynpu1u9HELhWKgP=gviWafJ8znSQ@mail.gmail.com>
Subject: Re: [PATCH] iptables: extension: Constify option struct
To: Netfilter Developer Mailing List <netfilter-devel@vger.kernel.org>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
	Florian Westphal <fw@strlen.de>, "David S. Miller" <davem@davemloft.net>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="883d24f227ec74e2570567e91653"

--883d24f227ec74e2570567e91653
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 21, 2018 at 3:14 PM, Arushi Singhal <
arushisinghal19971997@gmail.com> wrote:

> The struct of type option is only used to initialise a field and
> is not modified anywhere.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  extensions/libarpt_mangle.c | 2 +-
>  iptables/iptables-xml.c     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/extensions/libarpt_mangle.c b/extensions/libarpt_mangle.c
> index ec9b543..0d1f140 100644
> --- a/extensions/libarpt_mangle.c
> +++ b/extensions/libarpt_mangle.c
> @@ -32,7 +32,7 @@ static void arpmangle_print_help(void)
>  #define MANGLE_DEVT   '4'
>  #define MANGLE_TARGET '5'
>
> -static struct option arpmangle_opts[] = {
> +static const struct option arpmangle_opts[] = {
>         { .name = "mangle-ip-s",        .has_arg = true, .val = MANGLE_IPS
> },
>         { .name = "mangle-ip-d",        .has_arg = true, .val = MANGLE_IPT
> },
>         { .name = "mangle-mac-s",       .has_arg = true, .val =
> MANGLE_DEVS },
> diff --git a/iptables/iptables-xml.c b/iptables/iptables-xml.c
> index 49674ec..69c19a6 100644
> --- a/iptables/iptables-xml.c
> +++ b/iptables/iptables-xml.c
> @@ -38,7 +38,7 @@ static int verbose;
>  /* Whether to combine actions of sequential rules with identical
> conditions */
>  static int combine;
>  /* Keeping track of external matches and targets.  */
> -static struct option options[] = {
> +static const struct option options[] = {
>         {"verbose", 0, NULL, 'v'},
>         {"combine", 0, NULL, 'c'},
>         {"help", 0, NULL, 'h'},
> --
> 2.7.4
>
>
Please ignore this patch.

--883d24f227ec74e2570567e91653
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Mar 21, 2018 at 3:14 PM, Arushi Singhal <span dir=3D"ltr">&lt;<=
a href=3D"mailto:arushisinghal19971997@gmail.com" target=3D"_blank">arushis=
inghal19971997@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">The struct of type option is only used to initialise a field and<br>
is not modified anywhere.<br>
<br>
Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971997@g=
mail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
---<br>
=C2=A0extensions/libarpt_mangle.c | 2 +-<br>
=C2=A0iptables/iptables-xml.c=C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A02 files changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/extensions/libarpt_mangle.c b/extensions/libarpt_mangle.c<br>
index ec9b543..0d1f140 100644<br>
--- a/extensions/libarpt_mangle.c<br>
+++ b/extensions/libarpt_mangle.c<br>
@@ -32,7 +32,7 @@ static void arpmangle_print_help(void)<br>
=C2=A0#define MANGLE_DEVT=C2=A0 =C2=A0&#39;4&#39;<br>
=C2=A0#define MANGLE_TARGET &#39;5&#39;<br>
<br>
-static struct option arpmangle_opts[] =3D {<br>
+static const struct option arpmangle_opts[] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 { .name =3D &quot;mangle-ip-s&quot;,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 .has_arg =3D true, .val =3D MANGLE_IPS },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 { .name =3D &quot;mangle-ip-d&quot;,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 .has_arg =3D true, .val =3D MANGLE_IPT },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 { .name =3D &quot;mangle-mac-s&quot;,=C2=A0 =C2=
=A0 =C2=A0 =C2=A0.has_arg =3D true, .val =3D MANGLE_DEVS },<br>
diff --git a/iptables/iptables-xml.c b/iptables/iptables-xml.c<br>
index 49674ec..69c19a6 100644<br>
--- a/iptables/iptables-xml.c<br>
+++ b/iptables/iptables-xml.c<br>
@@ -38,7 +38,7 @@ static int verbose;<br>
=C2=A0/* Whether to combine actions of sequential rules with identical cond=
itions */<br>
=C2=A0static int combine;<br>
=C2=A0/* Keeping track of external matches and targets.=C2=A0 */<br>
-static struct option options[] =3D {<br>
+static const struct option options[] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&quot;verbose&quot;, 0, NULL, &#39;v&#39;},<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&quot;combine&quot;, 0, NULL, &#39;c&#39;},<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {&quot;help&quot;, 0, NULL, &#39;h&#39;},<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br>
<br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra">Pleas=
e ignore this patch.<br></div></div>

--883d24f227ec74e2570567e91653--

