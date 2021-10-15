X-GM-THRID: 7019053574676021248
X-Received: by 2002:a2e:8695:: with SMTP id l21mr9424621lji.339.1634264339882;
        Thu, 14 Oct 2021 19:18:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3f14:: with SMTP id y20ls1260606lfa.1.gmail; Thu,
 14 Oct 2021 19:18:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJys2BUz+bSv623ovBPEUCsTgIwJ/CHUAYtu1bP3a5365FLwTX6Yocb0tBJORo9KSbu+0Lzz
X-Received: by 2002:a19:e045:: with SMTP id g5mr8062462lfj.689.1634264338271;
        Thu, 14 Oct 2021 19:18:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634264338; cv=none;
        d=google.com; s=arc-20160816;
        b=ztDBWvg7YJmuDumX2wtvaiyt4+DVhfPUW0O4uJI/fOgBT+07vlT/tyXp2AeLo1KWNp
         uuken6KqyAn/YJf9TxRg/pSq1Vp1PegRnfBhYVtYaqEEZBqDO76bBubH7TToYIruA2H3
         IeiAo8JflKchbPMeugAYcFxxzHIfYKqHMIZPhJhE+Qma88WMAXY71p7RYGQ+udYxPDrs
         dK28uxt++eqdtd6jVDYxsvNoyyDAi8odMkVErCZOxd1jT2CKhWmyVTo8bbyw4YRXj/tE
         R0xpeDPFN3Q6sa1NAk/Oq9sNMzktyQTagwSh0GsWRttR7aaLwpNP/YTT8Su90Hx9QMDV
         jrpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Z/h8YQ/7ikD8ZZiZR06xzdFeg2matRfdbTLmjzqlcpc=;
        b=CLMRkb3FEXFs2fDUNvxqLi48VHPrD3yph5sF8N8SEx15AtnQA2K3QbRukQxU/mQ03n
         ryYGbyTPsDLpOYNkt7KivFbBZRban6nj9tyXX627kUXIt3Zjqv1soAlHhs32qzFE7vth
         K7Dhi/0VE/OnhzE+yxRlXeZFr+9XloYQGOSc7MXb9+iaRMSDB2+ZGpyu2E99Q3ClycEc
         R6WzQkGdN6pw/cLeWt9zQO2App/xOhnIneljnTimXplb0I7y/ZWhRXsb51gyd34uq85B
         t5q+sNdaGS4PngHuiRbmGWVhH2nHuNvhzv1s+5MqLDHEhWi6jdhHu96HeXGKHlDz+jQa
         7ucw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id z21si212832ljn.1.2021.10.14.19.18.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Oct 2021 19:18:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="228116610"
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; 
   d="scan'208";a="228116610"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 19:18:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; 
   d="scan'208";a="442356643"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 19:18:55 -0700
Date: Thu, 14 Oct 2021 19:26:59 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Kushal Kothari <kushalkothari285@gmail.com>
Cc: mike.rapoport@gmail.com, outreachy-kernel@googlegroups.com,
	mchehab@kernel.org, sakari.ailus@linux.intel.com,
	gregkh@linuxfoundation.org, kushalkothari2850@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging : media : atomisp :
 input_system.c : fixes the error of control reaches end of non-void function
 [-Werror=return-type]
Message-ID: <20211015022659.GB428161@alison-desk>
References: <20211014223007.596789-1-kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211014223007.596789-1-kushalkothari285@gmail.com>

On Fri, Oct 15, 2021 at 04:00:09AM +0530, Kushal Kothari wrote:
> The compiler cannot tell from that code if the function will ever reach
> the end and still return something. To make that clear, replaced the last
> line with just "else" which fixes the error of "error: control reaches end of non-void function [-Werror=return-type]"
> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>

Hi Kushal,

Thanks for the patch and welcome to Outreachy.

Unfortunately we're not accepting patches in this driver this round.
Any other driver within media is OK. See the google-groups welcome
message and the email history since October 8th for more info.
I also updated the first patch tutorial, because you showed me that
this restriction was too easy to miss.

Anyway, just so your patch isn't for nothing, I'll give you feedback
on the commit message. You'll want to write that in the imperative mode,
So, for one like this, maybe something like:

'remove conditional from return in non-void function'

Alison


> ---
>  .../media/atomisp/pci/hive_isp_css_common/host/input_system.c    | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
> index 8e085dda0c18..91bad8f34efc 100644
> --- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
> +++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
> @@ -1587,6 +1587,7 @@ static input_system_err_t input_system_configure_channel_sensor(
>  	status = set_source_type(&config.source_type, channel.source_type,
>  				 &config.source_type_flags);
>  	if (status != INPUT_SYSTEM_ERR_NO_ERROR) return status;
> +	else return status;
>  
>  	// Check for conflicts on source (implicitly on multicast, capture unit and input buffer).
>  
> -- 
> 2.25.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20211014223007.596789-1-kushalkothari285%40gmail.com.

