X-GM-THRID: 6393675902317756416
X-Received: by 10.129.121.199 with SMTP id u190mr6669296ywc.170.1488801073084;
        Mon, 06 Mar 2017 03:51:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.212 with SMTP id e78ls9960961ote.9.gmail; Mon, 06 Mar
 2017 03:51:12 -0800 (PST)
X-Received: by 10.157.41.66 with SMTP id d60mr6417071otb.113.1488801072845;
        Mon, 06 Mar 2017 03:51:12 -0800 (PST)
Received: by 10.202.74.200 with SMTP id x191msoia;
        Sun, 5 Mar 2017 20:12:19 -0800 (PST)
X-Received: by 10.157.4.43 with SMTP id 40mr5605877otc.13.1488773538954;
        Sun, 05 Mar 2017 20:12:18 -0800 (PST)
Return-Path: <viresh.kumar@linaro.org>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id 207si1159565pfu.8.2017.03.05.20.12.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 20:12:18 -0800 (PST)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-pf0-x233.google.com with SMTP id w189so55022433pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 20:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qtrEJW5p3UPdO+shjxUhjW/FQ0COc9vLVJEE1INa5fE=;
        b=gfMoEfVFhjxWD9L1KkOVyRmm+DANWeZ31/8F4rhnTnzcg1qQKbzOhS0v8XAgosBsIi
         M/BC+NQKSMeCzjIxWMn2sZ72yiyC455G23eUnBaIiFtizNUraiOQzC7G2I7u8svrrc1d
         Ho0DiuuPgUeb8ohews6NsxD0Yi6T6Wkm5nZak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qtrEJW5p3UPdO+shjxUhjW/FQ0COc9vLVJEE1INa5fE=;
        b=EiVbsEzpZrqR7BzUl081MpqwuhQqxmwe7EjV+Y3XKLd3413ZkyiLZSwkdGZrS/FiI8
         U12jXF9kgdJdXLkhc/hPPxVYO81WtlSgSwGDGKCcvW2LYI/QHLsZY68F4YmQ/WahOnQx
         lxYgFRFvdOnYW6v4tLT9zD3mcyVPXsW9Fmcd4cjy1y4u3ritmUgbyXnAVukjzgz3e9bU
         Qb8AtDr4wIC7UiPdPSceoM/gsAosBgbTOOAXBQsJHWEPy+uUW5jiWnQF04oqMjOuAfIV
         oBLcVi8Yc+ViXtJttIJoKw/Bld0UwK4LncT65ptf+SVwh+Sr2sU0T21UhHuklf4M05/T
         hmOw==
X-Gm-Message-State: AMke39k1f53TLIuuPnUKazxPOAJgdFyfq3e/jL94D8TtdXRDlCvXz/NZMBUIUyowYk0oouXa
X-Received: by 10.98.36.81 with SMTP id r78mr18648731pfj.178.1488773538642;
        Sun, 05 Mar 2017 20:12:18 -0800 (PST)
Return-Path: <viresh.kumar@linaro.org>
Received: from localhost ([122.172.165.189])
        by smtp.gmail.com with ESMTPSA id t12sm35964918pfg.14.2017.03.05.20.12.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 20:12:17 -0800 (PST)
Date: Mon, 6 Mar 2017 09:42:13 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: abbotti@mev.co.uk, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
	johan@kernel.org, dtwlin@gmail.com, hsweeten@visionengravers.com,
	greybus-dev@lists.linaro.org
Subject: Re: [greybus-dev] [PATCH 2/3] staging: greybus: Replace "is is" with
 "is"
Message-ID: <20170306041213.GD8206@vireshk-i7>
References: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>
 <1488643671-24758-3-git-send-email-singhalsimran0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1488643671-24758-3-git-send-email-singhalsimran0@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On 04-03-17, 21:37, simran singhal wrote:
> This patch replace "is is " with "is". The replacement couldn't be
> automated because sometimes the first "is" was meant to be another
> word.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/greybus/uart.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

