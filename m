X-GM-THRID: 6673442126229929984
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr735672wme.5.1553962698045;
        Sat, 30 Mar 2019 09:18:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cd09:: with SMTP id f9ls708118wmj.12.gmail; Sat, 30 Mar
 2019 09:18:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqypejgpctuoF4tZbxuy4oJU8PRDyN798Unu3toimSfdA/asWqPOvmnB0yu58scNpyfh6EkE
X-Received: by 2002:a1c:700d:: with SMTP id l13mr717267wmc.16.1553962696826;
        Sat, 30 Mar 2019 09:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553962696; cv=none;
        d=google.com; s=arc-20160816;
        b=YxftHI+ZsOxZjyiluF6fhDjYUaocD+BNGmiKiRoJ+xda+B7L7zM+mLQkx3zLgFBpyx
         7/JMnZgfcUkksfQOMae1gKC8Fts2gF+kVYMAwfrvS4sctj1uUpRULkrBnqqwDIwBsTrW
         qR5vSz6iMDx+mdossBQ7mhQwVabW+Uktd0cyC3obGjWKHWEgBDX0XWiU0YsJxhX31OZd
         BDXD/u6g30BGtrEUIL/mY4wyup9Wayhwryea0MR0FG3ceu8Hk6YayKgCHYAxqXPsfG+D
         Ik0olPGhogIeMmzk+aSJ6hmvRWRHYOJ2w5Yfwdc/s60kmdq9mCqFT10oioTm1gEpl4JR
         xCOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2rbhLVNnlnDoZJZdUIqOf7Lihjy0G2kqzkyqsprHt/U=;
        b=wj4QczDAN6gjdPBfhCqwOFm61XlVgedpVXFSS0YBcz+hCIQvAmS8OsNtOunC25e3h7
         Bh1Yl6VV2KDIdIQ+asvinHq7P0OPnK5QGl8KkMqgrXVfvWpoWrbCpqI8BvR8jmNd1ITh
         6UJvIlOC5LYU64nQ+9+ZvDL8h/o0kLyKM66yN/N9zcL5y5ye5o+ppgqseBsRUWV3BbIj
         ijJ6wJtKOjAl6oMVZb6VszZcTJ1E8zh++HHB0IWi74cyUmxkd687U8aUdk5bt46DZKyl
         8d4x637g8E71ak42ZQaV6p7ws0tgw+aYmRwwe7NR8HDWYM3jUSXNPzf2Ydy45rQBLe7j
         0PgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="V6/1Rvs/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o3si284732wmf.0.2019.03.30.09.18.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="V6/1Rvs/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id j89so4527072ljb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 09:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2rbhLVNnlnDoZJZdUIqOf7Lihjy0G2kqzkyqsprHt/U=;
        b=V6/1Rvs/sTjOQAMS1wXdW7HzpCfG6q0XldpkjFOYsZLADwFex///WfBGJVe4C6GNVi
         RagNSmw5B8dOio/9lDkN5vXGNY71fgn1yE5MAz9n90bfFjMDB/hTOG2hFiOhFe5r7CMl
         gziI2VwbUKyppZ9XowQJ0WTj0ys765jLQ9AKAwDghgeCJiNzgJpvwZNf7ahKJ8XajhCV
         C45mEfQam/BV3+jLpGHqDfUgoqa91Bwd9K8zMsD7JcRmNEGwx2A4P1jjW6+0PqZE9tgW
         ikv8bpxMRodBh3ltjjVnEK36oVoQGzAP6fUYAZrSWNLJDMJidBp0t7nf50cxYn078xMr
         Ajiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2rbhLVNnlnDoZJZdUIqOf7Lihjy0G2kqzkyqsprHt/U=;
        b=HGVeYnTsdFQF5SUC+YrYKXx33VxGqYZwnqWCa3S03xh7GTSA56QF4brvcFwCLTpGPC
         iY8+luu4Bk4CMYYk12T/pCGoV9C7SBF97oqErZFq8iTjEp2enCpj69v5zLzrxJ1F8CY9
         VOUnGX/nem3XzUmop7b6+HSWTamwyS2tEprsW1fcDua8+SXfbRDoF2xZQhYhzh7nnYyI
         T5O9qDt32OQ0PT9VVgrztUmb28XOhqCUD+H+ScFJp4xVEjrySzg6gKry1CG7Shyc7GV0
         TVuSyfGqCepKhZN1wtqoOUCH7kWfzbyEoI6svL0mL+urBbI+xURSmHj0zW5A3AM5AFv7
         Y9fQ==
