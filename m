X-GM-THRID: 6388438478115307520
X-Received: by 10.46.0.147 with SMTP id e19mr2929456lji.6.1487706816122;
        Tue, 21 Feb 2017 11:53:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.141 with SMTP id c13ls786418ljd.11.gmail; Tue, 21 Feb
 2017 11:53:35 -0800 (PST)
X-Received: by 10.46.5.215 with SMTP id 206mr3116801ljf.11.1487706815489;
        Tue, 21 Feb 2017 11:53:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d5si1011785wmc.1.2017.02.21.11.53.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:53:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="261518404"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 20:53:34 +0100
Date: Tue, 21 Feb 2017 20:53:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: xgifb: function definition
 argument should also have an identifier name'
In-Reply-To: <20170221193534.GA23615@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702212052140.2117@hadrien>
References: <20170221193534.GA23615@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Wed, 22 Feb 2017, Arushi Singhal wrote:

> function definition argument like 'struct vb_device_info *','unsigned
> long' etc. should also have an identifier name.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> Changes in v2:
>   - By mistake one irrelevant line was added which is removed in this
>     patch.

The v2 discussion belongs under the ---.  The text below the --- is
dropped when the patch is applied.  The discussion is only relevant to
people who are watching the patches get submitted.  Once the final
instance gets applied, the change as compared to the previous instance is
not important.

julia

> ---
>  drivers/staging/xgifb/vb_setmode.h | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.h b/drivers/staging/xgifb/vb_setmode.h
> index 6f082a7a5a4a..c6317ab00474 100644
> --- a/drivers/staging/xgifb/vb_setmode.h
> +++ b/drivers/staging/xgifb/vb_setmode.h
> @@ -1,14 +1,14 @@
>  #ifndef _VBSETMODE_
>  #define _VBSETMODE_
>
> -void InitTo330Pointer(unsigned char, struct vb_device_info *);
> -void XGI_UnLockCRT2(struct vb_device_info *);
> -void XGI_LockCRT2(struct vb_device_info *);
> -void XGI_DisplayOff(struct xgifb_video_info *,
> -		    struct xgi_hw_device_info *,
> -		    struct vb_device_info *);
> -void XGI_GetVBType(struct vb_device_info *);
> -void XGI_SenseCRT1(struct vb_device_info *);
> +void InitTo330Pointer(unsigned char ChipType, struct vb_device_info *pVBInfo);
> +void XGI_UnLockCRT2(struct vb_device_info *pVBInfo);
> +void XGI_LockCRT2(struct vb_device_info *pVBInfo);
> +void XGI_DisplayOff(struct xgifb_video_info *xgifb_info,
> +		    struct xgi_hw_device_info *pXGIHWDE,
> +		    struct vb_device_info *pVBInfo);
> +void XGI_GetVBType(struct vb_device_info *pVBInfo);
> +void XGI_SenseCRT1(struct vb_device_info *pVBInfo);
>  unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
>  			    struct xgi_hw_device_info *HwDeviceExtension,
>  			    unsigned short ModeNo);
> @@ -18,6 +18,6 @@ unsigned char XGI_SearchModeID(unsigned short ModeNo,
>  unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
>  				  unsigned short ModeNo,
>  				  unsigned short ModeIdIndex,
> -				  struct vb_device_info *);
> +				  struct vb_device_info *pVBInfo);
>
>  #endif
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170221193534.GA23615%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

