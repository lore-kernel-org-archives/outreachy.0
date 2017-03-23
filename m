X-GM-THRID: 6399916000486096896
X-Received: by 10.31.161.203 with SMTP id k194mr506679vke.22.1490275138498;
        Thu, 23 Mar 2017 06:18:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.39 with SMTP id i36ls1758710otb.24.gmail; Thu, 23 Mar
 2017 06:18:57 -0700 (PDT)
X-Received: by 10.129.93.137 with SMTP id r131mr167564ywb.137.1490275137967;
        Thu, 23 Mar 2017 06:18:57 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si1058278pfb.7.2017.03.23.06.18.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 06:18:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EE2E57A8;
	Thu, 23 Mar 2017 13:18:56 +0000 (UTC)
Date: Thu, 23 Mar 2017 14:18:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH 05/11] staging: speakup: Remove multiple assignments
Message-ID: <20170323131842.GB21199@kroah.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
 <20170321114235.1638-6-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170321114235.1638-6-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 21, 2017 at 05:12:29PM +0530, Arushi Singhal wrote:
> This patch fixes the checkpatch.pl warning "multiple assignments
> should be avoided."
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 21e76b031449..c10445624e92 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -2106,7 +2106,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  			spk_keydown = 0;
>  			goto out;
>  		}
> -		value = spk_lastkey = pad_chars[value];
> +		value = pad_chars[value];
> +		spk_lastkey = value;

Also harder to read now :(


