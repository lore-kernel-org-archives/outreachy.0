X-GM-THRID: 6939320778752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,51726dff31130f74
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.248.227 with SMTP id yp3mr28347360obc.22.1425904581833;
        Mon, 09 Mar 2015 05:36:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.74 with SMTP id y71ls944146iod.78.gmail; Mon, 09 Mar
 2015 05:36:21 -0700 (PDT)
X-Received: by 10.66.100.198 with SMTP id fa6mr26986346pab.31.1425904581659;
        Mon, 09 Mar 2015 05:36:21 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si2600843pac.2.2015.03.09.05.36.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 05:36:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (li684-192.members.linode.com [23.239.3.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1F19B982;
	Mon,  9 Mar 2015 12:36:21 +0000 (UTC)
Date: Mon, 9 Mar 2015 13:36:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Fixed trailing
 whitespace in ieee80211_rx.c
Message-ID: <20150309123616.GA32067@kroah.com>
References: <1425762223-2663-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425762223-2663-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 07, 2015 at 11:03:43PM +0200, Dilek Uzulmez wrote:
> This patch fixes trailing whitespace error found in ieee80211_rx.c
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index f3e32ce..d2c5451 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -610,7 +610,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	u16			WinEnd = (pTS->RxIndicateSeq + WinSize -1)%4096;
>  	u8			index = 0;
>  	bool			bMatchWinStart = false, bPktInBuf = false;
> -	
> +
>  	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
>  	/* Rx Reorder initialize condition.*/
>  	if(pTS->RxIndicateSeq == 0xffff) {

Does not apply to my tree :(

