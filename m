X-GM-THRID: 6523773996804079616
X-Received: by 10.25.22.20 with SMTP id m20mr510043lfi.3.1518971078896;
        Sun, 18 Feb 2018 08:24:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.80 with SMTP id 77ls230561ljj.12.gmail; Sun, 18 Feb 2018
 08:24:37 -0800 (PST)
X-Google-Smtp-Source: AH8x2264Db4dRxXbIZeIQScxuzELkQ+RM5lQiQfFmUvvHvUYERMeTs1O9ZqDbjQK22j1E2DbqxBm
X-Received: by 10.46.124.23 with SMTP id x23mr219070ljc.21.1518971077337;
        Sun, 18 Feb 2018 08:24:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518971077; cv=none;
        d=google.com; s=arc-20160816;
        b=KrZmQ+kiV5kApZxdb52QRQIGML+vYSTnOKnl2i7+0MOEs4UVtwSVZrb3zhiCdCLfku
         kK17B/faA6AfxWPwA4Q1RUvzyLJLNeUNvd3dEmhYj9P/cGKOd7ruGTUazUwKYYpnAVCW
         rHuw0pJCnDy0Zhwh93Mqp1X9fISCymL3vID319YCIuDcgm6eXhEyUMsp8OlCfN2X9TPS
         pdbTPmlvK/zf3XBNcdlT3uhGmRB0ASFDQPxn7tSO81ZFhLAAl6xVUjL/kr+uNrF0m48i
         VJYAhwf9QP6+IRj/IeMkGIqqWSxmbVBFtI07LdUT1GClra2Wvjqih1veYxSiW8E3iCvS
         Pqeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=BDYZGXyUH5QvgYEFNyURfCvRqW6Q0gapX6g5i8vAz9o=;
        b=B4BI3XS9eyfmkdJ7g7cBBV8KB5qYe4FjJXluSqj1Rt561TiGVbfMvpbiEvTZqK29MS
         3GW6O6MX5+WsUhvhCA7pgQQtEZF43dtk6m9EimSOeeoXmnW7jseRg9oUTP2+7AEbnlJp
         pPpbhGXWIO2j4Nc/DFG8x5GVkn/qMGABz8+4IJ6EInQy7AelL48S3uvK/kBGoEcD1cum
         xFyE0yyCfmZaFFK9bGjrSWY3WTc9b+2Sg5rE7iy26+4Qdf1nf+pXlR2/XWLPQEuqqonD
         xsvNuZWJ/R9qcrkY4Az9KZgUxRIF7BA63ASdBWQUBHcAxKlitECfHUcAU2XJGM6u/J1W
         2IqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VEpVwhtP;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::231 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x231.google.com (mail-wr0-x231.google.com. [2a00:1450:400c:c0c::231])
        by gmr-mx.google.com with ESMTPS id z10si67003ljc.5.2018.02.18.08.24.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 08:24:37 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::231 as permitted sender) client-ip=2a00:1450:400c:c0c::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VEpVwhtP;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::231 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x231.google.com with SMTP id w77so7317452wrc.6
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 08:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BDYZGXyUH5QvgYEFNyURfCvRqW6Q0gapX6g5i8vAz9o=;
        b=VEpVwhtPWc9Jj/UGVVaFmfHkG2Y2NsczdRs+M6tDwelhRGaZuYihtctyeFo8vHRYLw
         7K3ATYCbcYm+ezf2Ng/V1Ap4MTML2K8Ur6IQHN7kMW/v8G9fNxpoObWF/6BfKWVLn/6S
         xiRTj71U6/1x6yCSBgGIIK5cK9waqb6FRchK3wblBUJI6+IZfFszwUtHDA+X+cO2HXfo
         jffdrRe9Er/ykUgmDCkbrhTKuA4owS47ib9MveRVU12kGclgwLhehBsWQW3B6MCz9RPo
         IUV9ArkpTo2CMIxRxMp2XUB/MDMqdgrZbZjpYT8+TR/hteuITL4uZX5WxotKox/cSHIl
         5lBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BDYZGXyUH5QvgYEFNyURfCvRqW6Q0gapX6g5i8vAz9o=;
        b=QFyP7VkHjL81PbVguXPH1lFdDjEyVlKvYDFVVswXCw6Byk3NFuBNuRmChQWDznVXmS
         hN/dxvRmoi7bf22aXkI7aTN0S++px9jJZct0T9qXVY2jigMo93V6YtOKDsQLVgyeoiN+
         2zoIhw04KodgKnquMxn1Hu1b5TSJV6LkrKdzTYgyg6EQyt4b8obbsxxMD0CoykTbSbsL
         cZi11YRoZYTSVSnBr6XjMF5+KraMlMveoN6JCdL9t4GtCJw6NI0b6uVgZgkIfWsvtWhU
         P3o3DLOwKM3QPzOg3pgsR+MfmZwb+cBNgnR7+embHIT3VyHnRqiFni4A+b/dTQ9MgcJw
         DDBA==
