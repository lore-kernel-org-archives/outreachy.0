X-GM-THRID: 7020829636261052416
X-Received: by 2002:a17:90a:2c8:: with SMTP id d8mr4980581pjd.113.1634727818647;
        Wed, 20 Oct 2021 04:03:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:d2c2:: with SMTP id n2ls1296106plc.7.gmail; Wed, 20
 Oct 2021 04:03:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwcdI/lkVecc2MW5ynDiAqvnT6AW+aHVCMhLBHGdExlJmVeMVRZUivagqnyV5ZAi/h3jsJ
X-Received: by 2002:a17:90a:b391:: with SMTP id e17mr6660106pjr.137.1634727817510;
        Wed, 20 Oct 2021 04:03:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634727817; cv=none;
        d=google.com; s=arc-20160816;
        b=DNlpdWHPZCC2GMt8tJvmqBfSTmwmottbWJQF2lBQ5rSdKSDTE4WI0SW895Bw7+0dox
         nKCZNwO3wGXFH/nGJMNEcxyyVSZrYvNTY7w+ndGPAYHx07oELw2sy7qKhEmk3JqmMZBJ
         2X6TaspwohyiLA4XXkCo7bJIUCiXTea+BdllV3ilDszVChA9VUEA7hnT2TgE8mK858Gj
         XrTRVDsNPqBygHolRknYZ6iEDhmNsRNBrW06niVh64zisT+HNcsIkhXhwyTw6wj9RiJ/
         lTk8DCLbU1xA4S9JATBUsDJ+OFFj9ix7gPY9sXlC9XYat8co5DGEqMIW8BS1PlXXiEyN
         rC4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KJUoWWS50AJCzcW+X67eTS+oGOVOsfqp2FnJa9erQtc=;
        b=d/nXmxjYoM+Cv+ikkmhm/q63nv2rmIOxkcmVp0mQyEV8F5e4SGv1mrXUssbapJyZx5
         0qUPGZlqQMYvKSYkkYiEvAQur5zwBqaW+l0EGzyBLQa2cJXKWe88jopFsJ5aI5eSROCm
         m0RgBT2cU5XZnApyVOt8ZsjFmbpsWW7oMX2DJ4HbmdKPUJSFqX2fFrd5I3Q4C1zOmaAQ
         HbXJFRtoWw04cHjE9NVIo1OQofWO07fUp2m7mZJI9xA/qtmBbuK9Cu0O0a2aUaX61e7I
         A0nnxGHtEpL2u6rtpBmRMZP4nW8avWNfe8T3axxTkI4Ey3cOt/xnZYr3w3jlGHE2Va2M
         kxlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gmEfXtL7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v8si121737plo.3.2021.10.20.04.03.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 04:03:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gmEfXtL7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B2C61613A7;
	Wed, 20 Oct 2021 11:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634727817;
	bh=f8Lhl6mKTN67y6PmZ1jxu5lUkqjWdReY/Zc4Ljiid30=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gmEfXtL79/x0McMbGKjYTAyrQtrnRA0L51KbagBD9VaMI0GUfTiyjT8bmVRyN97l8
	 PPRA0ia9CTILPeI/dKA3q/wDzdOFpwbM04/aHf6lDnzBQDRYM9lxXb5MGjEdCGh35+
	 +KxIO2Ift22K328aJIu2x9yRbTEvt/aN4p+z7LDQ=
Date: Wed, 20 Oct 2021 13:03:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kushal Kothari <kushalkothari285@gmail.com>
Cc: fabioaiuto83@gmail.com, marcocesati@gmail.com, dan.carpenter@oracle.com,
	ross.schm.dev@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mike.rapoport@gmail.com, staging@lists.linux.dev
Subject: Re: [PATCH v2] staging: rtl8723bs: core: Remove true and false
 comparison
Message-ID: <YW/3hsflTpx3dSLK@kroah.com>
References: <20211020105401.131254-1-kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211020105401.131254-1-kushalkothari285@gmail.com>

On Wed, Oct 20, 2021 at 04:24:01PM +0530, Kushal Kothari wrote:
> Remove comparison to true and false in if statement.
> Issue found with checkpatch.pl.
> CHECK: Using comparison to true is error prone
> CHECK: Using comparison to false is error prone
> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
> 
> Changes in v2: Remove unnecessary parentheses.
> 
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 50 ++++++++++++------------
>  1 file changed, 25 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index efc9b1974e38..3e0b910114da 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -309,8 +309,8 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
>  	if (cmd_obj->cmdcode == GEN_CMD_CODE(_SetChannelPlan))
>  		bAllow = true;
>  
> -	if ((pcmdpriv->padapter->hw_init_completed == false && bAllow == false)
> -		|| atomic_read(&(pcmdpriv->cmdthd_running)) == false	/* com_thread not running */
> +	if ((!pcmdpriv->padapter->hw_init_completed && !bAllow) ||
> +		!atomic_read(&pcmdpriv->cmdthd_running) 	/* com_thread not running */
>  	)
>  		return _FAIL;
>  
> @@ -372,7 +372,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
>  void rtw_stop_cmd_thread(struct adapter *adapter)
>  {
>  	if (adapter->cmdThread &&
> -		atomic_read(&(adapter->cmdpriv.cmdthd_running)) == true &&
> +		atomic_read(&adapter->cmdpriv.cmdthd_running) &&
>  		adapter->cmdpriv.stop_req == 0) {
>  		adapter->cmdpriv.stop_req = 1;
>  		complete(&adapter->cmdpriv.cmd_queue_comp);
> @@ -388,7 +388,7 @@ int rtw_cmd_thread(void *context)
>  	u8 (*cmd_hdl)(struct adapter *padapter, u8 *pbuf);
>  	void (*pcmd_callback)(struct adapter *dev, struct cmd_obj *pcmd);
>  	struct adapter *padapter = context;
> -	struct cmd_priv *pcmdpriv = &(padapter->cmdpriv);
> +	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

This is not described in your changelog text and has nothing to do with
booleans :(


