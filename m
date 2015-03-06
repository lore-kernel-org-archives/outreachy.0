X-GM-THRID: 6939320778752
X-Received: by 10.236.53.10 with SMTP id f10mr17600653yhc.17.1425725822779;
        Sat, 07 Mar 2015 02:57:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.55.8 with SMTP id n8ls415681igp.4.canary; Sat, 07 Mar 2015
 02:57:02 -0800 (PST)
X-Received: by 10.50.30.134 with SMTP id s6mr20092638igh.2.1425725822514;
        Sat, 07 Mar 2015 02:57:02 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si1691467pac.2.2015.03.07.02.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:57:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 685F0990;
	Sat,  7 Mar 2015 10:57:01 +0000 (UTC)
Date: Fri, 6 Mar 2015 15:54:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Fixed trailing
 whitespace in ieee80211_rx.c
Message-ID: <20150306235436.GA27317@kroah.com>
References: <1425656463-4736-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425656463-4736-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 06, 2015 at 05:41:03PM +0200, Dilek Uzulmez wrote:
> This patch fixes trailing whitespace error found in ieee80211_rx.c
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 0d8d06a..f3e32ce 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -554,7 +554,7 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
>  	{
>  //added by amy for reorder
>  		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
> -		
> +
>  		for(i = 0; i<prxb->nr_subframes; i++) {
>  			struct sk_buff *sub_skb = prxb->subframes[i];
>  

This patch does not apply to my tree :(

