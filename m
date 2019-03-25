X-GM-THRID: 6672221168538222592
X-Received: by 2002:a17:906:f05:: with SMTP id z5mr538046eji.19.1553499264262;
        Mon, 25 Mar 2019 00:34:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:90d6:: with SMTP id v22ls1240762ejw.6.gmail; Mon, 25
 Mar 2019 00:34:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwNXyw93QANIdR5wLIMa4u1IOVk+8A9y9TT9lYbI+JFdaLayLaxRhVMt35abNARpN0DlBmo
X-Received: by 2002:a17:906:960a:: with SMTP id s10mr12972156ejx.141.1553499263593;
        Mon, 25 Mar 2019 00:34:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553499263; cv=none;
        d=google.com; s=arc-20160816;
        b=JeouN0Y/gmvC56Js2fAaatYAFyci+jX/w7xRzrPTttSYyZ1TI0lfrGOu6jRDQEHZf8
         SLvClJ77h+ZUzZD9eWBxTlFDyiloLThCkv++qDPhgh75Cam0qWCc8Br6yhD13lxz7paT
         cw1vmGKBEzZpp3X1c7eyd/qK89QT5xyyA2jBIQwQu1OOebCuQS7VCA4YleyScl0dErnO
         iSdLSQppqSY2CKV8k3mpV/FGyi4Aol5seK6CSHS07S/A9976OasMo5DWotX2Vn479oGB
         0pJNrCHq63r0wJjTZQrtt6tqZOQZpQyAn0dz4eBu9TvLUZdAjEIfG+/kMlsU3rhV6HX7
         2J2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=4ivBWad+fDGmqo8mPMBsCyldTttWTA8w990WeanoZk8=;
        b=RCHWSMiZlRFEsQU4bKt7d3fkrhVnESntLnozn5yguT9Nc67AcbnFClNMvA/MVrYIR1
         rzwcGxMLB/tWqcEwXstfYyI1ZzD6nPen44hfirbZAlVR0QmbWPy3kkecBFEFbuCE8qhn
         LWFXVQ3xc93CIpJ9RrVLmkMFzOt8zj76vX510N2+sMtzJQ4waTewm2gCdUP2v+J6o6sX
         psA8w3LP1Cf9jAjOvxkjTc/I3KD1dHP6cSc6/RzQHcjZxvYr+6IyHCG9oTAR6uh8iaxP
         FpuxGkR6E9v6fJh0hJQ3tLEl1T2YufxYa+jpTF74Fw4ah0YQkrIuSIaczLyV6hxtt36m
         OB5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r37si606365edd.2.2019.03.25.00.34.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 00:34:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300579025"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Mar 2019 08:34:12 +0100
Date: Mon, 25 Mar 2019 08:34:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: ddk750_chip.c:
 Prefer using the BIT macro
In-Reply-To: <20190325072538.6809-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903250833380.2742@hadrien>
References: <20190325072538.6809-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line should follow what is mostly done for this driver, which
is staging: sm750fb:.

julia

On Mon, 25 Mar 2019, Sanjana Sanikommu wrote:

> Challenge suggested by coccinelle.
>
> Replace bit shifting on 1 with the BIT(x) macro.
> Coccinelle script:
>
> @@
> constant c;
> @@
>
> -(1 << c)
> +BIT(c)
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v2:
> Modify script to remove parentheses around BIT.
>  drivers/staging/sm750fb/ddk750_chip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 4c1f00f551da..eea4c08b8a26 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void)
>  	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
>  	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
>
> -	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
> +	return DEFAULT_INPUT_CLOCK * M / N / BIT(OD) / BIT(POD);
>  }
>
>  /*
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190325072538.6809-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

