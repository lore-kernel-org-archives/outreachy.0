Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.161.51
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792764441;
	b=ClG8GJDG6fkl4dqvenJx77/GKn70GhZc12qh0PsYZBYZ8dbs43HrlhK4TadNALlxReAd
	 0vOwO57Yt160LQzXbVNxXwnS1UlPWsNenvDQ39KuopEHtsIdjXx4PS+xN2WIyt7vgq9gp
	 O7VDPrcef3/br0vDiETFklYoVSEoP3sspYerYoKqvJPD+lYM2TpJSN6qh7IUCuncdS9rK
	 4HQYBAxt7QXgcVISwnr1nwtA2C1HsjLuIg+jgWKS+5b8EyeUS/KNS67wdV494YmhNfKJE
	 csuGygcRPCnLrxeZ9LZ0PWWMWKuOf9XJcoTOEwipACgLXEVR3jkddBCqm+UufxV20Gw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792764441;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=HjNlJvrpXlnAC6x8kLspVEYpzuPQTChgZH754Hl21gE=;
	b=YpurrPgU7VQq7h5CohEjbaMeOD/moLrxueQxnGQHCvnksRGQeSHTbM6RZa11iJyITDLI
	 8qDpP/ONsGJxr93lJe6PzQvOo+eE1XrJDk41wOlfIQ9BHHrM7tDg4hF1W7yn8KuavC+sq
	 vzLyJEjpINx5SIzgDiRavkbavAywEUI/13aPhPv5Ai27nKkzu0CYRaG1Ysx3HZQNJlusG
	 l6Tk1i26N8BjTqTKwnPoZUpuFSfYoMWorSFJKjSNVVqIjpRSAfEILnscfxU6uZ/cqHfMA
	 Ega4dZMrDWXrbczAQzFbocMcNoCWSyRHTOQT02aZalNFMxBJDJb7AQjziWfp3kVsvIQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=ieee.org;
	spf=pass smtp.mailfrom=ieee.org;
	dkim=pass header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=X+hU7Vpf;
	arc=none smtp.remote-ip=209.85.161.51
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFBC606A325
	for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 14:07:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5BFBC606A325
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=X+hU7Vpf
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-7037daaa820so370044eaf.2
        for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 07:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1792764439; x=1793369239; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HjNlJvrpXlnAC6x8kLspVEYpzuPQTChgZH754Hl21gE=;
        b=X+hU7VpfuE7F1SfF2nopdmblIETrbK90cbTgxdnlcoVyjqHr6ZZn0JQZlxYXcJzn3z
         zBPyn+PRb1a/Si363qLqf8QeYSbEkGqcbUs+CH5nVlHJkRbnAZiFV4iwEKKFdShQfF+n
         u/0shS+jo9mr4ozakF3E573cXLzsqDofLK1i4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792764439; x=1793369239;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HjNlJvrpXlnAC6x8kLspVEYpzuPQTChgZH754Hl21gE=;
        b=HgzTFyv5BurA7IjThCVCFSlSnB9EOedwGH5FThSNl4NSl+mnRKI/NErTkhBZhfDQUf
         kHA4JcUWIPnvhNi6I8Ai9Gbi39AN+130NoT06jYS9pY1ZX768omOb9qWZ1GLvXImR7CM
         ixPx+yIq1ol+7/Uex9JICddeNu9wzs2f3p+Uw5iC4Lf9vMHd1Papiuc9DzbZtHiAiwn/
         mEhVjL3IyJhQE024V2d2EJf6jBLveJ5srFgWfI9KDgorNJzDex/8wutYFEczAwUKtamZ
         RYsTIqabUBg5mwNHvKUSq42hqIJanBWanKY9BEktikZm98Z6QvesATkPEP5XxeBwIarI
         XXLg==
