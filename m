X-GM-THRID: 6805867897863274496
X-Received: by 2002:a62:1946:: with SMTP id 67mr3831451pfz.0.1584620070598;
        Thu, 19 Mar 2020 05:14:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7c97:: with SMTP id x145ls1278984pfc.6.gmail; Thu, 19
 Mar 2020 05:14:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vteGQBbozkuTGrk+yXJjjWqoOFpozcsL/BTsnG/g4briOwD38q8A44oJ13YTkC891sPQhlv
X-Received: by 2002:a62:1cf:: with SMTP id 198mr3774657pfb.246.1584620069188;
        Thu, 19 Mar 2020 05:14:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584620069; cv=none;
        d=google.com; s=arc-20160816;
        b=LybgWY1+NdhPkvqPQMS7PYZAtpmCENScEozERBaIrJdtl41FlHQLMDZNdfOyoDvJvx
         aDnM+FRS9KJFCuCKD2AK0qfA/0HnIfNojDgY12ZwTaCVh4cPWlk9H67dWfxwyBGPzcat
         yDWLXfmvLtHpJyIRLn7vJW1dXCe5767wJjflNG4ulQg/0SAmsydLu8hYS6XmejpyN4Ux
         81sUde7zo6gbqzbfSTi+cV17ToAUcs1aTejogpM4BfqiPGtVPOAiFC4ZclUGWPYC5VD0
         Pl/TCAF3of90fQdVnEz5XooMlBVyYCWzG3/FvmmO5n++Hj4bpYVRUJQcgFY+8SC9il1i
         1rvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1zOBNbWIWfxz6R/xWufMgzJh3n+x4Nt24IdFI+kj8RA=;
        b=H0RFUVVj647aXqymBOKiItIAflhmjJ+xwGqMCWEUgMEIMpSrDmhXOzmUT2VuzpFk06
         T4TwMjrlmHpIu3ZsuyeWLtG98S79ijNoO0+qw1td/eos7e3fTDqzqtz3IdVDNdChiX2W
         Y7hSMKx/WPEQdkpfNtVuqg/7HZzs9T1syFSAd4wli6q5M3X6w5tDq29VTTwKmRYLv5GI
         7yoEKPm75TG0MymRUTYzln8IP/Jl8vRqprRc6gVJSsmsUUZBlI6R0vl7st3n9cAhAwrS
         C8RQTgrT7dkNHq5CqZ+Ul6qqZM6aVNuYcA8yhU0SVbwplm+efAzx4WrJ0Pb2l/wyn1sw
         4RmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y7DDoelW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l6si72808pgb.3.2020.03.19.05.14.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 05:14:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y7DDoelW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6B98C2070A;
	Thu, 19 Mar 2020 12:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584620068;
	bh=bMc3cjWCfsnNVz6Qua/49Fa7Ca07dZNraxVXm15Kh5o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=y7DDoelW7SP5AWinSlwWg0Ys7CQJNSCStszAZOedqS8KV9+HN0QKVQznG6t+bu6R7
	 rr3U5ReRsaRal5z4hXhojz9B32Q5C3TxdIAsoq2/FYvt1AZtNaWKslaVw0jQm4x/zE
	 eq4C3cpKH/EJZGd0nw7u9IIDRUB+07VVstk5wTo8=
Date: Thu, 19 Mar 2020 13:14:26 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 0/7] Correction of typos in comments
Message-ID: <20200319121426.GB3802220@kroah.com>
References: <cover.1584519269.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584519269.git.vkor@vkten.in>

On Thu, Mar 19, 2020 at 04:12:50PM +0530, R Veera Kumar wrote:
> Correct typos in comments.
> Misspellings found using checkpatch.pl.
> 
> ---
> R Veera Kumar (7):
>   staging: rtl8723bs: core: Correct typos in comments
>   staging: rtl8723bs: core: Correct typo in comment
>   staging: rtl8723bs: core: Correct typo in comment
>   staging: rtl8723bs: core: Correct a typo in comment
>   staging: rtl8723bs: core: Correct typos in comments
>   staging: rtl8723bs: core: Correct a typo in comment
>   staging: rtl8723bs: core: Correct a typo in comment

What changed from v1?

Also, you need unique subject lines.

