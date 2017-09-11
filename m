X-GM-THRID: 6464167912849539072
X-Received: by 10.46.80.90 with SMTP id v26mr772444ljd.2.1505128431339;
        Mon, 11 Sep 2017 04:13:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.1 with SMTP id 1ls252542ljt.35.gmail; Mon, 11 Sep 2017
 04:13:49 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6E6hqKoE0IDLrWSoW3elEiUOpGEEI+VmLKuoNyjwVn6SV+ppx+ojEyPtHvETMgsMlibcq6
X-Received: by 10.46.66.81 with SMTP id p78mr228622lja.33.1505128429710;
        Mon, 11 Sep 2017 04:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505128429; cv=none;
        d=google.com; s=arc-20160816;
        b=tJf9fmeCRf3G4eJ5Ekd0pdWbLVHukB3Ux8ysWOThE3Mowku0heBbSTFLXVpp5Q6/rt
         /M8H/SXkM3zxePeGtUDwrF+MDbhpoTDpKIDlNiZVlPcfWt83uuY6YW2jqz03uZqm71n1
         2/taVs0xUeTWLyhp37NnJUit77o9+ONboMfkKbDe7MdXMe0v68TwUBMaZrClaYKW9ZLc
         oSQzDn6fRy33SqoepR/Bj/QVkZj22cMinpCnPuuR2wTaqMuF1Hi7d5MeTYp7O6vuYIFa
         kWeqhmtYGlEhTXEmwcCFN9CceBvAr1Jq6hOfNJ6F9Eny0dXR2fdp6Fmfw/jCXoTm+EQx
         bgLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=S/3lE1nXnx395GEtMI5rZz1kC0+tUUZ57fQ0zWN1Afg=;
        b=OcrO8OvWGOSvaIqHb1dho1HMY6Mf7xRmXWfLRipuyJD+mo2eAHMa4uSpD1NJPkQ6xH
         +iPc8kFvBlt0sFGFGkSr2FpmIw9a6kWQ6yhT0YgJL43OzMYAXYe9wIYj7auUfRHEv32a
         fL2IBHGh3t1yTAOwcVZ6rYj0oAKPWbkO8ma+JlnnXt9ld9jmgqAj8yDXl4u0oq8Itbq4
         iMkWFAwyD+E0a+cZCcgK+aVN/BrCoZt8btLEJBIZs4ZU3a2IdRB4ds5ejpeJw+3A229U
         lb5r1aulFuE0ggtGG2NRZU0rMovG+EXCmd75LtY9NiWG4DeR9gQgfKTIlighCWHiL6Qh
         v9DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o7si364905wme.1.2017.09.11.04.13.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 04:13:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,377,1500933600"; 
   d="scan'208";a="237033178"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 13:13:49 +0200
Date: Mon, 11 Sep 2017 13:13:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 06/10] staging: rtl8723bs: Add space
 after ','
In-Reply-To: <f38c5d1ba5518dce605cd9eb5d7adbdee3f7544d.1505052882.git.harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709111313030.6947@hadrien>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com> <f38c5d1ba5518dce605cd9eb5d7adbdee3f7544d.1505052882.git.harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Harsha Sharma wrote:

> Space required after ','
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index b320df8..ecb01cf 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -45,7 +45,7 @@
>  static int rtw_power_mgnt = 1;
>  static int rtw_ips_mode = IPS_NORMAL;
>  module_param(rtw_ips_mode, int, 0644);
> -MODULE_PARM_DESC(rtw_ips_mode,"The default IPS mode");
> +MODULE_PARM_DESC(rtw_ips_mode, "The default IPS mode");
>
>  static int rtw_smart_ps = 2;
>
> @@ -185,7 +185,7 @@
>
>  static uint rtw_max_roaming_times = 2;
>  module_param(rtw_max_roaming_times, uint, 0644);
> -MODULE_PARM_DESC(rtw_max_roaming_times,"The max roaming times to try");
> +MODULE_PARM_DESC(rtw_max_roaming_times, "The max roaming times to try");
>
>  module_param(rtw_mc2u_disable, int, 0644);
>
> @@ -206,10 +206,10 @@
>  static int rtw_tx_pwr_by_rate = 0;
>
>  module_param(rtw_tx_pwr_lmt_enable, int, 0644);
> -MODULE_PARM_DESC(rtw_tx_pwr_lmt_enable,"0:Disable, 1:Enable, 2: Depend on efuse");
> +MODULE_PARM_DESC(rtw_tx_pwr_lmt_enable, "0:Disable, 1:Enable, 2: Depend on efuse");
>
>  module_param(rtw_tx_pwr_by_rate, int, 0644);
> -MODULE_PARM_DESC(rtw_tx_pwr_by_rate,"0:Disable, 1:Enable, 2: Depend on efuse");
> +MODULE_PARM_DESC(rtw_tx_pwr_by_rate, "0:Disable, 1:Enable, 2: Depend on efuse");
>
>  char *rtw_phy_file_path = "";
>  module_param(rtw_phy_file_path, charp, 0644);
> @@ -224,10 +224,10 @@
>  /*  BIT6 - RF_TXPWR_LMT,		0: non-support, 1: support */
>  static int rtw_load_phy_file = (BIT2 | BIT6);
>  module_param(rtw_load_phy_file, int, 0644);
> -MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map");
> +MODULE_PARM_DESC(rtw_load_phy_file, "PHY File Bit Map");
>  static int rtw_decrypt_phy_file = 0;
>  module_param(rtw_decrypt_phy_file, int, 0644);
> -MODULE_PARM_DESC(rtw_decrypt_phy_file,"Enable Decrypt PHY File");
> +MODULE_PARM_DESC(rtw_decrypt_phy_file, "Enable Decrypt PHY File");
>
>  int _netdev_open(struct net_device *pnetdev);
>  int netdev_open (struct net_device *pnetdev);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f38c5d1ba5518dce605cd9eb5d7adbdee3f7544d.1505052882.git.harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

