X-GM-THRID: 6674748196483235840
X-Received: by 2002:a37:8643:: with SMTP id i64mr1482955qkd.47.1554141946564;
        Mon, 01 Apr 2019 11:05:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3c50:: with SMTP id u16ls87940qte.0.gmail; Mon, 01 Apr
 2019 11:05:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1boBEb4xJIWKI6OJYEMiyDiutBO9J06ZHY1RVCpkoOLX4Hb24yvzOEB0nkQO1IaVp1BfU
X-Received: by 2002:ac8:2b82:: with SMTP id m2mr8071323qtm.11.1554141945911;
        Mon, 01 Apr 2019 11:05:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554141945; cv=none;
        d=google.com; s=arc-20160816;
        b=MuQtGSqdqGsc/KaZdnf74gnbfVBHWMWwUNeHASw8exQAEiY3k8/H8/uKs3BNGsYh6g
         jHcOYK+O4MkT6ULSOD+ZdTaElmAN+wYbbM1mYH72HXLOTf182wqGpF1sS/tRYLYg66E7
         bjUyghqkghRR8a3OZ+a9wPMFSpm09FDkRi6QFBA+SBiPm4Rv/cDfZXBlFQqXKkc7WKZe
         8FeYFwd0hX8AUPQw8QtThA/SumZ39GaR8m7OF1np7vionbqS1JeGnUO0CPOuF5yoUPuw
         cAY4OKRBP2mLJ8ucelD1vp77RLv0GsaiI6c2bjUG5tBnUSuqOINVv0hMBUCjr8lqJhsG
         NxGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=5dcLm78l+Sjriv5DBGZd5GH8p8pMokwaMpcw4U8sEN0=;
        b=X0VmHjVPrfOWulu2PK5QmUZWXDWRFeDgVzmyQijweSkBnd11FZvFSJKszpKstH/Z2P
         iP0hyysJ9/PZqtVusMVsBAhfqbXKltigWNySOau0Oct5d15X1Un00b6PAMzA/0ixopia
         kwtSnh+fLnOkYw+0Mnf1793xB98+H81LOZ7y4ddsTgAup7aNGEqkjx2agHGlii41DK/y
         kIOpFxEKsmwy965+C9T80EU+j0PG6zkOdiTFnfJYhZXHAMEIaYNM3peeCqH3AduHNVui
         lhFbEdn3KUY03A1nOjLsFEjtSxk7DSanO+zGMXvPUrPwxeVI0ka1NZ3qylN3hndd9v3r
         BBRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bCwwruX/";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id h186si658735qkc.1.2019.04.01.11.05.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 11:05:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bCwwruX/";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id m10so9563318otp.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 11:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5dcLm78l+Sjriv5DBGZd5GH8p8pMokwaMpcw4U8sEN0=;
        b=bCwwruX/maWXJQji2BJBmbe53is5VCtxiPr3XV3/z1/gT/SaCUasd9Cox7s6IfHqSE
         fwumQZJkQUoxTBJmmhTfPCd7ldsSnkcqAhWYooCiVOMEVi01Ifl1UIx7sz87x8IIWKlO
         dWs0XPkPSZ/C68iP/5LgM+wnKurPWs3zenz4PfMYATWkQxvcVggDVPa3SpXWQvuX33GJ
         qHOCMPyBeDtPk1DuL4dtABZMqKiW1w9jdCAy2SoKQ3F37iYvjgholSqO8eWqyyyYAsvj
         qnovv1oegRkpbVr2LLeWfsIhvuMEb8EXnByJqGLh4KO1n0GnxNnIWz/i3+9v258kGIyF
         WWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5dcLm78l+Sjriv5DBGZd5GH8p8pMokwaMpcw4U8sEN0=;
        b=Pz8GjDUSa32M3lUZEj+gd/jkllx6R0nFXb2s1Qa84SCDqe/ZF1kKtH/kMRG1yduSOy
         w2E/qObVVq+zIT/jvSUnsYtJNotg4beUBs7bu0PRNwKXoa1E1BaTuuCwcl1GDTYqpyuf
         sSROUIM33x3zgXNr13jlapOnqaDZ+LrMnZynB3pqg/e0ifvO5j80pQ2fVBYz3+VHerlZ
         p0ZLIYy1S5bp64yfI9wiDoMNehRQJc30pC3K/BoCWJAp2hR4phGX8WQ0ZVqkynJPugU0
         Z/f0lPtEt5AGVeus5R9jZuLTBiQ50tckqEPs6NiDKCaFGgqZlgQUXB8utxUsVDGlYILL
         VbNQ==
X-Gm-Message-State: APjAAAXVyJAGjsWecj9rRVKIDFLLKHhczXUq7F4kS3eI0XU8vf33fjkq
	lQyJsWw7zSsbNgKwHmQA1vwBikVu
X-Received: by 2002:a9d:61c5:: with SMTP id h5mr47609755otk.330.1554141945296;
        Mon, 01 Apr 2019 11:05:45 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id v1sm4331333oto.47.2019.04.01.11.05.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 11:05:44 -0700 (PDT)
Date: Mon, 1 Apr 2019 13:05:42 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: rtl8723bs: core: rtw_mlme_ext.c: Remove
 typecast in kfree
Message-ID: <20190401180541.GA20931@madhuleo>
References: <20190401143349.6618-1-madhumithabiw@gmail.com>
 <20190401172754.GA5990@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401172754.GA5990@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Apr 01, 2019 at 07:27:54PM +0200, Greg KH wrote:
> On Mon, Apr 01, 2019 at 09:33:49AM -0500, Madhumitha Prabakaran wrote:
> > Remove typecast in kfree, as per definition of kfree in
> > include/linux/slab.h#L144, the parameter type of kfree is void*, and
> > hence C compiler casts any pointer type to void*.
> > that is allocated with kmalloc.
> > 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > 
> > ---
> > Changes in v2:
> > - Modified commit log
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
> 
> ALWAYS test build your patches, otherwise you will get a grumpy
> maintainer when their build breaks when they apply your patch :(
> 


Sorry, will remember it. 

> This line is obviously incorrect :(
> 
> Please fix up and resend.
> 

Thanks

Madhumitha
> thanks,
> 
> greg k-h

