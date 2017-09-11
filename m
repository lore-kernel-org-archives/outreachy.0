X-GM-THRID: 6463854288984604672
X-Received: by 10.25.78.196 with SMTP id u65mr893967lfk.4.1505147538973;
        Mon, 11 Sep 2017 09:32:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.93.93 with SMTP id r90ls268933ljb.30.gmail; Mon, 11 Sep
 2017 09:32:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCsy3qD3g/VKTJ0Ngb42ZYnI53xg0dtcUKs54Ej1aYuI8iJpt9bYhxrT811vdRYdVcZYvf+
X-Received: by 10.46.67.12 with SMTP id q12mr368238lja.35.1505147537932;
        Mon, 11 Sep 2017 09:32:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505147537; cv=none;
        d=google.com; s=arc-20160816;
        b=u9XPZTWR8F228KNid/1JlqictwNfPzGsF6HmdmiSif0P7qja+cJV8JgfGgO3LSaq/X
         OTQ746f4fQ88WXdKU8DRXreitgMzcIH/wmhj0an0HFAWYxZvnO2Xq7reGqo6aK0VUJ8K
         5yM7+Ye59PEPwuceRBXxgBrUGnj8w0ou5L+B71cORXbvfRAOpyqlDUyQrQ3Q2ll660ZO
         3DVrwMRIukaycERXISRX1K9nScGNUi8HaVRugmv4AMdvjuaKTYdT29dKUNeyy+MpPiQQ
         6dwF28UN7binr12/I/wFI6rtwbfiVIGG+1QO9rOtqOhrJGwjzzo8BmAk+rKkAdhb3mW7
         0sMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=aceMnSg1XKDuW+/3N7tXcpiA4G/HVqaPeq618Ok77TM=;
        b=N0t2PLOPfug6HyRW7lfL2DkALg+qbqMknzBStBDl/HEsTnXJn7YxkQNgcT5bsRAsIL
         Urwn5no9C1VGp7LfDKtuKnfsxt8VyVgv/AYaFXJdALpFESynUMdcbe3NX0JNWvnWJYIN
         Ts9ug4fC2P5ObEEF4XusZMH0N+GGxPeqXU30JS9xIjsnREqAUoD0QE1fGEm2SvVsIgV0
         ab3an7E24bNVe8hPt6qT2uatR1yUwAplFUpy9pWs8uIjKXrZW7VGI2+VmtQGthJSseF5
         TCHgf0JXLgEYB0OhmlXdTRW+kKQ0Vkm7Ghhd5buoD4/N4BPkV81jUFGc2nl4UPbbUH8i
         sqBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q145si360464wme.4.2017.09.11.09.32.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:32:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 72C89266;
	Mon, 11 Sep 2017 16:32:16 +0000 (UTC)
Date: Mon, 11 Sep 2017 09:32:10 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] Staging: rtlwifi: Remove unnecessary 'out of memory'
 message.
Message-ID: <20170911163210.GA26981@kroah.com>
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sun, Sep 10, 2017 at 03:10:05PM +0530, Shreeya Patel wrote:
> Logging messages that show some type of 'out of memory' error
> are generally unnecessary as there is a generic message and
> a stack dump done by the memory subsystem.
> 
> These messages generally increase kernel size without much
> added value.
> 
> Problem found by checkpatch.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
> 
> Changes in v4:
>   -Include v2 and v3 in the patch.
> 
> Changes in v3:
>   -Make the commit message more appropriate.
> 
> changes in v2:
>   -Original patch was not sent to the mailing list.
>    Also, add a tab before the return statement.
> 
>  drivers/staging/rtlwifi/rc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
> index 65de0c7..779a5c6 100644
> --- a/drivers/staging/rtlwifi/rc.c
> +++ b/drivers/staging/rtlwifi/rc.c
> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
> 	struct rtl_rate_priv *rate_priv;
> 
> 	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
> -	if (!rate_priv) {
> -		pr_err("Unable to allocate private rc structure\n");
> +	if (!rate_priv)
> 		return NULL;
> -	}
> 
> 	rtlpriv->rate_priv = rate_priv;
> 

This patch is sent corrupted (leading space is gone), and git doesn't
like it.  Can you please fix it up and resend?

thanks,

greg k-h

