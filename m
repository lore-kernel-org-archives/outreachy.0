X-GM-THRID: 6608856202267852800
X-Received: by 2002:a63:ed47:: with SMTP id m7-v6mr5019788pgk.5.1538762211869;
        Fri, 05 Oct 2018 10:56:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:740b:: with SMTP id g11-v6ls3776075pll.0.gmail; Fri,
 05 Oct 2018 10:56:51 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63Vj34qOr0w4/5DdSBYEmaYURQiOnyx3PhZAG02V5rZb8MFf3/m0LTtL1iUcBgE5rCJ7ZWz
X-Received: by 2002:a17:902:ba96:: with SMTP id k22-v6mr6115624pls.17.1538762211238;
        Fri, 05 Oct 2018 10:56:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538762211; cv=none;
        d=google.com; s=arc-20160816;
        b=E/mFqDuob/LWhFDsgKMQKZwshn/OtcUPNL1TFUWUOCqx5l1Neq0HQfma/TPRcnfrd5
         D+9n3LczGBZBxwRnhwI953vse6tNCbfuKwG/4yf3nNNZW/E0hF8+0gtwlzIRT+Ie8eky
         JPD31nt+W1EctjoT/M4s4lIVTibU4xP9Tq/Jtg11/ediZ+gp5mSUYS6Q4YeHgW3mVXri
         oPZVXHA5A/tXorVMiFtWDb6RWhKX4YNr8ObLj13Mzt0mTYatdc3ihYMC7X9R0bWe8yP2
         7XRJN9ZuhlHFtIt4AyfZ31SC52JsWH4Pa8M8NRDH93/Iitvn3jk0ZldDj7WQJvliLV6z
         x4ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CSvp3ZXLOf8pGTbMjzchZ7dtwtRhzhgL7h9nocj8ZBg=;
        b=XrXE5da/Jugn96okt2pSNJPFPNxSaO8MFGJCQ8qjMwB+uzhysFWcaybTXhcsTn4NVz
         ejVyiNMWJdZVtZok70k7eVraMa0dlUMkIoMhK/ArgJTyfD1ch6HRugghGiNcY16PZSVg
         /RDBiB+85wtFhZrGU/ZRpVkb5rsTQUM67Rv4zxpVdlmQHhwHiiJsbzcFVpOWiftj7LVQ
         0p1iqDWRhd1CaV4aJUB8u51nuvATwO4Jg9kAW1ewCX+0GE/ce8fE0v7feWpYIefDrAn3
         nzYYzLuTKnyYaRsakxFt6xMkT1wJRqauGD1uximYq7cbnIdK6zJbYnv08yFtq219ao1D
         mv0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qJoQXYMB;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id 70-v6si203749pla.1.2018.10.05.10.56.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 10:56:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qJoQXYMB;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62b.google.com with SMTP id 30-v6so7182273plb.10
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 10:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CSvp3ZXLOf8pGTbMjzchZ7dtwtRhzhgL7h9nocj8ZBg=;
        b=qJoQXYMBJSfYcOTkaoMn9o+AzCAndypxEVS+td3uZEu1Y7514umzilcwSO0gS5v+gl
         BQI619fm199e0/IByDql/fGmGYzcOzR0/3FykBNzOqOFY1hDFk8LuFT86cU6o5E13YQa
         50TIicnfZEOGJ7tMGcaPeuizg7JRZ4kAbAFStSzpsZQdiJmge1jXRS+Gfvsc084FC1/S
         CjYr9LloY3+cl5QEt9bzsmxr3Rer7mhh7fV0+GY5ukL063RgPyYVElH7fWOaEJReEm+g
         xgR+3TbKia51VoWw7MUOye/7hUcNmXhUBuhQ9vqy8au1plLDpxcRrkzpF/m6gAJcCKxn
         jbMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CSvp3ZXLOf8pGTbMjzchZ7dtwtRhzhgL7h9nocj8ZBg=;
        b=EfK+6O9+sQiNvjt2v8H0pif8O4HqAu8IKcpU2mWN2aCjB0YBg+94dY/2i9yPWWXZj1
         j8c0KNh+lQVSEJeJrRFYyQ1pUmLhmqsyg8OB8wzTntPE2ctbwlQ5Ye1mDmCm6pHxLjT/
         K6khxZsK/0uh0Blpv6Yg/9Xr1VN0uOVvyKb4OunRxbwSJR632040T+YMmETP3OalDWT8
         7vKUEtao02g1/nqd68bJiir0jEeCiuCBtNkO0pTmqJIP8OMKLRxue45rWDnPscBKd9C6
         KMbx/ximOEB5oGtEY9yPvQN4hEqqYJ8y+fkJZh/Smf/cXI+mpguSm8KUommYNyauj1Pv
         tfxA==
X-Gm-Message-State: ABuFfohcXbhB/xYnen+bLqgSeruKRYWKNbLHJ67YhdHqlNAXWyKjUagB
	IflX4NFinE04iCi9qu55YZQ=
X-Received: by 2002:a17:902:82c9:: with SMTP id u9-v6mr12580213plz.320.1538762210703;
        Fri, 05 Oct 2018 10:56:50 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id c28-v6sm32975075pfk.48.2018.10.05.10.56.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 05 Oct 2018 10:56:49 -0700 (PDT)
Date: Fri, 5 Oct 2018 23:26:44 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH] staging: comedi:
 comedi_pci.h: prefer a maximum 75 chars per line
Message-ID: <20181005175643.GA30924@himanshu-Vostro-3559>
References: <5bb75fb1.1c69fb81.8a08c.4eba@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5bb75fb1.1c69fb81.8a08c.4eba@mx.google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Oct 05, 2018 at 06:27:18PM +0530, Bhanusree Pola wrote:
> comedi_pci_auto_config() function prototype is exceeding more than 75 characters per line.

Run checkpatch on your generated patch too before sending.
Wrap commit log to 75 characters as well.

> Adjusted to less than 75 characters to improve readability.
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---

Send new verion with a changelog here.

>  drivers/staging/comedi/comedi_pci.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
> index 4e06944..5cb7cd7 100644
> --- a/drivers/staging/comedi/comedi_pci.h
> +++ b/drivers/staging/comedi/comedi_pci.h
> @@ -31,8 +31,8 @@ int comedi_pci_enable(struct comedi_device *dev);
>  void comedi_pci_disable(struct comedi_device *dev);
>  void comedi_pci_detach(struct comedi_device *dev);
>  
> -int comedi_pci_auto_config(struct pci_dev *pcidev, struct comedi_driver *driver,
> -			   unsigned long context);
> +int comedi_pci_auto_config(struct pci_dev *pcidev, 
> +		struct comedi_driver *driver,unsigned long context);

No! Adjust arguments to match open parentheses.

Something like the following:

int comedi_pci_auto_config(struct pci_dev *pcidev,
			   struct comedi_driver *driver,unsigned long context);


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

