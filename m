X-GM-THRID: 6329847978033938432
X-Received: by 10.36.133.2 with SMTP id r2mr1942174itd.13.1473792407222;
        Tue, 13 Sep 2016 11:46:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.36 with SMTP id q33ls1710720otb.33.gmail; Tue, 13 Sep
 2016 11:46:46 -0700 (PDT)
X-Received: by 10.129.73.139 with SMTP id w133mr1778721ywa.28.1473792406833;
        Tue, 13 Sep 2016 11:46:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si59104pfe.0.2016.09.13.11.46.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 11:46:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id h5so9530190pao.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 11:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vxbr48WBXCr0cU8beEunCHsMTJA4xzuoYPBeqgzHCBw=;
        b=cLhoSiXNR5Hp4zhThquESTGGenhOxpjqGncRq2Iq7x8i4WD763EuCwn/3871yiJnNN
         9AmqACNEPX09+n9SwA3lyKoaKHD4cf7IOPOBXORqhgWa900DMzH8T9W2R44eckENCZX0
         2PsdYdJLzMwjnkefeXIVhXAtoSr5JIqycPasnC013XuO/SDqongEOwW/xbHdL+OPYS5T
         iYi5glq8sM5r4z9ukVm7bXiuRRZtPi3Kkr5bi7yAs8Crziii6u5dybWpZho1HhDr6pIb
         BltrsCfrT81epXCqxy0OOPTRf4/Z38vHu5zgIUujoRFHpWyJjjhEDdp2RrK26pfwurIm
         8xiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vxbr48WBXCr0cU8beEunCHsMTJA4xzuoYPBeqgzHCBw=;
        b=X/BN1ZV59stN4OjYxAWk//oQeA2tA6PtCPD6mbahGrZTES0yF+TaeoMzCaXOQSA4D6
         YeESL1miW0C/fq3MnG4e9pjz9qAn+lASANqdgBtAnHuBVf4d9PRA2Qang9CTKJV48gCx
         RVDSyXwveVPTh5t9NQIjhlNSWnT5yXJhlOGyNQpkBzfWHAeZDP4pUyAbJksU3cHODk9j
         BbtCQ8JorTyD9xL2THWbZqRF6QEsUMQvumqouJfKIjYrt+dkA45GjvENubUDfUzMnjh7
         dc4CfYsnIycfh7vhuXKCP2vy5eamZ9dy15B5TvFkByTC9HHiXnByBc3wNeMBxfl9AJ0s
         3mhw==
X-Gm-Message-State: AE9vXwPFOqzBUuzfEFTGMXXmEXQa0gLdpU5vzJeRsb/M15Lt9KRAen1hnmEl7h3HuNkKzg==
X-Received: by 10.66.180.111 with SMTP id dn15mr3790869pac.125.1473792406568;
        Tue, 13 Sep 2016 11:46:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id b88sm32716469pfe.66.2016.09.13.11.46.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 11:46:46 -0700 (PDT)
Date: Tue, 13 Sep 2016 11:46:44 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Removing multiple
 blank lines
Message-ID: <20160913184643.GA3351@d830.WORKGROUP>
References: <20160913160213.12708-1-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160913160213.12708-1-gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Sep 13, 2016 at 09:32:13PM +0530, Gargi Sharma wrote:
> Fixes the checkpatch issue Please don't use multiple blank lines.

Hi Gargi, 
Just a couple of minor format comments, but you may as well v2 this
to get it looking it's best in the git history.

Typically the commit message is written in the imperative format.  
That would be 'Remove' instead of 'Removing'.  It's really not
necessary to become a grammar expert ;)  just do a git pretty and
verify that your commit message is in the same style as the others
on the file you are changing:

git log --pretty=oneline --abbrev-commit  <filename>

Within the changelog you can just cut/paste the checkpatch message,
as in: CHECK: Please don't use multiple blank lines.  (Also tells 
CHECK or WARNING)

> Fixes the checkpatch issue: 
  CHECK: Please don't use multiple blank lines

Really minor stuff, but it keeps the uniformity which is nice.

alisons

alisons




> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160913160213.12708-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

