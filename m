X-GM-THRID: 6523574178803613696
X-Received: by 10.25.170.82 with SMTP id t79mr750482lfe.36.1518896598382;
        Sat, 17 Feb 2018 11:43:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.148.3 with SMTP id w3ls505659lfd.3.gmail; Sat, 17 Feb 2018
 11:43:16 -0800 (PST)
X-Google-Smtp-Source: AH8x227zMM7cesYRzXvPUr32gFXvdzvW++NHXM9pjEV7K3jE9a/p6BmMvx1gmDke2FX359FslE9M
X-Received: by 10.25.208.19 with SMTP id h19mr8025lfg.10.1518896596393;
        Sat, 17 Feb 2018 11:43:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518896596; cv=none;
        d=google.com; s=arc-20160816;
        b=AFGwKAOxjqNV9IjS6l66uGXFHYCTrX3lHOMZvdNc3U9y15dbOhBpI4tfS92xK1UgPQ
         94id5qxosrTFMIi+5jp5R4h8/jNK9Duvx5d9RlG6muzEAcdqOMiJANPcCIeL0Rl/Snsk
         nDbDphFljlk5ZIXp7pCUWHR9KOAeLBGDA1fsd2fqI/N/aoggGOsf5rdg1C6XIzDIJHjX
         6BX5JsqB7qEOUHiEwnMIzEmTSxWLVn/cD0GwgXfLMLD/1L8Bec9cUaR+CrIUDR+47Wkc
         xglq9ZktNhk66r27dIsmtpwPd0VFaA5Qo5FFV0c0+6dvwmGzAmYLV4GREkj/VrGAKAeq
         qbOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=x548Xhn629DZvka2qhqTLT4tItqeWXXAsBQbagwSqOI=;
        b=WBfbxEvgJ6qF37MLxv5CcxkYsxVRaHil+3QcimGjR4RJi+RPtwwjWwn9RKMb+m6GYB
         BXSF6PF/le8X2uquJCLsShoUANh/gap5U/OfA1zqOG39EihUSlDP0lEMgJhaBXHb4nsR
         smJDLpZctrsDEXS7cBvsiJSXy75uC1KnAlHV2D4dgqdWRJXUlRoZkTeIVQatSJc/mNw6
         1m5P6hUZdQH0iPHxN4c5tfNBGEWhFI+zI4sojVtDCys6VyaM144I9YrxqwgYeVs/mKlb
         PQobdgREWnXFG1rA0LPSvaevedoD8mbBRdA8DTQKGnOnWZ7/rNYriR9Ceu/l2QWZrsXc
         WVtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k82si423018lfe.1.2018.02.17.11.43.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 11:43:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,526,1511823600"; 
   d="scan'208";a="314072325"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2018 20:43:15 +0100
Date: Sat, 17 Feb 2018 20:43:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Move closing
 braces of 'if' statements to end of line
In-Reply-To: <20180217193959.GA7619@gmail.com>
Message-ID: <alpine.DEB.2.20.1802172040540.12418@hadrien>
References: <20180217171924.GA4155@gmail.com> <alpine.DEB.2.20.1802171821480.2205@hadrien> <20180217193959.GA7619@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 17 Feb 2018, Dafna Hirschfeld wrote:

> On Sat, Feb 17, 2018 at 06:27:34PM +0100, Julia Lawall wrote:
> >
> >
> > On Sat, 17 Feb 2018, Dafna Hirschfeld wrote:
> >
> > > Move all closing braces to the end of the line.
> > > Remove braces in single 'if' statement.
> >
> > It's not really a single if statement, but rather an if with a single
> > statement in the then branch (or in both branches, as appropriate).
> >
> > > Break 'if' condition to avoid 80 characters line.
> > > Issues found with checkpatch.pl
> >
> > This goes overboard on shortening the commit message line length.  Maybe
> > you can configure your editor to do the appropriate line break, or at
> > least show the column number.
> >
> > >
> > > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 15 +++++----------
> > >  1 file changed, 5 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > > index f29e110..4861c80 100644
> > > --- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > > +++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > > @@ -64,9 +64,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
> > >  	if (alloc_sz > 0) {
> > >  		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
> > >  		if (pxmitbuf->pallocated_buf == NULL)
> > > -		{
> > >  			return _FAIL;
> > > -		}
> >
> > OK
> >
> > >
> > >  		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
> > >  	}
> > > @@ -90,8 +88,8 @@ void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
> > >  	queue = skb_get_queue_mapping(pkt);
> > >  	if (padapter->registrypriv.wifi_spec) {
> > >  		if (__netif_subqueue_stopped(padapter->pnetdev, queue) &&
> > > -			(pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
> > > -		{
> > > +			(pxmitpriv->hwxmits[queue].accnt <
> > > +			 WMM_XMIT_THRESHOLD)) {
> >
> > This does not look so nice.  What happens if you move the condition to the
> > left, such that it starts just to the right of the ( on the preceeding
> > line.  If needed, you can also drop the parentheses.
> >
> > >  			netif_wake_subqueue(padapter->pnetdev, queue);
> > >  		}
> > >  	} else {
> > > @@ -177,8 +175,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
> > >
> > >  	for (i = 0; i < chk_alive_num; i++) {
> > >  		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> > > -		if (!(psta->state & _FW_LINKED))
> > > -		{
> > > +		if (!(psta->state & _FW_LINKED)) {
> >
> > OK
> >
> > >  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_fw_linked);
> > >  			continue;
> > >  		}
> > > @@ -187,8 +184,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
> > >  		if (!memcmp(psta->hwaddr, &skb->data[6], 6)
> > >  			|| !memcmp(psta->hwaddr, null_addr, 6)
> > >  			|| !memcmp(psta->hwaddr, bc_addr, 6)
> > > -		)
> > > -		{
> > > +		) {
> >
> > The close parenthesis on the line with the { is not nice.  Move the whole
> > thing back to just after the last memcmp call.
> Hi, Solving the issue here as you asked raises a "CHECK: Logical continuations should be on the previous line"
> It apperntly relates to the '||' being in the start of each line instead of the end.
> Moving the '||' to the end solves all issues. Should I add it to the patch ?

It could be reasonable.  The subject of the patch could become "clean up
conditionals", to be a bit more general.

> >
> > >  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_self);
> > >  			continue;
> > >  		}
> > > @@ -249,8 +245,7 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
> > >  			#endif
> > >  			)
> > >  		&& (padapter->registrypriv.wifi_spec == 0)
> > > -		)
> > > -	{
> > > +		) {
> >
> > Same here.
> See the longer context of this code https://elixir.bootlin.com/linux/v4.16-rc1/source/drivers/staging/rtl8723bs/os_dep/xmit_linux.c#L248
> Here is the same thing as in previous case, the '||' are in the start. It's also not possible to move them to the end
> of previous line because it is withing an #if/#endif clause.

If it's impossible, it's impossible.  Checkpatch just makes suggestions.
It doesn't always see enough of the context.

julia

> >
> > julia
> >
> > >  		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
> > >  			res = rtw_mlcst2unicst(padapter, pkt);
> > >  			if (res == true) {
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180217171924.GA4155%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

