X-GM-THRID: 6389312414166286336
X-Received: by 10.28.214.84 with SMTP id n81mr1078158wmg.11.1487665590807;
        Tue, 21 Feb 2017 00:26:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.18 with SMTP id 18ls1517219wmf.21.canary-gmail; Tue, 21
 Feb 2017 00:26:30 -0800 (PST)
X-Received: by 10.28.45.7 with SMTP id t7mr1158249wmt.9.1487665590016;
        Tue, 21 Feb 2017 00:26:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d5si863593wmc.1.2017.02.21.00.26.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 00:26:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,188,1484002800"; 
   d="scan'208";a="261404147"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 09:26:29 +0100
Date: Tue, 21 Feb 2017 09:26:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: remove blank lines
 at opening and closing braces
In-Reply-To: <20170220215307.GA3235@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.20.1702210926110.4030@hadrien>
References: <20170220215307.GA3235@katie-Inspiron-5748>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Feb 2017, Katie Dunne wrote:

> Removes unnecessary blank lines after opening and before closing braces.
> These instances were found by checkpatch.pl.
>
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/vt6656/wcmd.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/vt6656/wcmd.c b/drivers/staging/vt6656/wcmd.c
> index 9f6cc2e..b2fc17f 100644
> --- a/drivers/staging/vt6656/wcmd.c
> +++ b/drivers/staging/vt6656/wcmd.c
> @@ -45,7 +45,6 @@ static void vnt_cmd_timer_wait(struct vnt_private *priv, unsigned long msecs)
>
>  static int vnt_cmd_complete(struct vnt_private *priv)
>  {
> -
>  	priv->command_state = WLAN_CMD_IDLE;
>  	if (priv->free_cmd_queue == CMD_Q_SIZE) {
>  		/* Command Queue Empty */
> @@ -165,7 +164,6 @@ void vnt_run_command(struct work_struct *work)
>
>  int vnt_schedule_command(struct vnt_private *priv, enum vnt_cmd command)
>  {
> -
>  	if (priv->free_cmd_queue == 0)
>  		return false;
>
> @@ -178,7 +176,6 @@ int vnt_schedule_command(struct vnt_private *priv, enum vnt_cmd command)
>  		vnt_cmd_complete(priv);
>
>  	return true;
> -
>  }
>
>  void vnt_reset_command_timer(struct vnt_private *priv)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170220215307.GA3235%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.
>

