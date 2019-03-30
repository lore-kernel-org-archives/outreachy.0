X-GM-THRID: 6673442126229929984
X-Received: by 2002:a2e:8881:: with SMTP id k1mr1341291lji.7.1553962515207;
        Sat, 30 Mar 2019 09:15:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a8b:: with SMTP id p11ls664414lji.11.gmail; Sat, 30 Mar
 2019 09:15:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy5brkYaaB0PCeJ432j9NkndqzEywzXagpqIWOLppS6RpkpZFdIuYpeR/TDP9NsBjPRjazy
X-Received: by 2002:a2e:361a:: with SMTP id d26mr1005808lja.21.1553962514215;
        Sat, 30 Mar 2019 09:15:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553962514; cv=none;
        d=google.com; s=arc-20160816;
        b=cVudJhDx1GlWxRDY2/TMQItwyASYWRGUkdapeyXJflKnopdlcN4dsfLj0yQiGCUEoS
         ErHCbpKvssfYx/TMwVtCj1Q27xbnSOvmKLdplqZHDFw31N347gjAUyRh8kJldpMljKHp
         JZzAXKFQnwJbGKR/oD0iFSFtS9GkZU43HhM/fcJyOAX+afs1ns+eAP8mDodQL4eSJ/m+
         bHel1aTOGFE0ZWfY4z1DxNgHVVwdQ70NOm+EmT6GcvECXk56/NOgqj+UXpSxUg6Qbk76
         zWv+nn8E2D7WJ7c7r4ktt8z+/4XZ8dUPIHUGYPVwLPPdpWTsZO5lWe6JT6IQOy17xQ2y
         kCtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0EOpOxPgKh8fnt2JEU/WcZX8TKzw1/v720YfsmAFEU8=;
        b=yvRjBVBfHsrtu5EA1TR0WgSQjsLmpeavbdPK8vHe/bwmK68S3KlHXGtQMZveKJQQsg
         kKj0Ad+3M5PtYJQUHh3PNP1OCrHx91oB5DDAuzAzUguW8jAU9NmehsMjkzwtA1o/BM62
         8P6purGS0jfYPpZXIbREGKMNBpOTqitQKra0/MwZQdUZwxyRbIPq3tNdknEuxBzTGLSd
         092k6pFPvwkBAk4S/+2dRG3HxRh9d1cDscLX7OCAZGSJuani0m/kOFoyWfswcsZPCuBx
         7zAConBBedyD9UtzgLaK9pjDopv6UcSwrmIWlP0f1hlEF2uf2fjNIaq4THt4kuaPHhJs
         NEjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z15si231210lfe.5.2019.03.30.09.15.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:15:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="376470299"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 17:15:13 +0100
Date: Sat, 30 Mar 2019 17:15:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 8/8 v2] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Remove unnecessary parentheses
In-Reply-To: <CANTOzWGgR=i0rbuPC4rWWsS_8NhoRUjbt71mWAVJM_OPbwSD=Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903301713280.2608@hadrien>
References: <1553959881-8361-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.21.1903301638410.2608@hadrien> <CANTOzWGgR=i0rbuPC4rWWsS_8NhoRUjbt71mWAVJM_OPbwSD=Q@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-915517340-1553962513=:2608"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-915517340-1553962513=:2608
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 30 Mar 2019, Payal Kshirsagar wrote:

>
>
> On Sat, 30 Mar 2019 at 21:10, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sat, 30 Mar 2019, Payal Kshirsagar wrote:
>
>       > Challenge suggested by coccinelle.
>       > Remove unnecessary parentheses around an expression.
>       >
>       > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
>       > ---
>       > Changes in v2:
>       >       -Patch made separated one(this patch) to remove unnecessary parentheses and another to fix the indentation issue.
>
>       This patch seems to adjust the indentation too.
>
>
> But I just removed parentheses in this patch.

Apparently not.  If you look atthe patch the returns are not lined up.
Perhaps this patch is based on your previous patch rather than on Greg's
tree.


>       If this is the last patch of the series, and doesn't update the
>       indentation, what will be the number of the patch that does update the
>       indentation?
>
>
> To fix the indentation issue it will require two patches to fix - statements should start on a tabstop and suspect code indent for conditional statements issues, so I will need to add two patches in this series. Can I do it as 1/10 to 10/10.

It's all whitespace.  I think it could be done in one patch.  Remove the
existing spaces and add the right number of tabs.

>       And have you resent all the other patches in the series?  Perhaps I just
>       haven't received them yet.
>
>
> I will send them all as v2.

You already sent one as v2, so the new ones would be v3.

julia

> thanks,
> payal
>
>       julia
>
>       >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>       > index 8fb03ef..7ca7d0c 100644
>       > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>       > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>       > @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>       >          if (pPMK->cmd == IW_PMKSA_ADD) {
>       >                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
>       >                  if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
>       > -                    return(intReturn);
>       > +                 return intReturn;
>       >                  else
>       >                      intReturn = true;
>       >
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553959881-8361-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CANTOzWGgR%3Di0rbuPC4rWWsS_8NhoRUjbt71mWAVJM_OPbwSD%3DQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-915517340-1553962513=:2608--

