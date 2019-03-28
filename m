X-GM-THRID: 6673442126229929984
X-Received: by 2002:a1c:48b:: with SMTP id 133mr24705wme.4.1553783700828;
        Thu, 28 Mar 2019 07:35:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:2292:: with SMTP id 18ls512241wmf.3.canary-gmail;
 Thu, 28 Mar 2019 07:34:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzoGbOMMDTftPit/yJcS8UfSyp/rZRwRGY+ypedpsbPWqO7H31MdX7I5LiftdEkPYSAyNtS
X-Received: by 2002:a1c:a74a:: with SMTP id q71mr21111wme.19.1553783699685;
        Thu, 28 Mar 2019 07:34:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553783699; cv=none;
        d=google.com; s=arc-20160816;
        b=UCFkaXm2E8OGfwWRXOXz7dtgXVCJ7Pgd78XW0mU85AV1wVDQr5UH0ZnG0X2ixH5mr/
         4CMitfr8jurGJoqNjmyZDl+bQeX6rniMbrOZt1P+gn/zAQpOyLyV8HZBhnk+8zu6UacJ
         iEphU5TqFV1NcVBkUZHLx6L0wSqWi4ajFGNDwM27x67URhPeGuRY0s7SuinGif8teZEW
         bl1ssdY/PF0REjYfmLq5C2g0jcIsA+zBecxARu3dOqz5VaiMVNupYLZxubU2CH+kwENo
         IyGWNm1Px379/mfJHj0ZlPANwy6g9d4zcbEEm/Hz67b7uCZV4uWzDdpdH+qXTNc3Qdes
         zcfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0N1N6Mn6lGGsFMM2qaGkVZ9aS9Er4FwO104NZL98/10=;
        b=n6cmU0dA7ltoqKm48S4DreBK5LcfC3VofObBoe8GeaygfFoQI7UP5AZCqK7TIRMYIt
         JcMW5Gy14Eub8JfXoEUU1WuO7dWQ8pFTTy46nyY+CicB/xfdpoyoekxiCIoIYfk+P4uS
         A9yyDRGJf5TVi3+/5rBWSIO7Pdds8I8o/qsnhOMZM+c001a2nGkqZI8joPAaGnE+7lOj
         U7jMhmiEpObLVACHQUEgM70wRtNqLVFE765yloZ+ker4YTAFT8zVVOyaj0N9LrO+4qkb
         0wbJYk8W+PY0m0T7kxYnNiROiE2RxPCl+zxFjpFUZe9/+B6J8IBSS7PXb4eY6dTVhlYE
         nVPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B1JSTOJ8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id k15si1261606wrq.1.2019.03.28.07.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 07:34:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B1JSTOJ8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x136.google.com with SMTP id 10so14172014lfr.8
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 07:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0N1N6Mn6lGGsFMM2qaGkVZ9aS9Er4FwO104NZL98/10=;
        b=B1JSTOJ8zXQS4XbS3p/Yc+W/BZ1y14HD2YRz31S738sRFjqw9XBWapJXMuV0GWWHT0
         Z4tzj6l+iD/0DTxlvsNKXN7UPFkJgcfu+ZGyYQ/VRdZj0yu1tc00tB4VvGlHM2EdzXRV
         gj2O2LSTEFIEW+hCfHxPCxv0JWkpkVBR2wHE734Q9SQSY7hSMeqz5mwtOGYnojW/d+Vj
         YZZ6tmfgVbnss3o+Tt76QVuh94Fh/Luo5yowiNqTm/7ucUIUgzwL2TFEcX450pTIa1Xb
         uVzDRa7OCdPF7JBNd2ogufTbQcx/dXSOmTgRIYWLFrAdFDvkmcsL2fHxMazCdLxN/+oN
         g7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0N1N6Mn6lGGsFMM2qaGkVZ9aS9Er4FwO104NZL98/10=;
        b=TaNVdYl0YyAAKBxaLHo/WjvzNz3lWwb5EVB5rn6JdvXYK4of5PyzCuHiiCy4O8LiXF
         AN7X0Rcz4H4dXUq1N8spDbR9C2yZGnE81JoZKzO8zLWdVACKQXFZ5sMb9ggW3exyLv9l
         EkQ9f4yZfeuPYoh4jwmL+ntaESxd+m6B1M9PwgarTZjWHL5xWJAsou89u6rmvFPfjXjN
         MHohB0TQP5snPDqwgraAxoj/Ao2DO+3ZhsTw7meM2hhzCGbx/I8kjIa0qlplCqds9L1m
         nkNneV5lahVjaa7T/xf+/zXCU5YAycaF6f7P7cRRR60FL1uQB8NJOyEWxs7J+nXFX/8C
         zHqA==
