X-GM-THRID: 6396739450609598464
X-Received: by 10.99.100.129 with SMTP id y123mr8107350pgb.101.1489357662156;
        Sun, 12 Mar 2017 15:27:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls1345041ota.23.gmail; Sun, 12 Mar
 2017 15:27:41 -0700 (PDT)
X-Received: by 10.129.85.205 with SMTP id j196mr12681487ywb.48.1489357661811;
        Sun, 12 Mar 2017 15:27:41 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si2882725pfx.8.2017.03.12.15.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 15:27:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so17036203pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 15:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=on6OjP8FXz0Myy09w987mTp6GdwpFgF8IDT7h0NPrew=;
        b=CqaZPjLp/P/W5ITqX6evf0Lb+nbkM/fYjKR4SeAIe3f/SDaN8KPFsn7lLrazvh8ux+
         eXhyAawTvW+qfwNcEjcXl/QmAWUf7pxszowsRWWcz36wIOKN2Fx06KTp8moYpVxrWTAn
         kLbrK6e9ifnMtI3ma9WkW55VPev7uAMaVbd3YlH+kQ+oU2+FVkL+BAxhXLctYSUZbVNw
         T3e1CrOkvNu467FUk/S5djCkPKLzSfQQj1hE8TmPcWzYCnzUcbB/4Zs9x6SMMzhphWyZ
         ivGzYeojtEUQ5JCog2ZIircu3R1THcaQ3LzHByruV00+HDdEgsJJ6wOgm+ntIus5s52Q
         m+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=on6OjP8FXz0Myy09w987mTp6GdwpFgF8IDT7h0NPrew=;
        b=ikNIloEo574tkkFX3DHy6jxwV7TAIWaBYHFt6GwfzdcQlOhJnpmLn7PuCm+37v9av1
         hrSbN/3tecZTf6KVZk64zEF/lUu4qKvzHt2+zBe2aampC6Rj8lgasTBjKYqvExvLIq5F
         e3qlSF9gneBM+txhcbQZqymyRp4+I9zhSBg9/DiXry1KtBFTwgHswkQgeypk4Kdgby0G
         fdt9O906prPsrr7cIZgfK/ia4LgszmzeSTtRdQcgDTlV+hoA3rhv4OPTcH5AK5NSwEj+
         d+VZ6Gpqfsv+q0B8nVYCjaJQT2ghetkjxUiqNNN+DH28s43dA1oOiu9+zjdNapuQOuFH
         mA3g==
X-Gm-Message-State: AMke39l7jsUwHl7BJKl5PNIptHa8EJ7x1TFvqq+fTRemQM33l/kKsG7FUG+FrqzzvONZLw==
X-Received: by 10.98.204.25 with SMTP id a25mr33933052pfg.6.1489357661542;
        Sun, 12 Mar 2017 15:27:41 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id q73sm29743340pfa.129.2017.03.12.15.27.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 15:27:41 -0700 (PDT)
Date: Sun, 12 Mar 2017 15:27:39 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: iio: ad9834: Remove
 unnecessary goto label and compress return logic
Message-ID: <20170312222738.GB14070@d830.WORKGROUP>
References: <cover.1489356140.git.karniksayli1995@gmail.com>
 <59ddccc600cfd1594dcb4dadb44b80328fc06008.1489356140.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <59ddccc600cfd1594dcb4dadb44b80328fc06008.1489356140.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 13, 2017 at 03:49:13AM +0530, sayli karnik wrote:
> The patch removes excessive goto label and compresses return logic.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/iio/frequency/ad9834.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
> index 60461a6..18f3e8f 100644
> --- a/drivers/staging/iio/frequency/ad9834.c
> +++ b/drivers/staging/iio/frequency/ad9834.c
> @@ -147,9 +147,8 @@ static ssize_t ad9834_write(struct device *dev,
>  	int ret;
>  	unsigned long val;
>  
> -	ret = kstrtoul(buf, 10, &val);
> -	if (ret)
> -		goto error_ret;
> +	if (kstrtoul(buf, 10, &val))
> +		return kstrtoul(buf, 10, &val);

Will a smaller change suffice?

ret = kstrtoul(buf, 10, &val);
if (ret)
-	goto error_ret;
+	return ret;

alisons

>  
>  	mutex_lock(&st->lock);
>  	switch ((u32)this_attr->address) {
> @@ -211,7 +210,6 @@ static ssize_t ad9834_write(struct device *dev,
>  	}
>  	mutex_unlock(&st->lock);
>  
> -error_ret:
>  	return ret ? ret : len;
>  }
>  
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/59ddccc600cfd1594dcb4dadb44b80328fc06008.1489356140.git.karniksayli1995%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

