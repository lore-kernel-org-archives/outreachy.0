X-GM-THRID: 6395915671391174656
X-Received: by 10.99.227.21 with SMTP id f21mr9654495pgh.43.1489175624684;
        Fri, 10 Mar 2017 11:53:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls9371163otc.32.gmail; Fri, 10 Mar
 2017 11:53:44 -0800 (PST)
X-Received: by 10.129.138.129 with SMTP id a123mr9864707ywg.62.1489175624315;
        Fri, 10 Mar 2017 11:53:44 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g82si1926059pfb.5.2017.03.10.11.53.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:53:44 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so11836515pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JT4lyKbjzKgjeox4f/09GH7xsCKTsT3ffnZBhpWGzGQ=;
        b=s1suZiP5PjHqJ8R6jUuoUCPmR+dokLWibvlF7NNCRvyA4ZogMK/PwikQcuYLS+r7O/
         1tOcYVxwLo2H8Bv2VSDyEKFRpyakpA3pfv4blHiEj014x3ZDjh2pP/ddEoc5WuXIu+S1
         x/R/O1Nv/cQyiSDH1uSdWHe72f5R77mApOSIqQXLZBf+rXjANGGQ09u9y3m8OnftK5Yp
         yXHV1T03rUcelrFlBcyO/8MdvapOmohgV7ePLmA5oMl0dMTT10QpC8LGCCV2s0EWmImI
         +KkzXCz3z+E2Jm8tmF2DKTWmImLiW5CpDcpFnW2GGKgDPz6v+ovl1nmacndMVieCY/Ty
         /Ezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JT4lyKbjzKgjeox4f/09GH7xsCKTsT3ffnZBhpWGzGQ=;
        b=sMfDbEn6yEW0zEGQZdeZoCzCp4MPjFRSSGe25wJ/Y89WChbJYUb1h9ho5OXFhunXk5
         nRt6kuNONGNUX/XzYLaz/lM679srp0oh21pAmXHkWtWSVWUNabrMjvGVm7WQvOXHFgad
         EUvG1e/88dPURwEczfKKYnFh9yi8iKYSosKu4HYkQfV6VRnVC85fn9UEqIhr+8AL8ftX
         k6lcSKP/11mOkN6R4GhKMtXh0asem0o6R52louAtSPkfohlCNDOgivkI+RdUr7JuG5hH
         Eptiwzxlp0cDNFQpQbrcexD4JnCKMUamda5hVJLvxGHXA8OC7sqz1E+KBUxYuZ2FW9jJ
         n44g==
X-Gm-Message-State: AMke39lhmQVwOv0EIisvzNULazIjUGL29myJWk3CfQCYmYku3ygnWcKIVR6yAanqRJwo+w==
X-Received: by 10.98.137.152 with SMTP id n24mr23181643pfk.43.1489175624053;
        Fri, 10 Mar 2017 11:53:44 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id u78sm20113434pfa.101.2017.03.10.11.53.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:53:43 -0800 (PST)
Date: Fri, 10 Mar 2017 11:53:42 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: wilc1000: Delete blank
 line
Message-ID: <20170310195341.GE23892@d830.WORKGROUP>
References: <20170310165919.4186-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310165919.4186-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 06:59:19PM +0200, Tamara Diaconita wrote:
> Delete blank line before a '}' to match the kernel coding style and improve code readability in wilc_wlan_cfg.c file.

Hi Tamara,

wrap log message lines at 72.

>  
> Fix the checkpath.pl issue:
spell checkpatch.pl

This is the last one in this set.  Entire set needs to rev.  See the first
patch tutorial for how to do it.  The version change comments go in the
cover letter for a patchset, a little different than for single patches.
Be sure to send it threaded.

Thanks,
alisons

> CHECK: Blank lines aren't necessary before '}'.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan_cfg.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
> index fed66dcd..f442e6f 100644
> --- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
> +++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
> @@ -490,7 +490,6 @@ int wilc_wlan_cfg_get_wid_value(u16 wid, u8 *buffer, u32 buffer_size)
>  
>  						i += toggle;
>  						toggle ^= 1;
> -
>  					}
>  					memcpy(buffer,  &g_cfg_str[i].str[1],
>  					       size);
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310165919.4186-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

