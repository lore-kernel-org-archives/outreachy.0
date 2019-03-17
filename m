X-GM-THRID: 6668974051336126464
X-Received: by 2002:a37:a993:: with SMTP id s141mr8209483qke.1.1552865867076;
        Sun, 17 Mar 2019 16:37:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:6984:: with SMTP id o4ls6764357qtq.9.gmail; Sun, 17 Mar
 2019 16:37:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwMJartjWP9jMhP8KX60fVin8IVq43Y1yzEjJCPhbtmIN935KVxfprTI8cUnbMjaJvfmbh7
X-Received: by 2002:ac8:2808:: with SMTP id 8mr8826369qtq.18.1552865866464;
        Sun, 17 Mar 2019 16:37:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552865866; cv=none;
        d=google.com; s=arc-20160816;
        b=U/RmvTp/+sZq80SLi9tqEIxZMbKucACh2mIhn2D3Tp1tF+23oT2+hbtlicRvVUMc9P
         PnHqQFuLFLV7urzmvMEiPG5Mf7j1TMsQh+5kwb32jNKZSF8B2ezuF/c5buLDlFNfBTG/
         sBfYM4TUNPD/3HcREI1eltMERLIBzO1vtfkR2qDzKHlYsGnPeMPI3d/JTB6hrfwHcYcR
         3LGWUSccOGzqjlzV2NmE/1kfL1GQCp/PVIqylGox8nQvHh/EDZ9p7GbE+JVLhULc7hJ1
         GWAl5Rz1cxK54uQCR0CSCftXA7ThqE3IMFvJ6ZnFd0AIY0ya4IFStGW1DHz2fMYMNI4k
         km7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=Toxu2pTOOe0mFP27DT6U74r37CBGfOYsfbsZaXR1xjo=;
        b=zllt7oPYsops1NgaoWvhg1vMSFHMsTO0o5cAV5+nNVnb12zv5zSOT/tDm168CtYtLw
         lPwB7vxK2HxtbGnV9pn8xeXn0Acr6QCpCcHpSmsB3eaGAM80QLKimNV8fJUM+RXMFYXX
         KFuLu2oc/Lcgv6wWvFuMPd0dWRAYb+ssiYbT1qp0Ky03xr5Va1bo7CRxZKlc8Enhh8hf
         JJwk9eISzRuYZ2ODDf2oyY6rDL3KxMWtBCGEIJ2Ri4+8fUYjVHGGyZ04kHYZugKwTk2p
         2yPJHyFoUgIHpnNOHZbnWEvR+bdtQA+vfh4WjUQ3rZwG2ZghaZQp9jgLowDW3KJyyTDC
         wQrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IdXXWt/T";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m1si472719qtc.2.2019.03.17.16.37.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 16:37:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IdXXWt/T";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id r19so12933981otn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 16:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Toxu2pTOOe0mFP27DT6U74r37CBGfOYsfbsZaXR1xjo=;
        b=IdXXWt/T9BdcDjytqikvJrwHXDGt3L41KWOY5/GvTN+lRvX/yzEcfLxpkrob3ypJMZ
         UE3EtWJk6pagXZKYPp8Ln3UMXAvDDnYi0pe+cAq2IFyS2jv8JLsciRDdkWEMam/Ok040
         w8Y83Zd3i1d3G8yfbW+STCbQE6Zze8WSVlKVMXnrPWE7dvSuB2qU0+VjPZwq1cVDdF/B
         kNE6AWfzyD9Df28KADk/orhto7K0wqbinZSPSxINmLm9KJpBRF1TQJvgcEFWy2aBEH4d
         5ZX7bfe64VVQSToI/AMcxPSGz7n53ydDKwFLl3YWlhsDEj5XdvI9epy/0JG3hkDsLizU
         68GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Toxu2pTOOe0mFP27DT6U74r37CBGfOYsfbsZaXR1xjo=;
        b=rqxmsc3bu7hgfSCRyiTffFtFVmzI/afhjaPOjfzRsGpJdrhlNaUnIYkn4ql6ef7eTU
         6btW6tfPewjpG9EKbvgtDLDCpYszj/EK8paqkxtfxRI6p4gC2BIPqnYT65tQ6cg2zrlk
         OFTrN0jtSVqQmIuOZI0iIBfnEr0os+3/34dRP4qSqrX2gCXQkHBF2FNIFX5p0Agtrb9k
         nLbaDdnXyhb7TeTqN8nSLhTRW0HihnuDYOUi2lQzhq5Xn7Rma5KSzDgke0ZgIgcozkSg
         e1skp+ieALBfaM0he0+Es7bemHE9qY7mJPqy5y8hjzL5o+eFEE0n0KmS8KKi5Z4Uhxik
         +dNA==
