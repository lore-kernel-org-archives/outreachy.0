X-GM-THRID: 6471275503571435520
X-Received: by 10.84.240.10 with SMTP id y10mr850027plk.23.1506720921639;
        Fri, 29 Sep 2017 14:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.229.130 with SMTP id az2ls568968plb.2.gmail; Fri, 29 Sep
 2017 14:35:20 -0700 (PDT)
X-Received: by 10.84.232.200 with SMTP id x8mr844936plm.43.1506720920639;
        Fri, 29 Sep 2017 14:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506720920; cv=none;
        d=google.com; s=arc-20160816;
        b=KLmpSrvMPME4byFQldqxlWv4/SO32VWlgJ/KD5mHjMlvpmwNYC6+baH2mYGe6xJfaE
         fkSJw1ydC3nDG6kCEpcners030ffFSbZaL8xdLYd6GP3C2qmYOY90nPoYFVHMI0PdlX6
         9A/3uXqs3CSJ1JWkQ/T3poYUdWcOdD2pqtqjldb9lJylyywnlU7jJMtlV/rNRNXNZ9DY
         OgZitMmG0xPuWjzoGY29Iv4W86YiqSQgJ7C+rgmEizss1qysptowaCpyR6Ko1NcN2Pbk
         LEWTuU/YrJeDR7WKbcymf96iYy1VLH9mrOdycVKbfA+qdFLTQWgWQ9kxjKGWm+By9eDx
         ihjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=DHgDKV8bsrXIKwIbk7V3Dv7k5SRj9AXXTzIG8P5qoFc=;
        b=BHUPXzRdLHsmbBTWoEA90yR4xH9v1FgoK0Dea1aa4ono5L3crZ9pWkg/qZV6Th5fYJ
         mWEKG6juQOloS6XCYuHTTKdSwvLJD8lNk6IFz0Kgoxf8zEZgKudXG7nddbb5fECQ/MJe
         IaeMW2drbZpdbxLZPJTXdHrB1OD4WgQnAwniwC1Xe9G/AyHMHYRgLE5VhSJ2AGms02/9
         nyhtMiyjBLF7StJldC+QK4PX/x7ilGJQ0zf8ed0Ji65ZZmBw1oBUB1OVHzvjmefExWYh
         TjvHVaolDKjoOhnDkkp/eFR+WzxjBM4K/HDc0YcjQQQnvVcYLPNUdEZfrDsFgftIBpjF
         hIOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dl7ClsMD;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id b6si636995pfm.28.2017.09.29.14.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 14:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dl7ClsMD;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id f84so500842pfj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 14:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DHgDKV8bsrXIKwIbk7V3Dv7k5SRj9AXXTzIG8P5qoFc=;
        b=dl7ClsMDcRrn7H1xK10DJQz6nTyFpb0dHx3roPTJ34btXM/0Ax8qJc7BaeQIGamzfP
         a9lWS8RZAhXRMy2/PbTHKq+jgMVHWxOsNJkN2B64iWvAvz4RwLlxbP+8TGvwar+RyKyK
         moRAemtg+9lzM+u9jlMxNdZfdkGLV+mS6VAOSfK0Yqjhd+gxGkQpp29hDmPntbZfOYGt
         mCuQHKcegAKJAciJEiKWo3f1VrXMSXVjEd/Ea8MIOESIf6WlxU4a43Wq/OqlrZA8dTHZ
         bwrVb68Tgp9ZE4bsUs2jDX2nWfgaGkwdQycxx+ZzDSvupCYb3TUp1CbZUjcP+yzBMKI+
         PpvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DHgDKV8bsrXIKwIbk7V3Dv7k5SRj9AXXTzIG8P5qoFc=;
        b=CUsFtI48JvBB2Uz2ye+Yf2aPIWzHPg9dusiumQyQhxx1zHwJHJbfuG7bCR5dp8BlrE
         BYKDHnFGOQ/OxmplV5yPGxtIRI15YsHx5ktYeBgWRmIfDlk+V63XB1Apl6BH1jELJQUG
         MNV4I5NFjuhkio9iIAH/k/whB+yi5asM4Am4fUQK/lRWPEaPB6vXmB8DD5PHbz6xiPo0
         yTfVIwZfW1txpRZpB+KEiI98hBQK1B846zCmeRpnCpat2vROBItE96wFuf7ueJl+6hnG
         uoW8ZIJXBVvpVXs6ERoNXjJm+mZfekxJi3DdWAjwBASUqRyuYxPUdSIRCXSsUOyDl4j4
         tY4w==
X-Gm-Message-State: AHPjjUji/8p/rF4s+TBmk/upB60D8BlOkNQPgR3oAv8spqnB9tQatJzt
	HRM9d4yhD0ivRjtQ6Yt5HuQ=
