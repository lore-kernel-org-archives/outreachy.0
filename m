X-GM-THRID: 6389625158217236480
X-Received: by 10.25.141.85 with SMTP id p82mr1004109lfd.8.1487700846433;
        Tue, 21 Feb 2017 10:14:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.152 with SMTP id h24ls736979lji.53.gmail; Tue, 21 Feb
 2017 10:14:05 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr363486lfi.6.1487700845630;
        Tue, 21 Feb 2017 10:14:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d5si991659wmc.1.2017.02.21.10.14.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:14:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="261509095"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 19:13:42 +0100
Date: Tue, 21 Feb 2017 19:13:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: function definition
 argument should have an identifier name
In-Reply-To: <20170221180852.GA19723@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702211913041.3448@hadrien>
References: <20170221180852.GA19723@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 21 Feb 2017, Arushi Singhal wrote:

> function definition argument like 'struct vb_device_info *','unsigned
> long' etc. should have an identifier name.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.h | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.h b/drivers/staging/xgifb/vb_setmode.h
> index 6f082a7a5a4a..e4cf9a633676 100644
> --- a/drivers/staging/xgifb/vb_setmode.h
> +++ b/drivers/staging/xgifb/vb_setmode.h
> @@ -1,14 +1,15 @@
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
> + 		pVBInfo->VBInfo = DisableCRT2Display;

How does this like fit in?

I don't think this would have successfully compiled.

julia


> +void XGI_SenseCRT1(struct vb_device_info *pVBInfo);
>  unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
>  			    struct xgi_hw_device_info *HwDeviceExtension,
>  			    unsigned short ModeNo);
> @@ -18,6 +19,6 @@ unsigned char XGI_SearchModeID(unsigned short ModeNo,
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170221180852.GA19723%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

