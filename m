X-GM-THRID: 6471467521247543296
X-Received: by 10.28.143.200 with SMTP id r191mr2387208wmd.1.1507047243091;
        Tue, 03 Oct 2017 09:14:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.195.204 with SMTP id d12ls4186065wrg.14.gmail; Tue, 03 Oct
 2017 09:14:02 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAcw5KU8jEJLpdapu6VhaS8RXugvpT2msWTmHzqjXtHyVHuoDUXciGd2zlmtlujxyYbPwdX
X-Received: by 10.223.175.212 with SMTP id y20mr1532905wrd.8.1507047242133;
        Tue, 03 Oct 2017 09:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507047242; cv=none;
        d=google.com; s=arc-20160816;
        b=bGDzcwu+QT2oG5PA82Dyl5wFMDCqJWsmtDsY1aZn5rXdDY4diwuOsDFzdzlBgZ/K5/
         aLIIGZYJI9el6m7gN0EIVpRQIi94j4P0UYcUmLjj09YuUc1cFrlVGJvsmxv0ENoWM1NM
         dRo9TwBxpfC6ciPfN3zd7L1S9ODFmTD39gbB7ahyBZpTMxvBjn8AWqxzFN7xuKweFC0S
         kTKSM+KP6ZRUyZDlaXK2huQRzior12fRdNqrnsXHIYWX4jHyI0okYJZi4LN7Lb2gXn+a
         T2drAGCfA/M5uwLo2/m4cdm4Kbg8p1kd59paJN1Nv4kzGPYgPr1VAEf9f/z3gCfIhFaA
         XGhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=cDDVoMfZS8cmfrYCeMgez4ttG814uOpotQaHqtddStM=;
        b=vvrQBTZFqT1hieWEwKHBfL83b5SdcKPej5sZP/NxSJffoZYMGTFvYxVj0JdmcL4A77
         q3rPIUItlhRANSYQXwkbVAi8dEWTkPSfykDflt9Bpkl+5CIsxLYq32aeH+ssGwVr3UZ2
         YXl2GO+TgAdW094/s9aX19rbtLPdq9EUekoGFmmU5IcYyra06DyyTXgEg1nSdUV0e7sx
         imgO2sP40D9sUuSivyziPtalsHzOGXnYoKTEyu4tZwo+ek9rqpuDyi+uRdyYJvmHSj3Q
         jHjeR3xQULdLE/FE0IVlVGl2xt3enm271lcy+DfXtdslLmgIT1rIkhJ/hLh6d3oBY0L8
         dDhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p200si1675175wmg.4.2017.10.03.09.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 09:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5F412958;
	Tue,  3 Oct 2017 16:14:00 +0000 (UTC)
Date: Tue, 3 Oct 2017 18:14:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] Replace container_of with list_entry
Message-ID: <20171003161409.GB7303@kroah.com>
References: <cover.1506755265.git.srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506755265.git.srishtishar@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Sat, Sep 30, 2017 at 12:49:00PM +0530, Srishti Sharma wrote:
> Replaces instances of container_of with list_entry to 
> access current list element.
> 
> Srishti Sharma (6):
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of

As Tobin said, I can't take this series for the obvious reason of the
same subject line, yet you are doing different things in the patches.

Please fix up and resend.

thanks,

greg k-h

