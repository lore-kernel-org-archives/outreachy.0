X-GM-THRID: 6392612605640310784
X-Received: by 10.129.173.101 with SMTP id l37mr3064669ywk.73.1488398051890;
        Wed, 01 Mar 2017 11:54:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.151 with SMTP id u23ls1425781iou.27.gmail; Wed, 01 Mar
 2017 11:54:11 -0800 (PST)
X-Received: by 10.99.97.83 with SMTP id v80mr3634716pgb.137.1488398051078;
        Wed, 01 Mar 2017 11:54:11 -0800 (PST)
Received: by 10.202.215.6 with SMTP id o6msoig;
        Wed, 1 Mar 2017 11:52:49 -0800 (PST)
X-Received: by 10.157.56.118 with SMTP id r51mr3140766otd.94.1488397968829;
        Wed, 01 Mar 2017 11:52:48 -0800 (PST)
Return-Path: <ddaney.cavm@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si960604pfa.4.2017.03.01.11.52.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 11:52:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ddaney.cavm@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ddaney.cavm@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=ddaney.cavm@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b5so2038212pfa.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 11:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=72p6mpMLPxngLz6wcOf5o7a6mTjGMNaAkOtYWp7Q3nw=;
        b=eTKoOXItSkcu+jHzNOkmVV/MSssfNd09jys6XkljPJVUlKVCygHxLNN/8La89fjOiB
         pGe7GWwW8KwznKiuSE6tr80zmT+2VA9OIDTnVJdeVa+zZeyNLfSH6u6qyY+FESOgT3It
         sWLFWoF0S+Z1tOePcseWaifYX7YYoFdUTHfH+ZCfsO9axYmNb4gTjgNuAkuecAcWjbr+
         LJ+A6vBrcEHDPu6rgnX15VQ6TFKDGqTdtr0AcZRKEMl1te2ZBM1jR5/UNEhGsGw8iEOt
         QpZkgfy/VTfkdcIC1pt4knsoomRIw4m270cmv0Nn+bG4DVllNzO0sC+qyhI6QogO9E6i
         EGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=72p6mpMLPxngLz6wcOf5o7a6mTjGMNaAkOtYWp7Q3nw=;
        b=gFOyw+y04Lub916xCifrWjZ6W13kN9IUqjpQrMPPwUVN3QPytjFTr/1ubMjLHQ4Bxh
         3+z1ajWmwLB/M+L136Q52hY8JRFJwECQsVx+2wkP4SRSTThzLVzushC+LO36V7N+ULRz
         2AZcWeaTxXqMVrQPnYNRU2OLZOZVH6iN4mK8IoAe/klBS7xwQvbtBOltkzeW7qPLNmZW
         2Q78naiyHmx7WaOZO1+jQpBEIm8/prDIoU55XYFa5z5dU/WGWSXyiRqh53teAF9BoXzY
         4v3sF7Q5E7O05Gna/rda+VkOymN+78R8nAieBAJNrCywAA3LnRDwMnk2BN1UuuxY2pO8
         uQrA==
X-Gm-Message-State: AMke39lbRfubRhorZ1XFtjxZpDQGfBsiH37O9swTaOCZtioRKdRKL476j6ZEaaC9UWr4TA==
X-Received: by 10.99.0.23 with SMTP id 23mr10687052pga.139.1488397968547;
        Wed, 01 Mar 2017 11:52:48 -0800 (PST)
Return-Path: <ddaney.cavm@gmail.com>
Received: from ddl.caveonetworks.com (50-233-148-156-static.hfc.comcastbusiness.net. [50.233.148.156])
        by smtp.googlemail.com with ESMTPSA id r134sm12160947pfr.83.2017.03.01.11.52.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 11:52:47 -0800 (PST)
Subject: Re: [PATCH] staging: speakup: Comparison to NULL could be written
To: Arushi Singhal <arushisinghal19971997@gmail.com>, w.d.hubbs@gmail.com
References: <20170301192140.GA30680@arushi-HP-Pavilion-Notebook>
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: David Daney <ddaney.cavm@gmail.com>
Message-ID: <eed05efd-9251-3b18-32ea-0b4fc1228956@gmail.com>
Date: Wed, 1 Mar 2017 11:52:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170301192140.GA30680@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2017 11:21 AM, Arushi Singhal wrote:
> Fixed coding style for null comparisons in speakup driver to be more
> consistant with the rest of the kernel coding style.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/fakekey.c  |  2 +-
>  drivers/staging/speakup/kobjects.c |  2 +-
>  drivers/staging/speakup/main.c     | 38 +++++++++++++++++++-------------------
>  3 files changed, 21 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/staging/speakup/fakekey.c b/drivers/staging/speakup/fakekey.c
> index d76da0a1382c..294c74b47224 100644
> --- a/drivers/staging/speakup/fakekey.c
> +++ b/drivers/staging/speakup/fakekey.c
> @@ -56,7 +56,7 @@ int speakup_add_virtual_keyboard(void)
>
>  void speakup_remove_virtual_keyboard(void)
>  {
> -	if (virt_keyboard != NULL) {
> +	if (virt_keyboard) {
>  		input_unregister_device(virt_keyboard);
>  		virt_keyboard = NULL;
>  	}
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 5d871ec3693c..fdd6e4b33951 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -391,7 +391,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
>  		len--;
>  	new_synth_name[len] = '\0';
>  	spk_strlwr(new_synth_name);
> -	if ((synth != NULL) && (!strcmp(new_synth_name, synth->name))) {
> +	if ((synth) && (!strcmp(new_synth_name, synth->name))) {

With the change, the parenthesis are not needed.  In fact were then 
needed before?  There are two sets of unneeded parenthesis, get rid of 
them both.



