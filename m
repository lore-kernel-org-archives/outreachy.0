Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E8F48FF8F
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 12:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792412322; cv=none; b=TP3TmsjPCHRGQrFetcF2ubcVs2OKYWw4XGxk5heqqMU6ZdUI3LytuYdOmM/OU4J9YWCUW4FzOt2KN3J6h4lz5GBhcUDEeBz9ti2gdgTRPoa/3aBX9Bnw38+Fe/MrceZZhKSZvP7CbLg8M1MFodzAOXNAL6wBv65Vbe2fL+yCmTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792412322; c=relaxed/simple;
	bh=Dhz4EAB84K8YKVdaec8L7yXiD31Sa6yoCg3DwbxFBCY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cvIHUtsx67WgYt0OPRiFzikpFuuXA93PZnaycHUUaeozH7X0siXIbFNJv8KeOT3i6ua7ORJwwJrnpKIIDQPHrkwD/JM1KMfQjkFe6Jfv0g7yALfSS2BQMXJvre9Y3N6viVfpn4Qf5mmH6skP6753LFP8wgR3s3fbJsmki4NDYOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=FHXW1EkN; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="FHXW1EkN"
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-5365d26ccbdso18358801cf.0
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 05:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1792412320; x=1793017120; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C3WD+05XQNdmEK1W1t9slgGmeAmpjGd1vFRCxbqLd94=;
        b=FHXW1EkN83BO/UiMdlHWzWdqMTjkgc5JM6Dy2mNwxZjEm/X7lS991Vq7QtWvvi+MG5
         VVkyYmY1C2XeYP4t8Q7swzNyv4QQBA6qM1OnFNQH4OL6u0KkXYf4jt0UmOqAVfjQBf6b
         JjDj3+Rq0301nGRWoXETUcM3VPmzQdeNCda+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792412320; x=1793017120;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C3WD+05XQNdmEK1W1t9slgGmeAmpjGd1vFRCxbqLd94=;
        b=z5Xnh4wdhJjY9+mr1K6xdBF1i68z63urnJxA06Eq+uzQo6VZXgOusyXjrynEd2IGb5
         78v0EyJbZ2rxXQSgNCCSvnWANVvLboHhEx0k+mktBp8Vu4dlOdTzFaiVDu3lm1/CCwc0
         ZdbrHb3ijoASBE1m2SeQLzFQ4xoSEtUKX2M9tBPDhE0ZDrRko5s0TvJ+3ViZcahExxux
         7z3qP1a7CFIxfmm1aG/344akCkWVYZjATsFAeldF97lBPLZEwmaPJJH3Pd5xbSQJP6UJ
         AIu6aLsiLRPcnoKIi/bJdF2I9WFcgqzBfXn6LHQwCqSNmB4WiZSf3RBDr7Cz1kQyMCDb
         DQKg==
X-Forwarded-Encrypted: i=1; AKwUvBzN8fPHIDFASCxWa9elG2ofIsItdQXBiSReth1lAoan56QFkwtctvYa6miqDpCymNkC0q1rnOH2Q/U=@lists.linux.dev
X-Gm-Message-State: AFq9FYL6AGrrw2kHbA30MrAnA/84lgqInCTLQD3penKMReSqCnow7b+R
	PvBGGYOG4K9kNAzvYrBdbuqhfIaiWxy8wEpmilC5TzheQ+49R/7DWmiDgC+mNmL/2w==
X-Gm-Gg: AYBFou1IAwLVbJkZdkOOW+mWKsZ8tPs9vfbGb83QzCt/0ysUCJ+pVqmKR3PB/T2MqHe
	aj5uAylOmLmG/Xaw0iq0C0u0niDD/YYYop4Ez8B1lIm+p1z43FgUpbWvRf1AbJJzU87KpDrCN+H
	ruLuug7h3LtUGx/EsGktirDQkmlZkejOn4HXvjugPYAqy3ut3cIHOek6p7VlxDRuUrTv2gji+Et
	49T0eM2Odl5/QbtQMBDEfe4/pDnXn1ZISeifB4JovG5j2E3DrIB4JBE1tZ8zSsITm4KqnDcOKHE
	96amsJvbOdXJ/ClSMceWacuMDFo45nPemSuQ2szkQ5E1iVOq3kKknJK7Ujz/axddXBbZpXgxEXO
	nIajmH4/moIakVN5OGdyvZCFDZlGbjAuZQpwwXJHl7diXUACTwhraJYh8cZhL2ptuhIbCHtF4mM
	mdmIEhNp4IZEl3d6MPwtQ4QVoX0TWiJ0L71ripf+weGzPgxv06l1vbw3b8ovGV8VJekvYX6zuZg
	KPX
X-Received: by 2002:ac8:7f4c:0:b0:535:cd9e:c0c9 with SMTP id d75a77b69052e-5364611f857mr110473131cf.74.1792412319625;
        Mon, 19 Oct 2026 05:18:39 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-5367f9abab7sm2496911cf.1.2026.10.19.05.18.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 05:18:39 -0700 (PDT)
Message-ID: <2977f214-00e1-43e5-b286-eecadffcab00@ieee.org>
Date: Mon, 19 Oct 2026 07:18:37 -0500
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] staging: greybus: fw-management: fix argument alignment
To: Okhuomon Ajayi <okhuomonajayi54@gmail.com>, outreachy@lists.linux.dev
Cc: Viresh Kumar <vireshk@kernel.org>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20261018224241.46011-1-okhuomonajayi54@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20261018224241.46011-1-okhuomonajayi54@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/18/26 5:42 PM, Okhuomon Ajayi wrote:
> Align the arguments of the fw_mgmt_load_and_validate_operation()
> call with the opening parenthesis and split them across separate
> lines to avoid an overly long line.
> 
> CHECK: Alignment should match open parenthesis

So this was found with "make C=1".  And the checker tool used
was sparse?  If so, that bit of context for this message would
be helpful to add.

Also, I tend to ask this a log on these small one-off patches:
Are there any other instances you see of this particular
warning?  I *know* not all of them can be fixed as neatly
as this one, but are there cases where aligning arguments
this way still preserves readability?  (Greybus code also
generally fits within 80 columns.)

If there are, I think it would be good to fix them together
(in one patch, or possibly in a series, one per file).

Other than those comments, this change looks good to me.

Reviewed-by: Alex Elder <elder@riscstar.com>

> Signed-off-by: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
> ---
>   drivers/staging/greybus/fw-management.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/fw-management.c b/drivers/staging/greybus/fw-management.c
> index 5d01da6b6eb9..e20e9136c106 100644
> --- a/drivers/staging/greybus/fw-management.c
> +++ b/drivers/staging/greybus/fw-management.c
> @@ -434,7 +434,8 @@ static int fw_mgmt_ioctl(struct fw_mgmt *fw_mgmt, unsigned int cmd,
>   			return -EFAULT;
>   
>   		ret = fw_mgmt_load_and_validate_operation(fw_mgmt,
> -				intf_load.load_method, intf_load.firmware_tag);
> +							  intf_load.load_method,
> +							  intf_load.firmware_tag);
>   		if (ret)
>   			return ret;
>   

