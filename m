X-GM-THRID: 6334891749875384320
X-Received: by 10.36.73.160 with SMTP id e32mr1066446itd.25.1474989300638;
        Tue, 27 Sep 2016 08:15:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls16527894oty.10.gmail; Tue, 27 Sep
 2016 08:15:00 -0700 (PDT)
X-Received: by 10.129.53.73 with SMTP id c70mr6854961ywa.0.1474989300308;
        Tue, 27 Sep 2016 08:15:00 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si731192pab.1.2016.09.27.08.15.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 08:15:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 93E9F92;
	Tue, 27 Sep 2016 15:14:59 +0000 (UTC)
Date: Tue, 27 Sep 2016 17:15:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: ks7010 : Fix block comments warning
Message-ID: <20160927151504.GA31382@kroah.com>
References: <20160927150547.GA11513@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927150547.GA11513@domino-MS-16Y1>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 27, 2016 at 06:05:48PM +0300, Muraru Mihaela wrote:
> Move final */ to a new line, to conform to
> the kernel coding style for block comments.
> 
> Issue found by checkpatch.
> 
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> ---
> Chnages in v2:
> 	-Make the commit message clearer
> ---
>  drivers/staging/ks7010/eap_packet.h | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
> index 16a392a..639a22a 100644
> --- a/drivers/staging/ks7010/eap_packet.h
> +++ b/drivers/staging/ks7010/eap_packet.h
> @@ -52,15 +52,18 @@ struct ieee802_1x_eapol_key {
>  	unsigned char type;
>  	unsigned short key_length;
>  	/* does not repeat within the life of the keying material used to
> -	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
> +	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
> +	 */

Isn't there still a warning here?

Shouldn't the comment look like:
  	/*
	 * does not repeat within the life of the keying material used to
	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
	 */

thanks,

greg k-h

