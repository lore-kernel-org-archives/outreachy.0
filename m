X-GM-THRID: 6673442126229929984
X-Received: by 2002:a1c:7611:: with SMTP id r17mr713925wmc.0.1553961943622;
        Sat, 30 Mar 2019 09:05:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:53cb:: with SMTP id a11ls149473wrw.0.gmail; Sat, 30 Mar
 2019 09:05:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyYFQFR4CJwCRbArhlI7nAtCN1vWhLP2k66qp1k9Z3fl9Asdk3fxjsdS5EPdTNfhCcELd85
X-Received: by 2002:a5d:6189:: with SMTP id j9mr1234480wru.0.1553961942780;
        Sat, 30 Mar 2019 09:05:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553961942; cv=none;
        d=google.com; s=arc-20160816;
        b=qE7hENj588w4+J6pgk5l3e1cSH5rq8fdFZ5n1ZfPoklevuu/TCnQu8b1sVw6k4rsUM
         tQC6Atdq+1NaDqAkS6TuTn6USh3GyILn+zRsexj+FkWAFo+E1lVjM+i2Fls9KzgbY4Hw
         B4zWN6KEYBbJkwgaY2f4VJ4M2CnUDgXBOhvM9R5uvqTAzqSVcjJva7Zz518Q73dbK0w3
         ojm7nbY+tZdI6v3XmT0fjaiBjBa7VW1oh2RSLH1W6miODgFxUbi5aRVkLknj+0ePVaRE
         +4SvkPmXWIu5d3vPD9gP/o/gZAo/51bVbbJdBaTlKukkjSHeHjnNEe0+kRfDL5oOM+xl
         o/Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zn6cYmostwHCndyLh2UgyQ+ODLclnTCxnoTBc9Z9zT0=;
        b=g50yJY1vryNLFoA7zbj3Ex1tSMRsfr0bEK0JG3qS9VEpU7FJrbS8AkeRne2zYYN8Rv
         pIdV/x1F6fgA+OMR/x4yzd6oucfE22PMelwwaUc1wntJfYYjzSCYnWfW9wmIj5EUFSm5
         co2LjSGO7F/NHZ6EuAUxGwBSYpAz6lFB/bkd43u7Uye9d4R442yESM/mHmh+6ntSBbHM
         s7EhTanXL2QlUsx7vmhIWzv5Tps2dr6bZsVtlPPBKGNjkr53xsHuOlXMESU+Y8/R6C7i
         EqNd8PyJUGzuvnsyfc2d4DmY48kIMGe3NfsaLAvgBwuJMM3odnLXiPNg6deFNzKjll4M
         lifg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RElBvSiq;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id p14si116382wmh.2.2019.03.30.09.05.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:05:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RElBvSiq;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id d18so3437008lfn.3
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 09:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zn6cYmostwHCndyLh2UgyQ+ODLclnTCxnoTBc9Z9zT0=;
        b=RElBvSiqt62tQK0mFQQCgg3nyygixHFKkdXz4mPq3SXCzUTDowm10KS3z85TGs4GN9
         E+3pnZcUlb0z857q0UPWHQ3x+ARImW7z3+IgkxPOA/tTDEUs/2ov6SFc/Tyby+oV2Ej/
         /xSUaxLX7n6hNKioDNtUTGH9p4q6IMskbqke7+akIT6GyPVr+goKqdsktqdnHOpDt/ke
         aOnO6FgNK5I0DpnOEz93n2W2p0NOCvK10MBTYwY6rB8clOg9iReKasm/oOeGUTWGxVcW
         x6F93xrkgtRSnmtOsjKo1hiHvVaE4rGU55MonRSaxw5C4KdwwFLjpdo+y8pWTEj9Y//Q
         XWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zn6cYmostwHCndyLh2UgyQ+ODLclnTCxnoTBc9Z9zT0=;
        b=CV2gl2uznA2JJtLBDLaoC9ndOn5WY1058OJGNsuFKN+C8pC8EwYgOcEQ25j87GHHkr
         hsG1+qg/tO5xFGQCW3qogktdDiBUyQRKYVR58QX3HPOTAPBtflVmhthC9oBeWDVCoqfw
         zfvjCIi9//KsIPDPTv1qmrfBS2qzaYQ83xmfCXw9vOWoiJ7XUddeNNqYFXNeYXrxULQu
         OtFX7Y4Tb1sDdQpvKle+BIRscfhNzLIoqFWeRwgpD0yexOrpJhuX58EiUcgtX1LvPd6z
         kj2s8AglfT+sXyKOXgA7BRcRHoTbUVrvJBIGTii6WcryvdSLanqjQ/m4pTdl6BaHt2gP
         X/JQ==
