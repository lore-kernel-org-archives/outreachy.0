X-GM-THRID: 6463032628218953728
X-Received: by 10.28.6.76 with SMTP id 73mr91334wmg.26.1504792435292;
        Thu, 07 Sep 2017 06:53:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.28 with SMTP id 28ls67450ljb.40.gmail; Thu, 07 Sep 2017
 06:53:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDwYgJaDGomseE63K4GLMx04obDp8zpubWJLMuF23vS2rMcvAYPVDdwNoQyBPDnnsMwRXbN
X-Received: by 10.25.195.195 with SMTP id t186mr228573lff.10.1504792433631;
        Thu, 07 Sep 2017 06:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504792433; cv=none;
        d=google.com; s=arc-20160816;
        b=mDXIhN5HdpT0KcYEWno3/Lfnt7AWoYqTsH8BLLwVvtCGG3FuLsECpXKBuxAGvp1D9N
         ghpAf3xaKcp+T305lHYWXlBwXB/MntO3F4mEPSA4cvLNm3C30NCh3TRQuYEErelLcy9j
         gzFwgEyluEn1xh/kIO/0AbA9bz4B5PyUt+u8+3tC9cwmZDLfsmD4wakdC0CnqnnGYfsL
         jauNilqgJUHdqtw41BPrItDZaSg+TGAXJE8Uy2doBGQphYhkF74BSO6sVsI1UNsHVzgD
         qTET6KEPWD5tU5Xwlc9nxJ4KR0dJv522J+i58j85SVV3NkvYJcpHRT6w6xtMCyf65bH/
         8Uxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=AXx/wKEZXNaqROk4jhOVKIO7w7j45ouaOaW+FiCzbzg=;
        b=en4lLBpYQ6sEm0lNmjBBkvFkDfGAa18wMEACURtHNmRljAtdBOiFXMykATr9L1kkEY
         hnAUsYqILVz6j7y4RXqsyex35gT7xT3/gwviKQ2GVYKHLwJ5/23QrSYg7Cc2ZvAeHgc1
         Bsjs3gDdJ7GlQu1g/Igf3mLMK6yyGsldYt7i/CkAb0SaytC9zsUszaAFLwjiSxQYCsK+
         ohfexIJ3pc25vnc9UhRjfWz8k+k7xUyMRDJy0hXZnvLa9bBTmrmAsy+Cf5PcT1dlU6lD
         jKkw20F06nN4OOU7A69cuYKBCvmH9zflAYJBPUBjnpFm4nuTKGvV81KqP2oAlPPrR7wO
         PgVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r8si127010wma.4.2017.09.07.06.53.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 06:53:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E7F2AAE7;
	Thu,  7 Sep 2017 13:53:51 +0000 (UTC)
Date: Thu, 7 Sep 2017 15:53:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gilad@benyossef.com, devel@driverdev.osuosl.org,
	driverdev-devel@linuxdriverproject.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	linux-crypto@vger.kernel.org
Subject: Re: [PATCH] Staging: ccree: Prefer using BIT macro.
Message-ID: <20170907135350.GA27426@kroah.com>
References: <1504792029-8050-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504792029-8050-1-git-send-email-srishtishar@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Thu, Sep 07, 2017 at 07:17:09PM +0530, Srishti Sharma wrote:
> Use BIT(x) instead of (1<<x), reported by checkpatch.pl.
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/ccree/ssi_cipher.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/ccree/ssi_cipher.h b/drivers/staging/ccree/ssi_cipher.h
> index 296b375..6fbcf9d 100644
> --- a/drivers/staging/ccree/ssi_cipher.h
> +++ b/drivers/staging/ccree/ssi_cipher.h
> @@ -27,11 +27,11 @@
>  #include "ssi_buffer_mgr.h"
> 
>  /* Crypto cipher flags */
> -#define CC_CRYPTO_CIPHER_KEY_KFDE0    (1 << 0)
> -#define CC_CRYPTO_CIPHER_KEY_KFDE1    (1 << 1)
> -#define CC_CRYPTO_CIPHER_KEY_KFDE2    (1 << 2)
> -#define CC_CRYPTO_CIPHER_KEY_KFDE3    (1 << 3)
> -#define CC_CRYPTO_CIPHER_DU_SIZE_512B (1 << 4)
> +#define CC_CRYPTO_CIPHER_KEY_KFDE0    BIT(0)
> +#define CC_CRYPTO_CIPHER_KEY_KFDE1    BIT(1)
> +#define CC_CRYPTO_CIPHER_KEY_KFDE2    BIT(2)
> +#define CC_CRYPTO_CIPHER_KEY_KFDE3    BIT(3)
> +#define CC_CRYPTO_CIPHER_DU_SIZE_512B BIT(4)

Care to use a <TAB> here as well?  I know the original didn't, but the
cleaned up code should.

thanks,

greg k-h

