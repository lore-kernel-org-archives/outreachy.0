X-GM-THRID: 6392947471116402688
X-Received: by 10.99.123.24 with SMTP id w24mr5378498pgc.108.1488478187990;
        Thu, 02 Mar 2017 10:09:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls2245504iof.31.gmail; Thu, 02
 Mar 2017 10:09:47 -0800 (PST)
X-Received: by 10.99.49.77 with SMTP id x74mr5905629pgx.2.1488478187111;
        Thu, 02 Mar 2017 10:09:47 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si13989pfb.7.2017.03.02.10.09.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:09:47 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so10050171pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=O7kb2C4nVUNOf94JaxglEyk6kgVX8ppg4WEnjzGkX/g=;
        b=j8xeCyu+pzn/MzYttI5lloEAi4GtsXt7NoYte7PTO7sfE8ItRMeXDNnmKjvoma6sB4
         JRmVMSO/mwwQg/3jC/dmEfKFe5O2yGRfJWtLyM1bPB7DUOfCIttItSM/nVuIRIrFl6uL
         B0p3BLyCmm19w2rFjx8kSzBNZJWrEpuxd9bgpDvGhqdBl0SxTEI00yUjSsB+Nj1ZcZ4J
         BA6sN298VwXkWMk7t1ua/vIVF+k3aFl1AEJUGzolq3C7isRN4S3kMZuiWESAkJrhMX7d
         TVqTfFKhFzOewUikFWrKdmR4TnN/CEaK4yj63BMCGBv6WBNlN5ku86eF6/IfSKfUTQVF
         flAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=O7kb2C4nVUNOf94JaxglEyk6kgVX8ppg4WEnjzGkX/g=;
        b=Q3ytgqhi5Yst/GGPmTQnwonw6NW4AcggoLS3el84RzH5tMso0X4Rju/GDl9XSnaXyh
         UjzdmoV2+UxIK21Gpmz1ya7FOmt9vIZu/Thv7NFN9KEXV3Gmbp51ag+rsQXVScvN2kEj
         DQcusoMKw3MaCHjE+RKrP3ew1oycHGw4Jyqrwg+L6B4KPMzjPh6kARslhTZb/SzJ9JjR
         TChaYfiEcwsZZTlF3f9qk0RkM2zgKfJgGfB8iKhitbCpiC839MuAOxXtDZH77poACsKp
         XAeIOGIl87La+btdjxTOrwKmFvgNEbL5Ba/WNcP5pKhtifJeNwi5ooE/7g+jB7k7mxH/
         To3g==
X-Gm-Message-State: AMke39lEwWFrhvoBK0Trbl2s7WsbbWxQykKrJbyuaIVQlB4d229eji3fvvYZBaRSLMywHA==
X-Received: by 10.84.195.1 with SMTP id i1mr20408445pld.77.1488478186890;
        Thu, 02 Mar 2017 10:09:46 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id e70sm13715275pfl.105.2017.03.02.10.09.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:09:46 -0800 (PST)
Date: Thu, 2 Mar 2017 10:09:45 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 0/5] staging: bcm2835-audio: fix
 multiple checkpatch warnings
Message-ID: <20170302180944.GA4286@d830.WORKGROUP>
References: <cover.1488477174.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488477174.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 02, 2017 at 11:25:31PM +0530, Aishwarya Pant wrote:
> Fix multiple code styling warnings issued by checkpatch on file 
> bcm2835-ctl.c in bcm2835-audio driver 
> 
> Changes in v3:
> 	-Merge two if conditions
> 	-Fix subject of patch replace printk(... by dev_err(...
> Changes in v2: 
>         -Replace pr_err with dev_err 
> 

Hi Aishwarya - See suggestions for the Subject Line commit messages below...
alisons

> Aishwarya Pant (5):
> *** HERE ***
>   staging: bcm2835-camera: fix no space is necessary after a cast
>     warning

remove space after cast

>   staging: bcm2835-camera: Logical continuations should be on the
>     previous     line

move logical continuation to same line

>   staging: bcm2835-camera: fix block comment formatting

use kernel preferred block commenting style
(so this one's more generic. Main point is it says use, instead of fix(

>   staging: bcm2835-camera: remove extra blank line

looks good

>   staging: bcm2835-camera: replace printk(KERN_ERR) with dev_err

looks good

> 
>  .../vc04_services/bcm2835-audio/bcm2835-ctl.c      | 23 ++++++++++------------
>  1 file changed, 10 insertions(+), 13 deletions(-)
> 
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488477174.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

