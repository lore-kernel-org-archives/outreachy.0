X-GM-THRID: 6329929865196732416
X-Received: by 10.157.48.66 with SMTP id w2mr478594otd.46.1473830596062;
        Tue, 13 Sep 2016 22:23:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls324042otb.16.gmail; Tue, 13 Sep
 2016 22:23:15 -0700 (PDT)
X-Received: by 10.157.1.134 with SMTP id e6mr499770ote.9.1473830595692;
        Tue, 13 Sep 2016 22:23:15 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c20si701310pfc.1.2016.09.13.22.23.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 22:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z84so223579pfi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 22:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jBVcLEJv7AzUqhMRhJywtQF38cV10DMcGOa9AK+LQXw=;
        b=bXW5o5CEV44qBIWOiGYoOGpgBXIwJiovfyI7ZK7bGnUiZ+3Z+dcY94asFkCMtNB0GW
         +SYe2rMOYrkpcX14dnKPwERgydbAI5mq2OW+rCNG0NCoMXWq0TqwPrslbRQNgSFj3SJN
         SNMbMlfv7xV0IML3QqehT70yboTmKoVTMZ6lxARjMYULr92n0SlnZ9C2nfOOREJidDNq
         7SaJLixGDf2xpRZxwYfkQLMnN/hcdguQn+Mk7yYI1SiX/4cvVOH4yvQH23K1yvNqG9Gz
         /yRFtx7zjKW2SPVsoF2IrrTPNlYFkAlTeAvRJYEQYPhLv/KNMl7r1T42H8svsfGEEiZm
         gukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jBVcLEJv7AzUqhMRhJywtQF38cV10DMcGOa9AK+LQXw=;
        b=UU8a26e1q6m0SRp5I/ug4pk5H2nELRKnV6hbD8hbI87mYXw1AEq1o1w7pnzpryEaJR
         1rfFVm2hZ6Qn9SHRn6Wfu6TD3wvHDe/qY/48auWOlo3tkPhEfjE0A5yG7Ae4oKtc+uoJ
         YYGAQrchDHAFDKgLjdrRuWhGx8Rgw+ekgozWeMLUtN++8Y41y+zmAlDPTaO5LcVJlVRn
         BcAHS5e4JDJASoMAX9MUuvnCiXVcrIylqlbei6aFRvMj5J7ZTSfdT8XOhGWLU2ui7CYt
         aGZJX3Ujfnp0zI/KqPH7nUdno8F1Bp7NGOf++RBx318Sbfnk97zIPW2aNcQPSa9In+Q/
         NCOQ==
X-Gm-Message-State: AE9vXwPyL+NgtY4EWZ8n39pbjMCs5rqDmHHkevt4QxzvvD4JnqpKnvJpNajIQkZDI3ay1Q==
X-Received: by 10.98.87.157 with SMTP id i29mr1162404pfj.97.1473830595477;
        Tue, 13 Sep 2016 22:23:15 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id x66sm34626604pfb.86.2016.09.13.22.23.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 22:23:13 -0700 (PDT)
Date: Tue, 13 Sep 2016 22:23:03 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: octeon: remove multiple
 blank lines
Message-ID: <20160914052301.GB7205@d830.WORKGROUP>
References: <20160914002652.12359-1-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160914002652.12359-1-gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 14, 2016 at 05:56:52AM +0530, Gargi Sharma wrote:
> Fixes the checkpatch issue Please don't use multiple blank lines.
> ---
> Changes in v2
> 	- Change the commit subject to :Correcting the commit
> 	  message. Fixes the checkpatch issue Please don't use multiple
> 	  blank lines.
> ---
> Changes in v3
> 	- Make the commit message more clearer. Also, fixed the subject
> 	  mistake in v2.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
  Changes in v4
	- moved the version history down here. 

	Take a look at some patches in mailing lists with v# and you'll
	see how it's done.  The version history goes after the Signed off
	and after the --- but you don't repeat the --- for each version.
	  

>  drivers/staging/octeon/ethernet.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 0bd5c18..ec8e424 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -686,7 +686,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> -
>  	cvm_oct_configure_common_hw();
>  
>  	cvmx_helper_initialize_packet_io_global();
> @@ -929,7 +928,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
>  		}
>  	}
>  
> -
>  	cvmx_pko_shutdown();
>  
>  	cvmx_ipd_free_ptr();
> -- 
> 2.9.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914002652.12359-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