X-Gm-Message-State: APjAAAXwqMNDnnQ4f8hZq37hSkfSxrlhfD2j2o/T59cEGrudxEE5ypQB
	MsnBJFSGpdVmY0ivJMz+JhF0QEmF8MzuOmTbWKHljg==
X-Received: by 2002:a2e:924c:: with SMTP id v12mr29602454ljg.185.1553962696351;
 Sat, 30 Mar 2019 09:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <1553959881-8361-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903301638410.2608@hadrien> <CANTOzWGgR=i0rbuPC4rWWsS_8NhoRUjbt71mWAVJM_OPbwSD=Q@mail.gmail.com>
 <alpine.DEB.2.21.1903301713280.2608@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903301713280.2608@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 30 Mar 2019 21:48:02 +0530
Message-ID: <CANTOzWHRbDB6uX5K7vrbh2WDuf_TJ-2az5KmeOX+zQ8A3NzSyQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 8/8 v2] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Remove unnecessary parentheses
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000082a56805855222e5"

--00000000000082a56805855222e5
Content-Type: text/plain; charset="UTF-8"

On Sat, 30 Mar 2019 at 21:45, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 30 Mar 2019, Payal Kshirsagar wrote:
>
> >
> >
> > On Sat, 30 Mar 2019 at 21:10, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >       On Sat, 30 Mar 2019, Payal Kshirsagar wrote:
> >
> >       > Challenge suggested by coccinelle.
> >       > Remove unnecessary parentheses around an expression.
> >       >
> >       > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com
> >
> >       > ---
> >       > Changes in v2:
> >       >       -Patch made separated one(this patch) to remove
> unnecessary parentheses and another to fix the indentation issue.
> >
> >       This patch seems to adjust the indentation too.
> >
> >
> > But I just removed parentheses in this patch.
>
> Apparently not.  If you look atthe patch the returns are not lined up.
> Perhaps this patch is based on your previous patch rather than on Greg's
> tree.
>
>
> >       If this is the last patch of the series, and doesn't update the
> >       indentation, what will be the number of the patch that does update
> the
> >       indentation?
> >
> >
> > To fix the indentation issue it will require two patches to fix -
> statements should start on a tabstop and suspect code indent for
> conditional statements issues, so I will need to add two patches in this
> series. Can I do it as 1/10 to 10/10.
>
> It's all whitespace.  I think it could be done in one patch.  Remove the
> existing spaces and add the right number of tabs.
>
> >       And have you resent all the other patches in the series?  Perhaps
> I just
> >       haven't received them yet.
> >
> >
> > I will send them all as v2.
>
> You already sent one as v2, so the new ones would be v3.
>

Okay I will send them in v3.
thanks,
payal


