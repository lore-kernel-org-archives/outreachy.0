X-GM-THRID: 6392835608825298944
X-Received: by 10.200.5.152 with SMTP id a24mr1685490qth.14.1488692188912;
        Sat, 04 Mar 2017 21:36:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls9482611otg.18.gmail; Sat, 04 Mar
 2017 21:36:28 -0800 (PST)
X-Received: by 10.129.1.197 with SMTP id 188mr4138745ywb.3.1488692188560;
        Sat, 04 Mar 2017 21:36:28 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s64si782039pfk.0.2017.03.04.21.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 21:36:28 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 187so2934113pgb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 21:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=K7nhxvnKZc2xiNogetDx3M9EyIlZKlfa4+wu0rrGktI=;
        b=AXEPyI0abV7p1jSqQb9IFgGhO4GJsrRqFdQ05w5VK1sptpbk6B6g4n/WRuxtVBFGQ3
         K8AD57Z2zShHm3WpyB61MSfR0O75f5JUXCJL0hiUv5Yx0SHYE0LG7EAtoT65fePKAhXo
         1/5gubd7yNY4qs4cw2yjEoZxIxr4T29c6+py7ekngpgQ1OGqJO5iCRYy7A5hJeB3Bg3O
         T1ZdG3/LRXbSpDazZ+lsbS5iQriPCytjbEyOXFLsmxD6JncsIRmRLiasuzWGgbx8Co7g
         ovMKXhSSfmTrIhdMXPxC3CGI3D8FLrQfyq9eZ1jKsGxE8UUsw9WTRvVOgel2BIFAMs57
         Xbsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=K7nhxvnKZc2xiNogetDx3M9EyIlZKlfa4+wu0rrGktI=;
        b=dvKfumDoIsL1lMJ8QgzQ6o4H23MXO9wabnMpG3zzL8qTLZfZ+zSNPg4HJHQ9RsUce3
         t9r3K8vPe5oOdL8Tp9+/xsWYG0ZXxiIJFlGBKOQnsHe0q1TxUOQ/mTgG12Qh2JyzGgp8
         y9tziycO4MugQG1ooea5XD3vv8LxZqF/+AMp2Yctk/OOLOWWFNQs086wE0ygd1rLu5z9
         UNaGSSMyYPEg6RnNyEK1gjv9ONxPc7Z4l4LBXD8xRv377WHKtRN5DJOgeQFt/ssdTRE7
         Y9A6zeGCy+TG8IB4tgXAgy5UrV969knqq9dRfCJz0Whr8q2lRm3AImeiuTzuwDE9Jv7q
         ygyg==
X-Gm-Message-State: AMke39nbtM+eBOzUJYynGL688QpANvlFRIHZ+FFyqQ8wDOKywDVVBiuJyAIv99zoxFQSAA==
X-Received: by 10.99.237.17 with SMTP id d17mr12636786pgi.82.1488692188269;
        Sat, 04 Mar 2017 21:36:28 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id o26sm32047851pgd.25.2017.03.04.21.36.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 21:36:27 -0800 (PST)
Date: Sat, 4 Mar 2017 21:36:25 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, sergio.paracuellos@gmail.com,
	juliana.orod@gmail.com, thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 4/6] staging: fbtft: Fix sparse
 warnings of incorrect type in assignment
Message-ID: <20170305053624.GA8079@d830.WORKGROUP>
References: <20170305050533.GA10169@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170305050533.GA10169@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 05, 2017 at 10:35:33AM +0530, simran singhal wrote:
> This patch fixes the following sparse warnings:
> 
> drivers/staging/fbtft/fbtft-io.c:74:29: warning: incorrect type in assignment (different base types)
> drivers/staging/fbtft/fbtft-io.c:74:29:    expected unsigned long long [unsigned] [long] [long long] [usertype] <noident>
> drivers/staging/fbtft/fbtft-io.c:74:29:    got restricted __be64 [usertype] <noident>
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  
>  v3:
>    -Change commit message
>    -Drop the changes did in fbtft-bus.c

Hi Simran, 

Sorry, I didn't mean to drop the broken part of fbtft, but rather to fix it.

Let's tidy up a few things:
- we can't send out one patch labelled as part of a patchset without
  resending the entire set.  That's why I was suggesting just abandoning
  the patchset, and beginning to rework this anew with only the fbtft
  driver in a single patch.
- I suggest keeping the -bus and -io file changes together.
- Look to correct what is wrong with fbtft-bus.c before sending a new
  patch.
- Patch Subject would be something like: use __be64 types for endian
  correctness (if this is what you end up doing - hint)

So, next step,
1) read up on endianess and propose how to change -bus.c.
   OK to check that idea/code snippet here without re-rolling the patch.

   https://kernelnewbies.org/EndianIssues
   and Vaishali also gave a good link to lwn.net article
   and to see some example fixes (in iio subsystem) do this:
	git log --pretty=oneline --abbrev-commit | grep iio | grep endian


2) build the patch.  At this point I say make it a first version and
   start totally fresh.  However, below the line --- where you usually
   put the version comments, you can add a comment stating that this
   was previously part of a patchset, but is now a single patch.
  
alisons


>   
>  drivers/staging/fbtft/fbtft-io.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
> index d868405..ffb9a3b 100644
> --- a/drivers/staging/fbtft/fbtft-io.c
> +++ b/drivers/staging/fbtft/fbtft-io.c
> @@ -71,7 +71,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
>  			src++;
>  		}
>  		tmp |= ((*src & 0x0100) ? 1 : 0);
> -		*(u64 *)dst = cpu_to_be64(tmp);
> +		*(__be64 *)dst = cpu_to_be64(tmp);
>  		dst += 8;
>  		*dst++ = (u8)(*src++ & 0x00FF);
>  		added++;
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305050533.GA10169%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.

