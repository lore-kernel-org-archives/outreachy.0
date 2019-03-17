X-GM-THRID: 6668974051336126464
X-Received: by 2002:a25:3881:: with SMTP id f123mr8032153yba.19.1552866140237;
        Sun, 17 Mar 2019 16:42:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:589:: with SMTP id 131ls3282861ybf.7.gmail; Sun, 17 Mar
 2019 16:42:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzj62e4+SRNR1YuYeDUi4Vu7Vu3moICOEQDe8MkALfNP2MTqIBEhUNnmQi8ElSg83bEVD4f
X-Received: by 2002:a25:dfc6:: with SMTP id w189mr7580117ybg.63.1552866139283;
        Sun, 17 Mar 2019 16:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552866139; cv=none;
        d=google.com; s=arc-20160816;
        b=L4fELUcVT8Qd5aK3SgQtbmhvmV1gDj8rABPjvXvg8DiFJZtBFZZKGPDqYZU7cUqz+y
         7eDDm3PSQI+QH2NfsA4gQVA5ZEBko8nsSAsYFl2lokXdRO3z2yhU71XQ9eKGS46pmZtf
         RV3jpoxilGk8+ekJ9pFKaSDWPC/YNYD/8I7gR9N0ULSaECYJti1OQM7pxS3/PuYMwVBN
         xITERxDB3G4HycqdxhZTMshmUKh0/OP2CjcTBkJiVkMGAMFN0qgn95CXgktA854n5ruD
         JDg2uIpln6t1uw8Vd76vtOeDxpGo+bocoC3zBZXmMSdvQ1gc4XG9XWNY/tIci8VWPzgG
         g1cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=IG4sMF4rI26ovSg8UDKKvjP56BnZJo1B0ylTVfs5SpU=;
        b=pa3cZp3q+QLsnB2XsmhomILX2R+K7Nm5rdiu179IuY8EAG6T3USHMgXaJQ0sVB3x99
         7MPgszqc+5/IHdotXKkvVzQB/PnKi41CARLwLjCjn0zIMXAU88dYLjm9WQX/Cbi2/tzr
         mVYY446Nx/eaEurwFE42ZN18uLcLjfHXd6ZaDP8rlpXumdhv8rrxC5SmGz8CtepgG3BA
         jpKMan5hH2hjUiLtcOQmasjWsn1WYWHR+wz6Q5ttxzyYO//uoH3IsR6Z91xFDAnxyH1M
         9WmBkZxImnxzTcsbykNIZWdArkaLaWI8OZCZkRM41phlQjKEWSszdPQb+BMhL+KlRQvW
         yXbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="M/rbbe4d";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id r128si546374ywd.0.2019.03.17.16.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 16:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="M/rbbe4d";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id b4so11580205oif.6
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 16:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IG4sMF4rI26ovSg8UDKKvjP56BnZJo1B0ylTVfs5SpU=;
        b=M/rbbe4dPh0+OeSQRHvGXcs3jGfWFRUDJTiFj6TSTwjqkYXKOaU27pimf7oI8Toxno
         PjyTk1VpkpwNrrO+gDEE3SE5ls52yXT5FHADMRnPRPr/hMnIfyts3o6yDKlHQA9R9wjx
         BBhNCzJorBB70nxRea0TlFDmJ6WoDIlZCbZjMZgTAFMuiPsvwtI6WV9o+wjccrCVd7Vn
         ofyHoVecOnMopwOtPC/z9q57+ltgPeuWfECfzo75IbrO6BeqLssnXRdHjhGsnXYJBqQZ
         XIUZ0EXVfILRMVzm5jkM3iOzQs1gXy3LxIiKWFKPiHTaKm/TwHjCYsMSkXBAn+4ljIzi
         e2Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IG4sMF4rI26ovSg8UDKKvjP56BnZJo1B0ylTVfs5SpU=;
        b=IcauxlT5j5iXbgST6hPIIY4XyMoVLOoYsi1vGTO4QRh3TQSVtFI1Tes3KYVt2tPQxu
         f5kP27fK0dSA27B3jUTTNmwQnZaXJeb6qzT3/JtRGzmHGn062yWzYAXKWqCFe6MH7y7L
         g+xGi2uJ6Yw5HNPa5q+VW68b5upZMP+lDkmp5GAWoVxljRficw8o4rcj/Xzki3L5/q8s
         iklJU5cXNFPt/wcgSEpeFSp418RBuKg8YwFB7RXw2QwMlTFl9SXaqROXWa+Og7WVVBXE
         Buy+l0vgz+SDDZqIRcI1KEy62Dgj8Xdcnb9LhJqHJUnmndAnf5PZxrxLV+7HI9bQxw6I
         6w1g==
X-Gm-Message-State: APjAAAU/z6dgVmULqw32nczyA+iyTTSK99FWjd98k19kuC8FvRWbK3ha
	k26o9PQpeeEPa38NbZBvZw0=
X-Received: by 2002:aca:6189:: with SMTP id v131mr8505796oib.176.1552866138811;
        Sun, 17 Mar 2019 16:42:18 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:f05d:7617:ecf9:c9f1])
        by smtp.gmail.com with ESMTPSA id 88sm1248804otj.3.2019.03.17.16.42.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 16:42:18 -0700 (PDT)
Date: Sun, 17 Mar 2019 18:42:16 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] Staging: rtl8723bs: Add
 missing NULL check for kmalloc
Message-ID: <20190317234215.GC4222@madhuleo>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
 <4010080c4d3e2bd0ed50a747eff3d00c66eea169.1552858206.git.madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903172254090.2434@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903172254090.2434@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 17, 2019 at 10:55:05PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 17 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Include missing NULL check for kmalloc in function rtw_init_evt_priv.
> > Also, remove unnecessary local variable 'res' in the function and
> > replace the value directly in the return of the function.
> 
> These changes seem quite unrelated.  Dropping res was possible before any
> of the other changes because its value was never updated, and if you make
> your change, the value of res is not updated either.

Yeah! But it is in same function, also res is not used anywhere in the
function. So I removed it and changed the return type as return 0.

> 
> julia
> 
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > index 3550de9f12c3..c76f27a6b3ab 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -203,8 +203,6 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> >  static void c2h_wk_callback(_workitem *work);
> >  int rtw_init_evt_priv(struct evt_priv *pevtpriv)
> >  {
> > -	int res = 0;
> > -
> >  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
> >  	atomic_set(&pevtpriv->event_seq, 0);
> >  	pevtpriv->evt_done_cnt = 0;
> > @@ -213,7 +211,10 @@ int rtw_init_evt_priv(struct evt_priv *pevtpriv)
> >  	pevtpriv->c2h_wk_alive = false;
> >  	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
> >
> > -	return res;
> > +	if (!pevtpriv->c2h_queue)
> > +		return -ENOMEM;
> > +
> > +	return 0;
> >  }
> >
> >  void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4010080c4d3e2bd0ed50a747eff3d00c66eea169.1552858206.git.madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903172254090.2434%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

