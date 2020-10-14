X-GM-THRID: 6883182191980838912
X-Received: by 2002:a9d:7453:: with SMTP id p19mr3694753otk.158.1602684223631;
        Wed, 14 Oct 2020 07:03:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cd96:: with SMTP id d144ls107664oig.5.gmail; Wed, 14 Oct
 2020 07:03:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz5fKfGvn0U1FTLT+N4LhskRRfI9NrC+To8xBx/H2J5x1cbEPqkbwsr/h7+NgvBtxTJ2TK4
X-Received: by 2002:aca:1110:: with SMTP id 16mr2389767oir.12.1602684222345;
        Wed, 14 Oct 2020 07:03:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602684222; cv=none;
        d=google.com; s=arc-20160816;
        b=NyyGL9mUPbgQPMehM3Em43QcpdknkaKy0j4KhsJ0MIvb9RXkLur7HAP61taa9JHivZ
         j17O3bxv+qg65vkEw8hahlT8kfP5c2iJTjRFyF53LsOfDmYCkZjZZ8CiP7RqoPEyo5eG
         T3hsW33u8xMricktNSwqkzekuYJ9KtosREWHLAK+gZ0I56u0XvuWo1klqdspQGqKIwC2
         JKUSB2XYIEM/oJ0QUL6H4Umkl5wpY6dslEA1zj+mUAlbrJtsZIraOQv3zXQcke34n9vO
         qpbw9DM8HAIyltc8d0IGdS0VjhroaC5uEgcB15bACaKAo6DH4lZ3F43mLRPcgWSOKPY3
         FKGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ajg+UZ2K1P+ptq0WRygO5nz6ExvFd0AChLe9NP0k0lo=;
        b=eP1dw13Zrt6Ia8KwccGF7Z38CcxUpg+VrWODUVCObzdov1fdFOsesd6+5MVMmN9zYJ
         RzO+2pcsNfC6nWAusueW34fzIlwPXL0WwJ/c078cSMK+1H4wpt5kPIwxckPfhBhS362L
         Hav+pyhShYVgWesW3MUzZkPK4AxUd3MqwMx2yqUEir/JFDkIq8h23Ws11snAJZuZjW1o
         /0WcV6vs79P9brbcwuMT2mVnFE75yB4/3Oj7/p2rW5X2QC8DklDhfKnZM3i+iBYtYqLs
         6joubRcrY4byWbvDFHFxNl5QM2jJgHt+smwJ17F/zYhT7z0lE3rhC6cwq+eZ0cXXsi/5
         Md+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f5VUtOyP;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w26si185096oih.1.2020.10.14.07.03.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 07:03:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f5VUtOyP;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id v12so1799646ply.12
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2020 07:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ajg+UZ2K1P+ptq0WRygO5nz6ExvFd0AChLe9NP0k0lo=;
        b=f5VUtOyPooRocMUmRfiwtH7QlMJH2A+tmeHNUBxGT9sAlCDnzNFwlZZDa5BIKHMIIQ
         xa6Wn+/nk8NvnLngqVrF2AzyFu/E6DUFqgsPHej6wHlR9OgXHOjkseB+t91R3JB5psuN
         7nU+WUIqyOLqryj5lAIDMFE/Go1kUKVx/W3Guf1V/JOygaSduVcpvPpoEhyrzHW5oWI9
         nRllRXyYp+vw7l/RR0kgG5abLiL61zexyUMgU71DJxriqJ6Wq/1ixN4FWB2Er5XDHArk
         OkdeR58B+j1zlBXIo7kyhy4za6iESvT/e48c1lLaBQcs8I/VeHEgS0fsnzSnFLiPyjGi
         Kjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ajg+UZ2K1P+ptq0WRygO5nz6ExvFd0AChLe9NP0k0lo=;
        b=SS4TWEyS6b9vRyoRSQFm66lM+Pbkcy7neicEZ/oEfULUto/kbTCDdfDYO0KQ7a1i7U
         PySg25PdpXLnuD0eHYBIn1JoldzNpbvIRHBm4F3Pz+ihVC9omkfB/3K/x+axuDJdluOp
         S2rRIao7GTBlSTkf78s1NGEWObUf1tObFkXHHa79GbtKrZX491jxYcgEUT3SAU5W1AN1
         iTHH2GJ7ZbVVG6ewLGHzc7QKkS0Agf8hnqAb2vW38cRdgpZK8elYdjlwtqrLfENvQQKK
         zGnsZQuNMi5FxIcVQ363z53Ha4Lv+FTeceGqGRTLP4k9U7Hph5O8uMPaP9xLRmqpYcwo
         aKyQ==
X-Gm-Message-State: AOAM533nCv1vJfPK5ZJh3nZQcnQUUd/8xHpxIHBFPvnEZO3t5T6ytLEY
	78oP/TmacBA7F7BXHYViF6Q=
X-Received: by 2002:a17:90a:1596:: with SMTP id m22mr3741476pja.189.1602684221638;
        Wed, 14 Oct 2020 07:03:41 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id t20sm3540763pfe.61.2020.10.14.07.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 07:03:41 -0700 (PDT)
Date: Wed, 14 Oct 2020 19:33:36 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH v2] gpio: 104-idi-48: improve code indentation
Message-ID: <20201014140336.GA3328@ubuntu204>
References: <20201013190212.GA85788@ubuntu204>
 <20201014045449.GA347654@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201014045449.GA347654@kroah.com>

On Wed, Oct 14, 2020 at 06:54:49AM +0200, Greg KH wrote:
> On Wed, Oct 14, 2020 at 12:32:12AM +0530, Deepak R Varma wrote:
> > Address code indentation warning messages by checkpatch script. Combine
> > split function parameters on one line. This also resolves the "use tabs
> > instead of space" warning by checkpatch script.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > 
> > ---
> > Changes since v1:
> >    - Correct subject line per feedback from Greg KH.
> > 
> >  drivers/gpio/gpio-104-idi-48.c | 6 ++----
> 
> For the outreachy project application, they do not accept patches
> outside of drivers/staging, as per the documentation.  So I do not know
> why you are sending a patch for this to the outreachy list and not to
> the "correct" list for gpio patches.
> 
> Please do not work outside of drivers/staging/ for the outreachy process
> at this point in time.

My apologies. I definitely missed the directory track. Will look into the
drivers/staging only for now.

Thank you,
Deepak.

> 
> thanks,
> 
> greg k-h

