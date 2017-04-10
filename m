X-GM-THRID: 6401301781683372032
X-Received: by 10.157.42.21 with SMTP id t21mr10117792ota.22.1491799516562;
        Sun, 09 Apr 2017 21:45:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.33 with SMTP id w30ls9030149otb.9.gmail; Sun, 09 Apr
 2017 21:45:16 -0700 (PDT)
X-Received: by 10.129.85.207 with SMTP id j198mr6083322ywb.55.1491799516164;
        Sun, 09 Apr 2017 21:45:16 -0700 (PDT)
Return-Path: <viresh.kumar@linaro.org>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id r66si1492529pfb.7.2017.04.09.21.45.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Apr 2017 21:45:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-pg0-x235.google.com with SMTP id x125so99533627pgb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Apr 2017 21:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UiGrhPUMd/xctjQWo6xtP289kw7bgGvph58Ugqjcyj0=;
        b=CQ/QuWCRz3Y1lEjKE/jZ2YTa9kyQZpGcEjPTQPloQYCaLZaD6yLBVQ8yIgg6kM1sSC
         //wsSWC5kh++8slcYg/KnsO/8vToT9qwj986VfzncnwAQVCLjn7+v+jco6t6vUUKKtlk
         PW2HdI+X2uhqKzQ57Zra725Bm+3u0InpKQXKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UiGrhPUMd/xctjQWo6xtP289kw7bgGvph58Ugqjcyj0=;
        b=dinCsZzccQ8dxPizfalqqq5rHA9XEqhEUTIwrUFflEKV/+9E5i3aUlu8iu0UMBQxoP
         tyudIvRRdSrf1wzsH5cfurI5i+WynU4pIREtqtBkqk6WY9VlKUlQKqcsdpgiE25o37sR
         Sb6uUBKQAkidJAN1zjSqg68xwhyWMv7o8zmmkvoTMrVv53DS2iP4oXQRBHf5mj54pGa7
         sF1gENAUok3Goh9FnEHYtp+eTq7v8pTz791RXZBvsC5cXKYkNVcCjSWuKOSM44vGHKLw
         /RSI0mbOvS7Nv2Ymi0nF2GE0wKr4CbQzB6W+R/lpoU/le+POmIiNUUZLwx2ufbHmMwSA
         Afsg==
X-Gm-Message-State: AFeK/H3RgZF//i4cg0hbvNMhTykYQuvgFbU4D/ZTN+LTJJSSuApJoscK+TNFXXBkbui7LjFN
X-Received: by 10.84.229.151 with SMTP id c23mr64803026plk.27.1491799515883;
        Sun, 09 Apr 2017 21:45:15 -0700 (PDT)
Return-Path: <viresh.kumar@linaro.org>
Received: from localhost ([122.172.101.74])
        by smtp.gmail.com with ESMTPSA id g21sm21502082pfb.41.2017.04.09.21.45.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Apr 2017 21:45:14 -0700 (PDT)
Date: Mon, 10 Apr 2017 10:15:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: pure.logic@nexus-software.ie, devel@driverdev.osuosl.org,
	Alex Elder <elder@kernel.org>, outreachy-kernel@googlegroups.com,
	Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
	greybus-dev@lists.linaro.org
Subject: Re: [greybus-dev] [PATCH] staging: greybus: compress return logic
Message-ID: <20170410044511.GA4377@vireshk-i7>
References: <20170325052007.GA4908@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170325052007.GA4908@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.24 (2015-08-30)

On 25-03-17, 10:50, Arushi Singhal wrote:
> Simplify function returns by merging assignment and return.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/greybus/loopback.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> index aaf29a5fac83..08e255884206 100644
> --- a/drivers/staging/greybus/loopback.c
> +++ b/drivers/staging/greybus/loopback.c
> @@ -365,11 +365,8 @@ static void gb_loopback_calculate_stats(struct gb_loopback *gb, bool error);
>  
>  static u32 gb_loopback_nsec_to_usec_latency(u64 elapsed_nsecs)
>  {
> -	u32 lat;
> -
>  	do_div(elapsed_nsecs, NSEC_PER_USEC);
> -	lat = elapsed_nsecs;
> -	return lat;
> +	return elapsed_nsecs;
>  }
>  
>  static u64 __gb_loopback_calc_latency(u64 t1, u64 t2)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

