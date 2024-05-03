Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF7713957E
	for <outreachy@lists.linux.dev>; Fri,  3 May 2024 05:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714713113; cv=none; b=IVbLYHHFiKuwbhmpVznW/Hol5K3aewRK6SEeAdw1tDoDHrxJBQLOuW3BC9cDZfrlh1Ai+EPrUjyxTOkArhbU58zIKObM8ZPI5f3Blm1es8OhLb4R0D5m4GcDXXe5zEra5Vjx95mAfpd5IRMI0PXR2shHa9v3qzmi047OfSBBY/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714713113; c=relaxed/simple;
	bh=4IFUujD0WtUytHMnCa5Oq26awC+SVnMB+m5+QMpSIrY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X1UMkEeW0sI7VNnjW8DmoVpYTK/HvrGoo6CYMcLchNiPc/ZVsnS9Cv5fE7mKDA7uZECde7MB8nlcT0oo8EhJvQ5rfVjGWadWEEt9Bow5EMtCWkZtLeFrmpcrZVc0YHVLyUWUR2QtFm+6hakVr/O1gsNSTh7cvuiXymIcRzwtvrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xVcC5cKQ; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xVcC5cKQ"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-41b9dff6be8so47873215e9.3
        for <outreachy@lists.linux.dev>; Thu, 02 May 2024 22:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714713110; x=1715317910; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IZ52txFEn84DZ4Gx318II2hjm45dLlkgVXuI6MMj02M=;
        b=xVcC5cKQNvrGv/SPXS64c9gYnGhPhiiYyBC9V6nWZ92nFxz7lH9v5VpbKA0GnbqiXC
         J+zsguCr2JnG8JMz8nFbLlB3cLiKxw+3pFDT/v+9srru1dhOfDHGsT3Sp2kM3zttPERd
         MkQ4mZYDF2KXY5H3qvC9dVLJmtYybYVpg+OM960uDD1KyUDgP6dpqJWYec0FmUe6f5po
         OETCBrCkUSkG4FJ/mCINb5/lPVd4EBfpa+7iaYm6LBNVitlgz+v6eHgn7SaG6AlG1rQg
         kRaQQa/mKoJSE3xFt5yKZ0vSgy0IAxelu+Mc12G3bZnxVjok15xObW4a7K+G6jNGchnp
         Wk0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714713110; x=1715317910;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IZ52txFEn84DZ4Gx318II2hjm45dLlkgVXuI6MMj02M=;
        b=khdpov/f/i08ZSvpe+8Nu2LsOkEuM6ci+pDR394lgNCJZuxHn1d+76QP7QruoUq0ig
         K/kVPFCu6yKXNBWmaZsSmfJohRdbup5MbNmyiup358QvuAzqwBEZ2uAO2j7ch7U83xSr
         0H+pAsAeDOng4aVpaaqi8m5XQjmko0d2K/Drs9x8wkeNuxrRsK61Q3q9O3SD4E275KMN
         2HoqSHlxLxHg7veyqE4MpxfRugU1P12/za9+EvDwWlGCqRQ/M99yyeFeDz1xmJlZ8MpL
         PcOLYPRMYUnHM2K8B0pPc1t8Ov9s+m6MhFy2YIRHE6LjHiMlRal2fRgDPpRuvJ+e9Rkb
         NVDw==
X-Forwarded-Encrypted: i=1; AJvYcCVawwb0x1CdjrhFdhMTrZseZzQi8L7NA+nu0GtlaN75dbNgjCUFLXstcBzN9p573VywZ2bvLUFNOOawnKGQ5+/iIOylArdxCywY
X-Gm-Message-State: AOJu0YyljuY9+9oUVlaIpaDwgaeJwdtISnALq9z7wPeSEupYVyy4UuZI
	D9PZ2bsk0EeUc1MHBq0s3oRn148VZ0OMxSUwiDdRFV3ZvqFYjlcNbXVfP2QlAE0=
X-Google-Smtp-Source: AGHT+IHlVU6WqV9hfbm78/kvRSpT3qBzDU+6UDBfCiHBW2deYrVDpU1cdv/gO3y+VfA5WQLnrHXNhQ==
X-Received: by 2002:a05:600c:3c93:b0:419:f2a0:138e with SMTP id bg19-20020a05600c3c9300b00419f2a0138emr1271927wmb.34.1714713110268;
        Thu, 02 May 2024 22:11:50 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id g19-20020a05600c311300b0041496734318sm7964771wmo.24.2024.05.02.22.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 22:11:50 -0700 (PDT)
Date: Fri, 3 May 2024 08:11:45 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Ashok Kumar <ashokemailat@yahoo.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: fb_tinylcd Alignment to open parenthesis
Message-ID: <37db687e-ce7f-4f18-8464-f9b04226e14c@moroto.mountain>
References: <ZjRDUO6/M+RDCcQJ.ref@c>
 <ZjRDUO6/M+RDCcQJ@c>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZjRDUO6/M+RDCcQJ@c>

On Thu, May 02, 2024 at 06:52:16PM -0700, Ashok Kumar wrote:
> Corrected coding style CHECK: Alignment should match open parenthesis
> 

The original author was aligned it deliberately to improve readability.

Just ignore checkpatch on this.

regards,
dan carpenter

