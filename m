X-GM-THRID: 9445831606272
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,153891478aacf657
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.82.202 with SMTP id ad10mr20943657icc.14.1427153002915;
        Mon, 23 Mar 2015 16:23:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.8 with SMTP id n8ls1433353igi.27.canary; Mon, 23 Mar
 2015 16:23:22 -0700 (PDT)
X-Received: by 10.66.119.174 with SMTP id kv14mr1904797pab.21.1427153002743;
        Mon, 23 Mar 2015 16:23:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si291525pac.0.2015.03.23.16.23.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:23:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 15E9A982;
	Mon, 23 Mar 2015 23:23:21 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:56:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: sm750fb: Remove spaces in
 front of lines
Message-ID: <20150323215606.GB31936@kroah.com>
References: <20150321195235.GA28639@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150321195235.GA28639@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 22, 2015 at 01:22:35AM +0530, Amitoj Kaur Chawla wrote:
> Fixes checkpatch.pl warning by using tabs instead of spaces.
> WARNING: please, no spaces at the start of a line
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v3:
>  - Fixed commit message
>  
>  drivers/staging/sm750fb/ddk750_chip.c | 38 +++++++++++++++++++----------------
>  1 file changed, 21 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 3ccf4a5..9105c0e 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -110,23 +110,27 @@ void setChipClock(unsigned int frequency)
>  			return;
>  #endif
>  
> -    if (frequency != 0) {
> -        /*
> -         * Set up PLL, a structure to hold the value to be set in clocks.
> -         */
> -        pll.inputFreq = DEFAULT_INPUT_CLOCK; /* Defined in CLOCK.H */
> -        pll.clockType = MXCLK_PLL;
> -
> -        /*
> -         * Call calcPllValue() to fill up the other fields for PLL structure.
> -         * Sometime, the chip cannot set up the exact clock required by User.
> -         * Return value from calcPllValue() gives the actual possible clock.
> -         */
> -        ulActualMxClk = calcPllValue(frequency, &pll);
> -
> -        /* Master Clock Control: MXCLK_PLL */
> -        POKE32(MXCLK_PLL_CTRL, formatPllReg(&pll));
> -    }
> +	if (frequency != 0) {
> +		/*
> +		* Set up PLL, a structure to hold the value to be set in clocks.
> +		*/
> +		pll.inputFreq = DEFAULT_INPUT_CLOCK; /* Defined in CLOCK.H */
> +		pll.clockType = MXCLK_PLL;
> +
> +		/*
> +		* Call calcPllValue() to fill up the other fields for PLL
> +		* structure.
> +		* Sometime, the chip cannot set up the exact clock required by
> +		* User.
> +		* Return value from calcPllValue() gives the actual possible
> +		* clock.
> +		*/

You changed the way the comments were lined up :(

