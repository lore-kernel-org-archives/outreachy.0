X-GM-THRID: 6528044448013615104
X-Received: by 10.25.78.9 with SMTP id c9mr221202lfb.24.1519929731158;
        Thu, 01 Mar 2018 10:42:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.17.66 with SMTP id f63ls844304lje.1.gmail; Thu, 01 Mar 2018
 10:42:09 -0800 (PST)
X-Google-Smtp-Source: AG47ELscGbNHmxyWU/2Ozlc6sQgguOwSMmnsyLy1YiMgJ4BfnC6jkZADYkc+p8lBOUie1zh+gafr
X-Received: by 10.46.129.206 with SMTP id s14mr210625ljg.9.1519929729317;
        Thu, 01 Mar 2018 10:42:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519929729; cv=none;
        d=google.com; s=arc-20160816;
        b=H2huGrmUj4W+x0uTayyLgg/sr0wkDTk8j5rU0y5wXJs6DrdgqJDU/BswVrcJj/5vC+
         kX2t/4CPB1ubBVObTCPqmC8n59/aoDwhUYoV73jSb/0y+cK/Z1o2/pFw07oVHEzLZa1o
         3jcbldwa5jPHmk48ys9QaBjQunkIHmziVknLsZFlPN+d6lNnQfmnZ1jgNxwOdo9EXOkI
         zIAFERsEd5TkLuVgH8w5ZoU9LTzmIyAEYjNfFTj2pM157MctjACxwGFC6SjQUQATx2Wt
         T4l9jBX0exoQaiyG2NPn9DwlkYRoom7bni1sEaw7TkOR3s+1tgDIifqYUfmzOmHDpChu
         fJRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=Z4icI4ScMJxpO9yBpx2Wz156TguZCZk32F3hIhFaOCI=;
        b=GTbHLtfuNp8Wjjts6J8TZqL1GGa15npb2zNdz/qyCQ34MR79fdTZxEiTEZfsFgPiNv
         TMMX1mpUJ+ASHjKRRe8olHAG/7lb/pqpWcVWEc9T729b6wIXLkZsA+NrpFzobK98L6SS
         8pjMPPehM9yR9bhFP1tKmHuYiziiZyd/S8Rb+Qv1+rhnmiGf5jbsmWlD067iJXFTI7qM
         kVUxiliKGPIuDyXLBfiv0yWXfY5Bb5+9wMD2ZK3bcUag9hLyx7aIT7bT3Z+IcjiM9UEt
         JvP77IVvxh2pX0J4zH1bFKSYabKdpFj4bkHe4aowAF4b6oDgXchk1pEgkw2DKUUVESoF
         4wtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s26si87848lfi.1.2018.03.01.10.42.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 10:42:09 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (clnet-b04-243.ikbnet.co.at [83.175.124.243])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 16783DA7;
	Thu,  1 Mar 2018 18:42:06 +0000 (UTC)
Date: Thu, 1 Mar 2018 19:42:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: eric@anholt.net, stefan.wahren@i2se.com, f.fainelli@gmail.com,
	rjui@broadcom.com, sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: vc04_services: bcm2835-camera: Add blank line
Message-ID: <20180301184207.GA15880@kroah.com>
References: <1519928773-10756-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1519928773-10756-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Thu, Mar 01, 2018 at 11:56:13PM +0530, Nishka Dasgupta wrote:
> Add blank line after variable declaration. Issue found with checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v2:
>  - Format commit message.
> 
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index e3460b7..c90754f 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -1979,6 +1979,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
>  	static VCHI_CONNECTION_T *vchi_connection;
>  
>  	static VCHI_INSTANCE_T vchi_instance;
> +
>  	SERVICE_CREATION_T params = {
>  		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
>  		.service_id		= VC_MMAL_SERVER_NAME,

Checkpatch is wrong here, don't you think?  Are you sure this is
actually doing what you think it is?

thanks,

greg k-h

