X-GM-THRID: 6463854288984604672
X-Received: by 10.46.99.1 with SMTP id x1mr389639ljb.11.1505149045133;
        Mon, 11 Sep 2017 09:57:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.73 with SMTP id x70ls1129197wma.1.canary-gmail; Mon, 11
 Sep 2017 09:57:23 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDiT9BxAmde40TgEl+yIS0KJ+yKNAkefN2EwRgYap5H9Ix/t6YNHgTRKFDl6EJ9MRQ9IHJl
X-Received: by 10.28.29.8 with SMTP id d8mr898090wmd.27.1505149043905;
        Mon, 11 Sep 2017 09:57:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505149043; cv=none;
        d=google.com; s=arc-20160816;
        b=SSnMUg5UFluT7RIwAEwEiVqjQqNX5YAqMek8AWk/+CfaEdBQnwJi4r8SWcgEj2ck4X
         NVvsGRHYOhMX306rtkzGli0rmgGI5qFDFeQ//EiK92KqboDsy1a72PeDmh121o5ms7y9
         dIKymkqd40EmnBo2DC3BIJChvYgLxG+QM0nYOXOmg2PSSZNqM1bVPKLhe8Wso3dAz1r2
         DfdNyYmQuTsqn/VqhPULN2hwFvGoBUDtWe5dY1LhP+7nlfh6BbdJ2bZkYnHA2F/AzOf/
         R+4RhTqPn79xCGVvE/3WTFqrCyiwpsIoQUkkEPsgq13sxprpqpfOGINCR3aCAwH9ApAS
         pxog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=GiC3+ufq7Bk5IduJXim+7pkrBX0JXXRNLV3C/movoZg=;
        b=B4h0Kclj7nmEf4BbveYXKRR+iOR+C5sAkXGFN9ToHawTi8Ap1BcPXOh4sqdYLeAZi1
         EyDkLReHbW/E1z29spp6+3ouqouBhPbvPOAq4NtxOUguEB+mw2HMgVcymtjWwQGUdEBF
         Lx5nqdIIWr2zxePvYdhwwCH1oaf1eJjGV5h4/BnpzPyg9j2lG820nWB33h7ft5hf2Z9z
         2CBDFtaJxdrGC1N48T5GglTlfek95kWxiE3OcDBxTKD1G/4fTIft2t8b6lAioCqxmW76
         xVxHSvpIB9NTPzxNDZ4cIumvGI44moWKXqKe1u0hyzSa6GVV97B1sm8lbfWYBw0MSDq7
         lgCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id b203si545412wmh.4.2017.09.11.09.57.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:57:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 68D909EE;
	Mon, 11 Sep 2017 16:57:22 +0000 (UTC)
Date: Mon, 11 Sep 2017 09:57:21 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] Staging: rtlwifi: Remove unnecessary 'out of memory'
 message.
Message-ID: <20170911165721.GA20428@kroah.com>
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
 <20170911163210.GA26981@kroah.com>
 <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Mon, Sep 11, 2017 at 09:48:15PM +0530, Shreeya Patel wrote:
> 

Please turn html email off in your email client, the kernel mailing
lists will reject it.

> On Monday 11 September 2017 10:02 PM, Greg KH wrote:
 
>     This patch is sent corrupted (leading space is gone), and git doesn't
>     like it.  Can you please fix it up and resend?
> 
> Hello sir,
> 
> If i am not removing the leading spaces then checkpatch is showing me errors
> for trailing whitespace.

That is correct.

> But there are no leading spaces present in the file which i have modified.
> When i convert my changes into the patch, the whitespace errors are shown up.
> Can you please help me with this to make me understand why this is happening?

The problem isn't in the original file, but in the patch format itself
that you sent.  What ever tool you used, stripped off the leading space,
making it impossible to apply.  So please fix that.

Try emailing the patch to yourself and applying it to ensure you are
doing this correctly.

thanks,

greg k-h