X-Gm-Message-State: APjAAAW3X0KGtLWSZlvGzQqGsWKP6JIMcxQOtg7rTOlYLW3VJZEKzlgv
	xLZk/jt0oudGF8z3oNEC6b1R2tTl/8Y=
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr6316292otm.355.1552865865951;
        Sun, 17 Mar 2019 16:37:45 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:f05d:7617:ecf9:c9f1])
        by smtp.gmail.com with ESMTPSA id c26sm3408616otm.10.2019.03.17.16.37.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 16:37:45 -0700 (PDT)
Date: Sun, 17 Mar 2019 18:37:43 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] Staging: rtl8723bs: Change
 values to standard error codes in functions
Message-ID: <20190317233741.GB4222@madhuleo>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
 <3079e4485a34348cdaed25939551424267ee32f6.1552858206.git.madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903172253010.2434@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903172253010.2434@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 17, 2019 at 10:53:28PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 17 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Change values to stand error codes in functions rtw_init_cmd_priv and
> > rtw_init_evt_priv, as _SUCCESS should be 0 and _FAIL should be -ENOMEM
> > (as in this case, these are memory allocating functions).
> 
> You don't have to change it, but the above is a really long sentence.
> 
> julia

I will fix this commit log, as I made a mistake in mentioning "stand
error code". 

> 
> > Also, change
> > the values in corresponding call sites of the functions.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c    | 8 ++++----
> >  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 ++--
> >  2 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > index ab450f717f34..f8a4f910bfea 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -164,7 +164,7 @@ No irqsave is necessary.
> >
> >  int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> >  {
> > -	int res = _SUCCESS;
> > +	int res = 0;
> >
> >  	init_completion(&pcmdpriv->cmd_queue_comp);
> >  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> > @@ -178,7 +178,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> >  	pcmdpriv->cmd_allocated_buf = rtw_zmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);
> >
> >  	if (pcmdpriv->cmd_allocated_buf == NULL) {
> > -		res = _FAIL;
> > +		res = -ENOMEM;
> >  		goto exit;
> >  	}
> >
> > @@ -187,7 +187,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> >  	pcmdpriv->rsp_allocated_buf = rtw_zmalloc(MAX_RSPSZ + 4);
> >
> >  	if (pcmdpriv->rsp_allocated_buf == NULL) {
> > -		res = _FAIL;
> > +		res = -ENOMEM;
> >  		goto exit;
> >  	}
> >
> > @@ -203,7 +203,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> >  static void c2h_wk_callback(_workitem *work);
> >  int rtw_init_evt_priv(struct evt_priv *pevtpriv)
> >  {
> > -	int res = _SUCCESS;
> > +	int res = 0;
> >
> >  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
> >  	atomic_set(&pevtpriv->event_seq, 0);
> > diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> > index 143e3f9b31aa..6b3def0397f0 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> > @@ -757,7 +757,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
> >
> >  	rtw_init_hal_com_default_value(padapter);
> >
> > -	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == _FAIL) {
> > +	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == -ENOMEM) {
> >  		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
> >  		ret8 = _FAIL;
> >  		goto exit;
> > @@ -765,7 +765,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
> >
> >  	padapter->cmdpriv.padapter = padapter;
> >
> > -	if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
> > +	if ((rtw_init_evt_priv(&padapter->evtpriv)) == -ENOMEM) {
> >  		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init evt_priv\n"));
> >  		ret8 = _FAIL;
> >  		goto exit;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3079e4485a34348cdaed25939551424267ee32f6.1552858206.git.madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