X-Gm-Message-State: APf1xPCecQmCLLxt/4BJ6IVKfyIrN29V4gALaDY9JrPFEmZgZUiBC5Er
	FfH1mDyTpjtJSAEWs6uYka2iOQ==
X-Received: by 10.223.198.76 with SMTP id u12mr11434499wrg.181.1518971076921;
        Sun, 18 Feb 2018 08:24:36 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([31.154.102.92])
        by smtp.gmail.com with ESMTPSA id 81sm19496805wmi.26.2018.02.18.08.24.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 08:24:36 -0800 (PST)
Date: Sun, 18 Feb 2018 18:24:33 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: clean up
 conditionals
Message-ID: <20180218162431.GA11471@gmail.com>
References: <20180218072644.GA18258@gmail.com>
 <alpine.DEB.2.20.1802181400430.2777@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802181400430.2777@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 18, 2018 at 02:00:59PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 18 Feb 2018, Dafna Hirschfeld wrote:
> 
> > Move all closing braces and parentheses to the end of the line.
> > Remove braces from 'if' statements with a single 'then' line.
> > Move logical operators to the end of lines in multiline conditional.
> > Remove unnecessary parentheses.
> > Issues found with checkpatch.pl
> >
> > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > ---
> > Changes in v2:
> > - Fix commit body spelling and lines
> 
> Since this is v3, you need to explain what has changed in v3.
> 
> julia
Hi, it's a mistake, I had to write "Changes in v3", but the description does
describe the changes in v3.
>
> >
> >  drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 24 +++++++-----------------
> >  1 file changed, 7 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > index f29e110..21e1b81 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> > @@ -64,9 +64,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
> >  	if (alloc_sz > 0) {
> >  		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
> >  		if (pxmitbuf->pallocated_buf == NULL)
> > -		{
> >  			return _FAIL;
> > -		}
> >
> >  		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
> >  	}
> > @@ -90,10 +88,8 @@ void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt)
> >  	queue = skb_get_queue_mapping(pkt);
> >  	if (padapter->registrypriv.wifi_spec) {
> >  		if (__netif_subqueue_stopped(padapter->pnetdev, queue) &&
> > -			(pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
> > -		{
> > +		    (pxmitpriv->hwxmits[queue].accnt < WMM_XMIT_THRESHOLD))
> >  			netif_wake_subqueue(padapter->pnetdev, queue);
> > -		}
> >  	} else {
> >  		if (__netif_subqueue_stopped(padapter->pnetdev, queue))
> >  			netif_wake_subqueue(padapter->pnetdev, queue);
> > @@ -177,18 +173,15 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
> >
> >  	for (i = 0; i < chk_alive_num; i++) {
> >  		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
> > -		if (!(psta->state & _FW_LINKED))
> > -		{
> > +		if (!(psta->state & _FW_LINKED)) {
> >  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_fw_linked);
> >  			continue;
> >  		}
> >
> >  		/* avoid come from STA1 and send back STA1 */
> > -		if (!memcmp(psta->hwaddr, &skb->data[6], 6)
> > -			|| !memcmp(psta->hwaddr, null_addr, 6)
> > -			|| !memcmp(psta->hwaddr, bc_addr, 6)
> > -		)
> > -		{
> > +		if (!memcmp(psta->hwaddr, &skb->data[6], 6) ||
> > +		    !memcmp(psta->hwaddr, null_addr, 6) ||
> > +		    !memcmp(psta->hwaddr, bc_addr, 6)) {
> >  			DBG_COUNTER(padapter->tx_logs.os_tx_m2u_ignore_self);
> >  			continue;
> >  		}
> > @@ -248,14 +241,11 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
> >  			|| is_broadcast_mac_addr(pkt->data)
> >  			#endif
> >  			)
> > -		&& (padapter->registrypriv.wifi_spec == 0)
> > -		)
> > -	{
> > +		&& padapter->registrypriv.wifi_spec == 0) {
> >  		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
> >  			res = rtw_mlcst2unicst(padapter, pkt);
> > -			if (res == true) {
> > +			if (res == true)
> >  				goto exit;
> > -			}
> >  		} else {
> >  			/* DBG_871X("Stop M2U(%d, %d)! ", pxmitpriv->free_xmitframe_cnt, pxmitpriv->free_xmitbuf_cnt); */
> >  			/* DBG_871X("!m2u); */
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180218072644.GA18258%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

