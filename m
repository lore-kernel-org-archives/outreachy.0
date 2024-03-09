Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C8436AF9
	for <outreachy@lists.linux.dev>; Sat,  9 Mar 2024 12:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709988496; cv=none; b=VyaEkzAj+Ba/g9l5TS6zc3iRQE6Jsh8ZVdH2BIa+TRfvGakQ8JjHEc4EdLe1gl/5wnptwtIMFkSCxiNadVY+Phoy9ut+If56OuKffSiroqns/UKob7KHgoCvCw9Q+66ysjF6QZuLluukBm2EbfZHcGY2j411eBuLN8Q0kE9cmDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709988496; c=relaxed/simple;
	bh=BgTqalcSlaKSmQ7MrHmWv5m+4b8D4ucdIG3gbvLHLig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FkxLQZMhNR1Px+1UO5rdALt7RoMdxnaPC5AmkOKmGy0qaWS9K8XLG9W+QOSyOcvA+XLArZ7g6y2kc+vZ1bFxsDhs5TENjGqmmzJW5vk+IdcjshNXTeZHaCXvtyBTff5yTRLnQdfXfZT2T5GkIY7oc1UEuXJXVxN6AlLoz5wqiqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sGs+8j+X; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sGs+8j+X"
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33e6d364b7aso1798789f8f.3
        for <outreachy@lists.linux.dev>; Sat, 09 Mar 2024 04:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709988493; x=1710593293; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bDIiSQpIb51VZCFP6EOAla6YUJbjTTDo39b+hExh1BE=;
        b=sGs+8j+XDU97AScpVf9tsO5mT6jFexfv522spiSmd+aGil9NmL4aaOjbYRwIOb89T6
         Lja9PUOzGNc6dIfCgTwBo5+VljbiEh8n54h+AOA/2pCm87Sf2+iuo8hsdDRmQ+hE759z
         2AzevpZ1Ia9gIgdZ/hj0B3x6GoRrtA85DH+yOZYaAnvMhtI3QxS9P2McyKe82EuqGb3y
         aUuURWquSmAWktQY8wKFQXTYzAjJbV8Xxi6cjq8WxDQfoTrJSj39+1BiYGRUc7eGy8Te
         G5k1iJxscZ/x10y0zcgSzXPFHLigFnkk/cDwdPSyC+3n+R+8X3f7ILEG5au+zZYgK2hr
         UUDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709988493; x=1710593293;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bDIiSQpIb51VZCFP6EOAla6YUJbjTTDo39b+hExh1BE=;
        b=ooW1Fz2vNdcUCCsfInULWxwJ2Z2DicZdUwbxd/nqq1TzX4Rq0kPqazYSxZN5a7P8xq
         /sAPO4wmhHD+ELR2KErB6+JtgarBYPZv3tqPd6msVGlZ9T7Bq0ttuDsgx2zb6A1V8vtI
         rH/+ps7KsqzYrICiV6/psyElW85RsE8KJyw04UyCorqtzK1xCuWcLLk+JpL4y7VObiFi
         RvqLKXG4w41PFbMDlCnFyKrvYfwkiwWd/6L2lCnAHsDLO/aZS7J8yh1MPAsNBTKeaqV8
         BqmyZaAFHjtezHcDhjPL40vxTiXd9dVWW/hU1RvCCiCH55n6YCz3AkO/1UWiZyslnnuM
         bR+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXCn39Wg77POLOEA9AY5b15zhE6hbTiZwZNcyqSknZVHLnGJqprBP2kdOr3A33iEQVMruuRo1g8tAWVOKnZp2VaXkcKz32vR01X
X-Gm-Message-State: AOJu0YxV0TU93wwaAXgXrnwEaLqqQFMu3p8rLfXn0eYXK3I0sdo6cyF0
	cq1Uu5F8kFouVA3P6NWC/c+OYYZDzOerubvkEgbya4gKXFr3mvmrs2dhVnfAJWc=
X-Google-Smtp-Source: AGHT+IFrrvJnxsFHIRB5gQiXZGhi6lbwWVTIpKIhipRhv70BLOctY5mEo1bIzoWTCOSn127ftAeR3Q==
X-Received: by 2002:adf:f88a:0:b0:33e:7fcb:ba1 with SMTP id u10-20020adff88a000000b0033e7fcb0ba1mr1206563wrp.27.1709988493187;
        Sat, 09 Mar 2024 04:48:13 -0800 (PST)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id p12-20020adf9d8c000000b0033cf60e268fsm1771017wre.116.2024.03.09.04.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 04:48:12 -0800 (PST)
Date: Sat, 9 Mar 2024 15:48:08 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Dorine Tipo <dorine.a.tipo@gmail.com>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	outreachy@lists.linux.dev
Subject: Re: Apology and Request for Resubmitting Patch
Message-ID: <da438c22-11a2-4384-88b7-38cf40d3b304@moroto.mountain>
References: <20240306054458.102288-2-dorine.a.tipo@gmail.com>
 <20240308091000.36978-1-dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240308091000.36978-1-dorine.a.tipo@gmail.com>

Outreachy is designed for newbies.  It's not a big deal.

regards,
dan carpenter

