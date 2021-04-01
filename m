X-GM-THRID: 6946206210186018816
X-Received: by 2002:a25:d942:: with SMTP id q63mr3361764ybg.261.1617290752769;
        Thu, 01 Apr 2021 08:25:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e0cd:: with SMTP id x196ls677516ybg.10.gmail; Thu, 01
 Apr 2021 08:25:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJztDQP4vbF6TpsWiXWA90RRnO3f7lC3HE2KfZB6Oj7/AuCboXVcJnM0kRcrkA5oVy8Puvh3
X-Received: by 2002:a25:686:: with SMTP id 128mr12082934ybg.258.1617290751836;
        Thu, 01 Apr 2021 08:25:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617290751; cv=none;
        d=google.com; s=arc-20160816;
        b=RxSPY4egkF7WmrXf0SkiKS3ZkqyZyzKim2vNiciGi5gnn/K1jYrC8AzRfo16bKqq0N
         8Wy3G85TwJvHRog04pl8S4AGwGCq2XP1ht0bTV3mzvh9EAxhqFewGVOTJRhHBaKGebC8
         yCmX97q972567kZFolaDkuUeb5ZkS0MOQw5Oyt4JDvME/cruujYZ1L+64yRiVZ8uVdY2
         o7bzu9vJOjDWVgOXmvDT6WDpLjv0ByISNFUcESN8YrYJUqk5BY3bGyZXau5TelC4uGR2
         VaDvbQ2M80WZkIHl4evmziiNxg3PM1I40VciErSRmZMmPfW15Bo/nklVEave29KOdJO+
         SFDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MiOgkDCQPQIqPRIEM0BOdk+FQPnFJSRgGSnPFWi4j9Y=;
        b=fQt1dmC6QE4DMZaGdU+k662bC4yMnI1Ncxy4//HuWLI2OlZDqI6NJt2sqsGlayvtIz
         XOgKC/x1gRHZh+fdp3iIyxLglYL5czM0Lf1qC/VN9CYoVW/b4V3jaWTwZdIcpWFppY5N
         OBTSpT9Qk5y4lLFmKHDwt3wJPxqxBy2d7BS3OaGKuz2fxNPUfVJnpI/HqasBp1ClYEQM
         aYIQfb+xeji6Kf6C1Zp/E/RxlBCOnWF34PY4Gdbu9QQUP/srA79AzTMSE9POlNRt0rPA
         x4uFoNkrbHBUOtmhsLKmsE8sb08rhdCbyT5qrkHzMwJS8ESkzCj7nFNnxzhvN+pSzedB
         RS/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=zO7z16H+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l14si384412ybp.4.2021.04.01.08.25.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 08:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=zO7z16H+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 01DD06136E;
	Thu,  1 Apr 2021 15:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617290750;
	bh=hSu9uPH/Hw+DB94jZx4GKfdEPdzNMr1RIWzL7XlHirQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zO7z16H+9N64eLC2bU+ASReX0/QjnbtEVOy2Yo8uvuMCmm7Kax84+fHsbRPt1enXB
	 Cye2XqDtzeiCzAn5MVf5cpDYxQoV7ayTe4WZzBwpIlBn5Y9Vtb8asIea9xpQ+Ekboa
	 DiLbSwN41mcAozYQpeezOnVy2dtRM7abhcg/L8dc=
Date: Thu, 1 Apr 2021 17:25:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/2] staging: media: omap4iss: Patchsets cleans up in
 iss.c
Message-ID: <YGXl+0iLgnVL2jkt@kroah.com>
References: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>

On Thu, Apr 01, 2021 at 04:07:37PM +0100, Beatriz Martins de Carvalho wrote:
> Clean up checks of "Alignment should match open parenthesis" and 
> "CHECK: Lines should not end with a '('" in iss.c
> 
> Beatriz Martins de Carvalho (2):
>   staging: media: omap4iss: Ending line with argument
>   staging: media: omap4iss: align arguments with open parenthesis
> 
>  drivers/staging/media/omap4iss/iss.c | 48 +++++++++++++---------------

Please read the outreachy introduction email again :(

thanks,

greg k-h

