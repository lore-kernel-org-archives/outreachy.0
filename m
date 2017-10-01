X-GM-THRID: 6471275503571435520
X-Received: by 10.99.115.28 with SMTP id o28mr1185005pgc.72.1506843935833;
        Sun, 01 Oct 2017 00:45:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.134.10 with SMTP id x10ls2916225pfd.3.gmail; Sun, 01 Oct
 2017 00:45:34 -0700 (PDT)
X-Received: by 10.98.242.16 with SMTP id m16mr139311pfh.27.1506843934891;
        Sun, 01 Oct 2017 00:45:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506843934; cv=none;
        d=google.com; s=arc-20160816;
        b=oDC7+6UmQc7kCTPSYSIOW72yMOdF8CTGlXz02boHhe9UG5AdqdqzmwPKM+DsL9qwET
         dYVlriJR5e+xzyR5E8o/aQkHhdp0hS7uqsl8nFBS8UnQ//IcZnklEEseHW4TE0VPZ6B8
         DuW5kPsqLoKGbJg5aBIxrih9OFCpMzN83dL5gP/p4sXIwKWGALbTOwr5L9jrOtGGjDRu
         GAZgV8LMsmS2/SfppfQOKmdQqSn2PQkMA0V3dGtatBVqsMeo2NBiy4p+2F7CKbnmWyDq
         7qhP4xDB8xwaEtqluOE8sghQjCarCFtMbcxEvdu+AQLqilPn51bBn8Br+1haiow2fmJV
         AdrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=FN2r6pndpClxuroPrUhCobcdWK7cqt8/7VpWBFBbg/c=;
        b=q9MLaEbgHd9Ui9uxUN2ed5bpGqrHstKpYVaUOS7e549OCAJhvpXZvx9uCt45Vf3lD7
         F3EvmoSc4rO9fhVRK2IR1sCzxpa2OABHW2iAo8Cei2025YFufVwth5cVlgkhl/5l4qSp
         2O4ci89SBRORosQjrYf7Fz68Ar8twKPZgJFPS3KwlUEoWEmQB3VN+yQHiCX6beO3pnfM
         LWVpXZdfEyLzj2B6/zG5ae1JygDb8ukhgVWnFh4I24qzjsV7wsAsNXlPh4DusIOcr9cD
         8cZl/nn3yP+0+FGMHVRZ3ad9DzMarmHfUb6sGrbzm1V0GTuIxB62D3CfDToGoadhvgLQ
         phQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=orf+LX8C;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 82si760739pfz.6.2017.10.01.00.45.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 00:45:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=orf+LX8C;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u136so2602427pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 00:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FN2r6pndpClxuroPrUhCobcdWK7cqt8/7VpWBFBbg/c=;
        b=orf+LX8CMC2pVD0vXHzpTwhxby6J1QedmwC9F0lIPCEZPgGJAkOeCFVi7eyfR1vZui
         aeVhRZfMOfJLNgcR1v80EF0new0gjb9hw0Y1qUpRzQV4iuB2x5dbW57jdaBxrGP62HkC
         eIVE31D1Nhb6QUl7J2nfguQ9pTeylt0e1x3TuwwyLj9ZoPO1j+Td3682SHsg+Tts3Z21
         nIZ0bdrAuRNEBQcm13qxbM0liF2qX82vP3dh+o5NGlaf2cBLrONhxzzUcceYyhJngo/v
         1mGiTZ9i+Fr3y0YZfv4k2pYpWOSaYZ67osScrnpeJccNB6e2xBhoC7jNX4KDLe8ovCox
         4vIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FN2r6pndpClxuroPrUhCobcdWK7cqt8/7VpWBFBbg/c=;
        b=thIP3X6PjIHvXcmD7QujMJ/5/orC7PeE0VgtU2Hb+YuWlca85tUxAVAU5BSsDrsfID
         I9EGCSHq0uZglw815Q5Poh+1FEQsw3ix4pXs5Z3uBAj9/Ih83Npk6AIaSr83Xj2YFPmf
         b/n6RxRJ3MUaoFwuCfaT0A6rXP4RNfq2NCuwO36WiUm20yE2Rr1T6f799PzRUE+vE15G
         PoDn0JFQkbxBd3IJ+hK7nqJc6EmhWFshwaZedZTlvN8qDeb7FIDXB8NBIlqdkrNqjoSY
         HED/ZdTVeatup/bha3l6CTItEhygM6KhGwO0VCUkXBvcdyXcqGm7X4UmiARDQkkDIfU6
         unIQ==
