X-GM-THRID: 6253656670961926144
X-Received: by 10.182.243.135 with SMTP id wy7mr7877139obc.8.1457720984325;
        Fri, 11 Mar 2016 10:29:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.69 with SMTP id m66ls1389068iom.89.gmail; Fri, 11 Mar
 2016 10:29:44 -0800 (PST)
X-Received: by 10.107.150.133 with SMTP id y127mr8344153iod.34.1457720984073;
        Fri, 11 Mar 2016 10:29:44 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1563980pac.1.2016.03.11.10.29.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:29:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C343ECA5;
	Fri, 11 Mar 2016 18:29:43 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:29:43 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] staging: rtl8712: Place
 constants on the right side of '!'
Message-ID: <20160311182943.GB17828@kroah.com>
References: <20160221082218.GA24246@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160221082218.GA24246@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 21, 2016 at 01:52:18PM +0530, Bhaktipriya Shridhar wrote:
> Move constants to the right of binary operator '!'.
> This issue was identified using the Coccinelle script:
> @@
> constant c,c1;
> expression e,e1,e2;
> local idexpression i;
> binary operator b = {==,!=,&,|};
> @@
> 
> (
> c b (c1)
> |
> i b e1
> |
> c | e1 | e2 | ...
> |
> c | (e ? e1 : e2)
> |
> - c
> + e
> b
> - e
> + c
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-change subject line
> 	-inserted Coccinelle script
>  drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> index d187508..4fd106a 100644
> --- a/drivers/staging/rtl8712/rtl8712_recv.c
> +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> @@ -1109,7 +1109,7 @@ static void recv_tasklet(void *priv)
>  	struct _adapter *padapter = (struct _adapter *)priv;
>  	struct recv_priv *precvpriv = &padapter->recvpriv;
> 
> -	while (NULL != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
> +	while ((pskb = skb_dequeue(&precvpriv->rx_skb_queue)) != NULL) {

Please break the assignment out of the while() statement to make this
more readable and understandable.