>
> julia
>
> > thanks,
> > payal
> >
> >       julia
> >
> >       >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
> >       >  1 file changed, 1 insertion(+), 1 deletion(-)
> >       >
> >       > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> >       > index 8fb03ef..7ca7d0c 100644
> >       > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> >       > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> >       > @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct
> net_device *dev,
> >       >          if (pPMK->cmd == IW_PMKSA_ADD) {
> >       >                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
> >       >                  if (!memcmp(strIssueBssid, strZeroMacAddress,
> ETH_ALEN))
> >       > -                    return(intReturn);
> >       > +                 return intReturn;
> >       >                  else
> >       >                      intReturn = true;
> >       >
> >       > --
> >       > 2.7.4
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> >       > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1553959881-8361-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
> .
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CANTOzWGgR%3Di0rbuPC4rWWsS_8NhoRUjbt71mWAVJM_OPbwSD%3DQ%40mail.gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--00000000000082a56805855222e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, 30 Mar 2019 at 21:45, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sat, 30 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Sat, 30 Mar 2019 at 21:10, Julia Lawall &lt;<a href=3D"mailto:julia=
.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sat, 30 Mar 2019, Payal Kshirsagar wrote:=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Challenge suggested by coccinelle.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Remove unnecessary parentheses around a=
n expression.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Payal Kshirsagar &lt;<a =
href=3D"mailto:payal.s.kshirsagar.98@gmail.com" target=3D"_blank">payal.s.k=
shirsagar.98@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Patch made s=
eparated one(this patch) to remove unnecessary parentheses and another to f=
ix the indentation issue.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0This patch seems to adjust the indentation t=
oo.<br>
&gt;<br>
&gt;<br>
&gt; But I just removed parentheses in this patch.<br>
<br>
Apparently not.=C2=A0 If you look atthe patch the returns are not lined up.=
<br>
Perhaps this patch is based on your previous patch rather than on Greg&#39;=
s<br>
tree.<br>
<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0If this is the last patch of the series, and=
 doesn&#39;t update the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0indentation, what will be the number of the =
patch that does update the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0indentation?<br>
&gt;<br>
&gt;<br>
&gt; To fix the indentation issue it will require two patches to fix - stat=
ements should start on a tabstop and suspect code indent for conditional st=
atements issues, so I will need to add two patches in this series. Can I do=
 it as 1/10 to 10/10.<br>
<br>
It&#39;s all whitespace.=C2=A0 I think it could be done in one patch.=C2=A0=
 Remove the<br>
existing spaces and add the right number of tabs.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0And have you resent all the other patches in=
 the series?=C2=A0 Perhaps I just<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0haven&#39;t received them yet.<br>
&gt;<br>
&gt;<br>
&gt; I will send them all as v2.<br>
<br>
You already sent one as v2, so the new ones would be v3.<br></blockquote><d=
iv><br></div><div>Okay I will send them in v3.</div><div>thanks,</div><div>=
payal<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
<br>
julia<br>
<br>
&gt; thanks,<br>
&gt; payal<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/rtl8723bs/os_dep/=
ioctl_linux.c | 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 1 insertion(+), 1=
 deletion(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/rtl8723bs/=
os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 8fb03ef..7ca7d0c 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/rtl8723bs/os_dep/=
ioctl_linux.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/rtl8723bs/os_dep/=
ioctl_linux.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -961,7 +961,7 @@ static int rtw_wx_s=
et_pmkid(struct net_device *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (p=
PMK-&gt;cmd =3D=3D IW_PMKSA_ADD) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 DBG_871X(&quot;[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n&=
quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_=
ALEN))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return(intReturn);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0return intReturn;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 intReturn =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.7.4<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the Google Groups &quot;outreachy-kernel&quot; group.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from it, send an email to <a href=3D"mailto:outreachy-ker=
nel%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsu=
bscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to <a=
 href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank">outrea=
chy-kernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
t <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/1553959881-=
8361-1-git-send-email-payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer"=
 target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/15539=
59881-8361-1-git-send-email-payal.s.kshirsagar.98%40gmail.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/CANTOzWGgR%3Di0rbuPC4rWWsS_8NhoRUjbt71mWAV=
JM_OPbwSD%3DQ%40mail.gmail.com" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/msgid/outreachy-kernel/CANTOzWGgR%3Di0rbuPC4rWWsS_8Nh=
oRUjbt71mWAVJM_OPbwSD%3DQ%40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
&gt;</blockquote></div></div>

--00000000000082a56805855222e5--

