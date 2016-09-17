X-GM-THRID: 6331277743473295360
X-Received: by 10.157.30.137 with SMTP id n9mr1941764otn.116.1474147488398;
        Sat, 17 Sep 2016 14:24:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls2407032otj.25.gmail; Sat, 17 Sep
 2016 14:24:48 -0700 (PDT)
X-Received: by 10.237.54.135 with SMTP id f7mr11976034qtb.6.1474147488022;
        Sat, 17 Sep 2016 14:24:48 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h124si5287922pfe.0.2016.09.17.14.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so2534430pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 14:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FA1KZBDES6UuFz5O4UQNKTO0pv/ik3EPU776cvzpyUY=;
        b=P6UQknEOFgL6H2/UFko0AFBqBbCA9nEetjliFKikeu1GJKtKjJcwCwfyNkcwC8bWG1
         HwHZRnoJNPY68KmWe5mDr7NZi5eaPBg3zyGizkKbSxVRGsPpmMt5y98HN3asEzT49/4Q
         uVVI1wJtkSUOrn2Ny2K+aJ6ssCWTXkZtSCGY28xTVfCfb/zebGL5cDhzDxosKq411xn1
         21hLMONe/HlWttp18A/2bagdkLqidxzjaMkOGaR30y6AABRtrNm2GMwUv75gvcPoUp5V
         8MMT2UVqIc0NkY/lSB/6AknMlJpkknxuo7As6vcBC4I6I7dQhPeMmxWjdS5notHIwlzT
         tA8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FA1KZBDES6UuFz5O4UQNKTO0pv/ik3EPU776cvzpyUY=;
        b=RJM1SaFJhe8HkIak+46bLXzMdbAwK1H7mwXmifMqVT5Be5mcX3M9ka7lsMfvVkgizQ
         YtnB2iLqG45upBY9NKZMP5VpVy3TyGrWS/yE2XzU4jJNO8oP4QAevee3VEpBbo1BxFNx
         63pRQ4DZWX5hA6svPhce7IFx8fLwUJMveiNqIGWT1p9j7PvqEcpQopcrZkhDcQQwq9Gl
         AYkXxKrcxV2CUr5bUcWrF9cL9VdGEZbbZUlu3YyhEciELUxDeNAfbDPaHEBtsT4F3v8t
         HMO1iilTN1fFQWW1yfwLXRGENcOlFFwo0lEnG9zlRN4ozMBAdZLIwxvnTnOVM4eASZMp
         vQSA==
X-Gm-Message-State: AE9vXwNL9S0kHrZ0jtDgoQ5Zl57Um4glUWQMX0IdacE0Wx8hJKIm0/6fpf15NKa4hbD82g==
X-Received: by 10.98.200.206 with SMTP id i75mr20555033pfk.172.1474147487619;
        Sat, 17 Sep 2016 14:24:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id h74sm35346785pfa.91.2016.09.17.14.24.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 14:24:47 -0700 (PDT)
Date: Sat, 17 Sep 2016 14:24:45 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: i4l: Return NULL instead
 of 0.
Message-ID: <20160917212443.GC2854@d830.WORKGROUP>
References: <20160917071702.GA16260@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160917071702.GA16260@sandhya>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Sep 17, 2016 at 12:47:02PM +0530, Sandhya Bankar wrote:
> Return NULL instead of 0, if card with given driverId is not found.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>

Greg, 

I was going to say something else here about there being a lot of
printk's that maybe could be converted, but then I looked at the TODO
file.

>>    * The icn, pcbit and act2000 drivers are dead, remove them in 2017
>>    after another longterm kernel has been released, just in the
>>    unlikely case someone still has this hardware.

Do you want work done on a driver that's on it's way out?

alisons


> ---
> Changes in v2:
> * Correcting commit message
>  drivers/staging/i4l/act2000/module.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
> index 39a8940..6a6c911 100755
> --- a/drivers/staging/i4l/act2000/module.c
> +++ b/drivers/staging/i4l/act2000/module.c
> @@ -499,7 +499,7 @@ act2000_findcard(int driverid)
>  			return p;
>  		p = p->next;
>  	}
> -	return (act2000_card *) 0;
> +	return NULL;
>  }
>  
>  /*
> -- 
> 1.7.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160917071702.GA16260%40sandhya.
> For more options, visit https://groups.google.com/d/optout.

