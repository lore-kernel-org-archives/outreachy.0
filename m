X-GM-THRID: 6950672534035496960
X-Received: by 2002:ac8:574f:: with SMTP id 15mr13726373qtx.50.1618397892858;
        Wed, 14 Apr 2021 03:58:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:622a:1447:: with SMTP id v7ls729678qtx.4.gmail; Wed, 14
 Apr 2021 03:58:12 -0700 (PDT)
X-Received: by 2002:ac8:7557:: with SMTP id b23mr17420214qtr.74.1618397891979;
        Wed, 14 Apr 2021 03:58:11 -0700 (PDT)
Received: by 2002:a05:620a:2494:b029:27a:5057:67cd with SMTP id i20-20020a05620a2494b029027a505767cdmsqkn;
        Wed, 14 Apr 2021 00:40:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxyzggDHH05gPphuBrXPSG41AtaUGwiBsqAf/Ph7GVfVJjGYUkFmqUnKeW7euwVVLIPJ07Y
X-Received: by 2002:a1c:3587:: with SMTP id c129mr1576669wma.80.1618386039873;
        Wed, 14 Apr 2021 00:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618386039; cv=none;
        d=google.com; s=arc-20160816;
        b=N72fAnMCDNRjB9AAf7ifGXcYVWNBvOCSJxqPvmLCmXbtsfu9IzkVSrZT2wCye8Ybbx
         rn9SFfg7OUDo+/iJt8AmL5zqrXcClfZgIPHYP3+PR/FIviwzp7EtDQTq2I7SvKFUWnnl
         2Q0qkiL6Q1HVpSe9xABFAkAVy7fiFou/g1dTyGoXSk9AZBCN92Dprs3uuHLLZtMLwU1P
         UIwdjx4GThwmpShg9gcxbne2oBdFjeBKj2ZDtUWk67WIZY1hzYGHjEEflIsbtSDrgJyU
         NNNfNT16Sk3hOPGy5g0xgz4UhWk1HNSpeRB+eRGMxDtkEajSWYVkK3v3M+vzax5ghQtJ
         xiSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bu4zAf2jISjqqt34xkjaMJooW0UMSg6yw1pdyWLERQ4=;
        b=sR/HHCm8jx6XqONQaFqXilW8gub4YTurV1jHtL6k28nZqRjF6DVajlamzPg/0iI4LD
         TuK6x8/h74MzEtICbq3g6YmJP117GvAPrKWNU8Qao9flqOyn2jF6GL5Gyw25KDu8xwcs
         ffxXQY2/SKDDbsJhulhVt1fnoN6b8VkUeTKJpSv3RJvnKbEbhHhIKOaOZx9iSkBSUKMs
         eWtyOElJ9Oj7zE2IN66vPsRj+ZVXdSJrbvzfIBbSeRKipiXLZ7WwlDT6S4dLHZi10Ph8
         HxZ4GmJcfBshqEUCZ9ZuLHCLVPEckSTZSyRG8JvAfwex5FcQcdQSHGk3SyyLFK6wjgE5
         yLOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rvw2CCqY;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fabioaiuto83@gmail.com>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id n35si306657wmp.0.2021.04.14.00.40.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 00:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rvw2CCqY;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32f.google.com with SMTP id 12so10033606wmf.5
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 00:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bu4zAf2jISjqqt34xkjaMJooW0UMSg6yw1pdyWLERQ4=;
        b=Rvw2CCqYnzRr0eG8NuAMtT86cq+1bEzMrsRbG6hbIXN7uJKWc0euT2+JOMt8ILTr4L
         Cd3eZiNGMOpl+4l7WqogGNJpv2074iCeVEU8cDxPdvxO+x1Y7VPk1VRy2SlZXVk9V2yi
         iHtpYqRgEPipjDh8y7qSza7EmcZd0CM6Im/M0JmEutemDYt6Dxv1gnYDLAbHs5jO19Gt
         SdmPcITVG2L0ZoynGmwkpTrX8FqsTIrAvHYhZt45oAG7Eb2RSUSl2qjj38bYYqsDCAi9
         8whp+sfHixF3ajigPqaK4BjtJfJS4N+avSx+hEXmeRPSsBOYn/NGAVl/ZxN8c2vhrAJ/
         YKsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bu4zAf2jISjqqt34xkjaMJooW0UMSg6yw1pdyWLERQ4=;
        b=C9DSLD6Z6is/yvV24flK7uB7zzKLJoB8Y6vrk2GcUPVPyJzrKZ8CO6bIrnW4qdSsD3
         D4E6gLQn073XloVkjiIcJcM89wVCLiC35lrNfLRTJR8oSOWBq1AjsCOWqowJgo7Q7rXR
         vgS8vXm1pWd46zM6xK7wmm55OSuOrDieDQOHA2rMW9+9D2pXL+LbqWEZ7aA0kq7eprBb
         qS7fWTbxhGlDvwNflRX7+ZZlNt6S6dt8PkuKyRYCT5k+iGwL7tzXpuW5GaZ8OouCgwgA
         LSiaj3UfUTPNpUYVEXP+VZf+VZlUNIXxpB5UssNCj4Zbb+4Af0ayBPoYjS3/t4L6UCJV
         +E+g==
