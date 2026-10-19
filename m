Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE698489FB1
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 07:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792394133; cv=none; b=JvJayxxZakzdubMJugtAEyDJQW1mFNh3hm/yjoFiAjD9KlYAhSPC9ScYPO2/+n/9kVXmFyICE+2rAAWGOOyziuzSRb6g3tENXG9EI12RrrhPNKlPdo3jVizZBInQRWvGupJoMZxNYDhzHS2z127gdxrK1JyEfNZa2OANRhGF6uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792394133; c=relaxed/simple;
	bh=euPFOSxanSFPi2Zpw8qrz5T/8Lck+/AaQ85OLuB2GjM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b+Vvhe2n+m9M4wG+45DMZ08E5yKe7PXUQz8QAA4fWl+ynVFg/p9CAJsLB++68V04QXFnT+pVruylhYLcx/hDLXIslUXXc6kC5fIORkMS1lKk2r4MjiCT1ZOyavXyyRtbpZ1+vNKxiU+MLGzD2GcGIzevoUzWjpbjGi5jX+4iAbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QAOV4fMd; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QAOV4fMd"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4a1dec056ddso9236475e9.1
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 00:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792394130; x=1792998930; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Lh/rfye6OYmPn+uBQKUoMnQVrTTMgM/f0x7DqQdwTJE=;
        b=QAOV4fMdD52nFi46sTyhgb/lLmJWy87DtdzighmzWU1kedNtxefLBjRbwAK6DYVD4M
         DiFiiv9MGE5VxKMskHWYP5z4KCHBvDX8w8RqTgnlHihGelqFfaaf7KywdhqX35eMplbH
         azRbSi25TXEdC+X8eAYrAZ9XdHrYOunBuHCOTEsqoUKCo+1Pv1UgJN8h/BBEeddWovli
         R4obBhc4MJv5x4ksA2rm5qjD4+hzWGvxfGYDYgvNPIaVJTNJeVH6iiugECRl+oiHSPfM
         BYF6UF4CJk/n2qnYh/6coxgXtB9Y5zuAiZ20v/ctu+M2wWwwSSRPfDC9AJPagU1ghH4w
         S8Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792394130; x=1792998930;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Lh/rfye6OYmPn+uBQKUoMnQVrTTMgM/f0x7DqQdwTJE=;
        b=m93qfZ1ge0KwHSPWS6QpI390kenrQUOD8kKcBohMi+pgXIKAIuyM2SrDeDUszD/x4M
         fYWmuSs4x8ThoJ1//5WB3PGESuty7S0Xz8aZFK/Obo1NJcKO7cTj4VC9EqECkLBGNCEB
         FOlfoEk/CQGrhSTXOwrSij878K5XJy5HdUZLmQ7Wqm9+xypNAAcM6y1q2VuU4HuWByKY
         +ugU6Mz4UxsPKKYusew0Wk/mJi6PiDYv6ipOsoa5APJ+Lw4gAFO7rf31LQelLao93Rh4
         k+sy3nLLggsFklvgH1wWEgkNW1QONeyKEPwmQAzZnE8DARsFNpGLaDiH8Aup3e0gM+T0
         CyOw==
X-Forwarded-Encrypted: i=1; AKwUvBxmc/hIs/XV0hX1gdBehPMOT5T/e9WpPGZ9xr3mxUuXQ2tb+W7yhzTyVzm7VYCdP+7W5SV/8/dWbpI=@lists.linux.dev
X-Gm-Message-State: AFq9FYIkbX4G1JXOlDBTmG1fMUnysTuQaeqDujw012XYaPQskaNsfM+p
	jgSto0IX5QoTpScd6p5B7UjeycIWTOpUNFo8A7lCgpXXTTOSt33rwMW+
X-Gm-Gg: AYBFou2VMdc6PX0EndaQe1opfbx2OIgPQSUHYXGvDpWcOSoIbzjCenQgUB8Xy9YHtuw
	32sYMM4LmwBAlGS3XIL+Tbg/f8tB5Dpl04vEftCQo3rtb+tfdI61d+VZ7YSKI6sMIM7edrLIRTP
	ANUIjo1HsteejgUT07SADP5Bhrw9678B1bYOJcygazub4Tt8qMmWBuWJ0npsXhsC1VZ9pjJJywP
	Q9kfnZG2ESz30aRRTWYWW+KX8fhXhqIcmPm3b4++N3lAHIqOZjPsj2aXRtG9lF+0hqDwQBYjA7p
	R6pehpWAub5+DuqzKB9YyEftcc9InuB6Ntuh86jFFUW4yt06Ql/LDDLs0mJw13nKicE5V00/1G5
	jMGOp0t8RetekMykal76c9MOV0MqvojIZJCtX7aQjNjv59sMxN0dJdHXuYfO6m/XfsOBaBrwY/W
	sUuO3DYJ8VzPEuuFowguT30jAgw00RTGYrQ9xHgvCV0gGHz/Ep6Jws2qaPWHgpYevmE9A=
X-Received: by 2002:a05:600c:348f:b0:4a1:e774:370c with SMTP id 5b1f17b1804b1-4a1e7743940mr39926855e9.30.1792394129754;
        Mon, 19 Oct 2026 00:15:29 -0700 (PDT)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1cc642573sm208220875e9.2.2026.10.19.00.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 00:15:29 -0700 (PDT)
Date: Mon, 19 Oct 2026 10:15:25 +0300
From: Dan Carpenter <error27@gmail.com>
To: Comfort Oyewole <coyewole7@gmail.com>
Cc: gregkh@linuxfoundation.org, andy@kernel.org, outreachy@lists.linux.dev,
	linux-staging@lists.linux.dev, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH] staging: fbtft: remove trailing semicolons from macro
 definitions
Message-ID: <atXDjUmhI38WQhaJ@stanley.mountain>
References: <atTnRr-JGIb9eLQR@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <atTnRr-JGIb9eLQR@ubuntu>

On Sun, Oct 18, 2026 at 04:35:34PM +0100, Comfort Oyewole wrote:
> Remove trailing semicolons from macro definitions to allow the
> macros to be used where callers provide their own trailing semicolon
> 

This doesn't match what the patch does.  I'm surprised that this code
compiles with all the semi-colons removed, honestly.  :P

regards,
dan carpenter


