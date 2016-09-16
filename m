X-GM-THRID: 6330674938515554304
X-Received: by 10.36.110.210 with SMTP id w201mr5434800itc.7.1474012088847;
        Fri, 16 Sep 2016 00:48:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.197 with SMTP id c63ls242011otb.11.gmail; Fri, 16 Sep
 2016 00:48:08 -0700 (PDT)
X-Received: by 10.157.47.73 with SMTP id h67mr9725444otb.5.1474012088457;
        Fri, 16 Sep 2016 00:48:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 142si3844234pfx.2.2016.09.16.00.48.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 00:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C4B0571;
	Fri, 16 Sep 2016 07:48:07 +0000 (UTC)
Date: Fri, 16 Sep 2016 09:48:13 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>
Subject: Re: [PATCH 1/5] staging: sm750fb: Add blank line after declarations
Message-ID: <20160916074813.GA20608@kroah.com>
References: <cover.1473975000.git.aquannie@gmail.com>
 <fa0e9f0f8ad81718bc561337284d7aa6f6a5ffca.1473975000.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fa0e9f0f8ad81718bc561337284d7aa6f6a5ffca.1473975000.git.aquannie@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 03:02:21AM +0530, Rehas Sachdeva wrote:
> It is preferred to add a blank line after function, struct, union and enum
> declarations for better readability. Issue detected by checkpatch.
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.h    | 3 +++
>  drivers/staging/sm750fb/ddk750_display.h | 1 +
>  drivers/staging/sm750fb/ddk750_mode.h    | 2 ++
>  drivers/staging/sm750fb/ddk750_power.h   | 1 +
>  drivers/staging/sm750fb/sm750_cursor.c   | 3 +++
>  5 files changed, 10 insertions(+)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
> index 0891384..5ef8aad 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.h
> +++ b/drivers/staging/sm750fb/ddk750_chip.h
> @@ -14,6 +14,7 @@ typedef enum _logical_chip_type_t {
>  	SM750,
>  	SM750LE,
>  }
> +
>  logical_chip_type_t;

Please look at what the C code is doing here, does this change now make
sense?  Why add a blank line in the middle of a typedef definition?

Yes, the code isn't the best, but this is not the correct fix for this
issue, remember checkpatch is a dumb script, sometimes it tells you the
totally wrong thing to do, you always have to look at, and understand,
the code before you change it.

sorry, I can't take this patch,

greg k-h

