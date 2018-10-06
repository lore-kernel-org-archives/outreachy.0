X-GM-THRID: 6609263444479705088
X-Received: by 2002:a5e:c74b:: with SMTP id g11-v6mr7349829iop.38.1538848330856;
        Sat, 06 Oct 2018 10:52:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2c91:: with SMTP id i139-v6ls1356339iti.4.canary-gmail;
 Sat, 06 Oct 2018 10:52:10 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61ikyZ5VAXbIEuxuLU+dlHXIApKmTddTDanj9/+qkPGJ2cWX3jEOSQB2jwBYQNglAWalRai
X-Received: by 2002:a24:5695:: with SMTP id o143-v6mr1383210itb.19.1538848330340;
        Sat, 06 Oct 2018 10:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538848330; cv=none;
        d=google.com; s=arc-20160816;
        b=oIu3tbLyW2Ab7u/X//AyG6kiYC25W8rVpjkWJsdJQLMdLTVt4eO+D5LzOUTfrqSmYW
         JuJvpTmWh3+hN9QCaqG5NdnJbKTbIGI3yWK/th+USXprMh8bd7v+q6ulKbjiqYzJbkdt
         pMKye2Bv8Q6HRxJsJFyhO9EEqIivuqjhoQZ+LF8Psn1W25XE6Hzg4AUeNFesWtHTJYuT
         cTRLwqzjXWU2KkN4vtuPK3KG1RLDrqA+evgcaKxOJxUpj4SlzAWbNvHkpdmcTMq52fpq
         40wmeTVQTPxDtsyGJvIWOiHr2l61gu11pyWl1Oj2NbrtomRCvTEDxv0+Uq0okDWoBq+Z
         5U/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xXcEbriDHyvNTGgKSeghXe6AwQZqp8Bt8ss5WTNArPM=;
        b=QnIK0iUVYXtBHhIkwb7cpOMLnq07ey4U5+7vci4g+j95tHmIZawyec8Xc+YDnmwhIb
         +vUoReMP772JE1V7UFHFq5FE9S2xSB0maPE7pky5Xin6iJQASgMWOTKOPzGH3uD38BpW
         XISVLkMpI8wV43vTRym/vJjJ0C14DQzeUtSVTtq2ReUCoy2WMmb0OSkSQoRgswGAsa5p
         x0sJgCdniXhd7FSVPcydWtxjYbeWVtGkZrHvf5u4/QwyoUN74DyY6rh5y/Qxt1jFdrmM
         2rKNGBFSFRKwbYrmlY5rm8LJeLoSwmFLpB5AzWJi3DP8RHSJiuw3sb36t8gQMgQW0WF6
         o2XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pnkfEQ6Z;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id j6-v6si416347iog.1.2018.10.06.10.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 10:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pnkfEQ6Z;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id c8-v6so8243319plo.9
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 10:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xXcEbriDHyvNTGgKSeghXe6AwQZqp8Bt8ss5WTNArPM=;
        b=pnkfEQ6ZxAXCWK3n15hMXA5dDHnijgga1rMdPTeRThkhWnqjNl+AZd1ZecGpQInD8b
         japhse1mEwMLjGo16JBqR6dz030wQV4dB9LDIVC+AnGjxL8UsH+qqWXQau8gD/DZFPpF
         QtifSaXeorR2SB8JD2fYinCPPmwzpnWJfXbtG87bmDvlNYBHJikHNvrUcshkKjEBtTSY
         hJKhlasRXif3uWxhfe+ZwmeZb+SX+qb3fflz16UmPW+BeBQ7uhyKnVTIDjqb4M3ncTjv
         at1Zcz2r87z7wOxTfC9qKYRBe1h/hbIvOtVayOvHmC/ol3X4IyW52x1IHM9BkActxntM
         BmIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xXcEbriDHyvNTGgKSeghXe6AwQZqp8Bt8ss5WTNArPM=;
        b=k/rrJ8K2WjRDoDQmDnr9Oy3NCqtM1hNxASopGGRGeWRdQP/nSTbI1b3VZjoJYe5HHx
         z9SGa369mzgMEN6vSd/GE86qZWfZEabUZwF7Wlti2YIcl9X8P2rEabnUPUSwo9L3C/Gl
         jYlK+M4AN+mNuqcU47svdnk9o9z80guAJf2DGjyAzFFak6B9jw833JhBQx+YUm3w02Q4
         DAh26GAHNiPmodlK/7GFXGjz30n1vSP48yEU8UuXKwV33JIKJnOyUvkEkByTOVwbbh1S
         yR02Pmok4VH/AlXDmEGYgTwCyXGckwxjfDcJu8XuJlDJ4ciaYWlOGOWKo4JtOaHH+QB5
         AiYQ==
X-Gm-Message-State: ABuFfogoIKEZvdJRL0aRQWZ9ofru8Yo9Ui7e0FVEs+nFV0ZosSe9TZCA
	lzje3dSzeVDLCg115AkRuTE=
X-Received: by 2002:a17:902:6ac7:: with SMTP id i7-v6mr17107266plt.268.1538848329690;
        Sat, 06 Oct 2018 10:52:09 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id c69-v6sm20552187pfg.2.2018.10.06.10.52.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 10:52:09 -0700 (PDT)
Date: Sat, 6 Oct 2018 23:22:03 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.com,
	rspringer@google.com, toddpoynor@google.com, benchan@chromium.org
Subject: Re: [Outreachy kernel] [PATCH] staging: gasket: Replace symbolic
 permissions with octal permissions
Message-ID: <20181006175203.GD6283@himanshu-Vostro-3559>
References: <20181006143316.GA23864@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181006143316.GA23864@armorer>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 08:03:16PM +0530, Mamta Shukla wrote:
> Use octal permissions in place of symbolic permissions to fix checkpatch
> warning.
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider
> using octal permissions '0444'.
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Reviewed-by: Himanshu Jha <himanshujha199640@gmail.com>

In the meantime take a look here:
https://lkml.org/lkml/2016/8/2/1945


> ---
>  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> index f32eaf8..8b563d2 100644
> --- a/drivers/staging/gasket/gasket_sysfs.h
> +++ b/drivers/staging/gasket/gasket_sysfs.h
> @@ -40,7 +40,7 @@
>   */
>  #define GASKET_END_OF_ATTR_ARRAY                                               \
>  	{                                                                      \
> -		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
> +		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \
>  		.data.attr_type = 0,                                           \
>  	}
>  
> @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
>  
>  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
>  	{                                                                      \
> -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
>  		.data.attr_type = _attr_type                                   \
>  	}
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181006143316.GA23864%40armorer.
> For more options, visit https://groups.google.com/d/optout.

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

