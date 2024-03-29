Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2293BEC5
	for <outreachy@lists.linux.dev>; Fri, 29 Mar 2024 00:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711670432; cv=none; b=URZvCC/X+YydoUCSxWGUGNRlIs3OX7C0FC+Z7M6omRxoo3qxKSs5HvG3D8DFu5YjW5ijiOw4HnrtXRhWzqDUe8lpCnVTl+eLn5RtGKQfcxNH0Vfz/QVityXf1KIazKoiPI8uIt47KrEYpd5cbAtCzRDJiCWJjQYN0yPepIE/JK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711670432; c=relaxed/simple;
	bh=+I2IDIxu1+BIAMr2gX5YYiwVe/LSpFDFR3EIaRxUHXc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dg2tQ9poHf6VoxpCYZ+pf5xAby5g5Dv1eQY+2LuZeHrpFnGTTVwfseZgh5gjXlCr7GPw1vtfSvYWKT19lXmw9+qLqDnjH023A5Z93N4+BlacvheWPoBf/qXDFaA8TWSssnPSEfDgFQqyNBybNqeRhjsa3mxZyDOIevw/MgbKhWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=INMVhmwe; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="INMVhmwe"
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1e0f2798cd8so14077655ad.3
        for <outreachy@lists.linux.dev>; Thu, 28 Mar 2024 17:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711670430; x=1712275230; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zxgQgR5WzVGWPaKAc8HdoOXQonc83sncwtNv9VWlFi8=;
        b=INMVhmweYd6fFrEaTyVOm99VIEu3lglyWsxQnFxxyhvOIsShp0ugN8GbIUGn2MJe7M
         qJs+/w+51W5dpAauRqruelLWf0KHd/5moyv+r6+D5AwfeoV3bSSPvFI+bl4nunq2vcgo
         LAPbrTcw8+JRdp3NlPFW9L6BQvAMsxv4wBbxgB672AtpCoQy+ZVlnD3lc5G1DR6hpvAB
         caBjx/RQ9tljsFlIq4JyoGrommO8FU5GoEHjBvKfIj/bDuEUz3unPT4K6HxNoVS19Y6W
         S2CVfDMhqcmVJQX9hzSWyPEklWdH3QM76x3bL5HYWySEG3750KmAG+zN1cSwXGRb0fGH
         pgBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711670430; x=1712275230;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zxgQgR5WzVGWPaKAc8HdoOXQonc83sncwtNv9VWlFi8=;
        b=GQb742cpUEpHkhHV0kyLZEVpYaNUxQbx1sYOkVdgPYgPPP1klfdAJaVRH8S/CvZanh
         C8ubAq8VcOpuBEHu/wtUnepzwBk4S7HxF+0DQZ+gNlc3yjSVAdkl6V59KjlRcLMRntTk
         tDGzbKrHs5SndZfI6pfX/o0eQyyJj6kargK/y4nimMMjsaoC6lz1ehmJQ2d1WujinYJe
         cQ9PyOClXI/gv7az+dxzNsE+rabwkkQQSNRFBIGmmF3MV4xZNSp6mWGpzYOBCKiGTPIT
         YY2Mskky6aHaOTVwgOgx4ROPaQcVAZCfweDW8PIR176U3qvuQaIxp8+4XmB24pUA67/S
         tWLQ==
X-Gm-Message-State: AOJu0Yy8CRsGR7quSvT4As0WLyMag1CDCsCrPIgHrAnK180/cn4rPMUL
	EaFiPaEfQob3TVZBMd7y7WzGNNE0MmSOgtkf3eoX0rb+QNtzzGQQ
X-Google-Smtp-Source: AGHT+IH/R+DNJ1KQnIFyCwSmNgwVqo/hgqAGNJtkn8cIsTUnCUhQxAvn3PLp1L8kKZm/M0JuqEYA8Q==
X-Received: by 2002:a17:90b:4a88:b0:2a0:8bba:f997 with SMTP id lp8-20020a17090b4a8800b002a08bbaf997mr901644pjb.32.1711670430265;
        Thu, 28 Mar 2024 17:00:30 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.124])
        by smtp.gmail.com with ESMTPSA id a10-20020a63e84a000000b005dc491ccdcesm1857259pgk.14.2024.03.28.17.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 17:00:29 -0700 (PDT)
Date: Thu, 28 Mar 2024 18:00:27 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: gdm724x: Align descendant argument to the open
 parenthesis
Message-ID: <ZgYEm1zeVjHZynjr@tahera-OptiPlex-5000>
References: <ZgXupx0nXwIOjy7F@tahera-OptiPlex-5000>
 <ZgX0c7mTJkipSkmQ@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgX0c7mTJkipSkmQ@aschofie-mobl2>

Hello Alison, 
Thanks for the heads up. I resolved the mismatches.

