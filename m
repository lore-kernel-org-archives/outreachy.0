X-GM-THRID: 6399916000486096896
X-Received: by 10.176.83.201 with SMTP id l9mr595982uaa.16.1490275114547;
        Thu, 23 Mar 2017 06:18:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.70 with SMTP id h64ls2625674oth.33.gmail; Thu, 23 Mar
 2017 06:18:33 -0700 (PDT)
X-Received: by 10.157.82.78 with SMTP id q14mr759064otg.80.1490275113867;
        Thu, 23 Mar 2017 06:18:33 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s67si1044795pfs.4.2017.03.23.06.18.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 06:18:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 343F77A8;
	Thu, 23 Mar 2017 13:18:32 +0000 (UTC)
Date: Thu, 23 Mar 2017 14:18:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH 02/11] staging: speakup: Remove multiple assignments
Message-ID: <20170323131818.GA21199@kroah.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
 <20170321114235.1638-3-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170321114235.1638-3-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 21, 2017 at 05:12:26PM +0530, Arushi Singhal wrote:
> This patch fixes the checkpatch.pl warning "multiple assignments
> should be avoided."
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index f71206878363..f8fccc8bf6b2 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -270,9 +270,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
>  
>  static void speakup_date(struct vc_data *vc)
>  {
> -	spk_x = spk_cx = vc->vc_x;
> -	spk_y = spk_cy = vc->vc_y;
> -	spk_pos = spk_cp = vc->vc_pos;
> +	spk_x = vc->vc_x;
> +	spk_cx = spk_x;
> +	spk_y = vc->vc_y;
> +	spk_cy = spk_y;
> +	spk_pos = vc->vc_pos;
> +	spk_cp = spk_pos;

Ick, this is harder to read now, don't you think?

not good.

greg k-h

