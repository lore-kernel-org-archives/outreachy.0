X-GM-THRID: 6807086164953006080
X-Received: by 2002:a92:ad0b:: with SMTP id w11mr18641255ilh.241.1584902095251;
        Sun, 22 Mar 2020 11:34:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls2781622ilb.4.gmail; Sun, 22 Mar
 2020 11:34:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv5XSS6d+Ph7atINAXhtGVV/1uMqZGrhD7BVxDotkNq2ezK3nVRISP2XLCvdHd1ZKMHE2w/
X-Received: by 2002:a92:5f98:: with SMTP id i24mr18113292ill.73.1584902093824;
        Sun, 22 Mar 2020 11:34:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584902093; cv=none;
        d=google.com; s=arc-20160816;
        b=XOv5CPYCs7jd9wlPPUR/vHxga9okMJvu7AH9I/vV9Pta0w1P7VOJWv35Ko6DNR1ZIP
         1d5dkMev1jbXG8BiqVDcR6zgt48/r75IgKu+J3fdoLB9xNmTGuRkPBUmB5h0JrbFy/VI
         xB0IlAsTbQHkZcHyCK5bCtnudOO5r9yguGY7PLC+TNAl8BLuNgpLcVdly3wBWdu1XdLQ
         p0s77pEjQqp7Wv8iVl162n8pIJuaQlvVGHl1PyLw36EoWGgUGSw2hnUBhp7dZXR/vE8T
         on4S8BCM3xaF9sPYXATpBlaeL3NBFtnP/0MZfR4ysSMeK9HMRO17dIxQgGV8hNBI6BVT
         CJpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=I96GfMTGq9tUWRXE8nK4GMh5+Rk8r1hA4SJWjtfIz8c=;
        b=B94DoVHfbjECzVYouu1grCqF2BZfmYpBmZbMxR4L3PmesJkdYHl/cUOfVVGMDEF0r1
         PmePC9zqidGX5zOLPs6zen8+YUXtJkNjgYs0wGQMocNuNt1aedtnLPKlYi5xpFI9YOzD
         MwPqt6mOfzqYJMmw48WrcPn6qsV2BNdtELKvOepe4FkosVl+RaGr3jE2lSe00LUitZKj
         4akSSahoWWLvefsrYOxCXjgjz7h9k+jTDJ00EmTdawT2Ug4eKSyKiP03lwLzUgLJXFfs
         2SC6BaaarbSduq6xMPi9pn98fQbz9/+jnAFICxSx3ypW9wu69AZ0aO7qu65l2bmm2g1C
         i6qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rJvUhtoJ;
       spf=pass (google.com: domain of elder@linaro.org designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=elder@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <elder@linaro.org>
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id a3si879076iog.2.2020.03.22.11.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 11:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of elder@linaro.org designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rJvUhtoJ;
       spf=pass (google.com: domain of elder@linaro.org designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=elder@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-io1-xd44.google.com with SMTP id y24so11820985ioa.8
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 11:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=I96GfMTGq9tUWRXE8nK4GMh5+Rk8r1hA4SJWjtfIz8c=;
        b=rJvUhtoJSZoJZ59xKruwqvuxmnNykSJnrdZl61bfZeAwFcD2KOYValDzc3KdUgDuzo
         Fs84zAqxmx6HmXvBbsccutjeE56+jKXSZVYKNibpIxJghE5tCF6rmWXT4tps1fo4+nJh
         n8PDln4LMaInk0pGEk1GAEPhJ6XUdael/r3ZeLaJtimq6/Q4TxJRU/90wU+WutYNccVl
         8kJVfc3jvWlWUaEfHDmmsVpaqXkml9GKOhxLpBNQ+fXBGbMbT5YpB8K1dCYrUwpB6c21
         aet7+AQPCCjURaqqSSA9ANtEFxfXJb8WcurJBw15kGHaLzCfKR4gu1wZzC8D8jL1Mc9M
         ey6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I96GfMTGq9tUWRXE8nK4GMh5+Rk8r1hA4SJWjtfIz8c=;
        b=YwqV3gZhmDHMfKqm36R5PdIgiWbwO9NH0g+DPaz0M1CzDAti17dun3G0MLyCjJ5Tce
         LXaGrtanDfncBuD44lRGVQR3PWIdOl6Id3Ou8T+xj1RzM2vkIEd9LyRr0x/N8SNVpW45
         10yhWSR27iLMpkt7Hfp3rjIX/yINSkHJxyDYgIoLxFFbcNp31Q2tFNPE3Baf/VfSCHAY
         5o2nw+5r1KxWpWqEXqmMT4ACN+3R/ze8R44UyWqW7CISkaXO0b42h4/bAsiZzShRC9uK
         h+JHvsPqMMYQObJdx2OmGFxEU8LP5vXJoXXQmeiTOvEHArJHShckKZNrTdUL5tKNRpet
         f9rQ==
X-Gm-Message-State: ANhLgQ0Kv1tUpoSo0F19oxdmt83a4nQjbsKCTjvq+7VNvk1zU2oiRbv7
	vWUX/U9AR6pGpqgtFjI8px5rMHwJ+Lc=
X-Received: by 2002:a02:7a07:: with SMTP id a7mr17054094jac.96.1584902093315;
        Sun, 22 Mar 2020 11:34:53 -0700 (PDT)
Return-Path: <elder@linaro.org>
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id d15sm614598ioe.49.2020.03.22.11.34.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 11:34:52 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH] staging: greybus: tools: Fix braces {}
 style
To: Simran Singhal <singhalsimran0@gmail.com>, Johan Hovold
 <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <20200322173045.GA24700@simran-Inspiron-5558>
From: Alex Elder <elder@linaro.org>
Message-ID: <7fc65c6f-1f1d-8f60-faad-e43dda3d0cfa@linaro.org>
Date: Sun, 22 Mar 2020 13:34:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200322173045.GA24700@simran-Inspiron-5558>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/22/20 12:30 PM, Simran Singhal wrote:
> This patch fixes the check reported by checkpatch.pl
> for braces {} should be used on all arms of this statement.
> 
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>

Looks fine to me.  And I saw no other instances of this in the
Greybus code.  Thanks for the patch.

Reviewed-by: Alex Elder <elder@linaro.org>

> ---
>  drivers/staging/greybus/tools/loopback_test.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index ba6f905f26fa..d46721502897 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -801,8 +801,9 @@ static void prepare_devices(struct loopback_test *t)
>  			write_sysfs_val(t->devices[i].sysfs_entry,
>  					"outstanding_operations_max",
>  					t->async_outstanding_operations);
> -		} else
> +		} else {
>  			write_sysfs_val(t->devices[i].sysfs_entry, "async", 0);
> +		}
>  	}
>  }
>  
> 


