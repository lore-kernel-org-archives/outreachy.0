X-GM-THRID: 6808656295974928384
X-Received: by 2002:a37:9e88:: with SMTP id h130mr11649151qke.145.1585270753633;
        Thu, 26 Mar 2020 17:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:aa0c:: with SMTP id t12ls3612056qke.11.gmail; Thu, 26
 Mar 2020 17:59:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs0mZhgkpt2RwKNq+aBNlAY/UbKeT9dADM7viG7vD3V40joQPVDi/2FYlO3O7vHYcrmZxE1
X-Received: by 2002:a37:a78c:: with SMTP id q134mr11787733qke.258.1585270752284;
        Thu, 26 Mar 2020 17:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585270752; cv=none;
        d=google.com; s=arc-20160816;
        b=KubXMTfN1faxsL5jbpHh7OYBoVYwNAryc87zYO6ysWskB4cKoIXTAZlnszfSSvTJuj
         qzU19IJ1xp58UIvhc62vLMCp4XI+wLj8tys6uc5wtrvE7ZnTFICxrqkS8jZ74/GN2NGJ
         yW+KRbT6qd5+25x6m2cdVYBldQAuI/Xy1KHcuhyUDSB8UoesMAijb0EQ/pKdRUu/1fzO
         TTE9rLgrPmTf7gv3Swobg1XoKagHify+anU1ESAvkm0xtXwlPXWjP/kByOAt2ap9JEUl
         N2bEKT1fz+zh0ocimajIXXTWpIGOrW85Rc+w/mE9ODNkQ1+1CnINZV2LBk7uPpvZJ6JF
         FfuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:dkim-filter;
        bh=5YDZkxl40sqjmngSJHgeQjMavA8+/n7i7HiuBUIGJzo=;
        b=byeFLYoaBS6ynil4no3mg2A35NfdP67MLv7dpK5JPqpZP3w/xgy3ThOrh++tx3Sp4G
         6XJuUH6LySPh2wEnj9tLxS7uE6Ovv4ODB6IG0wKiYYl7yQhbo/Ou2qFYdpAbjp7QDHDY
         d1ceP5imkyxzs0LTKk5o4QnLFy4W4OyEIeyx/X0UrJbSZH1yAqr/AMg97JlPEJ9XwgJT
         VNGlxXV0IfqVW+Yw0/qiH10Q4N8rOr6ouA0Om/9UDCxQc6bDOXcbCLromYk0Euul5Nge
         wwgL7XagoIBfwcLFllj4cnQKsJqCTNFIRd2r+yruHCcnfHszLeIZSaM1HxR/x7CsrsM9
         wL3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b="LPZ+/TN1";
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Return-Path: <nramas@linux.microsoft.com>
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id c194si228904qkb.0.2020.03.26.17.59.12
        for <outreachy-kernel@googlegroups.com>;
        Thu, 26 Mar 2020 17:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b="LPZ+/TN1";
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from [192.168.0.109] (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
	by linux.microsoft.com (Postfix) with ESMTPSA id 3B0C020B4737;
	Thu, 26 Mar 2020 17:59:10 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 3B0C020B4737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1585270750;
	bh=5YDZkxl40sqjmngSJHgeQjMavA8+/n7i7HiuBUIGJzo=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=LPZ+/TN19p6q47j6oZDb/w4CpPZ9iG5ZjwQUK7fQ+mAM8zdg8uS+cL7uNhzc04Wcq
	 K1DkLjWmM2f425HM4JOlcq09xEt6fjHslQH0z5Grv4BVTi3dhBXBNeG1iTV7dP/Ds0
	 oR2XBFVPn8V3VduRit9mNGUPezYYa9iyHQBEymiA=
Subject: Re: [Outreachy kernel] [Outreachy][PATCH] staging: vt6655: Remove
 multiple assignments.
To: Briana Oursler <briana.oursler@gmail.com>, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
References: <20200326230335.36507-1-briana.oursler@gmail.com>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <5951d33f-ea8a-ec99-474b-2d8b2009da6a@linux.microsoft.com>
Date: Thu, 26 Mar 2020 17:59:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200326230335.36507-1-briana.oursler@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/26/20 4:03 PM, Briana Oursler wrote:
> Removes multiple assignments at initialization and in computations to
> better match Linux style. Issue found by checkpatch.pl.

Change "Removes" to "Remove".

thanks,
  -lakshmi


