X-GM-THRID: 6394893336462753792
X-Received: by 10.157.56.155 with SMTP id p27mr6250983otc.124.1489094769141;
        Thu, 09 Mar 2017 13:26:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.82 with SMTP id e79ls2073652iod.48.gmail; Thu, 09 Mar
 2017 13:26:08 -0800 (PST)
X-Received: by 10.99.158.9 with SMTP id s9mr6517103pgd.128.1489094768427;
        Thu, 09 Mar 2017 13:26:08 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si1453556pfd.3.2017.03.09.13.26.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 13:26:08 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so8007522pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 13:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KVqDpfqyg5C+Y8vY29Xnw15XEYr6yQPdRQhu436WdDk=;
        b=F/tMNU+kcUshox9LTGleM5xx5pMUS+w5cTcgwiVe6Z/6geMj2GduEIE72+K6x0fHmw
         ePxtveniKl8JB1gSBT9UW5nMfVqskOFQzJFeXeAbPPFZJ/VvWqeB59Q3oUDe150n13p6
         L/Lp2p2IhOzH9xf+NG4QYpeFKjWinrAGR8Z7M1cqPgs5gem62dT87IhAb55yE4/yZyDu
         pL7Yc83M0EH1rx11pY4svUbIKVQakhyPDyipEbxR3CLWB3Kkwz/xwMxdZA6/F/eMBSFj
         o0F99VuFUqaTcgRc0GeVexKLyQVDHj5pyRt6pMC9lH/G2T6qrBn+Rd2r1EBh/t78GkJo
         aOlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KVqDpfqyg5C+Y8vY29Xnw15XEYr6yQPdRQhu436WdDk=;
        b=LRSdRh8fHitO+8n1G7Pya8BP0XNzFVzQflGR9iMDsgfnosUk6SSpyXhEzds1LLcsAC
         gIMa9KgMXUZbtkL6jTkNln5+mbjurV8S3nLIl7jUBQHUJuKC/if4VJ7X8c3gB+vJIFda
         6ZmVLGcOBgXqYJsBd5Vz0sxpVRmws3Hlg8m/+9yT4arJqzUz3Dpb3b8t5Qyms5tt+vSh
         BP9D09AsIEKTYlxGfkFCDKz/bDr4+ZWTvV8E6ApF5vvAGiNkTONRnpmf6OTxxeE+E+2M
         pEg2l7LcInVjWkpXWhGyRtfK2zOM7Ha7XxK//QvK/rHmgiBaVzNGW05QlviedrnjMQ4g
         WqHg==
X-Gm-Message-State: AMke39lU+Em8lAgaM7Z02B1eaok0BymzEa0CBmLuiK0lqzgsomVvdGm65xj57i/21WSuqw==
X-Received: by 10.99.5.82 with SMTP id 79mr16254326pgf.8.1489094768141;
        Thu, 09 Mar 2017 13:26:08 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id g85sm14220276pfd.89.2017.03.09.13.26.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 13:26:07 -0800 (PST)
Date: Thu, 9 Mar 2017 13:26:06 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wilc1000: Align the code
Message-ID: <20170309212605.GA9441@d830.WORKGROUP>
References: <20170309205748.4422-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170309205748.4422-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 09, 2017 at 10:57:48PM +0200, Tamara Diaconita wrote:
> Deleted tabs and added spaces to align the code.
> 
> Fixed the checkpath.pl issue:
> CHECK: Aligment should match open paranthesis.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Hi Tamara,

I ran the update post-commit hook on this and it catches some
of the typo's in the commit message:

CHECK: 'Aligment' may be misspelled - perhaps 'Alignment'?
#9: FILE: temp:9:
+CHECK: Aligment should match open paranthesis.

CHECK: 'paranthesis' may be misspelled - perhaps 'parenthesis'?
#9: FILE: temp:9:
+CHECK: Aligment should match open paranthesis.

See the first patch tutorial for how to do it automagically,
or else do it manually before you submit.

In the code, can the if/else segment in question be modified
to have one more else if and avoid excessive indentation.

change this:
	if	
	} else if
	} else {
		if
		else
	}

to this:
	if	
	} else if
	} else if
	} else
	}

Yikes..that was awkward to write.  See if it makes sense in the code.

alisons

> ---
> Changes since v1:
> *Changed the subject of the patch from "staging: speakup: wilc1000" to "staging: wilc1000".
>  drivers/staging/wilc1000/linux_wlan.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index 2eebc62..c65c5e8 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -870,12 +870,12 @@ static int wilc_mac_open(struct net_device *ndev)
>  				if (memcmp(wl->vif[i ^ 1]->bssid,
>  					   wl->vif[i ^ 1]->src_addr, 6))
>  					wilc_set_wfi_drv_handler(vif,
> -							 wilc_get_vif_idx(vif),
> -							 0);
> +								 wilc_get_vif_idx(vif),
> +								 0);
>  				else
>  					wilc_set_wfi_drv_handler(vif,
> -							 wilc_get_vif_idx(vif),
> -							 1);
> +								 wilc_get_vif_idx(vif),
> +								 1);
>  			}
>  			wilc_set_operation_mode(vif, vif->iftype);
>  
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309205748.4422-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

