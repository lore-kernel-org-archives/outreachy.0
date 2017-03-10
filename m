X-GM-THRID: 6395629856318554112
X-Received: by 10.99.37.5 with SMTP id l5mr9545387pgl.165.1489173659396;
        Fri, 10 Mar 2017 11:20:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls3672768ota.27.gmail; Fri, 10 Mar
 2017 11:20:59 -0800 (PST)
X-Received: by 10.157.56.39 with SMTP id i36mr7812637otc.71.1489173659075;
        Fri, 10 Mar 2017 11:20:59 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x22d.google.com (mail-pg0-x22d.google.com. [2607:f8b0:400e:c05::22d])
        by gmr-mx.google.com with ESMTPS id 2si1939866pfx.8.2017.03.10.11.20.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:20:59 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) client-ip=2607:f8b0:400e:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22d.google.com with SMTP id b129so42138645pgc.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4jqcCHLQIalT5XnnCyg4JIXjXsqwVyMM6zzoLcY76nw=;
        b=qUCMkrzecS7ODQPoExSz6uJAenChhuGngLfUHo67v5bMWl669gqDz2swNfbiASSRkr
         qxzylB2m5hTbZ2C+25H8feua5M49qMt4LQqeVKgN5xMMZ6TyQUWTkwWj0iO+cUYrZ5Wk
         zH7WyVluq5k4+KpaTmODOawk64qqtNx4Zb0+bsx7+uiof7iqf/LaRkUiKPgrm7ZiTA8F
         SNjqLG3XiLy1pPeNI25AhdJrdEZ9+HBpX9Hk0lCg/qinpB66MsTV4TENvYvezA53+i25
         eOGeZSapCA0OPVHfSSNO/WFXM6R35TFt4NPRIoJR4ZJKtEdTh+LSbJ/K4Z67Iwxmex+8
         /99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4jqcCHLQIalT5XnnCyg4JIXjXsqwVyMM6zzoLcY76nw=;
        b=o5jTc6mAxst3Dqo8bm6LC9NL7/rxAWypt+Nb+87WKrmM/c67QnIJemlSi2MMq+Bb6X
         9d2YLaWG8CAJeZ5PObGf0ucyyZ6K1LjLCwL9iDoEFVDJWiqnjHURAxUzDSp3Qznl9+E+
         Oy9ywyGJy3CnUfzP44h67Li6+mAtA6GsA0R2/YaydjmWA+yBWloGI3OyaZCvs0dReg7j
         +jSsooJL15cHKsepySOtv0PoIsIJLgFRjf0GauWgAweawg0SkbFtoz83jNio5vtijhfR
         hMOVmo/ATQJF+1UX/DtcrH2sRnLCc98HmjzvPHGftncZSa8LlvCOaYEKVlV0QBPwjgko
         Qyyw==
X-Gm-Message-State: AMke39kKkO+6BwgUfcKP1UYbtWs4UgvArfDS4HZwGEpEPrwZ45xJV91ekKU49hw+bopSOg==
X-Received: by 10.99.163.110 with SMTP id v46mr21681374pgn.171.1489173658853;
        Fri, 10 Mar 2017 11:20:58 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id d3sm20103836pfc.51.2017.03.10.11.20.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:20:58 -0800 (PST)
Date: Fri, 10 Mar 2017 11:20:57 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/7] staging: wilc1000: Improve code
 readability
Message-ID: <20170310192056.GB23892@d830.WORKGROUP>
References: <20170310190606.19766-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310190606.19766-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 09:06:06PM +0200, Tamara Diaconita wrote:
> Improve code readability in wilc_spi.c file in wilc1000 driver.

Hi Tamara,

Just realized why my inbox is getting disorganized.  These patchsets
need to be sent 'threaded' so they stick together.  See how to do
that in the first patch tutorial.  

I'm already in the middle of your last patchset, so I will keep
going with that, but I think I'd like you to do a [PATCH RESEND]
on this one and send it threaded.  Basically the PATCH RESEND
says nothing has changed inside it.

Thanks,
alisons

> 
> Tamara Diaconita (7):
>   staging: wilc1000: Remove unnecessary brackets
>   staging: wilc1000: Declare variables at top of function
>   staging: wilc1000: Correct name of variables
>   staging: wilc1000: Add blank line
>   staging: wilc1000: Removing extra tabs
>   staging: wilc1000: Use kernel preferred commenting style
>   staging: wilc1000: Rearrange code
> 
>  drivers/staging/wilc1000/wilc_spi.c | 101 +++++++++++++++++++-----------------
>  1 file changed, 54 insertions(+), 47 deletions(-)
> 
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310190606.19766-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

