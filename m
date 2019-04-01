X-GM-THRID: 6674748196483235840
X-Received: by 2002:a0c:9aea:: with SMTP id k42mr3425603qvf.35.1554155271390;
        Mon, 01 Apr 2019 14:47:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4c4c:: with SMTP id z73ls362872qka.8.gmail; Mon, 01 Apr
 2019 14:47:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxiB+KMGbEU9ja7oBNsQkJ2nBBi2BN2kQPZY24c0wwd3P46OjEF22O3eMgQsk/WVezMIIQU
X-Received: by 2002:a37:ad0a:: with SMTP id f10mr6819288qkm.45.1554155270769;
        Mon, 01 Apr 2019 14:47:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554155270; cv=none;
        d=google.com; s=arc-20160816;
        b=Ud+wz1PVyZLwwEAZhbANTZMSKwfMNhgHFHmEiEhAcwhHo6oQFO1P/dhGkj1cDu5SZs
         6GgWh/DlElrmFBRuRkIq0t/pe9MNDyEm/+KZWiW3WS3qXAfv0OPbmSRyRJGKtfFJUoRf
         Nx1A33TbZmgXs1qIrM7uLjHDf+DEFK38BZYqjyKs5xt/kFBFwRTkUJie9YLWNsQED9lt
         8Ad+yyukCbIC3IoogSXDqoBhYnQAkjm+Bq4hmxvHhuhtsY+4fIgWFuC2XHtIELn68Ulz
         2zH4gjMvSEg2W1OazihaI4Mdqg/fChEjwW72Ua8Hu9nXMlr5AY4ovyqIvf565ytZ79d8
         nY6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=XS/gyMCDf+gts9zJ53Wi92rJI6LKDiGimlfWBA/KEZk=;
        b=fcGMuKkqXcpCwTvjOa+k8nbI14y2w1+hAN5nfAmwyl81PcXFSoGjspqTL4vM7+xWR0
         PlYbXfBGs+OpeNoPqhPMf8dFmOrDY5rzyQpmRnIselbOYwS8+ZC+obgXJAfd9TM1ZWGH
         JDMc+tQm6kRwYO8cx9PLnsCRSnuVHSj4NMgFvnKyhQNgx6V8knZbk4KAVxpx5k40cAWc
         OydkUBsFASr1Tx/s9YtcRuKwQ7tepmj0jHPhVWcdi1+AlDWAFKWULdPyYlY0/hOFjItt
         NHfrGVBBBDOepGKQYTuBUQIOgRbQN5ks7paooGjE2aWe9Dm6GYSaXZO3zGARCNQkEC/M
         O0fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i2C/BA7+";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id h186si697787qkc.1.2019.04.01.14.47.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 14:47:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i2C/BA7+";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id j132so8702394oib.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 14:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XS/gyMCDf+gts9zJ53Wi92rJI6LKDiGimlfWBA/KEZk=;
        b=i2C/BA7+xhQocBj3aUG3dCtdUMCnhk2yRgQr8hFGCVwNVVwXRAv9dYU0hOIXiFr2Sq
         Suk4dQnvKwXFIenOTHxsyIhYUGV3ugNxv2LCiJJKzuoqIB1Os/sc3ZbHwZ01PHidPKFK
         IWHN/3inb02ll0BYRPo3lKtKcQFproiDphzMrgNqz91/RwFneZFrKP7nUuekRsyfbD1J
         TG28qGrUlbGTspBboB/1pVtlps1YLy8cDf6+EkqUdTbl4VlcPE7oDfh+7HJroxvoEhDG
         TaI0BaQqM6trJtz2r8dAQzTJoS2QdtMjiuyznEAUYpAhZEryWkaZsB+DqeFGWYJMOV17
         BlmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XS/gyMCDf+gts9zJ53Wi92rJI6LKDiGimlfWBA/KEZk=;
        b=VdRTpC2nxIl/XlrjCpC7BSSFe/hnjE9++QrJJEY4hVlexxK+6v/S0XH67uPW+ZQdv0
         JQdDk1YlD4BV0POsIWSccL3jnD8Sgpk0dpOijTQhymCqFD03bF0kH9gG38JIRHjCElnE
         BvND00CSzvhKdnZ7UfhHm13qjXH1Ek6pHCFK3fqMc7AFdkzpFrMgDOYhDOrKjnUHTNsn
         FDp3Sm031SEYkhnKZQ9+8Uf1ZqwOGd3jeUagIz6YZwbZHqudLlRNcwY2zIG921ltyzJl
         5dUr2Fqa0TzgD7v6GNfcMo6n0azoqDMRGt0ebPVqe9qF2w7oK+EzR24EdoDmOxCMpKuK
         uKdQ==
