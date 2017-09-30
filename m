X-GM-THRID: 6471275503571435520
X-Received: by 10.28.169.75 with SMTP id s72mr938962wme.21.1506748907832;
        Fri, 29 Sep 2017 22:21:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.160.247 with SMTP id n52ls2251664wrn.6.gmail; Fri, 29 Sep
 2017 22:21:47 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAGKG4LG0kOOSjcxEi556umq87ytbABvo3F9gxg49O9Y5vuU9r0NT82wDdlru5sjr4Ixyxm
X-Received: by 10.28.133.68 with SMTP id h65mr840129wmd.28.1506748907150;
        Fri, 29 Sep 2017 22:21:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506748907; cv=none;
        d=google.com; s=arc-20160816;
        b=vm9urNzqk32ol9hyT4W+gPcNgH0DyeSiOV7DWEQOB1EQFOBQeW96i+A/evgQep7q8g
         hXxMCfkiibe0KeDRz5DSChoS0wgWZsOegecXW9LQRdFpgpviW4N/IR1DcLLSk5kaKDAc
         XMiCGGSb4UukhuySXzsHckq7jAnsnmiqWAJBTW232GNWBL+Bwt+qwcqiWgncP6gL4ZS7
         iOLF8U9JwBkccdCrIb/QQQuJvddclqNecx+yoAMw+9g7A9BsERYfM+dzRKfNRivCjshv
         gROvS75lDdoe2gfvxlyQr8xHpddNcQHdEg6K7IKKDcUfrrxuSLs3vZCGfTronffBKWOa
         Dq7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:mime-version:user-agent:references:message-id
         :in-reply-to:subject:cc:to:from:date:arc-authentication-results;
        bh=+sS+JEI81Iz6skSyvcbPLsJGEFBpCVNJ1Gw+/nNgoYc=;
        b=RHEQZquSORS/eQCnm+qnuzOV0C+3o26P7kmvHRgA8rxWHV/Ictl6TdEJ+6S/oBKtgc
         8T8eFynj3ORjpy0OO4sunFpo+QJ+LTi2TRxppbgodySEPKT1cjkLppBvzwHlCFbZlc96
         8wNhGhwdr9WsvVKsxQ1uxEqaoe7PAdxmnqoBUycE7aJTjIgn7KQPNE4U/CqS8o2jPjrD
         rqBZUSH8ewMnUHJuk2yHwdjXQO5Lc4sxWOmKmj5aV9lrcbmXSA2j5tfOGLsTP2V/2lvv
         3790NMOrtkNnOqNS0hllkGl5q6MR3XuUj+hy9k2+VCQGL37gd8KzgtQKXh2z39o8snQQ
         7QvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q145si857056wme.4.2017.09.29.22.21.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 22:21:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,456,1500933600"; 
   d="scan'208";a="239210406"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2017 07:21:46 +0200
Date: Sat, 30 Sep 2017 07:21:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Remove unnecessary
 comments.
In-Reply-To: <1506720915.2117.10.camel@gmail.com>
Message-ID: <alpine.DEB.2.20.1709300715370.2511@hadrien>
References: <1506711232-19670-1-git-send-email-shreeya.patel23498@gmail.com>  <alpine.DEB.2.20.1709292310000.3517@hadrien> <1506720915.2117.10.camel@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-969034282-1506748601=:2511"
Content-ID: <alpine.DEB.2.20.1709300720220.2511@hadrien>

--8323329-969034282-1506748601=:2511
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.20.1709300720221.2511@hadrien>



On Sat, 30 Sep 2017, Shreeya Patel wrote:

> On Fri, 2017-09-29 at 23:10 +0200, Julia Lawall wrote:
> >
> > On Sat, 30 Sep 2017, Shreeya Patel wrote:
> >
> > >
> > > The comments regarding memset are not needed in the
> > > files which have been modified since the necessary changes
> > > are already there in the files.
> > The comments don't look very useful, but I don't understand "since
> > the
> > necessary changes are alread there in the files"
> >
> > julia
>
>
> The comments are put to notify that memset() is not required because
> vzalloc is used. But we don't need this comment as patches for this
> driver has already been applied to remove memset() code. Also I have
> checked the whole file, but there isn't any place where memset() needs
> to be removed.

