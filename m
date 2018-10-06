X-GM-THRID: 6609326471053836288
X-Received: by 2002:aca:4747:: with SMTP id u68-v6mr14070958oia.9.1538874133096;
        Sat, 06 Oct 2018 18:02:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:bb04:: with SMTP id l4-v6ls8248373oif.0.gmail; Sat, 06
 Oct 2018 18:02:12 -0700 (PDT)
X-Received: by 2002:aca:52d2:: with SMTP id g201-v6mr13376719oib.26.1538874132550;
        Sat, 06 Oct 2018 18:02:12 -0700 (PDT)
Received: by 2002:aca:ea0a:0:0:0:0:0 with SMTP id i10-v6msoih;
        Sat, 6 Oct 2018 16:04:03 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60vI8VU4Vbj7k8yGpROEISWk4iJgRLfMyrlsCDO1sp8VWixM2/w8du9yXl6/hh8EOAzw7E7
X-Received: by 2002:a63:1343:: with SMTP id 3-v6mr6895232pgt.33.1538867041986;
        Sat, 06 Oct 2018 16:04:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538867041; cv=none;
        d=google.com; s=arc-20160816;
        b=hwu5TLzsaKSpoLt1xBY9aY9jUbvJIpzIlTwrGDLYTR9YMV/IpwPstTWpbcUpOQI8HD
         y6DXKAQ57hATQQNfre7/r+7tE/ubaDp1kQmY8bFG76AXB0hP26EA9/YRaVEp8maab1a2
         w7iuiHsYSVFmAG4L8GqHxSZhP+yVoo+zoaOWtkma+51l1+aXECCM1UhuajnKSmHmD3A0
         FX2iqGS1hrLnJI4Ky7eZAd86f03aQFCfQFTOSHd5b5fiTIw2I8BIEc5jSKZPTLwMB6lx
         pdnG0tXTZISzJx0awMTeHlV79lYpdkT/xGD17iQYJxFaOi26S3Ku1JP/7YWrF9OiLjIe
         DuIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v8Q2mFKqSPXPsZSI6/Ou93I001L6ZE6jHOe08l0dtp0=;
        b=q9oawqQyNnzD8McBimzY6GnHFHrYIOCMww233YuBbvD/H+rSrjTshufID8URYXmJwT
         7fMxnB/7LQwGlbW4GEH7CDecdoD9IBlQzNApSRGhVyb/eMLlWor+Zn1FO7YNpiEmIqRy
         /cQ0BhWfaSbFPNII6NIN1BSKotNjuXRi7b0v9M6Ni7BzK5/n80n+zwFE2sRqqIj/IH+T
         4tIBiQN3BZmkPuSo/vzEvekdtccKQVAFGj0AkufM27Kj7R5Sfu+m3jssPDirb2a7F4H4
         pCfzjAG9w7NCAGP51UYaiX8xJFcPjvpesuurWb70iMKO5fHxRfbYR+IyZSUYRe13Cqis
         9bkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kMlFMBYn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b27-v6si37380pfj.5.2018.10.06.16.04.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 16:04:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kMlFMBYn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 128B02089D;
	Sat,  6 Oct 2018 23:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1538867041;
	bh=v8Q2mFKqSPXPsZSI6/Ou93I001L6ZE6jHOe08l0dtp0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kMlFMBYnq+sgDGd5TiX7prDswjpCGNyWwLr0wUTfb+1emmp9xggCe0aOr2f95Fub8
	 h4RFqANQhtssH91K4eYmUKlzKkemAdUGXEs99V2748IGt8u06ivvbf+di3gmno9+lS
	 oagXe2l7b70c0bzVYuldk2RgQyH5F2Pk78QmCg4I=
Date: Sat, 6 Oct 2018 19:03:59 -0400
From: Sasha Levin <sashal@kernel.org>
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: isely@pobox.com, mchehab@kernel.org, helen.koike@collabora.com,
	hverkuil@xs4all.nl, outreachy-kernel@googlegroups.com,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Outreachy kernel] [PATCH vicodec] media: pvrusb2: replace
 `printk` with `pr_*`
Message-ID: <20181006230359.GB32006@sasha-vm>
References: <20181006192138.11349-1-dafna3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20181006192138.11349-1-dafna3@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 10:21:38PM +0300, Dafna Hirschfeld wrote:
>Replace calls to `printk` with the appropriate `pr_*`
>macro.

Hi Dafna,

I'd encourage you to look into the dev_ family of print functions (such
as dev_info() ). They can avoid having to repeat the driver name in
every print call.

--
Thanks,
Sasha

