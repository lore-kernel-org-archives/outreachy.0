Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEBF493D56
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 13:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792330726; cv=none; b=VT355f9FtN9JbuKTLAmE5AKSvyFGZcnu4BvDfdG5QEHgPydxJIY0g1JoTyE+Fh5KYKo3nvxR/d82n8K62X2jmIhtKhPvmWqY/qmpPu8Fvy9arvQYpdwOevS2RjjAbqkheZ5s5kZCdCgjYWGSHsuZltS9uYI+UmVdcVgG5n/XubE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792330726; c=relaxed/simple;
	bh=ldNYRwI+5doEBl3C1g/4d7rWHQk38M49uk56iBMi8q8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Er3QBs5ssnTtWBnR3fzaUp+4MbAwOZUQWvOt6afvHZSXh5ywQyj3dCln1wq/+Ghcpsiuw1SYFpgNrN88nSqlnTngxFVL9TajKmG71rasC6IWtjzn83jxVyUHToLY4JXVlv194HjWUbxEGl2dBMdFsv3ke/eoTqDurlmpRMillvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M+tm0t+h; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M+tm0t+h"
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4a1b07c3c5fso14535215e9.1
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 06:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792330724; x=1792935524; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KgtDcPhGOMWpmKP73xncVKfTZT69mE2yBqqaKdxCDiA=;
        b=M+tm0t+hbPD+72KHguheJYiXhSHzBaZLlsK0VopLlYwCR0dsQvoNUYSiBsTJd/JZaU
         oJJyCAT2KkDLatcF6s3rNOr67pcyv7izkm5RMZ8DcmkjlaTam42oYVx/O0//ohEsvUxf
         FD0IeRWBFJbsBZHoZ+pAueJfcFw1kDNOWa0Ibnp/OVrMdgvK4sFcjR8UN0broPu36D3r
         f9p8ADiKH6riuYH12xMIMdgqOO3DJBBR2qJLeA5Kk3FgKHrtDyjcPW2vw6FNUMdL65R7
         +y1ThvmYm1ZqS4hz7Tuz2nzQ/t0k080eZ7+/wUg2Rks3g3bZy/FZOpu2XpzM8dteE4TD
         DAZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792330724; x=1792935524;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KgtDcPhGOMWpmKP73xncVKfTZT69mE2yBqqaKdxCDiA=;
        b=KIM9ISbdMhCK0aw7+OSw9U4DaHE+Q9moxxOb9rWbvEKpFSQKUNnKDcJaJdaU6EZUlx
         LHTuico7yCTmQUNlC7SKc+MFby36kmSOCrS34p6hQGvNdV77uiHNUF7d/p3z19UxN/WB
         q+68sZATk7e9aBL8IGnHByoUOGYNLYIhi78CgjG1Gqd+/DUwSFEDWotvt+H3gVMPuH/v
         1w++ofntm5E2NWlU3VLFFHpW9D5IunCNel4KkY8kUnrCsdmA1FcMnMIBjzr6jQDu4a93
         VrDdzcwrisZEFL5hvuxhGRbNFmESxcCO8yRH6ioWOuCJXV+69D4XT2Le5Dpq7dPv8rGP
         nxfg==
X-Forwarded-Encrypted: i=1; AKwUvBx+oEO2b6hFAiNoXUcsLb+KAVWPypKGY8yAP7+x8QWVkSO3tAC+P/X7ENshuoaFLP8RnHzdd9UeV8U=@lists.linux.dev
X-Gm-Message-State: AFq9FYJnZulZHstsRzX6qeDj/gXO8DOL2SRnbOe2Qv5JT/whnhI3XigH
	3eWUcEG3HjkGRWrSKCoJJEgcnnREWDL5qJilQOMso+a7X7qRGTAnxIEO
X-Gm-Gg: AYBFou3I00CJfFMd6sJ3eYujEDuiWDWLWH6a1QFAAOfpSCh/RK25le0D9IzLj3HZReU
	BB6vUbh38Erkd5u5a/zcwrDvNiS7U/WWYoAH+7gCvNflcfKaYIVacxbCMelimMVPQwkWYELixFC
	EmkJCdb9SgQBoEFcHP5Q6cdOFwfkmLOKKJCGDUg4ndWGIjwTy57YVavKG02Qs58mZuBqtA3j3a4
	WmNvrI5Y4f8KHmBYhAx7BOLFFvJHVW5IH3xP/5wNqW68bOnZbl7jEpdx9JXVLOerBeOlUxzblRN
	4gvYFRPb8SVNpnkEe5On66PapNwPiVZUuh4M0LKzlbg9GW6Myxx2Bfc1S0MDz8IkZawju6FpzHx
	dodRsB0jS3SSJfa/ezCzfE4fsOQdSb2yUZXu29PFvpkkSr55tBqu+jII3Duj5RBQJ0KILY1OMZB
	Y2dlN2HNgdS5MIpT6KNtYyX0oq8h3Ny8LB6OYlmfxDSjUNujTkw6j8ckoKZDooEN6VGig=
X-Received: by 2002:a05:600c:1393:b0:4a1:d248:25b5 with SMTP id 5b1f17b1804b1-4a1d760e327mr104897945e9.24.1792330723415;
        Sun, 18 Oct 2026 06:38:43 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1d2e93a01sm188694095e9.0.2026.10.18.06.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 06:38:42 -0700 (PDT)
Date: Sun, 18 Oct 2026 16:38:39 +0300
From: Dan Carpenter <error27@gmail.com>
To: Bashirah Lawal <bashirahlawal017@gmail.com>
Cc: andy@kernel.org, gregkh@linuxfoundation.org,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: fbtft: Fix continuation line alignment
Message-ID: <atTL36chMY_21NCb@stanley.mountain>
References: <20261018123430.148379-1-bashirahlawal017@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261018123430.148379-1-bashirahlawal017@gmail.com>

On Sun, Oct 18, 2026 at 08:34:30AM -0400, Bashirah Lawal wrote:
> Signed-off-by: Bashirah Lawal <bashirahlawal017@gmail.com>
> ---
>  drivers/staging/fbtft/fb_tinylcd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_tinylcd.c b/drivers/staging/fbtft/fb_tinylcd.c
> index afa8f1c740c5..d58b1247262b 100644
> --- a/drivers/staging/fbtft/fb_tinylcd.c
> +++ b/drivers/staging/fbtft/fb_tinylcd.c
> @@ -38,7 +38,7 @@ static int init_display(struct fbtft_par *par)
>  	write_reg(par, 0xE5, 0x00);
>  	write_reg(par, 0xF0, 0x36, 0xA5, 0x53);
>  	write_reg(par, 0xE0, 0x00, 0x35, 0x33, 0x00, 0x00, 0x00,
> -		       0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
> +		  0x00, 0x35, 0x33, 0x00, 0x00, 0x00);

The original was better.  Search lore for the function name to see ealier
discussions on this subject.

regards,
dan carpenter