My interpretation was that the comments were there to explain why the call
to memset is in comments.  But both could just go.  There is another
commented call to memset in rtw_recv.c that doesn't have the preceding
justification.  That could go too.

julia

>
> �
> >
> >
> > >
> > >
> > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > > ---
> > > �drivers/staging/rtl8723bs/core/rtw_mlme.c�����| 3 ---
> > > �drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 3 ---
> > > �drivers/staging/rtl8723bs/core/rtw_recv.c�����| 3 ---
> > > �drivers/staging/rtl8723bs/core/rtw_xmit.c�����| 3 ---
> > > �4 files changed, 12 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > > b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > > index 6b77820..5b583f7 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > > @@ -28,9 +28,6 @@ sint	_rtw_init_mlme_priv(struct adapter
> > > *padapter)
> > > �	struct mlme_priv�	*pmlmepriv = &padapter->mlmepriv;
> > > �	sint	res = _SUCCESS;
> > >
> > > -	/*��We don't need to memset padapter->XXX to zero, because
> > > adapter is allocated by vzalloc(). */
> > > -	/* memset((u8 *)pmlmepriv, 0, sizeof(struct mlme_priv));
> > > */
> > > -
> > > �	pmlmepriv->nic_hdl = (u8 *)padapter;
> > >
> > > �	pmlmepriv->pscanned = NULL;
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > > b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > > index b6d137f..ca35c1c 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > > @@ -474,9 +474,6 @@ int	init_mlme_ext_priv(struct adapter
> > > *padapter)
> > > �	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
> > > �	struct mlme_ext_info *pmlmeinfo = &(pmlmeext-
> > > >mlmext_info);
> > >
> > > -	/*��We don't need to memset padapter->XXX to zero, because
> > > adapter is allocated by vzalloc(). */
> > > -	/* memset((u8 *)pmlmeext, 0, sizeof(struct
> > > mlme_ext_priv)); */
> > > -
> > > �	pmlmeext->padapter = padapter;
> > >
> > > �	/* fill_fwpriv(padapter, &(pmlmeext->fwpriv)); */
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > index 68a6303..9c08307 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > @@ -46,9 +46,6 @@ sint _rtw_init_recv_priv(struct recv_priv
> > > *precvpriv, struct adapter *padapter)
> > > �	union recv_frame *precvframe;
> > > �	sint	res = _SUCCESS;
> > >
> > > -	/*��We don't need to memset padapter->XXX to zero, because
> > > adapter is allocated by vzalloc(). */
> > > -	/* memset((unsigned char *)precvpriv, 0, sizeof
> > > (struct��recv_priv)); */
> > > -
> > > �	spin_lock_init(&precvpriv->lock);
> > >
> > > �	_rtw_init_queue(&precvpriv->free_recv_queue);
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > > b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > > index 022f654..8cd05f8 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > > @@ -51,9 +51,6 @@ s32	_rtw_init_xmit_priv(struct xmit_priv
> > > *pxmitpriv, struct adapter *padapter)
> > > �	struct xmit_frame *pxframe;
> > > �	sint	res = _SUCCESS;
> > >
> > > -	/*��We don't need to memset padapter->XXX to zero, because
> > > adapter is allocated by vzalloc(). */
> > > -	/* memset((unsigned char *)pxmitpriv, 0, sizeof(struct
> > > xmit_priv)); */
> > > -
> > > �	spin_lock_init(&pxmitpriv->lock);
> > > �	spin_lock_init(&pxmitpriv->lock_sctx);
> > > �	sema_init(&pxmitpriv->xmit_sema, 0);
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> > > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.
> > > com.
> > > To view this discussion on the web visit https://groups.google.com/
> > > d/msgid/outreachy-kernel/1506711232-19670-1-git-send-email-
> > > shreeya.patel23498%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506720915.2117.10.camel%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-969034282-1506748601=:2511--

