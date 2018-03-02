X-GM-THRID: 6528076274942869504
X-Received: by 10.46.34.196 with SMTP id i187mr305078lji.10.1519971787682;
        Thu, 01 Mar 2018 22:23:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.114.14 with SMTP id n14ls962143ljc.14.gmail; Thu, 01 Mar
 2018 22:23:06 -0800 (PST)
X-Google-Smtp-Source: AG47ELvRNfnbZnkPkArRfua6G8UgosKMEvnKTwaXpilNAbBfw8cx4IinBL77NAieczlfU5fpD48b
X-Received: by 10.46.23.6 with SMTP id l6mr309982lje.11.1519971786328;
        Thu, 01 Mar 2018 22:23:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519971786; cv=none;
        d=google.com; s=arc-20160816;
        b=S5EI/B5cKAsOYNGPOKOC0ibHTD5vDS9xdZ2XKErM8o5QfyAqFyelwvMK5ycRYHOubJ
         6nzvNKCaWbx2T/cbZNgpVOVcyUEufEjrbUpduBLhZAU7YGRSAnSQ/HSGe0trbFPBtGkH
         C3i+H96fQ8mMCIC3hiJl1ETAA2bNmMLaXvgA1wNyhf4veJdyUAtRePl27bx5ZUzxY2MP
         IdAs50NT3c0KrhdQwDiHHqoVXXeJ7kOy6pqoDaaHiCCx1Uew9kyvFZk51NZPv8LL0Nbb
         osBNTSWUYTCB/4bl7ZApMJdspRSbFGRk3kfSjWvjfcWuKvRw2zcXyLsU38ea+bXcGlzo
         4mrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=CpOVLHr2HbEeeTrM1rvRpQ8om5WHS4VRfflayQNHycA=;
        b=BZM0kW4lU/T2twIhk8Trqtn1p6K5N0+z+aTJc72xXQ+QVH8PTkmP3qKeJWe75ciaiN
         aWxitxDaYGzUeQuM1uGMrDgi/pqhKE9q5gHmCryXA9v7Zy5v8O9TKoDcIvmqJzhQ4bPO
         W7YJcZ+g7iSUw4bAfGA3ctMXp7WXDHf3AAtWani8Z11G7FUjTEgq/YRsOwD7N+bmXIvl
         HIcL7FaImdqJZy92o5zwxEc7JkEuT2lT9LR2QaEgIYTldV9zRiNZz2w3nN/i9i4LIhYL
         lnXIJbgQb4+YPuQVc265NjZhdcHiby1SHQx+Cx0PUu6ganmrgaMCHYkWTk7eye7p7zGS
         ZXKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s26si148323lfi.1.2018.03.01.22.23.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 22:23:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (clnet-b04-243.ikbnet.co.at [83.175.124.243])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 37D451367;
	Fri,  2 Mar 2018 06:23:04 +0000 (UTC)
Date: Fri, 2 Mar 2018 07:23:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net,
	stefan.wahren@i2se.com, f.fainelli@gmail.com, rjui@broadcom.com,
	sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH] staging: vc04_services: bcm2835-audio: Format multiline
 comment
Message-ID: <20180302062304.GA28759@kroah.com>
References: <1519936185-27614-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1519936185-27614-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Fri, Mar 02, 2018 at 01:59:45AM +0530, Nishka Dasgupta wrote:
> Move closing "*/" of multiline comment to new line. Issue found with
> checkpatch.

That is not what this patch does :(

Please remember to get the descriptions correct for what the actual
change does.

thanks,

greg k-h