X-Gm-Message-State: AHPjjUiHifXZebslnDOH5Gs2h+rVF70ds5Oh3ZCNk1ojYhRaNRYKcS+q
	f+tvOiKKfH1qBv2GGa0qerpioG2s
X-Google-Smtp-Source: AOwi7QDI8YyrsdmK+/7c8B/68HKm04GvTlXxTK6+OxRboVujf8hqa6y+4PObqhNSfMuJc8Wwdw5nog==
X-Received: by 10.84.194.226 with SMTP id h89mr11471613pld.54.1506843934522;
        Sun, 01 Oct 2017 00:45:34 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.61])
        by smtp.googlemail.com with ESMTPSA id n12sm13019050pfb.131.2017.10.01.00.45.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 00:45:33 -0700 (PDT)
Message-ID: <1506843929.2680.1.camel@gmail.com>
Subject: Re: [PATCH v3] Staging: rtl8723bs: Remove unnecessary comments.
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: "Tobin C. Harding" <me@tobin.cc>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Sun, 01 Oct 2017 13:15:29 +0530
In-Reply-To: <20170930224205.GA29392@eros>
References: <1506780671-2209-1-git-send-email-shreeya.patel23498@gmail.com>
	 <20170930224205.GA29392@eros>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sun, 2017-10-01 at 09:42 +1100, Tobin C. Harding wrote:
> On Sat, Sep 30, 2017 at 07:41:11PM +0530, Shreeya Patel wrote:
> > 
> > Remove unnecessary comments which are there
> > to explain why call to memset is in comments. Both of the
> > comments are not needed as they are not very useful.
> > 
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> > Changes in v2:
> >   -Remove some more unnecessary comments and make the
> >    commit message more appropriate.
> > 
> > Changes in v3:
> >   -Make the commit message in imperative form.
> Well done. You forgot the period on the commit subject. Here is a
> blog post you might like (it is
> not kernel specific but useful still IMO).
> 
> Good luck,
> Tobin.

I did the necessary changes and have sent it as v4.

Thanks.


> 
> > 
> >  drivers/staging/rtl8723bs/core/rtw_mlme.c     | 3 ---
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 3 ---
> >  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  | 2 --
> >  drivers/staging/rtl8723bs/core/rtw_recv.c     | 4 ----
> >  drivers/staging/rtl8723bs/core/rtw_xmit.c     | 3 ---
> >  5 files changed, 15 deletions(-)
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
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > index aabdaaf..820a061 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
> > @@ -1193,8 +1193,6 @@ void rtw_init_pwrctrl_priv(struct adapter
> > *padapter)
> >  
> >  void rtw_free_pwrctrl_priv(struct adapter *adapter)
> >  {
> > -	/* memset((unsigned char *)pwrctrlpriv, 0, sizeof(struct
> > pwrctrl_priv)); */
> > -
> >  #ifdef CONFIG_PNO_SUPPORT
> >  	if (pwrctrlpriv->pnlo_info != NULL)
> >  		printk("****** pnlo_info memory leak********\n");
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c
> > b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > index 68a6303..73e6e41 100644
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
> > @@ -65,7 +62,6 @@ sint _rtw_init_recv_priv(struct recv_priv
> > *precvpriv, struct adapter *padapter)
> >  		res = _FAIL;
> >  		goto exit;
> >  	}
> > -	/* memset(precvpriv->pallocated_frame_buf, 0, NR_RECVFRAME
> > * sizeof(union recv_frame) + RXFRAME_ALIGN_SZ); */
> >  
> >  	precvpriv->precv_frame_buf = (u8
> > *)N_BYTE_ALIGMENT((SIZE_PTR)(precvpriv->pallocated_frame_buf),
> > RXFRAME_ALIGN_SZ);
> >  	/* precvpriv->precv_frame_buf = precvpriv-
> > >pallocated_frame_buf + RXFRAME_ALIGN_SZ - */
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

