X-GM-THRID: 6805867897863274496
X-Received: by 2002:a63:9210:: with SMTP id o16mr3166821pgd.442.1584620051407;
        Thu, 19 Mar 2020 05:14:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:98de:: with SMTP id e30ls1301561pfm.0.gmail; Thu, 19 Mar
 2020 05:14:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvfBNKp6LwGwIH/CaGNVoNzC/EAmXQHydAPCchO2Mb1Tzpbtf4uy2ZPdYkHRWLK8SffPHXP
X-Received: by 2002:a63:3753:: with SMTP id g19mr3222081pgn.262.1584620050009;
        Thu, 19 Mar 2020 05:14:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584620050; cv=none;
        d=google.com; s=arc-20160816;
        b=LZ46JJEW9V9FMBPjYZgEzlzU5aJ9/rO0Zu6VSQLYzwmo1mWoAkUvHjvmKYE8i4EIlc
         9sjgHk2Vl+qyEXD0s0Nau0hhouTL5e5tvJ/hm6LPtLXrhtQ1HN1ox4aFQWQ3bRnQRUgz
         F62TovDSGjQTEmTlnfuBflD8pLfzausJcmbxrcn3MGhYcWiykx/isg5grV42Xfl0PvdG
         kT8DqcIMniXmjfccXEc6db69e5LniXDO3mHbkNI37BFuk+VrQbgGucdivKHy9QqV0XxP
         kMt/o3hcNVZVNvmrphlIS/oO17CzeowHdwSVmUHpWv8p449rxLiMHugiVuTjvPAWtpgU
         ZwSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BuDDW3HRSh4xGSYVgqTL9HNdjoW4F6srQ+j9ZX3ZCNM=;
        b=fcGQsKIK/VkTjEe/N0TwkdOAIO+Xp7lV6Ep6UzB/jGjILc+0dSrFnF/MPUgI+kdvU8
         FImvHpQ3g6XcN164b9RMxANwSbLvWWScUVLqignCGvkmbeudcKNtW2TImSxdzJYsvtBh
         TumowOyto8VNXrV4njX8KTJHr9rDI+ch7TzrZYwyoKQXdW3YsRzdjhox0GduTI16IgkB
         +FYTwoIa2bT5G60YX6I6E/TUAd5iIXO/JgR1dL7r/Ji28VL2n5kWgk8qTnK8T0lcRL2q
         4KbNhyBDVyAUoav1LyVblkbdKiULbg7AxIdKV2wIK8xHhftABHek7LxmvuhAfelYsmYg
         Ar8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K20KCPN+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q66si163386pfq.3.2020.03.19.05.14.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 05:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K20KCPN+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4745420663;
	Thu, 19 Mar 2020 12:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584620049;
	bh=HT0/QZYuffkhYCr6Kxqgi3BiCY8xEalZL1MRdFMUQFg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K20KCPN+JD/cLnUXyqa0r1y6Ge2wI8j5FyHfKCu7tzCUlPqhNdrJaIWf0sEgw5R1j
	 zjB/O6zjVZJXfGdzNxZUZc0Ot2L6qOXW0gxSx5EN5qLwqA50vL/jlLznQTPuDg8l3l
	 ywQS3rVt1K2Y9/AoQ00HOQMg91yjJXR/xI5lLgHI=
Date: Thu, 19 Mar 2020 13:14:07 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 0/4] Correction of typos in comments
Message-ID: <20200319121407.GA3802220@kroah.com>
References: <cover.1584517384.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584517384.git.vkor@vkten.in>

On Thu, Mar 19, 2020 at 04:26:37PM +0530, R Veera Kumar wrote:
> Correct typos in comments.
> Misspellings found using checkpatch.pl
> 
> ---
> R Veera Kumar (4):
>   staging: rtl8723bs: os_dep: Correct typos in comments
>   staging: rtl8723bs: os_dep: Correct typos in comments
>   staging: rtl8723bs: os_dep: Correct typo in comment
>   staging: rtl8723bs: os_dep: Correct typo in comment

You need unique subject lines, please.

