X-GM-THRID: 6523773996804079616
X-Received: by 10.28.112.15 with SMTP id l15mr1688222wmc.8.1518971255735;
        Sun, 18 Feb 2018 08:27:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.129.141 with SMTP id c135ls1087883wmd.11.canary-gmail; Sun,
 18 Feb 2018 08:27:34 -0800 (PST)
X-Google-Smtp-Source: AH8x225GyG/UyXo6i1tuOURdIR0vt61oQSYsqCFgTcNQlRsOEZiIPz141OhEFxA/jyfzMLKNmGBS
X-Received: by 10.28.215.17 with SMTP id o17mr1988473wmg.31.1518971254704;
        Sun, 18 Feb 2018 08:27:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518971254; cv=none;
        d=google.com; s=arc-20160816;
        b=AlbvUolt+wflCOEFJSZW9XAG9Xgo9l9I/PBsyyMPUvn1JYUIL+TayZGPvvvAo/kjHX
         2Vo0JfL8P/zthXSTyYpVgLnGNwuB8q8ONqQn3/niOg3PvZ68vogUM+qI3B8O+cIdmi0U
         n7kM8lxnAYKPk/PV3iSHsLKOSnU18LIMcs07evaYYS/2lgSy4osmQbIAlrc9e+YmskWd
         DZOZH7fBchGacNViNkckrZSMGxYwWPv3wKa07E0l5lFEXm45i7DEMrJNLYvizeOOBrA3
         l9xVZxbkbiG/+WKkecDmcHpZahhMNnhHu+vQ3OrZ1bWZZTYVTexAaq88oygHR9VK/yPv
         6JNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=GbJitfytC/ZN+SkFezQbu9WieW0qz0Z24IXSoTjL9lw=;
        b=ZBn15mVbRYYMOsw/XgMnuSaaAlBpNARp08mnDmrEZgq+gVlC8aY+71stebzoecwEG0
         plJcKywnXooHqh0Lg7LU9XUV2dMUw8AdAYkh3eajkdly1VTtyCWW5twyHINdYMsXdCUZ
         3ycHVbfMaHtovuA1QuP/qB/fnoHq3Rs8QEgRmXxxeOezJfxL35qBFc/wJY9rq4PETaRI
         uwHOwqJ4z04gDONoO9SLd+q84XTW07v1HvXZrE+Kmc4As26ILKBoJRMkXpoY5sVfZXio
         p8fP3PegkSy1dCmLu2zLMBl4X+UbVQMVoKmAyC/a67kT2epQ65C/rAReRd5xdxE+dgPr
         QGJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si465085wml.2.2018.02.18.08.27.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 08:27:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,531,1511823600"; 
   d="scan'208";a="314127898"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 17:27:34 +0100
Date: Sun, 18 Feb 2018 17:27:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: clean up
 conditionals
In-Reply-To: <20180218162431.GA11471@gmail.com>
Message-ID: <alpine.DEB.2.20.1802181726410.2777@hadrien>
References: <20180218072644.GA18258@gmail.com> <alpine.DEB.2.20.1802181400430.2777@hadrien> <20180218162431.GA11471@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Feb 2018, Dafna Hirschfeld wrote:

> On Sun, Feb 18, 2018 at 02:00:59PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 18 Feb 2018, Dafna Hirschfeld wrote:
> >
> > > Move all closing braces and parentheses to the end of the line.
> > > Remove braces from 'if' statements with a single 'then' line.
> > > Move logical operators to the end of lines in multiline conditional.
> > > Remove unnecessary parentheses.
> > > Issues found with checkpatch.pl
> > >
> > > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > > ---
> > > Changes in v2:
> > > - Fix commit body spelling and lines
> >
> > Since this is v3, you need to explain what has changed in v3.
> >
> > julia
> Hi, it's a mistake, I had to write "Changes in v3", but the description does
> describe the changes in v3.

OK, to avoid confusion for Greg when he will apply your patch sometime in
the future, could you send a v4 with a v4 description under the ---.  Then
everything will be coherent.

thanks,
julia

> >
> > >
> > >  drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 24 +++++++-----------------
> > >  1 file changed, 7 insertions(+), 17 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > > index f29e110..21e1b81 100644
> > > --- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > > +++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > > @@ -64,9 +64,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
> > >  	if (alloc_sz > 0) {
> > >  		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
> > >  		if (pxmitbuf->pallocated_buf == NULL)
> > > -		{
> > >  			return _FAIL;
> > > -		}
> > >
> > >  		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
> > >  	}
> > > @@ -90,10 +88,8 @@ void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
> > >  	queue = skb_get_queue_mapping(pkt);
> > >  	if (padapter->registrypriv.wifi_spec) {
> > >  		if (__netif_subqueue_stopped(padapter->pnetdev, queue) &&
> > > -			(pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
> > > -		{
> > > +		    (pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
> > >  			netif_wake_subqueue(padapter->pnetdev, queue);
> > > -		}
> > >  	} else {
> > >  		if (__netif_subqueue_stopped(padapter->pnetdev, queue))
> > >  			netif_wake_subqueue(padapter->pnetdev, queue);
> > > @@ -177,18 +173,15 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
> > >
> > >  	for (i = 0; i < chk_alive_num; i++) {
> > >  		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> > > -		if (!(psta->state & _FW_LINKED))
> > > -		{
> > > +		if (!(psta->state & _FW_LINKED)) {
> > >  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_fw_linked);
> > >  			continue;
> > >  		}
> > >
> > >  		/* avoid come from STA1 and send back STA1 */
> > > -		if (!memcmp(psta->hwaddr, &skb->data[6], 6)
> > > -			|| !memcmp(psta->hwaddr, null_addr, 6)
> > > -			|| !memcmp(psta->hwaddr, bc_addr, 6)
> > > -		)
> > > -		{
> > > +		if (!memcmp(psta->hwaddr, &skb->data[6], 6) ||
> > > +		    !memcmp(psta->hwaddr, null_addr, 6) ||
> > > +		    !memcmp(psta->hwaddr, bc_addr, 6)) {
> > >  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_self);
> > >  			continue;
> > >  		}
> > > @@ -248,14 +241,11 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
> > >  			|| is_broadcast_mac_addr(pkt->data)
> > >  			#endif
> > >  			)
> > > -		&& (padapter->registrypriv.wifi_spec == 0)
> > > -		)
> > > -	{
> > > +		&& padapter->registrypriv.wifi_spec == 0) {
> > >  		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
> > >  			res = rtw_mlcst2unicst(padapter, pkt);
> > > -			if (res == true) {
> > > +			if (res == true)
> > >  				goto exit;
> > > -			}
> > >  		} else {
> > >  			/* DBG_871X("Stop M2U(%d, %d)! ", pxmitpriv->free_xmitframe_cnt, pxmitpriv->free_xmitbuf_cnt); */
> > >  			/* DBG_871X("!m2u); */
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180218072644.GA18258%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180218162431.GA11471%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

