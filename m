X-GM-THRID: 6807941969778573312
X-Received: by 2002:a62:6454:: with SMTP id y81mr3176630pfb.13.1585139635845;
        Wed, 25 Mar 2020 05:33:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7c97:: with SMTP id x145ls1372465pfc.6.gmail; Wed, 25
 Mar 2020 05:33:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vswUFVcngyFAzL7LwoA5bV2vrMqVUtaqm7R80dEZtNJHfbPEu9LXWifCw4WaBjWvN4OA9Uv
X-Received: by 2002:a63:2fc1:: with SMTP id v184mr2828071pgv.97.1585139633694;
        Wed, 25 Mar 2020 05:33:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585139633; cv=none;
        d=google.com; s=arc-20160816;
        b=erZOIjB1gZPm88gYZOIJ+FWxEwKuorbzVCt81YsiNB32I38FBy4LIozoNAwQoZeSIz
         r2JQ0LRyqsS5EM/eoNlJI4JVnT58rbKWctnBn+jCAyJyQl6LG+wPMfOPOHoFjsTjN68N
         oAeIZi+fiHEh4CJXJ8VPZHPvk2OdMlVYrG7XSMKwHnvDsZRBBOK0BqMVoSZieE7nMIUN
         Zjjizw2ChJbRNw0lMwWASykOgnhxxuEmMUWELKkUoI1vY29eXHKrE8ucDPV0Q08bwnDD
         A1KEjD9TuPkYQoiIt4/vexyCspKrjBbh4NLITMd3Xfrt/woSwVJKfLoXV3NEhOBoxG22
         4idA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UCA9eYWEG6b35AW9tmxzrSiFgI+xIK6X4dJeygZMnvw=;
        b=c1B1Q+8UA8GSfWJvEiTICKd+740GmZhx+atOkiMGGpIFynkfLO0xn6a9QFZUaKbBWU
         6p9D6Tbo+6DSeFrsgzyJj8F721iS6tSxT/Qi82y29PUZkFOE0K+ZHfvuBhGS3ir07EHt
         uWWnXLBuMHhnCyQskbJx/Wm9GGXIY7YXbOYv/sXgofWVST5WmeoBJX//9oF2ok/8CPJ0
         J3e8DFDfEpiEFx9pFfDIMD2iDfXb3ETlCC8aE84GYovH2UPfQ4GW9UqeZC3dRuCJ1mhZ
         9fdwi3gqwq0VqlQD+bqUAQdz6G1V81d9XaqR0JjKr0kkxGNNQ2/0xBrCGG+yFQUqe8qm
         hYrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="2H/szxa/";
       spf=neutral (google.com: 198.145.29.99 is neither permitted nor denied by best guess record for domain of gregkh@linuxfoundation.org) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u15si262893pjm.1.2020.03.25.05.33.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:33:53 -0700 (PDT)
Received-SPF: neutral (google.com: 198.145.29.99 is neither permitted nor denied by best guess record for domain of gregkh@linuxfoundation.org) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="2H/szxa/";
       spf=neutral (google.com: 198.145.29.99 is neither permitted nor denied by best guess record for domain of gregkh@linuxfoundation.org) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 005992076A;
	Wed, 25 Mar 2020 12:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585139633;
	bh=pw3R+yv7KEgrcqxucHFsVX4gaCfSkRPhSMFbQDy7J5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2H/szxa/qaiYTF6xYcHj5+k6Dl0tX/koydMBZvsq9dfl5pNNRp7UQWBraysicmIEb
	 0gO9hCDTnjrqw5dv85lf8Jm+BW9tWnxsG4b4tv42t4AzcFXKYXt6S2BFc18PCHSzBP
	 1EhCcOSEwt7OmoY8oa3Fhj8vepDXU0oFbVhKdUbk=
Date: Wed, 25 Mar 2020 13:33:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vt6656: rearrange line exceeding 80 characters
Message-ID: <20200325123350.GA3430583@kroah.com>
References: <20200325005146.GA19292@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200325005146.GA19292@siyah2>

On Wed, Mar 25, 2020 at 03:51:46AM +0300, Gokce Kuler wrote:
> Moved from the comma character to the bottom line after
> for it exceeds 80 characters.
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/vt6656/rxtx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
> index 9439d19..796a716 100644
> --- a/drivers/staging/vt6656/rxtx.c
> +++ b/drivers/staging/vt6656/rxtx.c
> @@ -416,7 +416,8 @@ static u16 vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
>  	u8 need_ack = tx_context->need_ack;
>  
>  	buf->rrv_time = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
> -					      frame_len, current_rate, need_ack);
> +					      frame_len, current_rate,
> +			                      need_ack);
>  
>  	if (need_mic)
>  		head = &tx_head->tx_ab.tx.mic.head;
> -- 
> 2.7.4
> 

You sent 3 patches for the same file, doing the same type of thing.
That should all just be 1 patch.

Please fix up and resend.

thanks,

greg k-h

