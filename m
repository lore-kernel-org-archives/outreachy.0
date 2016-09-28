X-GM-THRID: 6335442483781042176
X-Received: by 10.129.123.197 with SMTP id w188mr10044493ywc.111.1475085850983;
        Wed, 28 Sep 2016 11:04:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.14.207 with SMTP id 198ls2744022ite.7.canary; Wed, 28 Sep
 2016 11:04:10 -0700 (PDT)
X-Received: by 10.66.248.129 with SMTP id ym1mr4785086pac.31.1475085850390;
        Wed, 28 Sep 2016 11:04:10 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si2320241par.0.2016.09.28.11.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 11:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 21so2442199pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 11:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZuzS8x91jUuB7COwblfmjRAS0Rku9yRrghYwSw470a0=;
        b=pDBh22OvODDi+D7yjP+AtML0Apn1uY1rteR/djnDSrkv/V3Df27D00MUVr87BPhJw3
         Utyl3660vih9xjTWrDZdbc3w4YNAbwsWGRfd72xto//Wsn0U6WPObhpPE3uVTvyYJPG4
         pRIY5iKO6iU/jgPswMzD+aWDQlkUTHf/lFgXPA6Ij7qgKUTXNdlpaGceoQ5EvsOB5+uM
         mFwmMwnkUolD7/2vJ33YmjPsxWv/06u2smATb2kRC1eovEOLPKYAiAK1Nuc5hv+PGbW0
         STUzOWiG9WRC1c2mgc9xNnkJ0siEqws+Z6KlH1wbXXLoKQIgCcTFk24A7uiTNg3Q+OyK
         YRvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZuzS8x91jUuB7COwblfmjRAS0Rku9yRrghYwSw470a0=;
        b=ao6kTEvJTkuKrF/qSoRP4VBTARgCW+++OSF6qt9gqbYlQ3ghlNhg8n7HhhfxFXjdsR
         B6qO18xS0SClawxSSSFyfuppNyBXjMnrwy4Bv70LSFCiNhUBinGL5xk9De0E/a0KRykU
         N5dz1nc8OSVb5w5Hrm5PKr5GbA0L7thCmwVhuWxPLneZjOGY33+KXcKGx0Eb8i84V+WY
         hgdELaYOICSM2ztFULb1gyCslxcrbikalWwi1NbQanEjSApPJi12st8vpoccN77ey7D0
         Tv5sFK2H5za+5QlmhUQehoODbjgQ2VJl4LAKjgQcbtiI/E6003ZmKsAkAR3WgQM6jcQW
         0EIQ==
X-Gm-Message-State: AE9vXwNZFKsuFNTEUIHABuDqgwhZcT7OvjyYHWnwSeVnrsH6XN7v+QbNgCjobekzQAsLsw==
X-Received: by 10.98.153.202 with SMTP id t71mr58323829pfk.114.1475085850210;
        Wed, 28 Sep 2016 11:04:10 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id n77sm14170415pfj.31.2016.09.28.11.04.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 11:04:09 -0700 (PDT)
Date: Wed, 28 Sep 2016 11:04:09 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Anchal Jain <anchalj109@gmail.com>
Cc: gregkh@linuxfoundation.org, Michael.Hennerich@analog.com,
	knaack.h@gmx.de, pmeerw@pmeerw.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: iio: cdc: ad7150: add
 comment to mutex
Message-ID: <20160928180408.GB10225@d830.WORKGROUP>
References: <20160928175206.GA13416@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928175206.GA13416@life-desktop>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 28, 2016 at 11:22:22PM +0530, Anchal Jain wrote:
> 
> At the risk of being overly pedantic...the lock will make sure that the state
> data in this structure always accurately reflects the state of the
> hardware.
> So, when parts of this driver start changing those settings, we need to use
> a lock so that simultaneous writes of that state data don't conflict

oops...I was just writing all that as an explanation.  I don't think it's
needed in the patch.  Your previous changelog, with mutex spelling corrected,
will be fine.

see if you can tab out that comment

Sorry for the confusion,
alisons

> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
> 	changes in v2-
> 		-modify the patch comment
> 		-add file in the commit message
>  drivers/staging/iio/cdc/ad7150.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index f6b9a10..13709bf 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -78,7 +78,7 @@ struct ad7150_chip_info {
>  	u8 mag_timeout[2][2];
>  	int old_state;
>  	char *conversion_mode;
> -	struct mutex state_lock;
> +	struct mutex state_lock; /* protect hardware state */
>  };
>  
>  /*
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928175206.GA13416%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.