X-Gm-Message-State: APjAAAX2OPCvaRv7JANqVjAJplzaUO1oswGbXv0b+3MptqkfTGmx/xly
	h5Bwg+QiorSROEokY27fD/PvouOQfZQ=
X-Received: by 2002:aca:dec1:: with SMTP id v184mr13691287oig.149.1554155270008;
        Mon, 01 Apr 2019 14:47:50 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id j1sm2204298otl.43.2019.04.01.14.47.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 14:47:49 -0700 (PDT)
Date: Mon, 1 Apr 2019 16:47:47 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8723bs: core:
 rtw_mlme_ext.c: Remove typecast in kfree
Message-ID: <20190401214746.GA11046@madhuleo>
References: <20190401182614.14755-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1904012129550.2530@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1904012129550.2530@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Apr 01, 2019 at 09:31:05PM +0200, Julia Lawall wrote:
> For the subject line, you should follow the same strategy as other patches
> on this file.
> 
> On Mon, 1 Apr 2019, Madhumitha Prabakaran wrote:
> 
> > Remove typecast in kfree, as per definition of kfree in
> > include/linux/slab.h#L144, the parameter type of kfree is void*, and
> > hence C compiler casts any pointer type to void*.
> > that is allocated with kmalloc.
> 
> Whether or not the argument was allocated with kmalloc is not relevant.
> The C compiler considers any pointer type compatible with void *.  It
> doesn't know where the value came from.

will fix it. 

thanks

> 
> julia
> 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> >
> > ---
> > Changes in v3 -
> >
> > - Tested and compiled the patch
> >
> > Changes in v2:
> >
> > - Commit log modified
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 22 +++++++++----------
> >  1 file changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > index ebb45acb4446..6ac2b03805e4 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > @@ -816,7 +816,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
> >  					update_network(&(pmlmepriv->cur_network.network), pbss, padapter, true);
> >  					rtw_get_bcn_info(&(pmlmepriv->cur_network));
> >  				}
> > -				kfree((u8 *)pbss);
> > +				kfree(pbss);
> >  			}
> >
> >  			/* check the vendor of the assoc AP */
> > @@ -5052,7 +5052,7 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
> >  	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5073,8 +5073,8 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
> >  	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
> >
> >  	if (collect_bss_info(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
> > -		kfree((u8 *)pcmd_obj);
> > -		kfree((u8 *)pevtcmd);
> > +		kfree(pcmd_obj);
> > +		kfree(pevtcmd);
> >  		return;
> >  	}
> >
> > @@ -5105,7 +5105,7 @@ void report_surveydone_event(struct adapter *padapter)
> >  	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5152,7 +5152,7 @@ void report_join_res(struct adapter *padapter, int res)
> >  	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5203,7 +5203,7 @@ void report_wmm_edca_update(struct adapter *padapter)
> >  	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5250,7 +5250,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
> >  	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5305,7 +5305,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
> >  	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5836,7 +5836,7 @@ void survey_timer_hdl(struct timer_list *t)
> >
> >  		psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
> >  		if (psurveyPara == NULL) {
> > -			kfree((unsigned char *)ph2c);
> > +			kfree(ph2c);
> >  			goto exit_survey_timer_hdl;
> >  		}
> >
> > @@ -6603,7 +6603,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
> >
> >  	ptxBeacon_parm = rtw_zmalloc(sizeof(struct Tx_Beacon_param));
> >  	if (ptxBeacon_parm == NULL) {
> > -		kfree((unsigned char *)ph2c);
> > +		kfree(ph2c);
> >  		res = _FAIL;
> >  		goto exit;
> >  	}
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190401182614.14755-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904012129550.2530%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

