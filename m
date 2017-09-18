X-GM-THRID: 6465599179763744768
X-Received: by 10.25.77.17 with SMTP id a17mr757351lfb.21.1505727506060;
        Mon, 18 Sep 2017 02:38:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.138 with SMTP id v132ls1456667wmf.25.gmail; Mon, 18 Sep
 2017 02:38:25 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCCcnc5DSd7HCUHvR5SSMb0PRDOsLQvbaiFfsNeBXS+XGfuqlLyMe6ouP/us8IfFodbmVLt
X-Received: by 10.28.68.135 with SMTP id r129mr993779wma.19.1505727505153;
        Mon, 18 Sep 2017 02:38:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505727505; cv=none;
        d=google.com; s=arc-20160816;
        b=f5Eb4N39eMlRjNd/aiD5EUm8Hgd+6ZFiey4jOwTgkM2/EsLvuURONb3RPqGovvXmYQ
         t4W+eZHX3191la8ik3/jGAQ8KkIIcBnG5Fcygd1j6IRjkw62M8et+a5uSgNrRA24Pqyc
         qiPCPC7ozgfRRa/S14HzU6wmTwkQFVkhC3BhRcANW9G/Bwoaht3RB05Z5RPoXeUfv7hQ
         SoNu761zfV33MZYbjqDsKXMSYBA0bwWBuFxKceTkETPKbiCZIi807brMI/3zq+s9cEaH
         cpngXVSYxfAiQRiR0Z0gcYpTBKkHFJT4kclnqjxwyrcBI093QWv02w3z+XGItWm1xNmY
         P4ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=HbH1GHCBhm/kJ7M6MyKA5VTQjSaprpCuJK6s+CT+0Uc=;
        b=0RTFQOmyEbQ5986pRVqjDETpIpY63sDdd9e5NTCSoIdcZJWYb5j4rr85aRBsXJF8OA
         /QiZw1ND4jmt6d1VooAlQD1mPq4YbEXexdKo+qW9g07gkxwWUc070HYkLhLlwgTbCPhn
         aLGyzOeyLwFKc22BCvjZMgsYfZIYb8ORhaU18j5q8qnUR7Xc7Gup4/RGQB5O5sazbBe+
         920TuSdtjW9cYFrFXhOSZ5orC2fVXfWSvV5tGvlbzuwc/Gs79YgcWwORGM9czGBZCNap
         aFTCT6MlckdHbluG+BjcdQJLSzkAV/oWFjfjNMLS4wLJGJp0eYXfwW0sFySWuUawi2XY
         Habg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j4si530184wmi.2.2017.09.18.02.38.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 02:38:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 80011B0A;
	Mon, 18 Sep 2017 09:38:23 +0000 (UTC)
Date: Mon, 18 Sep 2017 11:38:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [PATCH] staging: lustre: fix comparisons should place the
 constant on the right side
Message-ID: <20170918093834.GD9461@kroah.com>
References: <1505389603-8642-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505389603-8642-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Thu, Sep 14, 2017 at 05:16:43PM +0530, Aastha Gupta wrote:
> This patch fixes checkpatch.pl warning:
> 
> WARNING: Comparisons should place the constant on the right side of the test
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/staging/lustre/lustre/include/lu_object.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

I see at least 11 different lustre patches from you that you have
recently sent out, but yet I have no idea what patch to apply in what
order :(

Please fix this up and resend all of them as a single patch series so I
have a chance to get this correct.

thanks,

greg k-h

