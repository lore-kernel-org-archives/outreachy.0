Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C66545DB9
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 20:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791922363; cv=none; b=NDmLKvfqNRNfHZiHH/xvQzH0MorfUG5wzTra/L064ncFihIypX+Rly03KNZU5fOmyrA9zvVFc6VGU2MLHIuFT24GruZ8lFyroGT9tmq0cQxgtOkjJwlQKGwRvWYF7+zv2DJgS4zrF2qvBcT4Sd+j2qdckN9j900baFOOseEu2Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791922363; c=relaxed/simple;
	bh=FHANVY32iP02su9AUQalbmIEZKYbDkKq71mSU0vrOUU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m+kInUvqtbHCzwY6lpMra4YE09SNDiTTZyEm+DXQHZVxZOC65gHbSLaAqvtdvdSOobHFNH0ujCcMmmJh2f1tVFUVUKG8uMX94hoJsdHETyTlarL4Y1oWGCF3NZc1e2ZOuhM4vxaV68ZDKE0G6aMVz6HT8cc3UcBfG3vYn/2DLBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=P821qV/S; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="P821qV/S"
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-53440816851so35502301cf.0
        for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 13:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1791922359; x=1792527159; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3TBoL+oiZizwoAHZ61Saznx7uboPW5Y0xvzJblrFEHM=;
        b=P821qV/SEyG003q5T6KPU5MJm9cAK6LU8lZ3mED5Ptz0AGdsUJuIWe4dTHmkeSY+jB
         AeIAqbp4sxnG5vJOnr+nK7bcfGuSfIuG/o+kAQbD2ubutPs20wuz2l1QUj2Dvm47x8Gl
         U0HQtMB68w9emgpB/uLWXyKMAUkIH8DjkQJUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791922359; x=1792527159;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3TBoL+oiZizwoAHZ61Saznx7uboPW5Y0xvzJblrFEHM=;
        b=lvJr/5MNRQdYjJMeK62tgraIPN0WeQNXhcxeBHd0SsiNbE/t7GanRdQttNxmy8Ql/y
         lMGOSSXv7+2z9YCgRJiuBdpP1D04JVJmQBeJc579kIYrNcFALisPmY7FQXjlkxYha22Q
         xI9Vcovll4hfKNkmPTfgT79y9w2wo/Ln64PsD2WDKGvSOKAAyJR7OysOYquHQpJGTstD
         KpXLi1NkFDCOgClsf/04YCJP6pkEyZ2quRJ8LMrPRR8XmO+4AO4VNYEr9OcQIgCe+Iby
         bUK6WGeFbv2pEgpCNxC1SB4LGwxtS0oL7j+44KcWhFQgHbUF0xySi0rtL1k0xNefWWU1
         BSGg==
X-Gm-Message-State: AFq9FYKOMAQp6RTZMIkFh+z6bRxP3PPQvSISZ+oXLp6QPZ8oT3uUueTt
	dxONYUciaICUpMBy9u/cNxl51tom4Gub+ubpry4sfOJlHjbMQaZPO4m7oOXFo/rShA==
X-Gm-Gg: AYBFou21vf2o4VXw8oUxiziCahtmfs15NFITg1re7AmNxtvzl+S6Gunf7OSdhCYZGUK
	zwOuZDRSYS9pzNCIPV9L+64BUhcgu8jeP/3SvxWVbNTzq9Osot7drmADwkh2L5Ss/lNcIswDgNL
	ZxGquiZaLV7HRHMb8zI1HUp0EEtNakloGSOBFLPMynhB/xJMbfi5jEvgemgJAdE98vkQpcO92Ys
	ad1iD9RcQWSjfB8nEIvLBw74+3rjk4iDEMdBi96cxsx8zdiaDwkKS0U+I6NR5O4JUfVnnAerjbX
	Ae8msct2nH6PlgvK8qw4R4S14WI6e6mW57kgOQ9pEfQBB75Qp7XuWSkqeVba0i3MLXkeio2onbc
	Fk8FDc774Gd3v+jJT0726yckEme6vg7LaUVblnIcOUrPCKdQybw5wZ4YgHlC+k+eUGMr6SGYatK
	6T2/4lAZQ7R3EQSOy2M04eou70UfsDYmZZsuFUKpPTdBX+uSSynLFFHyZjWYVTzBjUyQ==
X-Received: by 2002:a05:622a:5988:b0:535:dd8:b12b with SMTP id d75a77b69052e-5359faead5cmr230417831cf.13.1791922358809;
        Tue, 13 Oct 2026 13:12:38 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-5359b7e32cesm106156091cf.28.2026.10.13.13.12.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2026 13:12:38 -0700 (PDT)
Message-ID: <fc8053fd-5831-48fb-98a5-f3e81323b51e@ieee.org>
Date: Tue, 13 Oct 2026 15:12:36 -0500
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] staging: greybus: Remove unused function
 'to_fw_mgmt_connection'
To: Jeremy Dean Clifton <deaner92@yahoo.com>,
 Viresh Kumar <vireshk@kernel.org>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy@lists.linux.dev, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20261013181707.29830-1-deaner92.ref@yahoo.com>
 <20261013181707.29830-1-deaner92@yahoo.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20261013181707.29830-1-deaner92@yahoo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/13/26 1:17 PM, Jeremy Dean Clifton wrote:
> Remove unused function from greybus driver to_fw_mgmt_connection.
> 
> This function is not exported or called from anywhere tree-wide.
> 
> Confirmed with git grep and cscope.
> 
> Signed-off-by: Jeremy Dean Clifton <deaner92@yahoo.com>

Looks good to me.  Are there other unused functions
like this?

Reviewed-by: Alex Elder <elder@riscstar.com>
> ---
>   drivers/staging/greybus/fw-core.c | 7 -------
>   1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/staging/greybus/fw-core.c b/drivers/staging/greybus/fw-core.c
> index 78321be80013..46b35ef55090 100644
> --- a/drivers/staging/greybus/fw-core.c
> +++ b/drivers/staging/greybus/fw-core.c
> @@ -21,13 +21,6 @@ struct gb_fw_core {
>   
>   static struct spilib_ops *spilib_ops;
>   
> -struct gb_connection *to_fw_mgmt_connection(struct device *dev)
> -{
> -	struct gb_fw_core *fw_core = dev_get_drvdata(dev);
> -
> -	return fw_core->mgmt_connection;
> -}
> -
>   static int gb_fw_spi_connection_init(struct gb_connection *connection)
>   {
>   	int ret;