X-Google-Smtp-Source: AOwi7QBLAuKMlgs6mPoAxZutn0nZHdwC2VUVC61dUxPdT5TFSSz3pdaNaxxb/5m3zAk5cTo6sY4S9Q==
X-Received: by 10.84.151.68 with SMTP id i62mr8228447pli.179.1506720920283;
        Fri, 29 Sep 2017 14:35:20 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.61])
        by smtp.googlemail.com with ESMTPSA id m7sm2560797pga.62.2017.09.29.14.35.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 14:35:19 -0700 (PDT)
Message-ID: <1506720915.2117.10.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Remove
 unnecessary comments.
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Sat, 30 Sep 2017 03:05:15 +0530
In-Reply-To: <alpine.DEB.2.20.1709292310000.3517@hadrien>
References: <1506711232-19670-1-git-send-email-shreeya.patel23498@gmail.com>
	 <alpine.DEB.2.20.1709292310000.3517@hadrien>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2017-09-29 at 23:10 +0200, Julia Lawall wrote:
> 
> On Sat, 30 Sep 2017, Shreeya Patel wrote:
> 
> > 
> > The comments regarding memset are not needed in the
> > files which have been modified since the necessary changes
> > are already there in the files.
> The comments don't look very useful, but I don't understand "since
> the
> necessary changes are alread there in the files"
> 
> julia


The comments are put to notify that memset() is not required because
vzalloc is used. But we don't need this comment as patches for this
driver has already been applied to remove memset() code. Also I have
checked the whole file, but there isn't any place where memset() needs
to be removed.

 
> 
> 
> > 
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_mlme.c     | 3 ---
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 3 ---
> >  drivers/staging/rtl8723bs/core/rtw_recv.c     | 3 ---
> >  drivers/staging/rtl8723bs/core/rtw_xmit.c     | 3 ---
> >  4 files changed, 12 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > index 6b77820..5b583f7 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > @@ -28,9 +28,6 @@ sint	_rtw_init_mlme_priv(struct adapter
> > *padapter)
> >  	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
> >  	sint	res = _SUCCESS;
> > 
> > -	/*  We don't need to memset padapter->XXX to zero, because
> > adapter is allocated by vzalloc(). */
> > -	/* memset((u8 *)pmlmepriv, 0, sizeof(struct mlme_priv));
> > */
> > -
> >  	pmlmepriv->nic_hdl = (u8 *)padapter;
> > 
> >  	pmlmepriv->pscanned = NULL;
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > index b6d137f..ca35c1c 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > @@ -474,9 +474,6 @@ int	init_mlme_ext_priv(struct adapter
> > *padapter)
> >  	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
> >  	struct mlme_ext_info *pmlmeinfo = &(pmlmeext-
> > >mlmext_info);
> > 
> > -	/*  We don't need to memset padapter->XXX to zero, because
> > adapter is allocated by vzalloc(). */
> > -	/* memset((u8 *)pmlmeext, 0, sizeof(struct
> > mlme_ext_priv)); */
> > -
> >  	pmlmeext->padapter = padapter;
> > 
> >  	/* fill_fwpriv(padapter, &(pmlmeext->fwpriv)); */
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c
> > b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > index 68a6303..9c08307 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > @@ -46,9 +46,6 @@ sint _rtw_init_recv_priv(struct recv_priv
> > *precvpriv, struct adapter *padapter)
> >  	union recv_frame *precvframe;
> >  	sint	res = _SUCCESS;
> > 
> > -	/*  We don't need to memset padapter->XXX to zero, because
> > adapter is allocated by vzalloc(). */
> > -	/* memset((unsigned char *)precvpriv, 0, sizeof
> > (struct  recv_priv)); */
> > -
> >  	spin_lock_init(&precvpriv->lock);
> > 
> >  	_rtw_init_queue(&precvpriv->free_recv_queue);
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > index 022f654..8cd05f8 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> > @@ -51,9 +51,6 @@ s32	_rtw_init_xmit_priv(struct xmit_priv
> > *pxmitpriv, struct adapter *padapter)
> >  	struct xmit_frame *pxframe;
> >  	sint	res = _SUCCESS;
> > 
> > -	/*  We don't need to memset padapter->XXX to zero, because
> > adapter is allocated by vzalloc(). */
> > -	/* memset((unsigned char *)pxmitpriv, 0, sizeof(struct
> > xmit_priv)); */
> > -
> >  	spin_lock_init(&pxmitpriv->lock);
> >  	spin_lock_init(&pxmitpriv->lock_sctx);
> >  	sema_init(&pxmitpriv->xmit_sema, 0);
> > --
> > 2.7.4
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.
> > com.
> > To view this discussion on the web visit https://groups.google.com/
> > d/msgid/outreachy-kernel/1506711232-19670-1-git-send-email-
> > shreeya.patel23498%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 

