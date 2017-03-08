X-GM-THRID: 6394528999032225792
X-Received: by 10.107.134.1 with SMTP id i1mr2695475iod.10.1489001301200;
        Wed, 08 Mar 2017 11:28:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.145.4 with SMTP id t4ls1226795iod.44.gmail; Wed, 08 Mar
 2017 11:28:20 -0800 (PST)
X-Received: by 10.99.102.197 with SMTP id a188mr3776547pgc.170.1489001299989;
        Wed, 08 Mar 2017 11:28:19 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id c123si781786pfa.4.2017.03.08.11.28.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 11:28:19 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id w189so18483058pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 11:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mVBwfwsiTbdW8YKdYKGVOQHgAAdSWa+fLUY/ImO/ZCU=;
        b=OsYJ+FJrKj8JZewQ9LP2pzAsSnF+OU2wn+NoHNOw3AvB+cWsPaBd4Fj0IShc1eourK
         h49pr6yMoyKtdCx00KOi+GJW1z5A9ISpBoKbQz/gxBQ+/q0Ghkh8aG19Qgfp2sshR33m
         /h6KO7b4Mw0ApgqGsXrfHxuL79vX+IpBOczemFGK1vOtJq8XGmCggI72VABOT8knKAAY
         r7416DADmRD/qYbmoPcpb3Tu7kw7SDlBbOoRF7EePypuwn9dflnPJ5sa/8ss8tigcfxl
         kTjjC0wFUmMDZUlfnykR5jEdTGIt+JrAfjlhy9mHbl4C6T9x0cOOMGWa6TdwRIuapjxR
         xJKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mVBwfwsiTbdW8YKdYKGVOQHgAAdSWa+fLUY/ImO/ZCU=;
        b=mp3RM7jGplQ7SikZOrt3jcnA0zz9xY+4eV/vMhCf93E0sy2funWTuouY/1qBd6WisM
         IbTzxUEPwbbvwJNMCpf98B2gDKbvv5zrMTlaDuxTgp7alN3bQFAxaR85mkWu4zHweXov
         FTJi9rPDzwpvaPFLPcvbSTQ+6/YEi9g5hl8Kr+vq3Of2aKiU20V1azH0Lo6Wth6kE/h5
         4+HowhW7e6zaYzZJWSnYmGj2qaeC5o1JTPclMFpdo2gpRjjCWUmxUEshMN6eTqXYlZcE
         Vdx2wKXNRkZwH2mVHTqgI+6CSxW5tyVbRGgiycnQRptrqag4/qv4VBV+xuv7R97ttGN+
         KDYA==
X-Gm-Message-State: AMke39m9VWXvwVATcZiW9EdImZY80q7cG7fNvSXzEo/KSsOGAbd8fNFbWlseWFJceWWhGw==
X-Received: by 10.84.210.167 with SMTP id a36mr11266910pli.40.1489001299803;
        Wed, 08 Mar 2017 11:28:19 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id m20sm7714246pgd.67.2017.03.08.11.28.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 11:28:19 -0800 (PST)
Date: Wed, 8 Mar 2017 11:28:18 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] Improve code readability
Message-ID: <20170308192817.GA2787@d830.WORKGROUP>
References: <20170308170554.3848-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170308170554.3848-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 08, 2017 at 07:05:54PM +0200, Tamara Diaconita wrote:
> Fix multiple checkpath.pl issues to improve code readability in wilc1000 driver.

Hi Tamara,

We'd like to include the driver info in the cover letter subject line.

This:		[PATCH 0/3] Improve code readability
Becomes this:	[PATCH 0/3] staging: wilc1000: Improve code readability

checkpath.pl -> checkpatch.pl

alisons


> 
> Tamara Diaconita (3):
>   staging: wilc1000: wilc_spi: Rearrange the code
>   staging: wilc1000: wilc_spi: Correct variable name
>   staging: wilc1000: wilc_spi: Add blank line
> 
>  drivers/staging/wilc1000/wilc_spi.c | 71 +++++++++++++++++++++++--------------
>  1 file changed, 44 insertions(+), 27 deletions(-)
> 
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308170554.3848-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