X-Gm-Message-State: APjAAAWRfuv7wLQli1PyfqKPUG+0oiSJxf+8oQilW40bIwDRCJm/6/uJ
	YgNA69rbpN580HmrhX2MxFP1GuMZraJWtrZJ2CRDsw==
X-Received: by 2002:a19:c314:: with SMTP id t20mr22209247lff.114.1553783699427;
 Thu, 28 Mar 2019 07:34:59 -0700 (PDT)
MIME-Version: 1.0
References: <1553781808-10349-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903281525280.2438@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903281525280.2438@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Thu, 28 Mar 2019 20:04:46 +0530
Message-ID: <CANTOzWHy6WebB5iGOJDz8G1zoC4K0FCfmP54APRyqNPAwXiumA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unnecessary parentheses
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007654fe058528758b"

--0000000000007654fe058528758b
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 28, 2019, 7:57 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 28 Mar 2019, Payal Kshirsagar wrote:
>
> > Challenge suggested by coccinelle
> >
> > This patch removes unnecessary parentheses while returning a value.
> > Using following semantic patch:
> >
> > @@
> > local idexpression id;
> > @@
> >
> > - return(id);
> > + return id;
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
> > ---
> > diff -u -p a/os_dep/ioctl_linux.c b/os_dep/ioctl_linux.c
> > --- a/os_dep/ioctl_linux.c
> > +++ b/os_dep/ioctl_linux.c
> > @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_d
> >          if (pPMK->cmd == IW_PMKSA_ADD) {
> >                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
> >                  if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> > -                    return(intReturn);
> > +                    return intReturn;
> >                  else
> >                      intReturn = true;
> >
> > @@ -1489,7 +1489,7 @@ exit:
> >       DBG_871X("DBG_IOCTL %s:%d return %d\n", __func__, __LINE__, ret);
> >       #endif
> >
> > -     return ret ;
> > +     return ret;
>
> There are two kinds of change: one drops parentheses and one drops a
> space.  Both are good, but they should be in two separate patches.
>

Okay, I will put them in different patches and will send it again.
Thanks,
Payal

The second one is because Coccinelle implicitly ignores parentheses,
> unless you tell it not to, so it actually matches and repretty prints all
> returns.  In the second case it caused a change.
>
> julia
>
> >
> >  }
> >
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1553781808-10349-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903281525280.2438%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000007654fe058528758b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Thu, Mar 28, 2019, 7:57 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawa=
ll@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Thu, 28 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Challenge suggested by coccinelle<br>
&gt;<br>
&gt; This patch removes unnecessary parentheses while returning a value.<br=
>
&gt; Using following semantic patch:<br>
&gt;<br>
&gt; @@<br>
&gt; local idexpression id;<br>
&gt; @@<br>
&gt;<br>
&gt; - return(id);<br>
&gt; + return id;<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;payal.s.kshirsagar.98@gmail.c&gt;<=
br>
&gt; ---<br>
&gt; diff -u -p a/os_dep/ioctl_linux.c b/os_dep/ioctl_linux.c<br>
&gt; --- a/os_dep/ioctl_linux.c<br>
&gt; +++ b/os_dep/ioctl_linux.c<br>
&gt; @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_d<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (pPMK-&gt;cmd =3D=3D IW_PMKSA_ADD=
) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DBG_871X=
(&quot;[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!mem=
cmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return(intReturn);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return intReturn;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 intReturn =3D true;<br>
&gt;<br>
&gt; @@ -1489,7 +1489,7 @@ exit:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;DBG_IOCTL %s:%d return %d\n&q=
uot;, __func__, __LINE__, ret);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#endif<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return ret ;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ret;<br>
<br>
There are two kinds of change: one drops parentheses and one drops a<br>
space.=C2=A0 Both are good, but they should be in two separate patches.<br>=
</blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></blockquote></div></=
div><div dir=3D"auto">Okay, I will put them in different patches and will s=
end it again.</div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Payal</=
div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
The second one is because Coccinelle implicitly ignores parentheses,<br>
unless you tell it not to, so it actually matches and repretty prints all<b=
r>
returns.=C2=A0 In the second case it caused a change.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1553781808-10349-1-git-send-email-payal.s.=
kshirsagar.98%40gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://groups.google.com/d/msgid/outreachy-kernel/1553781808-10349-1-git-s=
end-email-payal.s.kshirsagar.98%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903281525280.2438%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903281525280.2438%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--0000000000007654fe058528758b--

