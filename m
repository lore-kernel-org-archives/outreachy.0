X-GM-THRID: 6669194328626167808
X-Received: by 2002:a0c:e591:: with SMTP id t17mr6523565qvm.3.1552817739169;
        Sun, 17 Mar 2019 03:15:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:39c3:: with SMTP id m61ls6270013qte.0.gmail; Sun, 17 Mar
 2019 03:15:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzrJMRL6bN4nXr6PwNARiUznV7zxkqmivR3klhsGfvaKIrbjGUHrxo88KNXJZSVZ9UpcRy
X-Received: by 2002:ac8:1cb:: with SMTP id b11mr7418613qtg.30.1552817738600;
        Sun, 17 Mar 2019 03:15:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552817738; cv=none;
        d=google.com; s=arc-20160816;
        b=MKPJMnzldba17baiQs/19NhIqWKS+n9oZCQAKhoHoJRZ0a2AAaSy9M+kcc4QmtoNzs
         goK1yl3W6uvMqHiptElvDWZ+rjeod5T/yjFMIYaqTxn60+O8kTooJYIC2v/P6vemHudN
         jsbuTaKCE6y2u6iFXv/L3/cEegoGxFwPxlZ+SvpGNyI26i2ynBKZ5BR1kunNWpU7qdLN
         PSempjiyYWfInkiS2sFeZ6BoPjXnma+SreQKxxn92vXbmo/N/54yorwG39SOrHBSIB5Q
         YVSwMouitfF6RwS8t7YCNI/4jgaZ5l1ajqL+tEwIZijb6i6ADb9qyQfCfd+75876WdTe
         bGvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rryrbbcStZEaV7wWg5lvofEFL6aD2t33qRkpHUBeYck=;
        b=UBZyqYVZwldR+QC2uaXe2stFrxLuwUcmiuqavalSWlT0lWq60NwJ1cJZygt4gym34Y
         V0g4bGudenFjKHZQEvWerA3wCA8WO1Mv5R2ZtC9YSdHdgyx+3h8/1iNzt6iFUV2ftxo1
         sYbNSYsKYghx8zz98NyIthWKIo8hg2mbJTKwn4/81Jze5Lawz/K+60kYDGXu/O3nunCs
         FUIzd6CmuxNN6vU1nJ9oXJEjFqS95hUeHvfWjHDwR76NRrKyO6BCblaOhGn1T2V8HNqF
         DHGQumz7DSsTkzsOUFulToZ4vNRZTCX1ZcR2v+07+B5Nsfbpgv8vqDjZR3OCxTp510qX
         Ze3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I6jW5csL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m1si396314qtc.2.2019.03.17.03.15.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:15:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I6jW5csL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0DE9521019;
	Sun, 17 Mar 2019 10:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552817737;
	bh=/ZcFEWQdFryrW2KrNj4+2OY7l/8NG2R6OBCjfhL912Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I6jW5csLX1IGcPkvwEwc3r56R5TWxt8FzDslWKZ2kj3kVlZ/IiI7SBSYN7C/apLnl
	 +44L7V+cmD5rdtK0Yic5uj0AIL2qbMrvCOpAkrwQ7FbaR1uIx7Q+S8cxwbhYWdWHiT
	 McQWRmsV+cK05CsGdR4ulvWj3npF+fpBOlGo18uY=
Date: Sun, 17 Mar 2019 11:15:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: fix printk KERN_LEVEL facility level
 warning
Message-ID: <20190317101534.GB20773@kroah.com>
References: <20190317031236.9361-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317031236.9361-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 03:12:36AM +0000, Jules Irenge wrote:
> Replace printk with pr_debug to solve checkpatch.pl warning:
>  " WARNING: printk() should include  KERN_<LEVEL> facility level"
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 11c704b27c3c..2eb5af3debb3 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -99,7 +99,7 @@ static void report_char_chartab_status(int reset, int received, int used,
>  			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
>  				 " with %d reject%s\n",
>  				 rejected, rejected > 1 ? "s" : "");
> -		printk(buf);
> +		pr_debug(buf);

This is not correct, look at the other messages in this function for
why this is the case.

thanks,

greg k-h