X-Gm-Message-State: AOAM531103dHx9L9x9Xt1u6/FbxVngYVxYN7KG3YZNm6Gm/Kpa4n3AGW
	Blu8FDCZpFA3w2H4tkpbmX8=
X-Received: by 2002:a1c:1f92:: with SMTP id f140mr1585117wmf.108.1618386039509;
        Wed, 14 Apr 2021 00:40:39 -0700 (PDT)
Return-Path: <fabioaiuto83@gmail.com>
Received: from agape.jhs ([5.171.25.35])
        by smtp.gmail.com with ESMTPSA id s8sm22226460wrn.97.2021.04.14.00.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 00:40:39 -0700 (PDT)
Date: Wed, 14 Apr 2021 09:40:36 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless
 led_blink_hdl()
Message-ID: <20210414074035.GA1880@agape.jhs>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com>
 <7008359.Jy8utYDuns@linux.local>
 <20210413194844.GR2531743@casper.infradead.org>
 <3505455.GpAHCVcAZI@linux.local>
 <20210414052150.GO6021@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414052150.GO6021@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Apr 14, 2021 at 08:21:50AM +0300, Dan Carpenter wrote:
> On Tue, Apr 13, 2021 at 10:08:32PM +0200, Fabio M. De Francesco wrote:
> > On Tuesday, April 13, 2021 9:48:44 PM CEST Matthew Wilcox wrote:
> > > On Tue, Apr 13, 2021 at 09:45:03PM +0200, Fabio M. De Francesco wrote:
> > > > 1) The driver doesn't call that function from anywhere else than the
> > > > macro. 2) You have explained that the macro add its symbol to a slot
> > > > in an array that would shift all the subsequent elements down if that
> > > > macro is not used exactly in the line where it is.
> > > > 3) Dan Carpenter said that that array is full of null functions (or
> > > > empty slots?).
> > > > 
> > > > Unless that function is called anonymously dereferencing its address
> > > > from the position it occupies in the array, I'm not able to see what
> > > > else means can any caller use.
> > > > 
> > > > I know I have much less experience than you with C: what can go wrong?
> > > 
> > > Here's where the driver calls that function:
> > > 
> > > $ git grep wlancmds drivers/staging/rtl8723bs/
> > > drivers/staging/rtl8723bs/core/rtw_cmd.c:static struct cmd_hdl wlancmds[]
> > > = { drivers/staging/rtl8723bs/core/rtw_cmd.c:               if
> > > (pcmd->cmdcode < ARRAY_SIZE(wlancmds)) {
> > > drivers/staging/rtl8723bs/core/rtw_cmd.c:                       cmd_hdl
> > > = wlancmds[pcmd->cmdcode].h2cfuns;
> > >
> > OK, I had imagined an anonymous call from its location in the array (as I 
> > wrote in the last phrase of my message). However, I thought that it could 
> > have been an improbable possibility, not a real one.
> > 
> > Linux uses a lot of interesting ideas that newcomers like me should learn. 
> > Things here are trickier than they appear at first sight.
> 
> One trick would be to build the Smatch cross function database.
> 
> https://www.spinics.net/lists/smatch/msg00568.html
> 
> Then you could do:
> 
> $ ~/path/to/smatch_data/db/smdb.py led_blink_hdl
> file | caller | function | type | parameter | key | value |
> drivers/staging/rtl8723bs/core/rtw_cmd.c |       rtw_cmd_thread | rtw_cmd_thread ptr cmd_hdl |           INTERNAL | -1 |                 | uchar(*)(struct adapter*, uchar*)
> drivers/staging/rtl8188eu/core/rtw_cmd.c |       rtw_cmd_thread | rtw_cmd_thread ptr cmd_hdl |           INTERNAL | -1 |                 | uchar(*)(struct adapter*, uchar*)
> drivers/staging/rtl8188eu/core/rtw_cmd.c |       rtw_cmd_thread | rtw_cmd_thread ptr cmd_hdl |           BUF_SIZE |  1 |            pbuf | 1,4,6,8,12,14,16,19-20,23-24,48,740,884,892,900,960
> 
> 
> Which says that led_blink_hdl() is called as a function pointer called
> "cmd_hdl" from rtw_cmd_thread().
> 
> Hm...  It says it can be called from either rtw_cmd_thread() function
> (the rtl8723bs or rtl8188eu version) which is not ideal.  But also
> basically harmless so whatever...
> 
> regards,
> dan carpenter
> 

very powerful tool.

I tried this:

fabio@agape:~/src/git/kernels/staging$ ~/src/git/smatch/smatch_data/db/smdb.py led_blink_hdl
Traceback (most recent call last):
  File "/home/fabio/src/git/smatch/smatch_data/db/smdb.py", line 725, in <module>
    print_caller_info("", func)
  File "/home/fabio/src/git/smatch/smatch_data/db/smdb.py", line 366, in print_caller_info
    ptrs = get_function_pointers(func)
  File "/home/fabio/src/git/smatch/smatch_data/db/smdb.py", line 53, in get_function_pointers
    get_function_pointers_helper(func)
  File "/home/fabio/src/git/smatch/smatch_data/db/smdb.py", line 38, in get_function_pointers_helper
    cur.execute("select distinct ptr from function_ptr where function = '%s';" %(func))
sqlite3.OperationalError: no such table: function_ptr

I run smatch version 1.71 on Debian Buster machine

what's happened?

thanks in advance,

fabio