X-Gm-Message-State: APjAAAX+C99GvYu17yf86KWJc9cno1l/uyRlEXbxD7wYpV5NT1DfcyCX
	/TT4EqvgN4Jam9DOiUiGbGIarpVmfKvZDVWThws=
X-Received: by 2002:a19:f809:: with SMTP id a9mr4237327lff.8.1553961941892;
 Sat, 30 Mar 2019 09:05:41 -0700 (PDT)
MIME-Version: 1.0
References: <1553959881-8361-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.21.1903301638410.2608@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903301638410.2608@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 30 Mar 2019 21:35:29 +0530
Message-ID: <CANTOzWGgR=i0rbuPC4rWWsS_8NhoRUjbt71mWAVJM_OPbwSD=Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 8/8 v2] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Remove unnecessary parentheses
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000008a887c058551f504"

--0000000000008a887c058551f504
Content-Type: text/plain; charset="UTF-8"

On Sat, 30 Mar 2019 at 21:10, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 30 Mar 2019, Payal Kshirsagar wrote:
>
> > Challenge suggested by coccinelle.
> > Remove unnecessary parentheses around an expression.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> > Changes in v2:
> >       -Patch made separated one(this patch) to remove unnecessary
> parentheses and another to fix the indentation issue.
>
> This patch seems to adjust the indentation too.
>

But I just removed parentheses in this patch.

If this is the last patch of the series, and doesn't update the
> indentation, what will be the number of the patch that does update the
> indentation?
>

To fix the indentation issue it will require two patches to fix -
statements should start on a tabstop and suspect code indent for
conditional statements issues, so I will need to add two patches in this
series. Can I do it as 1/10 to 10/10.


> And have you resent all the other patches in the series?  Perhaps I just
> haven't received them yet.
>

I will send them all as v2.
thanks,
payal

julia
>
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index 8fb03ef..7ca7d0c 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >          if (pPMK->cmd == IW_PMKSA_ADD) {
> >                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
> >                  if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> > -                    return(intReturn);
> > +                 return intReturn;
> >                  else
> >                      intReturn = true;
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1553959881-8361-1-git-send-email-payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--0000000000008a887c058551f504
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, 30 Mar 2019 at 21:10, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sat, 30 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Remove unnecessary parentheses around an expression.<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Patch made separated one(this patch) to rem=
ove unnecessary parentheses and another to fix the indentation issue.<br>
<br>
This patch seems to adjust the indentation too.<br></blockquote><div><br></=
div><div>But I just removed parentheses in this patch.</div><div> <br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
If this is the last patch of the series, and doesn&#39;t update the<br>
indentation, what will be the number of the patch that does update the<br>
indentation?<br></blockquote><div><br></div><div>To fix the indentation iss=
ue it will require two patches to fix=20


=09
	<span></span> - statements should
start on a tabstop and suspect code indent for conditional statements issue=
s, so I will need to add two patches in this series. Can I do it as 1/10 to=
 10/10.<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
And have you resent all the other patches in the series?=C2=A0 Perhaps I ju=
st<br>
haven&#39;t received them yet.<br></blockquote><div><br></div><div>I will s=
end them all as v2.<br></div><div>thanks,</div><div>payal</div><div><br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
julia<br>
<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/=
staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; index 8fb03ef..7ca7d0c 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (pPMK-&gt;cmd =3D=3D IW_PMKSA_ADD=
) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DBG_871X=
(&quot;[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!mem=
cmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return(intReturn);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return =
intReturn;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 intReturn =3D true;<br>
&gt;<br>
&gt; --<br>
&gt; 2.7.4<br>
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
gle.com/d/msgid/outreachy-kernel/1553959881-8361-1-git-send-email-payal.s.k=
shirsagar.98%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://grou=
ps.google.com/d/msgid/outreachy-kernel/1553959881-8361-1-git-send-email-pay=
al.s.kshirsagar.98%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div></div>

--0000000000008a887c058551f504--