X-Forwarded-Encrypted: i=1; AKwUvByWGpMnbb927LcqUmROiGqCVPx+lkUG41lZ/gj3NTB2lHoWyqXSfN+Md1jFVJLgamDgkyJ+ouXscjM=@lists.linux.dev
X-Gm-Message-State: AFq9FYIhLE1IeWsfSbBo9ArImMpNDjDwiVDlEAM1eLFUSh0T8uekVRkz
	6TVUkk4aRSF7qebF9Gxoou03eAJvKcIKWNOhYXRpy2shGyXVxeEzWn5bpvz8AzkHJA==
X-Gm-Gg: AYBFou2ye/BtNxUp8o9wFVB/Ml6bTbaJkARZKBsiMYTjzYSXcp9Vkl4MzBY2+FpuxRD
	Thx0QvrQPAOd/jdiW+eRqYVcPKxOWAtyI39DM8ocdZfD/kvU+emfigt54WYm4+vVG1z1LqTSddZ
	7YlV3tfcSdvaGQIic2qJ0ULekVqPJHgqYcAfagBDyHA2bQ5EwEG72eoQiKXRLaXyRlAkSF4bmM1
	5RzFtmRym6sxBQEpx+p1+ucrceQWqPlpvDajnDbci5yfZaGMZ8OTU84PqEy6sAbgnjNC+3Yg8wo
	WZx2qy0vt3l0DDibnrdS4DR+onErk6GvERSA00BxL0XMCOIlhr61r4HolECJQdgNJjUTKImOQxA
	t0eNspvwSYrscSmes2mL68Sj/SIGGo8+pYkpaxd3MdAuQfKXQPvAwHd+SDHo1X+IMhAkjwXDBrA
	i3+BvOlcelZFImlIn+ElSKZFwdvzVE2QDY0syVl8L5jq219UJiqMIc9ctxc3xI6jf/Ac2tQNLlE
	Ci7y/RAyH29BhzjKURvW4NbKvBJJJGVP+RIJTggvdZDHCFn02g=
X-Received: by 2002:a05:6820:824:b0:6f7:9b00:9c54 with SMTP id 006d021491bc7-70b889f75e3mr1649158eaf.34.1792764439178;
        Fri, 23 Oct 2026 07:07:19 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id 006d021491bc7-70b9ad1c706sm155065eaf.1.2026.10.23.07.07.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2026 07:07:18 -0700 (PDT)
Message-ID: <0f4649ba-f731-4f19-ad3e-2d82b641c0a3@ieee.org>
Date: Fri, 23 Oct 2026 09:07:17 -0500
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] staging: greybus: Use GFP_KERNEL for audio manager
 allocation
To: Torra Sowmya <sowmyatorra@gmail.com>, outreachy@lists.linux.dev
Cc: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
 elder@kernel.org, gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20261023134046.9678-1-sowmyatorra@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20261023134046.9678-1-sowmyatorra@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/23/26 8:40 AM, Torra Sowmya wrote:
> The audio manager module is created in a context that permits
> sleeping. Its caller, gb_audio_manager_add(), already uses
> GFP_KERNEL through ida_alloc(), and module creation subsequently
> calls kobject_init_and_add().
> 
> GFP_ATOMIC is unnecessary in this context and restricts memory
> reclaim. Remove the explicit flag to use the default GFP_KERNEL
> allocation.
> 
> Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>

Looks good to me.

Reviewed-by: Alex Elder <elder@riscstar.com>


> ---
>   drivers/staging/greybus/audio_manager_module.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
> index dc90cc2d2308..8a9f7e7d1766 100644
> --- a/drivers/staging/greybus/audio_manager_module.c
> +++ b/drivers/staging/greybus/audio_manager_module.c
> @@ -187,7 +187,7 @@ int gb_audio_manager_module_create(struct gb_audio_manager_module **module,
>   	int err;
>   	struct gb_audio_manager_module *m;
>   
> -	m = kzalloc_obj(*m, GFP_ATOMIC);
> +	m = kzalloc_obj(*m);
>   	if (!m)
>   		return -ENOMEM;
>   

