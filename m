Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793631281;
	b=WmyNukQS5XRiY1nC3MGybEHgPSnKPtyrPRzSRLo3S9dI8USSahTl/2ZYF7PbztF/VZvt
	 DUiXFk4JM3/xoP4DHVgn6H0sQP1Db4u4M3OQKBynBfbW2tkxm2/NlB9DOC0sfUHGXareU
	 yU/qZFKgg/4GOtPBA8jHPtKDYIm0GA27BrJFbQq+b7YEfb3q8BrSzzbdyoCYW7DHJR2Vb
	 E+m/iI/HqAiobUDT3iRTclRieFYZs4rDOTRJ7Uaei4ph8a8Jk8Rr4pLVBBGLCXlyBXL97
	 uZFamw6OqBrCdWDl4aS0u7mr+IQYcHrl60Cy1E36twakuwv1T3La80m+gzsCmFV+PlQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793631281;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=jHCujAV4TSmNU4uGy8hxkAD9bn+1UUbLxy5pyDl6AaQ=;
	b=GkEGt5XwUQ44s05xrzwE7lM9LqlNoTl9CaGJcvbDr4y9zCeCFElCMeNhbu6IcYwqlAOM
	 KCgvojgxLFvsBbm1T8lB704g12Pe1GJYd3O1JLkQC+xR1ulpjeu/frjCjQdapVWWYhj6Y
	 N9RrPkCs2HzxsELN4b0ATyZuBje3TTqFc3w2+/WBmtu4JUdvPIJmjzgV6b5/r2sVZ+fhm
	 uKtKGZ7LYdYPPmPBWfItuQLobfrr1hHC6jFCC680iMacdgMgXF0z5ihv2+5+3tlalHk+u
	 KCNgEkkBawoc8l9f43Qk3OhUi7NEbbuCRtZlmS/cgEZffLIz6uf4mJhPv9YmwgL6uTA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Nn+H+qCk;
	arc=none smtp.remote-ip=209.85.221.44
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B3E607A89E
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 14:54:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 76B3E607A89E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Nn+H+qCk
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-48e0d885929so2568437f8f.3
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 06:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793631280; x=1794236080; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jHCujAV4TSmNU4uGy8hxkAD9bn+1UUbLxy5pyDl6AaQ=;
        b=Nn+H+qCkc0Zda0vm1J1K8ZTZJJJporbC/2bTUK5Nk3otSUWhCGU8J/2OSbnrXDyr+t
         LCFdiaPjoJWEyS3XMI6sFfnJjnKHNPpHDjd3hFXmjXB9qettXjGkNjyAlCSwzf/sdBKB
         IsgEWCwB2USWNmAlWU17WknXMobFQMdA0LxjN10ZWk/QPGtnmzloZuAD+eiRwvzJzlyN
         6n2pJRNYt+SY2VwFvck7eaGulQxlNJIyCGzqgthodSZopOCdpelqnSiBqAZb9kPzQd7y
         AiyZXoiOHK73b30vFzGvioqKfITwdyIrLtKN/pdPV1RP98aFy9Cyt0FxCEfCVGUlLxIV
         W2/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793631280; x=1794236080;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jHCujAV4TSmNU4uGy8hxkAD9bn+1UUbLxy5pyDl6AaQ=;
        b=r8xkLic6ugCckFt5jncjLcNnJjSiJ6opcuyoMAqZNswvyZYMGJSPcVWAgAvdgMn+hT
         EO4quPoY1I5u/EKNGvBck55pwj6PCKVmAfFvRKl1kTOgWiTrnjEf7a5yczkP/vWUzTIH
         dYyn6ZPa4ZANd9XXQb2qvRHkCCgmJmkkUkcKnLx8AQcqdJXWYqrFuoDbPi6o8lzuZfRp
         L9kptXI1PG+nuAqIctmxLmGFE7aHq78WkR7MtzxlQaMqG/0zsSosbnGL1FQlHHtovykx
         fJ6ve+omJM1TjK1bk4t0+N90rjWshEzxsz7w50aUW2Z9DnMLtj9IupeJvWpw3Lnd+HEW
         YNbQ==
X-Forwarded-Encrypted: i=1; AKwUvByUX9rPvwp493UDetR92WRgeD6yRUIxj7bY7qdlaBj5/6I9XSHrbhCGvX46rhLXIM1Qu+8cWzEKtG4=@lists.linux.dev
X-Gm-Message-State: AFq9FYLXa0js/kA4y4cOeTf6mKCcKbgKY9F0HqbjKsiPovLvo/tlKYR3
	kgu6ngXq3bXc3nQrtc9oSuOl67l5zSl/+T+VVnaeU4WLOyLObWrRdD3C
