X-GM-THRID: 6674748196483235840
X-Received: by 2002:a24:97cf:: with SMTP id k198mr6964420ite.26.1554142023349;
        Mon, 01 Apr 2019 11:07:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6c09:: with SMTP id w9ls100014itb.3.canary-gmail; Mon,
 01 Apr 2019 11:07:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzuAqubZH3ASre/Xsx8fGa9JWTnEfVbXkTeRDTQhtShPMTFou7QeGLkx952bViOkb3ijIHk
X-Received: by 2002:a05:660c:744:: with SMTP id a4mr6267945itl.19.1554142022181;
        Mon, 01 Apr 2019 11:07:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554142022; cv=none;
        d=google.com; s=arc-20160816;
        b=u83vz0SDXTvrmfdyifnrkzufGEj5/5d4nUg3oebu1ttBvdxHIRkoNiiFZD3/mxo1Ek
         Mhzn17LVjWb63HfkidAZqxPawVQvR/9eBdjjV/fMGq+qamfbYoyyqy3HgsR5d1836Zyz
         59BZbVYpkM1Xygplv7NCxh1+ogy9Z/oya9MYFOHhnTjyumjnk9kPu08078Jk8o9kefYR
         ugy41k6nWI/6Ag3m0NRHIW1wr433PC4jNXAu9ji1a0MWIzk8i8rQ2GQ0aL6R8DHjrzcO
         ueme6LsX62P+MAehrmsJAuIV2FFe3oB6M4GQZiI2qHifPybgqEN/yFNCuZWdH5aBte5z
         uSRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=zI9CfdneytwaMMOyIPtBrWKaIRmoTuxNuXLe5Ph3OEs=;
        b=nNGfJWSgp/i0tOephmx3qMlyV6IoeL9D94d0jvmHpdQMSPa++aIZI56/sNSj0ABs8G
         sjlo9de78Rv0y5DvFe35/1SCBhsstoJbO6kF3QdkBsme+LENN89kAcjhrRltnk50iTA0
         UoYKcJT0LDZelK15e9cCjXic44JUCTYdaW/cyFKR7bqeY8O6V7oVsyCBVT7shc6rrTgm
         yopSifbHrjQg+bp+ZkgzPc16nIjcIR3XFe81R70OhUYq+0+NlKUo/gBzx1YAx3ZtNWoY
         l/pic/P0WHDcikCXGS+xS90LFl6Q5kFTlXJ1JdeUmz3TdQ+SymPe+I8AXj/wEjkVjrbx
         FlXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dSg9M4LQ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id g127si1250149ita.3.2019.04.01.11.07.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 11:07:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dSg9M4LQ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22f.google.com with SMTP id v84so8098264oif.4
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 11:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zI9CfdneytwaMMOyIPtBrWKaIRmoTuxNuXLe5Ph3OEs=;
        b=dSg9M4LQJRfHkNdZfVuSVOU5tMBUYxBH2Y7+sJxXEvOs2+nAQamQhwYoRDvndflaVd
         KdQGTZLsAa2q/eoeiR/WhTSfPX8P2ykUoGX8MfR0qAhWSIOKugX4eMUy84O0MWqnUF/J
         ra3P2LcqfOwapHIHQXrXtV6fqHUWvjib6Af5kW35PrbW/dv7s+vrw2+XWfYfET+fRHn3
         sEypiIcn6TpgtACJHJ04AIRsgb/vY07AgzrIb/MB94PlXBjp9+qkViNV/MI+biM+FSUP
         Kw62uh4G4lGW1zIkt6V5s6CniKJHQWMqhdewvK6hLOH3W4+6JfxBfK7IqFKJUtohsPo8
         9rMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zI9CfdneytwaMMOyIPtBrWKaIRmoTuxNuXLe5Ph3OEs=;
        b=REV4moIYAf9+SYPlgr642E4/7QgrWbCVRFg3KqBaRoEfjILTP68MocE52IyLFVKLla
         PoXlABC+rb/SoNR1hZAmEsa3Mw4lCYZPL6vvPcMFe8TD8Z5Yw+Lbr/iK4bna50dIzRyw
         TF9OeP5Ya1C+/YVPHvbOuPO7V0U8GSiVKrpHIGLypcym8StMjTKSj+s8+NCHU6RFfYM/
         YpgJGnRq9B4l06H9mH67InnkDSTLWctRaYRw6LYlPFpApvDduc+kgAXgt2UGk6P+Li37
         H4C8ipAtZOvRrf4Tls31yGtqy5bSYbyZyBEJT+J9wP5Xsml2XBl3AXcvcYJtQWceBFhh
         c8UA==
X-Gm-Message-State: APjAAAWUr5IaSddtTVAZdJDXLIBxuEW6lc5/eobmrW408ojdPSd5zlPT
	oDzchv3EFM7rxbw8F01zcZ0=
X-Received: by 2002:aca:5b54:: with SMTP id p81mr2890019oib.35.1554142021774;
        Mon, 01 Apr 2019 11:07:01 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id s31sm4935181otb.35.2019.04.01.11.07.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 11:07:01 -0700 (PDT)
Date: Mon, 1 Apr 2019 13:06:59 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: core:
 rtw_mlme_ext.c: Remove typecast in kfree
Message-ID: <20190401180658.GB20931@madhuleo>
References: <20190401023154.3644-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1904010814380.2664@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1904010814380.2664@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Apr 01, 2019 at 08:15:21AM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 31 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Remove typecast in kfree, as the function will free any memory
> > that is allocated with kmalloc.
> 
> The change is fine, but the explanation is not really correct.  The
> parameter type of kfree is void *, and C is happy to cast any pointer type
> to void *.

Thanks

> 
> julia
> 
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 22 +++++++++----------
> >  1 file changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > index d97c1e6d5c01..430758f298af 100644
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
> > @@ -5043,7 +5043,7 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
> >  	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5064,8 +5064,8 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
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
> > @@ -5096,7 +5096,7 @@ void report_surveydone_event(struct adapter *padapter)
> >  	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5143,7 +5143,7 @@ void report_join_res(struct adapter *padapter, int res)
> >  	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5194,7 +5194,7 @@ void report_wmm_edca_update(struct adapter *padapter)
> >  	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree((pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5241,7 +5241,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
> >  	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5296,7 +5296,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
> >  	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
> >  	pevtcmd = rtw_zmalloc(cmdsz);
> >  	if (pevtcmd == NULL) {
> > -		kfree((u8 *)pcmd_obj);
> > +		kfree(pcmd_obj);
> >  		return;
> >  	}
> >
> > @@ -5822,7 +5822,7 @@ void survey_timer_hdl(struct timer_list *t)
> >
> >  		psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
> >  		if (psurveyPara == NULL) {
> > -			kfree((unsigned char *)ph2c);
> > +			kfree(ph2c);
> >  			goto exit_survey_timer_hdl;
> >  		}
> >
> > @@ -6589,7 +6589,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
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
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190401023154.3644-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904010814380.2664%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

