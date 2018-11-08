X-GM-THRID: 6618737831817773056
X-Received: by 2002:a9d:ee8:: with SMTP id 95mr2811347otj.53.1541676539783;
        Thu, 08 Nov 2018 03:28:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:278a:: with SMTP id c10ls779572otb.13.gmail; Thu, 08 Nov
 2018 03:28:59 -0800 (PST)
X-Google-Smtp-Source: AJdET5etYLbIeDyCFn2/K4VJGozYMPo4LjxuF084ydZnamF3lTo5CLgMU9sLOzkHqeVGFVDzJxmD
X-Received: by 2002:a9d:212c:: with SMTP id i41mr3031443otb.62.1541676538985;
        Thu, 08 Nov 2018 03:28:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541676538; cv=none;
        d=google.com; s=arc-20160816;
        b=tGIowfxgsV1dErfBdgZ2nthfVL5L4d3oQgMugOAS98m3sKYs4aWMwBW5gaEt8MsJ2F
         WMgymDxDjRcqLSOEc93uOxMDiSmbjmV1bCYrXvTHFkJREnIm/zTgrUXfVEgaDEEQiqSP
         VF72BcaNcnRr/5nFTmnjqSRPHAT5wtyZCoTuyST51rnU3RfruPpUfmUzGH/2BqAwoHzZ
         ZrbmTbGy4i+oUdN6/Lgnma9Q+YQcSVK01p7puw1rmLiZ20KFxbxVDdOjG4eCTAQ0Mdg5
         xskjg22iC3NpjTtgwxzmhyr6VCyjeEG2s9hHEIQPZMHQpURvqY1lWqLOgp/Ss0GfZsde
         6jKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=o41NE0wI1H4YhZZ/N9tyGpTfzF7sMEw2T1YUNciWhLs=;
        b=YLaRDxn5Uhy+XHLMdpc4QoRrqF5vtHWqFLsaP+mZbXaBh2Wyk7+EY1WVBGKj9xC9vT
         tVFIa5RkoJxuOWsy8/MPiu8D3ixLOSwb8aeeyY5ZVPi+lvGJ6oXXbyNjC2rLTHxT9DYP
         R6rKrrDwHqdlyyzMXf6+m1SmCD0sDo5Fijup8oNHCY9+eBtRb/iRkqxo52rbXT2A1oM7
         WLk+8bXsH2E/9TXLuxpB5uxsph4ZY0+992kzaTai5pwfATNFyL8hzTa+vPK+PSMUJGmN
         oGcn2OUQQS3TDKYa1mbrkROPJ9hBxeYVDx5iCoVxiuMtDDGi0WqhQClMbT2HK3/d7n/N
         GLcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OLIRKRvi;
       spf=pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g29si124330oth.5.2018.11.08.03.28.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 03:28:58 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OLIRKRvi;
       spf=pass (google.com: domain of srs0=nc3z=nt=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=nC3z=NT=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (71-6-98-120.static-ip.telepacific.net [71.6.98.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 00D84208A3;
	Thu,  8 Nov 2018 11:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541676538;
	bh=zzkujkUj0kP1DP5QAajm/1OVcUSlbIuvXZWEQkdpUjU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OLIRKRvifswBRso7kNSB88/tae6Qd5fsi2p5OOPF/evYGLyZ2aXhb1Rkg8leK34mC
	 TzxJXGFb0zfsje86dKpn7L2TXWrSoDEfH+CtAgRl9yXeSHl3R9uRZFq/JP4+aXf2jG
	 nPC1P/s/SRazXYJALJBeIIEfk+1GnpyZWtn7yjaQ=
Date: Thu, 8 Nov 2018 03:28:57 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Maya Nakamura <m.maya.nakamura@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/4] staging: rtlwifi: Add blank lines
Message-ID: <20181108112857.GB23141@kroah.com>
References: <cover.1541660015.git.m.maya.nakamura@gmail.com>
 <9082236333474f4af69913c7e3e3566729d04181.1541660015.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9082236333474f4af69913c7e3e3566729d04181.1541660015.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Nov 07, 2018 at 11:23:07PM -0800, Maya Nakamura wrote:
> Add blank lines after if statements.

That says what you did, but not _why_ you did this.

> 
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 1 +
>  drivers/staging/rtlwifi/phydm/phydm_ccx.c          | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
> index 7eb54d2e48f3..7d578241326b 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
> @@ -563,6 +563,7 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
>  				PHYDM_SSCANF(input[3], DCMD_HEX, &var1[2]);
>  			else
>  				PHYDM_SSCANF(input[3], DCMD_DECIMAL, &var1[2]);
> +
>  			trig_sig_sel = var1[2];
>  
>  			PHYDM_SSCANF(input[4], DCMD_DECIMAL, &var1[3]);
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_ccx.c b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
> index ded6642bdf64..c0da601be6cf 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_ccx.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
> @@ -357,6 +357,7 @@ bool phydm_check_nhm_ready(void *dm_void)
>  			}
>  		}
>  	}
> +

Is this one really needed?

thanks,

greg k-h

