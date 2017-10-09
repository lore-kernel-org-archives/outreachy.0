X-GM-THRID: 6473929698142322688
X-Received: by 10.28.63.130 with SMTP id m124mr1158398wma.20.1507555319294;
        Mon, 09 Oct 2017 06:21:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.208 with SMTP id q16ls1091534wre.5.gmail; Mon, 09 Oct
 2017 06:21:58 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDEybHILmXAn32MR5xjcZKkTyT6kOuAYdGOMdnzsh3B6MjUei5ZXWMxBJf8GyL80Y4Vu0me
X-Received: by 10.223.157.136 with SMTP id p8mr391659wre.14.1507555318292;
        Mon, 09 Oct 2017 06:21:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507555318; cv=none;
        d=google.com; s=arc-20160816;
        b=SxsdC2W4rndkzSeg++irk+rlDmf+ZOcvnhFuYbFRjcVrw6V9ilT9PcPdkA9CTw5PjD
         GjWOUD9XkOPE1V7iANln3Q52vo6dcxd91PKXoi2ebGbC26zvpCVIZIIB9VvTHnqVcMT3
         QOapPZ4w2cnClLSsKHa+h3lrfKGue5h+rQm07WICSuPH5Zl0bVa5b9Er9d9k7NHn5CTn
         WP7sYGm2ZglO7pVsHK9gpFshBCKWP7k5uazHVDZaPE7l2Y3wBccuDj+V6eGspu7mCyms
         EjAOoJzsT4DNKJ+gS60tGYLNUpwrAZcu8XenmiuNNpQ5LGNYpBc8HiuuS6WuLKVD7CVM
         Q+AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=0nxKTZGisG2CgECQ6hcaYUg766Iemuy/0xdxFhYuzYA=;
        b=UgTbPnbBbWvbZwuE3o2IX+ojV505p2CLK2d+GttuwPCrfj9zmwqlmRDn/g35cOnGF7
         1LFAILVMbJroRTS54wAavInb3J1yQNGZLFIeOB9Ibob7OSn2BnHwZ/GW/m8k/ylXoDws
         O6BJy+O1kKI1IGdmrl7LqQPmdbfwbGSY8Wb0oRiXwYSSxaXLZM+58avtdSKYN0ygwdnC
         6x8Lbs/+oFVlxARDxJd1QHVQZKt9rOuJ/TphUEA/bgOQLDw58poLHOZkcQHLoeBEHs8w
         9dRJiKpSNP+ieqS602K79j90QCUTIgEskoFX4Oqiyc+OdUFeswKkthgChpGcXKybNBKH
         Y6cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id d82si888187wmd.1.2017.10.09.06.21.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 06:21:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1e1Y0J-0007A8-BX; Mon, 09 Oct 2017 15:21:57 +0200
Date: Mon, 9 Oct 2017 15:21:54 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] src: Merge assignment with return
Message-ID: <20171009132154.GA8460@salvia>
References: <20171006223033.664-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171006223033.664-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.8 (--)

Hi Harsha,

On Sat, Oct 07, 2017 at 04:00:33AM +0530, Harsha Sharma wrote:
> Merge assignment with return statement to directly return the value.
> Done using following coccinelle semantic patch
> 
> @@
> local idexpression ret;
> expression e;
> @@
> 
> -ret =
> +return
>      e;
> -return ret;
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  src/mini-gmp.c  | 3 +--
>  src/statement.c | 5 +----
>  2 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/src/mini-gmp.c b/src/mini-gmp.c
> index acbe1be..0579c46 100644
> --- a/src/mini-gmp.c
> +++ b/src/mini-gmp.c
> @@ -1297,8 +1297,7 @@ mpn_set_str_bits (mp_ptr rp, const unsigned char *sp, size_t sn,
>  	    }
>  	}
>      }
> -  rn = mpn_normalized_size (rp, rn);
> -  return rn;
> +  return mpn_normalized_size(rp, rn);

mini-gmp.c has been extracted from libgmp sources [1], so either you
submit this chunk to them, or you leave this part as is. I would like
we just cache a copy of the mini-gmp.c original file.

Probably you can just check if latest stable release of libgmp
contains updates for mini-gmp.{c,h} and send us a patch to get in sync
with them.

Thanks.

[1] https://gmplib.org/repo/gmp/file/tip/mini-gmp

