X-GM-THRID: 6252743439403712512
X-Received: by 10.28.126.149 with SMTP id z143mr851762wmc.4.1455851772196;
        Thu, 18 Feb 2016 19:16:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.141.200 with SMTP id p191ls18145wmd.48.gmail; Thu, 18 Feb
 2016 19:16:11 -0800 (PST)
X-Received: by 10.194.24.233 with SMTP id x9mr1496495wjf.0.1455851771672;
        Thu, 18 Feb 2016 19:16:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si239059wme.0.2016.02.18.19.16.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 19:16:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,468,1449529200"; 
   d="scan'208";a="165233772"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2016 04:16:10 +0100
Date: Thu, 18 Feb 2016 22:16:09 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Thaissa Falbo <thaissa.falbo@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: remove
 ret variable in switch statements
In-Reply-To: <1455830274-15956-1-git-send-email-thaissa.falbo@gmail.com>
Message-ID: <alpine.DEB.2.10.1602182214340.2821@hadrien>
References: <1455830274-15956-1-git-send-email-thaissa.falbo@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 18 Feb 2016, Thaissa Falbo wrote:

> Remove ret variable in functions that used it to determine the return.
> Simplified the return logic for these functions.
>
>
> Found with Coccinelle script:
>
> @@
> local idexpression ret;
> expression c,d;
> identifier label;
> @@
>
> switch ( ... ) {
> case label :
> ...
> - ret = c;
> - break;
> + return c;
> ...
> default:
> ...
> - ret = d;
> + return d;
> ...
> }
> ... when != ret
> - return ret;

Perhaps this is OK for this example, but it doesn't seem like a generlly
useful rule.  There could be some cleanup code that is executed between
the end of the switch and the return ret that is not getting executed.

>
> @@
> type T; identifier i;
> @@
> - T i;
> ... when != i
>
>
>
> Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 11 +++--------
>  drivers/staging/media/davinci_vpfe/dm365_isif.c  | 11 +++--------
>  2 files changed, 6 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index ac78ed2..ff47a8f3 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -1350,21 +1350,16 @@ error:
>   */
>  static long ipipe_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
>  {
> -	int ret = 0;
> -
>  	switch (cmd) {
>  	case VIDIOC_VPFE_IPIPE_S_CONFIG:
> -		ret = ipipe_s_config(sd, arg);
> -		break;
> +		return ipipe_s_config(sd, arg);
>
>  	case VIDIOC_VPFE_IPIPE_G_CONFIG:
> -		ret = ipipe_g_config(sd, arg);
> -		break;
> +		return ipipe_g_config(sd, arg);
>
>  	default:
> -		ret = -ENOIOCTLCMD;
> +		return -ENOIOCTLCMD;
>  	}
> -	return ret;
>  }
>
>  void vpfe_ipipe_enable(struct vpfe_device *vpfe_dev, int en)
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> index cfad426..71d3314 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> @@ -625,21 +625,16 @@ static int isif_set_params(struct v4l2_subdev *sd, void *params)
>   */
>  static long isif_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
>  {
> -	int ret;
> -
>  	switch (cmd) {
>  	case VIDIOC_VPFE_ISIF_S_RAW_PARAMS:
> -		ret = isif_set_params(sd, arg);
> -		break;
> +		return isif_set_params(sd, arg);
>
>  	case VIDIOC_VPFE_ISIF_G_RAW_PARAMS:
> -		ret = isif_get_params(sd, arg);
> -		break;
> +		return isif_get_params(sd, arg);
>
>  	default:
> -		ret = -ENOIOCTLCMD;
> +		return -ENOIOCTLCMD;
>  	}
> -	return ret;
>  }
>
>  static void isif_config_gain_offset(struct vpfe_isif_device *isif)
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455830274-15956-1-git-send-email-thaissa.falbo%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