X-Gm-Gg: AYBFou1sMY2jbRQTMig8kgt+33rEuyBjxQ/83OUfrUT1GzgP6CrFcsuNwUT6kITYu+c
	M+sDRivjVlCCRhoBkq3PwsRABci5L5iJbJoUiHoxgwKxTPNRK9oUwl+3+6v9R4kiD8PK+8AgTWG
	B5lNC+OjM6Ue62cKvVgDizhvf8qxtChQjv40RgO6Qs4yCPswk+/HpDYECLnZjYyCIi/ScsAz+Gp
	45Vm3owJuLhxci4iID0DepIw2/CqiukFOzJdWE+/VoWF9eJMltsIUgPfxJlF7JzuF/fbet8Deik
	2SfyVBLq/Hu5XIeyteNlHspRHXCwVvq0EILTex0pkEai8G+cmD0JGvLtxMb3a8dWbEnHH1JdQgA
	gwmLjCOcAC1x1QC4h6hFSj+1wAXkrkfhF12p2Ej4G+He4eP2xzUhhx9ZNnpNwpFSVo89MtfxYYh
	MOD+g7DVefTLBB90UCFAx1PZaW4V5LE0mIRak+VGhsZ5VVQj7fg3jIMZuMZThc+A6zlefXLG57S
	xoeYegYCZY2N1pf8cOgCyAqFrI+1AANv3L7pFw6/4FqIxFd/rfPFE7ugaI5e03lEu8q51p2Um0W
	QABcbOlOX/SJFvoXyc/HekqSj330Ytopa/4xxqPOQi9Sgs+/k0YJoKuOeKNrxQByoA+3/aeQavs
	c4hkjr4lnwDRZCsKk9YZcDVfY5SFNQRpoS+lfmoKi+D55CoyEfG/cRhKxDk5Xx1kV8a0=
X-Received: by 2002:a05:600c:638f:b0:4a2:c2b:a91b with SMTP id 5b1f17b1804b1-4ac17d168a6mr229177725e9.10.1793631279890;
        Mon, 02 Nov 2026 06:54:39 -0800 (PST)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ac09ad5ff8sm195665515e9.4.2026.11.02.06.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 06:54:39 -0800 (PST)
Date: Mon, 2 Nov 2026 17:54:35 +0300
From: Dan Carpenter <error27@gmail.com>
To: Maritu Hone <marehone12@gmail.com>
Cc: vireshk@kernel.org, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: fw-management: validate firmware_tag
 is NUL-terminated
Message-ID: <auikK_2xehWSG4eS@stanley.mountain>
References: <20261102141221.87646-1-marehone12@gmail.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261102141221.87646-1-marehone12@gmail.com>

On Mon, Nov 02, 2026 at 05:12:21PM +0300, Maritu Hone wrote:
> fw_mgmt_ioctl() copies struct fw_mgmt_ioc_get_backend_version,
> struct fw_mgmt_ioc_intf_load_and_validate and
> struct fw_mgmt_ioc_backend_fw_update directly from userspace via
> copy_from_user(). Each of these contains a fixed-size
> firmware_tag[GB_FIRMWARE_U_TAG_MAX_SIZE] array that is never checked
> for NUL-termination before being used.
> 
> While the array is eventually copied into a Greybus request via
> strscpy_pad(), which safely bounds its read and always NUL-terminates
> its destination, three error paths print the original, unterminated
> userspace buffer directly with "%s":
> 
>   fw_mgmt_backend_fw_version_operation():
>     dev_err(..., "failed to get version of %s backend firmware (%d)\n",
>             fw_info->firmware_tag, ret);

The strscpy_pad() function returns -E2BIG if the string is too large
so if "fw_info->firmware_tag" is too large then it will never reach this
printk().

>     dev_err(..., "Firmware with tag %s is not supported by Interface\n",
>             fw_info->firmware_tag);
> 
>   fw_mgmt_backend_fw_update_operation():
>     dev_err(..., "backend %s firmware update request failed (%d)\n",
>             tag, ret);

Same for this one as well so these are all false positives.

> 
> If a caller supplies exactly GB_FIRMWARE_U_TAG_MAX_SIZE non-NUL bytes,
> "%s" has no terminator inside the array and reads past it into
> adjacent kernel stack memory until it happens to find a zero byte,
> leaking that memory into dmesg.
> 
> Reject the ioctl up front when firmware_tag is not NUL-terminated,
> mirroring the existing check already used for the equivalent
> Greybus-module-supplied field in fw_download_find_firmware().
> 
> Fixes: 013e66537273 ("greybus: fw-management: Add firmware-management protocol driver")
> Signed-off-by: Maritu Hone <marehone12@gmail.com>

If this were a real bug then this wouldn't be the correct Fixes
tag.

regards,
dan carpenter

