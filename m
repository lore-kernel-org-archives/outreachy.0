X-GM-THRID: 6523574178803613696
X-Received: by 10.28.91.147 with SMTP id p141mr1685477wmb.31.1518896405684;
        Sat, 17 Feb 2018 11:40:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.147.12 with SMTP id v12ls842196wmd.0.gmail; Sat, 17 Feb
 2018 11:40:04 -0800 (PST)
X-Google-Smtp-Source: AH8x227naobK3ejLLPTqySXCV10DfpLV8VLJ8r348iPYWZskfZShryEXumH00WycvoHe9njUYbDf
X-Received: by 10.28.178.207 with SMTP id b198mr1799813wmf.0.1518896404689;
        Sat, 17 Feb 2018 11:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518896404; cv=none;
        d=google.com; s=arc-20160816;
        b=awTaQqdmX7jNsWu5hvnkceGX36m/VVguYhb/DJkMilMCiMlNRKZpN6w4LJZ4veFQKw
         wUlTPcH2X4bzNf2KuuwnQvQmhhanqHCR+uR10HkPsrWh4yQ/tPCmSlEtZ1mAVip9Hdwc
         octu7av7z1AOatE8CJx/oHKIzznxFVORqPlygAc6OYuqrLepaLM3M3jiLObXniX3lN2n
         lCJqWfn0vzoj/0XZ7Ob7SYNZWqO4hpdHegv4U8yuZ+EAYNCfgvcCcZQzBE+5aIukxp74
         YDej0Ql05A0Kvy/ctj7thEdjhAM+9/XDvSBdioARXDM9L5iRVM05afM7JmQCZjQNtLH8
         9ukA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=oBPVvRryRrySuBQXgHX9SgM7KxhRLd50GkgJ++ZsUho=;
        b=YhlnYaE3AN0bdY0zWDpr61oG7RsOmbnASBJ55ck8TWDyHhDcdsbNYNVLc2BKljG7A4
         WodCuIlSoS0B4o/OO2XYdgv+DmxST/FLREu7vcdfbpluPG1H/weHkEGqm1Mm6IlHmDzz
         P4AO+wCuKpRlnkcbTfvuYXFqo37T+v/4ARx6RDFObU0LfAW754npKcYo+CbegYMrEu51
         TXO5HQMZwFOplmgleRpzwxaG+ckMy0uaQei6SSKHnxu13E8X2jf23Zvnvb7s97yJTf2Q
         SpRHzDIx2xCfFgy7YSh1PIaoxg25TmME4VZr0HsSLNe+ylPUALqWQ6vxF4THvWs1iWIi
         a5xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7IRBUpn;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id a138si346359wmd.0.2018.02.17.11.40.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 11:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7IRBUpn;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id z81so8595078wmb.4
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Feb 2018 11:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oBPVvRryRrySuBQXgHX9SgM7KxhRLd50GkgJ++ZsUho=;
        b=I7IRBUpnctmKnrbv59RwqB71Btc14OAzUOrVyO4GN3ct/9C7pulrsmWGtkulcrfcW2
         PHNE+T7H1M5tbDiO8zI9v+GBIjbYA9DPDp+CO/L16CxWeGn8xhJfFS41CRwhHL9tBDK+
         rqwIQX8LPrjGoDF2x+PNB6ccNhmdsUdL/O8OTePu1CKkOtwXSPbFFsIueEBBNzFNmzmZ
         YdxXS4lWnZ595At66vTVL8PZdmpWbEdbLQAkL+s/oFb+Nh+Q3oLNUZ+1bjb46p3Ixw2D
         MSsxigjVEsjeJR9yUM+qL7es70Lwo6OcBGYbMvxMKqG5VS20c8zX/5lE+16AnohO2IFt
         547g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oBPVvRryRrySuBQXgHX9SgM7KxhRLd50GkgJ++ZsUho=;
        b=FHGJuzy9Ly7r+M4U0fFO4MT42n3zabZEWOfmJh0PUxA06ZKDM1Ig4s9dyFz4KGHjXX
         V5vMrDBIzIbIOyzbbVFWCr/Qa38QvSrltSuXhwuekzWmaPnfx5QDTlXSJScJ3VH1mnA7
         hS2ZZqV7EwPQoL5tl53JxuHicZ5k2fYF8anPmjJV6L9F/6aSKJ8fjJ9+REWKLhkExFdr
         3oG+XtFHhI1kNQSuHhEnoak7h7VOm9xYRpVVBT9eK99DSew+ho8WNBbi2+kMjXGwmhKP
         gsm2nsZtoQEWuZi7prjftrROYRnE/tmpx9/JlOTYHLUq/k6Kkaa49JrSYo9XxEJjLhQC
         /x3w==
