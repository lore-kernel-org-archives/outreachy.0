X-GM-THRID: 6389759037525721088
X-Received: by 10.25.24.106 with SMTP id o103mr2925038lfi.1.1487748129550;
        Tue, 21 Feb 2017 23:22:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.18 with SMTP id 18ls1961761wmf.21.canary-gmail; Tue, 21
 Feb 2017 23:22:08 -0800 (PST)
X-Received: by 10.28.169.206 with SMTP id s197mr31542wme.14.1487748128854;
        Tue, 21 Feb 2017 23:22:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si107614wmd.0.2017.02.21.23.22.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 23:22:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,193,1484002800"; 
   d="scan'208";a="214301283"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2017 08:22:03 +0100
Date: Wed, 22 Feb 2017 08:22:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: xgifb: function definition
 argument should also have an identifier name
In-Reply-To: <20170222024823.GA25104@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702220820240.2080@hadrien>
References: <20170222024823.GA25104@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Wed, 22 Feb 2017, Arushi Singhal wrote:

> function definition argument like 'struct vb_device_info *','unsigned
> long' etc. should also have an identifier name.

Actually, this is not really clear.  The definition of a function is the
thing that has the actual code, like

int foo(int x) {
  return x;
}

What you are referring to is the prototype, ie

int foo(int);

What you want to say is that function prototypes should also have
parameter names.

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> Changes in v2:
>   - By mistake one irrelevant line was added which is removed in this
>     patch.
>   - write the changes done in previous version in correct format.
> ---

The second --- is not needed.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170222024823.GA25104%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

