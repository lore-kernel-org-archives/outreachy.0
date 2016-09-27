X-GM-THRID: 6334708873542238208
X-Received: by 10.98.19.69 with SMTP id b66mr6951574pfj.40.1474974566407;
        Tue, 27 Sep 2016 04:09:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.131 with SMTP id n3ls15450833otn.39.gmail; Tue, 27 Sep
 2016 04:09:26 -0700 (PDT)
X-Received: by 10.13.232.72 with SMTP id r69mr6706715ywe.82.1474974565958;
        Tue, 27 Sep 2016 04:09:25 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si462333pfw.1.2016.09.27.04.09.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 04:09:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 48F782C;
	Tue, 27 Sep 2016 11:09:25 +0000 (UTC)
Date: Tue, 27 Sep 2016 13:09:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 2/2] staging: vt6656: Make return type changes of
 functions
Message-ID: <20160927110930.GA16803@kroah.com>
References: <cover.1474912143.git.namrataashettar@gmail.com>
 <9a6403af18f7bd45499f6745ab61d6dd4aa7dea2.1474912143.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a6403af18f7bd45499f6745ab61d6dd4aa7dea2.1474912143.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Sep 26, 2016 at 11:56:10PM +0530, Namrata A Shettar wrote:
> Change return type of functions to reflect changes in code.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/vt6656/card.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
> index c2cde7e..84270c1 100644
> --- a/drivers/staging/vt6656/card.h
> +++ b/drivers/staging/vt6656/card.h
> @@ -41,14 +41,14 @@ void vnt_update_ifs(struct vnt_private *);
>  void vnt_update_top_rates(struct vnt_private *);
>  int vnt_ofdm_min_rate(struct vnt_private *);
>  void vnt_adjust_tsf(struct vnt_private *, u8, u64, u64);
> -bool vnt_get_current_tsf(struct vnt_private *, u64 *);
> +void vnt_get_current_tsf(struct vnt_private *, u64 *);
>  bool vnt_clear_current_tsf(struct vnt_private *);
>  void vnt_reset_next_tbtt(struct vnt_private *, u16);
>  void vnt_update_next_tbtt(struct vnt_private *, u64, u16);
>  u64 vnt_get_next_tbtt(u64, u16);
>  u64 vnt_get_tsf_offset(u8 byRxRate, u64 qwTSF1, u64 qwTSF2);
> -int vnt_radio_power_off(struct vnt_private *);
> -int vnt_radio_power_on(struct vnt_private *);
> +void vnt_radio_power_off(struct vnt_private *);
> +void vnt_radio_power_on(struct vnt_private *);
>  u8 vnt_get_pkt_type(struct vnt_private *);
>  void vnt_set_bss_mode(struct vnt_private *);

You have to do this in your first patch, as the build broke without
these changes, right?

You can never break the build with any single patch.

Please fix up and resend.

thanks,

greg k-h

