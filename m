X-GM-THRID: 6473412482924806144
X-Received: by 10.80.141.200 with SMTP id s8mr286749edh.12.1508334161708;
        Wed, 18 Oct 2017 06:42:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.167.100 with SMTP id h91ls1853044edc.8.gmail; Wed, 18 Oct
 2017 06:42:40 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDU+/V/mUDyDVqZfrH9gmbubyHEKBso24yBtD2DuMzTTJcKFban4EBPcYf6tndlElR7EvuL
X-Received: by 10.80.182.75 with SMTP id c11mr4185370ede.4.1508334160975;
        Wed, 18 Oct 2017 06:42:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508334160; cv=none;
        d=google.com; s=arc-20160816;
        b=iWur6rmjXXbpYz3puouLwxrFUSGCIOdMFCt+33os/lv5Rba6icl4dUbd/DmL2YaMYu
         BueMSoePE4SZlns0sDk1HpyyUeQzUsYRVvwDc0yFRBPMVgUFD8MsWbOV6zTTKhLjXXRF
         zKaKHaTkDYY3ICll6YWlc5dSLAGc7rUbOT1ZQnjPbiSvwPKsapgNdLQCfUKWXEhBoS2c
         jCF9EdVaJNtp3s6lNKpRn+T0PH11+JgIAX8SSiDMc5KtP2048Lbf8Ya1QYo1Sd330ba4
         vjLwwgR5HtRuXpJqKVUGu/xKKyZNVnmTCj03E2egxZttTyBWQCN8BdRumniGOIdC++MC
         qVdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=GZ0V3aDPKeC29kqt71jexv/0xK6CV8w3s9VEypKqGgI=;
        b=MqI9vAHRJrzScYOnYEoopjOKl7MsnNIvVCgt4hUMYSG7217RcszDYmT9Pu8URs1dpw
         Z5cis0/+AducErWxvj/CZqpqemkKGpiBACNjo1yFx33rIW9/5nX4map4MjzN01sjyjS5
         5AvXlHW/eqj43OR6LXmVpn/NHXo5ZiPsG+u+W/NvsbvUzFa9EOQniPVo3uJ0kQPeCSN0
         HI01dXnIgJuueQxFUVdzj1HUigSFX3ghnvO02c1g4f3oANo1RO5TrhEpJsvPABJUzp+w
         fGcXfnFiBqsUCDJxFK65kFjBvQA5HYWCU6HuOdJ500l7RvUVjmelwD2AOzDB9xQgFYkP
         aqpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w24si585790edl.5.2017.10.18.06.42.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 06:42:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3121BACC;
	Wed, 18 Oct 2017 13:42:39 +0000 (UTC)
Date: Wed, 18 Oct 2017 15:42:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 6/7] staging: rtl8188eu: prefer using BIT macro
Message-ID: <20171018134247.GA9535@kroah.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507208787-18008-7-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507208787-18008-7-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Thu, Oct 05, 2017 at 06:36:26PM +0530, Aastha Gupta wrote:
> Fixes checkpatch.pl:
> 	Use BIT(x) instead of using (1<<x)
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/ieee80211.h | 78 +++++++++++++--------------
>  1 file changed, 39 insertions(+), 39 deletions(-)

This patch causes all sorts of build warning errors, dso I've dropped it
from my trees.

Please always test build your patches :(

greg k-h

