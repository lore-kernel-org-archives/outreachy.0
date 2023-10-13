Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9734336E
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 00:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ntlZcmHg"
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-690b7cb71aeso1177540b3a.0
        for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 17:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697157743; x=1697762543; darn=lists.linux.dev;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PaEDeSXTOizqzeb7aoSqmvy7RhJl66CamIMbwde7+S4=;
        b=ntlZcmHgF0CsOtfRSsLH850BeLysscopX7pu4DksU5LtMJAx0HhIZ1i9wnjpBAdx/t
         8WlxxrRB9tkBqZUI2Qb8FJB7jbOAMpx+BRSH5bebjp9qhA/yEKsSHf8KudfFShEjN9bC
         w46TrUwf7jbhbEv8K8wdsa58c1r8UXuTMBPT/5Ucf6Rcdllh8Za/8qPZ9e5HSE7qEYsu
         GPNs2O00R9F/FW6wLAQqNomHZ6mOG+mEjyJF3h3NkjSWv1BoCaEDBo8+QMQ5pASA3zr7
         frYcwD94mgcNdeww2iV9ME3xum21SijUApdABckOCbxACXzUilpefLGwBYGbb2OE/02A
         Pyfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697157743; x=1697762543;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PaEDeSXTOizqzeb7aoSqmvy7RhJl66CamIMbwde7+S4=;
        b=Z9vw2Jk/m5Yif33F+sNwr4AUkal7WLL+6lo/lc3GxSVv26zDorFRxttEg0xUKQXYam
         sZaKhWlCUEk0X8fxNMX8S7DokDR05qE5cXaUiXmtaj0JmkvUAYoJHwSRUTt3n8NWKSzH
         gUhEWYy3E58NJOj1i6x75lcki2IMGrKz7/77onjKf8fEJGfdPHU19JmlZ5EeC4oebh6X
         rG/jqAcEZUvVZNAoP0S17rvxiSnqet1dN5Q0bu9flpCtE121DqPEXKtkfSzW7hymopkC
         hlFrVxqXwvV0F0BAlBMaPcqoa9TmA/xmiZmhZM9jE0cnxRtRyx0mAvt2tQG5Ep0pnu/V
         hC1g==
X-Gm-Message-State: AOJu0YzjGFCbVZaRtIUu/b7gOlBCRA9ceyVlCJUUDUOXcIUgWeev9hKP
	ImDI0nZWt8DZTMzvGTBz6uriZps0ZX2Z/g==
X-Google-Smtp-Source: AGHT+IGmJ5fhayXs08n9SRfV+SEFV2Cal94CTlFE+F7DQsJfL5OeJW2GdOXF75Bok8AEv5zV0peBtA==
X-Received: by 2002:a05:6a00:cd4:b0:68f:c1e0:a2c4 with SMTP id b20-20020a056a000cd400b0068fc1e0a2c4mr34886884pfv.3.1697157742676;
        Thu, 12 Oct 2023 17:42:22 -0700 (PDT)
Received: from Negi ([68.181.16.134])
        by smtp.gmail.com with ESMTPSA id j18-20020aa783d2000000b00672ea40b8a9sm12766584pfn.170.2023.10.12.17.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 17:42:22 -0700 (PDT)
Date: Thu, 12 Oct 2023 17:42:21 -0700
From: Soumya Negi <soumya.negi97@gmail.com>
To: outreachy@lists.linux.dev
Cc: Wei WANG <wei_wang@realsil.com.cn>,
	Micky Ching <micky_ching@realsil.com.cn>
Subject: Should udelay() be replaced by usleep_range() here?
Message-ID: <20231013004221.GB12157@Negi>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Hi,

I'm looking at this checkpatch warning in driver staging/rts5208:

CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#3240: FILE: drivers/staging/rts5208/ms.c:3240:
+		udelay(30);


As per the .rst file, we should use usleep_range(min,max) to introduce
delays of 10us - 20ms. Which applies here as we want 30us. How do we decide
on what range to feed to usleep_range()? The documentation mentions
tradeoffs between setting a large or small range.

Thanks,
Soumya

