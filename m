X-GM-THRID: 6670524587430641664
X-Received: by 2002:a02:13ca:: with SMTP id 193mr4461262jaz.117.1553203252595;
        Thu, 21 Mar 2019 14:20:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls2910225ioc.3.gmail; Thu, 21 Mar
 2019 14:20:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWVU1GqqHq6saMkVd1cJNfGtpKvq8s3mtvFne9t+/+0JM1Va+dunBd7iL2PmJdB88ouIDE
X-Received: by 2002:a5d:9903:: with SMTP id x3mr4795171iol.155.1553203251797;
        Thu, 21 Mar 2019 14:20:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553203251; cv=none;
        d=google.com; s=arc-20160816;
        b=cLgU2wCe4A5xv5HO6oTUmnd5m7fw2/OQhgYOnjLHPP5f+Eh4wu68FeHDl7Kwt6D1OU
         bWUrllW9OOUSF1eHoGxrRsZfeu8/Sf2++bv2eWnvhvrKOAesbDZthJX4js7YOc0mQU0E
         3gPj2vrtS2knrZMQ8gw66QO3etZfwpVDGbxuqEz8OCs2+bYRHjpx16KfuAaQpmNYYti8
         nh98amH+7aPQG7Uij67AT17z2xe0kC8n0njlOn5IJJJcEuRs0nIRVIyjgb32tfqVNR+8
         5vlqvmitZHAukelzblJV7oy6kakHgXSNzgXANf5ORf8xPFBzppXPMUitEt8bd/AqnVd4
         i84w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=238WT7kt9K+1PgosKgjHnVoDIqbACtRVzV5C/RKfsJ0=;
        b=XxK/hDlRvJM3OzcXiWrUVp7QGPspTu2xZRxek5tXNJm4nSzG49KMNQKcSLc7x75XhT
         D5P5bT+CsaUEFL0/YSDLp5Qo4vwmPzAs2ZqqK5x/IwNjPi+1Y4i9KRN3rfnOQLI2ZhpK
         rFHQbJ582DK2nfR4R13mc6jhgDu4kUMIpYD76UIM8hcfOHddWr6qEZysWzexD8pm57WK
         /GXTsH7ICUYu1Op0WzxD7HmAkoma2J3Q3aa7OrDE7FF+doKuF7881a2eQbeO+bXOmSi2
         iHo7q+xDxHLzKvlrkdDNr1GGdgNAVLzEk/TMPpobA4WXpwnLxO8rvund4qVr2IB+9mY9
         IOZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZdNmVWii;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id t17si549058itb.2.2019.03.21.14.20.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:20:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZdNmVWii;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd36.google.com with SMTP id v10so16771iom.8
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 14:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=238WT7kt9K+1PgosKgjHnVoDIqbACtRVzV5C/RKfsJ0=;
        b=ZdNmVWiiCk+nunGBOj6vE0sq0lUZjq9fda31RLZ4/WCm9CsfvHqOMHQFVN9Zj2ps75
         1hCxPYHiFQVPTH2suKYVlPSAx2E5flHdRfx1OxUvcQ/oxU42IP9fS5rCeOLPNTXnkIAJ
         h21CNW0HLY7rSxa2GHBm/uQzAICkRCiS/AmtqdoiCvwhEp+fk+i62Sms5dxzbFa/w1Zi
         nDpj+klPd7/SaL/Bna9S6QXro0ukVQ2++HuTf8HP+P7lBcdLPpIoTLqmjOOLje5Aytu0
         4njSKekq6Rc5zFj+NPguD5KLlTA1IciXhnbXlqKy/6Bq2peLXs7YPMyRV21auNXLYMn7
         ivIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=238WT7kt9K+1PgosKgjHnVoDIqbACtRVzV5C/RKfsJ0=;
        b=r9EiJ/uBZuAgBFPr2fQvvRAV7syms9CZqM/iQXukCFdRc602UYE0EYoh364ZsiIFIq
         f0/4Gonr1yWDOmwn66XhiOnvUE+AeYHlmiJHgFXVl3zyYKS6jwiBUFxJQXGRqR+s3pex
         WgCcsoDIo+G8eJtan+8zPNX+Jn7qtmQEbayCfMnHox5w/WtOuFACEaxJsOWDuA7GajdM
         HR5tosNAgasfbz03NOEvu5m+X5VD+OF0iQyOxwn6mCS9gXqW1ivZMj6bPZV9pvL0cOyr
         64VnBdmRQf0qLr84SrL/WWYLe3nvHx0HCFM+PLsrMabxZWSz7a2GDDIm96Klgvw/wd/T
         LrTg==
X-Gm-Message-State: APjAAAUlM2Wk1eovIfppw25Lyw6cq5rsZUcRwqCk5aMzvDbCQA74qfKY
	fq43W3ciXpApDSw6nUnugA==
X-Received: by 2002:a6b:f90c:: with SMTP id j12mr4322425iog.53.1553203251595;
        Thu, 21 Mar 2019 14:20:51 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from Test-Virtual-Machine (CPEac202e096223-CMac202e096220.cpe.net.cable.rogers.com. [99.244.27.167])
        by smtp.gmail.com with ESMTPSA id u197sm402991itb.9.2019.03.21.14.20.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 14:20:51 -0700 (PDT)
Date: Thu, 21 Mar 2019 17:20:49 -0400
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: wlan-ng: Correct typo in comment message
Message-ID: <20190321212049.GC17315@Test-Virtual-Machine>
References: <cover.1553099252.git.brandonbonaby94@gmail.com>
 <3b8dbd33fd4b4679d4303ff61699748a3e007954.1553099252.git.brandonbonaby94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3b8dbd33fd4b4679d4303ff61699748a3e007954.1553099252.git.brandonbonaby94@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 20, 2019 at 12:53:23PM -0400, Branden Bonaby wrote:
> Add space between two words for better readability in the
> comments.
> 
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x_usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> index 75acdfc30f6a..81a6b0324641 100644
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -1,7 +1,7 @@
>  /* SPDX-License-Identifier: (GPL-2.0 OR MPL-1.1) */
>  /* src/prism2/driver/hfa384x_usb.c
>   *
> - * Functions that talk to the USB variantof the Intersil hfa384x MAC
> + * Functions that talk to the USB variant of the Intersil hfa384x MAC
>   *
>   * Copyright (C) 1999 AbsoluteValue Systems, Inc.  All Rights Reserved.
>   * --------------------------------------------------------------------
> -- 
> 2.17.1
>

Hi

Please ignore this, it was sent again after resuming my VM.
The patch was already accepted 

thank you

