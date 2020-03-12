X-GM-THRID: 6802949681377705984
X-Received: by 2002:a05:620a:201b:: with SMTP id c27mr2994769qka.310.1584553972393;
        Wed, 18 Mar 2020 10:52:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4695:: with SMTP id g21ls10362603qto.3.gmail; Wed, 18
 Mar 2020 10:52:51 -0700 (PDT)
X-Received: by 2002:ac8:184f:: with SMTP id n15mr5621633qtk.371.1584553971146;
        Wed, 18 Mar 2020 10:52:51 -0700 (PDT)
Received: by 2002:a37:a406:0:0:0:0:0 with SMTP id n6msqke;
        Wed, 11 Mar 2020 19:41:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtbajPa7s3kwrqdWh+WLFYOkQmSMiOAwXD1F6/B2g2WwLyYjL8ml7AQg6SnRlpsNrkytFH8
X-Received: by 2002:a67:f785:: with SMTP id j5mr4053311vso.68.1583980897579;
        Wed, 11 Mar 2020 19:41:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583980897; cv=none;
        d=google.com; s=arc-20160816;
        b=mLOHI7cV1wwxAUo4gcPI34ELhFr/0efTX5Wxq2NbfyBm4bwEn/YTVjt+yxbK9ZFZMD
         N/D5ajn7Q9GerkJq1JRF43FXx7J913dpQyNUtWc6qoL+QrE/5cXVpsq6yI1PyUpVPG1y
         LxMe1KpoWFfi1cRpPCfOtj8hMUiYMSBCgSlliiBq4VRZrQ1h9rZn+/YnGt3vyDqNZpD/
         CGKCYrfkmLOE73cGYVL0Kn8EBOImtENwWo6/13MdUvO12DRXUyymQmO5kIMt5zCKQ83U
         AyCX00fLO+pVjWab5hU1t/7whwmb5cbWi3o+zo/x/sAkne2cm6lI0bXP0Ml89o1MViDy
         xhZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:dkim-filter;
        bh=FPn0J0a+i5WpPQn+wWi5l3mA8piuchfQOex4GqLMil0=;
        b=ZnkTRr2GQJzoCd0HzC6Hi80XwFICkn06SDIR7z5eyWOh4mlO9ucg7nGooDoNZsTiv3
         fdI6cRvvTUY0vxaJ8F0624B9/MsszoorEctEMHICz8qn1MkzsobIBqYoAUYDYnBgQwBj
         BN0J0vLEtvuQWBeTwAmcwmDBU265PytQVkCinwlhIlGLH9mjp+zAjWhJBS0oNfLbYLJj
         V34wQ329MPeXxfP2ENPh1J42O25TnGiaj7LQWaw9iYD4sQLM1/PywdLliV+FIG6ouvF3
         5rhDPdBg43kLPkib+2ouVvZ5BQxVnoCYOVPJ7YiejYRKvvdCI2D+b2TsbKcauYte/fpP
         rdzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=Lq9bjLEB;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Return-Path: <nramas@linux.microsoft.com>
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id o20si230061vsn.0.2020.03.11.19.41.37
        for <outreachy-kernel@googlegroups.com>;
        Wed, 11 Mar 2020 19:41:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=Lq9bjLEB;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from [10.137.112.111] (unknown [131.107.147.111])
	by linux.microsoft.com (Postfix) with ESMTPSA id 8167120B9C02;
	Wed, 11 Mar 2020 19:41:36 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 8167120B9C02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1583980896;
	bh=FPn0J0a+i5WpPQn+wWi5l3mA8piuchfQOex4GqLMil0=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=Lq9bjLEBp7SL0Z6FdOGkbsBEfiXIiOB12effq3ESopNg/WxdNEjjthlzf7xMDmeAr
	 ksJOTlMvOTT49LGJ9z22mYxrAW2tGwOg59w69Vo8YhWOaOeJYfGmbJfkDVDbnqwmi4
	 EyWcjHr0Sf3O2tCS609q9IHQZFhVi2bv+KVqVI9E=
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
To: Shreeya Patel <shreeya.patel23498@gmail.com>, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
 daniel.baluta@gmail.com, hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
Date: Wed, 11 Mar 2020 19:42:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/11/2020 6:58 AM, Shreeya Patel wrote:

> Remove unnecessary if and else conditions since both are leading to the
> initialization of "phtpriv->ampdu_enable" with the same value.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

Stating this based on the patch descriptions I have seen.
Others, please advise\correct me if I am wrong.

Patch description should state the problem first[1] and then describe 
how that is fixed in the given patch.

For example:

In the function rtw_update_ht_cap(), phtpriv->ampdu_enable is set to the 
same value in both if and else statements.

This patch removes this unnecessary if-else statement.


[1] Documentation\process\submitting-patches.rst
        2) Describe your changes

Thanks,
  -lakshmi