X-Gm-Message-State: APf1xPAxf93qoVoYCr8xiHYRrNn2QLaXG9Eu0v1s1o3FVs8yjKf7qPT6
	PduIJ/CYbC8F1yMVoB59idY5FQ==
X-Received: by 10.28.198.132 with SMTP id w126mr7501816wmf.37.1518896404171;
        Sat, 17 Feb 2018 11:40:04 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([87.71.142.168])
        by smtp.gmail.com with ESMTPSA id t2sm18440941wrg.59.2018.02.17.11.40.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 11:40:03 -0800 (PST)
Date: Sat, 17 Feb 2018 21:40:00 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Move closing
 braces of 'if' statements to end of line
Message-ID: <20180217193959.GA7619@gmail.com>
References: <20180217171924.GA4155@gmail.com>
 <alpine.DEB.2.20.1802171821480.2205@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802171821480.2205@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 17, 2018 at 06:27:34PM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 17 Feb 2018, Dafna Hirschfeld wrote:
> 
> > Move all closing braces to the end of the line.
> > Remove braces in single 'if' statement.
> 
> It's not really a single if statement, but rather an if with a single
> statement in the then branch (or in both branches, as appropriate).
> 
> > Break 'if' condition to avoid 80 characters line.
> > Issues found with checkpatch.pl
> 
> This goes overboard on shortening the commit message line length.  Maybe
> you can configure your editor to do the appropriate line break, or at
> least show the column number.
> 
> >
> > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 15 +++++----------
> >  1 file changed, 5 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > index f29e110..4861c80 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > @@ -64,9 +64,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
> >  	if (alloc_sz > 0) {
> >  		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
> >  		if (pxmitbuf->pallocated_buf == NULL)
> > -		{
> >  			return _FAIL;
> > -		}
> 
> OK
> 
> >
> >  		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
> >  	}
> > @@ -90,8 +88,8 @@ void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
> >  	queue = skb_get_queue_mapping(pkt);
> >  	if (padapter->registrypriv.wifi_spec) {
> >  		if (__netif_subqueue_stopped(padapter->pnetdev, queue) &&
> > -			(pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
> > -		{
> > +			(pxmitpriv->hwxmits[queue].accnt <
> > +			 WMM_XMIT_THRESHOLD)) {
> 
> This does not look so nice.  What happens if you move the condition to the
> left, such that it starts just to the right of the ( on the preceeding
> line.  If needed, you can also drop the parentheses.
> 
> >  			netif_wake_subqueue(padapter->pnetdev, queue);
> >  		}
> >  	} else {
> > @@ -177,8 +175,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
> >
> >  	for (i = 0; i < chk_alive_num; i++) {
> >  		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> > -		if (!(psta->state & _FW_LINKED))
> > -		{
> > +		if (!(psta->state & _FW_LINKED)) {
> 
> OK
> 
> >  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_fw_linked);
> >  			continue;
> >  		}
> > @@ -187,8 +184,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
> >  		if (!memcmp(psta->hwaddr, &skb->data[6], 6)
> >  			|| !memcmp(psta->hwaddr, null_addr, 6)
> >  			|| !memcmp(psta->hwaddr, bc_addr, 6)
> > -		)
> > -		{
> > +		) {
> 
> The close parenthesis on the line with the { is not nice.  Move the whole
> thing back to just after the last memcmp call.
Hi, Solving the issue here as you asked raises a "CHECK: Logical continuations should be on the previous line"
It apperntly relates to the '||' being in the start of each line instead of the end.
Moving the '||' to the end solves all issues. Should I add it to the patch ?
> 
> >  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_self);
> >  			continue;
> >  		}
> > @@ -249,8 +245,7 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
> >  			#endif
> >  			)
> >  		&& (padapter->registrypriv.wifi_spec == 0)
> > -		)
> > -	{
> > +		) {
> 
> Same here.
See the longer context of this code https://elixir.bootlin.com/linux/v4.16-rc1/source/drivers/staging/rtl8723bs/os_dep/xmit_linux.c#L248
Here is the same thing as in previous case, the '||' are in the start. It's also not possible to move them to the end
of previous line because it is withing an #if/#endif clause.
> 
> julia
> 
> >  		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
> >  			res = rtw_mlcst2unicst(padapter, pkt);
> >  			if (res == true) {
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180217171924.GA4155%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

