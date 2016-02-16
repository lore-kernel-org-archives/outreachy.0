X-GM-THRID: 6251571233793507328
X-Received: by 10.182.63.17 with SMTP id c17mr19355546obs.39.1455603507731;
        Mon, 15 Feb 2016 22:18:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.102 with SMTP id u93ls2711019qgu.45.gmail; Mon, 15 Feb
 2016 22:18:25 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr20473979ywd.48.1455603505440;
        Mon, 15 Feb 2016 22:18:25 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id 79si3824236pft.0.2016.02.15.22.18.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 22:18:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id yy13so97559106pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 22:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=rIlHgaqNMu64cVkmSzAs8dxDXJcE9dowOQVNGPmQX4Y=;
        b=vPlB1d+2WzOvLkVJfJIavoLrKzp4Iw+QfeioXY/ocOIopIanC/6TTSFJn6GdnsSwLN
         uDGE8U7QehV0+l12TEZoEzMTOn72+DVIVVPwEUtcFivUGS64Er3kQSo5EuWkbUACnC9F
         uMZxtkEvfyT9jOujbdfC1DQkJp/uoMi9ezplqyhVcg6wVkCbxnqnXQ8nkhaBYCrCrn7q
         gPckwk1IDynDMlzxABeJ1+1VfBouBwoZHfHATBbtRiH4h0x+xpTuaFaTlXyiUdPCzWsU
         6ZUr1d0kmQA0zfpzEyYUdPmgwGe1yYecJ4pmLYycZSXJqIsbPSjn+JpkVPTa+Ck6KDtp
         fDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=rIlHgaqNMu64cVkmSzAs8dxDXJcE9dowOQVNGPmQX4Y=;
        b=VfLc3Szb7EwaqzJwwL1/u+OJdWyWz6jhysNeAABJo2YM5qPHccPzSa1G9Bxfi6wN01
         +gkASaHzgmAXINGLF1xImzlmaD+xXY+3QbnOW+AH4dQ/pfY1AaqdHVljQhwINkKvgo95
         IIGb/xNlx0UYPkowYp1TYkUZ14piGlZjKJ5bYuDWQKzyl+ISXVYEPe2tHjkoJ4N/6LDu
         MnBbqLnjz7SDQ4wUBhP6ZUW9cfKqklEjBgrePC6TOyH20tsQvRJpdgIhx0ZEE2oIst7l
         2CMJ4ExKvzLP9FEjUZcz1FuvRiNPaOemZxZi9jLfHSUBtxpiDGYv+ayhhkWONjtN+FTP
         4uzw==
X-Gm-Message-State: AG10YOR4rcufLjJbrqSyIkKYf8nre72yJc3qQvFZaxhDpmtAb4irpcaoTZsbbvMdxa5XvA==
X-Received: by 10.67.8.2 with SMTP id dg2mr29569263pad.30.1455603505289;
        Mon, 15 Feb 2016 22:18:25 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.207.31])
        by smtp.gmail.com with ESMTPSA id ey2sm42730645pab.2.2016.02.15.22.18.23
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 22:18:24 -0800 (PST)
Date: Tue, 16 Feb 2016 11:48:15 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: llite: Remove
 IS_ERR test
Message-ID: <20160216061815.GA13906@sudip-pc>
References: <20160215172909.GA24050@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160215172909.GA24050@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Feb 15, 2016 at 10:59:10PM +0530, Amitoj Kaur Chawla wrote:
> Remove IS_ERR tests as ll_iget() function can return a ERR_PTR.
> 
> This patch also removes checkpatch warnings:
> Comparison to NULL could be written "!root"
> Comparison to NULL could be written "!inode"
> 
> Additionally, reinitialising root and inode to NULL has been removed
> since they have already been tested for the same.
> 
> Lastly, in the first case, the goto has been removed since iput(root)
> will return nothing for a NULL pointer.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Remove IS_ERR test instead of replacing it with
>          IS_ERR_OR_NULL

I think I missed the reviews in the v1 of your patch.

ll_iget() returns inode or NULL, inode can be ERR_PTR(rc), so usually we
should be checking for the error with IS_ERR_OR_NULL(). Why is IS_ERR()
been removed? what am i missing here?

regards
sudip

